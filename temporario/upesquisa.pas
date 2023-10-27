{*
  Formulário original programado por Daniel de Morais e adaptado pelo Prof. Gastão
  para as aulas de Programação Desktop - IFMT.
*}

unit upesquisa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  ZDataset, ZAbstractConnection;

type

  { TfrmPesquisa }

  TfrmPesquisa = class(TForm)
    btnPesquisa: TButton;
    cbCampos: TComboBox;
    cbFiltro: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    edtBusca: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryConsulta: TZQuery;
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    cCampos, cTabela: string;
  public
    constructor Create(AOwner: TComponent; par_lstCampos: array of string;
      par_cTabela: string; parConexaoBD: TZabstractconnection);

    procedure fazerAPesquisa();
  end;


implementation

{$R *.lfm}

{ TfrmPesquisa }

procedure TfrmPesquisa.btnPesquisaClick(Sender: TObject);
begin
  fazerAPesquisa();
end;

procedure TfrmPesquisa.DBGrid1DblClick(Sender: TObject);
begin

  //ModalResult é uma propriedade do FORM que te permite saber como o form foi fechado.
  //Ele tem mais a ver com as janelas de diálogos que pergunta para você SIM, Não, CANCELAR
  //E tem constantes do tipo "mr" para cada um dos retornos.
  self.ModalResult := mrYes;
end;

constructor TfrmPesquisa.Create(AOwner: TComponent; par_lstCampos: array of string;
  par_cTabela: string; parConexaoBD: TZabstractconnection);
var
  n: integer;
begin
  inherited Create(AOwner);




  cCampos := '';
  cTabela := par_cTabela;

  self.Caption := 'Pesquisa de ' + cTabela;

  qryConsulta.Connection := parConexaoBD;

  //Preenchendo o comboBox com os campos que serão possíveis usar na consulta
  for n := 0 to Length(par_lstCampos) - 1 do
  begin
    cbCampos.Items.Add(par_lstCampos[n]);
    if n = 0 then
      cCampos := par_lstCampos[n]
    else
      cCampos := cCampos + ',' + par_lstCampos[n];
  end;

  cbCampos.ItemIndex := 0;


  if qryConsulta.Active then
    qryConsulta.Close;

  //Para ficar mais bonito, abro a consulta com os 10 primeiros resultados encontrados.
  with qryConsulta.sql do
  begin
    Clear;
    add('select ' + cCampos);
    add('from ' + cTabela);
    add('limit 10');
  end;
  qryConsulta.Open;

end;

procedure TfrmPesquisa.fazerAPesquisa;
begin
  if qryConsulta.Active then
    qryConsulta.Close;

  //Preste atenção que aqui não tem o LIMIT pois quero que retorne TODAS
  //as linhas que satisfaçam a consulta
  with qryConsulta.sql do
  begin
    Clear;
    add('select ' + cCampos);
    add('from ' + cTabela);
    add('where ' + trim(cbCampos.Text) + ' like :cParametro');
  end;
  if trim(cbFiltro.Text) = 'parte' then
    qryConsulta.ParamByName('cParametro').AsString := '%' + trim(edtBusca.Text) + '%'
  else if trim(cbFiltro.Text) = 'igual' then
    qryConsulta.ParamByName('cParametro').AsString := trim(edtBusca.Text)
  else if trim(cbFiltro.Text) = 'inicio' then
    qryConsulta.ParamByName('cParametro').AsString := trim(edtBusca.Text) + '%';
  qryConsulta.Open;
end;

end.
