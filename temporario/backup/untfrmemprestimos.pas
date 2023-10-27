unit untFrmEmprestimos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  DBCtrls, StdCtrls, DBExtCtrls, Buttons, ZDataset, Types, untDmConexao, untFrmCadObra;

type

  { TfrmEmprestimos }

  TfrmEmprestimos = class(TForm)
    DBGrid1: TDBGrid;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    edtObra: TDBEdit;
    edtUsuario: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    dsEmprestimo: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PageControl1: TPageControl;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure DBDateEdit1Change(Sender: TObject);
    procedure edtUsuarioChange(Sender: TObject);
    procedure dsEmprestimoDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  frmEmprestimos: TfrmEmprestimos;

implementation
        uses upesquisa;
{$R *.lfm}

{ TfrmEmprestimos }

procedure TfrmEmprestimos.FormCreate(Sender: TObject);
begin
    dsEmprestimo.DataSet.open;
end;

procedure TfrmEmprestimos.SpeedButton1Click(Sender: TObject);
var
  pesquisa : TfrmPesquisa;
begin
    try
      pesquisa := TfrmPesquisa.create(self, ['obr_codigo', 'titulo'], 'obra', DataModule1.qryEmprestimo.Connection);
      if pesquisa.ShowModal() = mryes then
      begin
        DataModule1.qryEmprestimo.FieldByName('obr_codigo').AsInteger:= pesquisa.qryConsulta.FieldByName('obr_codigo').AsInteger;
        DataModule1.qryEmprestimo.FieldByName('titulo').AsString:= pesquisa.qryConsulta.FieldByName('titulo').AsString;
      end;
    finally
      pesquisa.free
    end;
end;

procedure TfrmEmprestimos.SpeedButton2Click(Sender: TObject);
var
  pesquisa : TfrmPesquisa;
begin
    try
      pesquisa := TfrmPesquisa.create(self, ['usu_codigo', 'nome', 'cpf'], 'usuario', DataModule1.qryEmprestimo.Connection);
      if pesquisa.ShowModal() = mryes then
      begin
        DataModule1.qryEmprestimo.FieldByName('usu_codigo').AsInteger:= pesquisa.qryConsulta.FieldByName('usu_codigo').AsInteger;
        DataModule1.qryEmprestimo.FieldByName('nome').AsString:= pesquisa.qryConsulta.FieldByName('nome').AsString;
        DataModule1.qryEmprestimo.FieldByName('cpf').AsInteger:= pesquisa.qryConsulta.FieldByName('cpf').AsInteger;
      end;
    finally
      pesquisa.free
    end;
end;

procedure TfrmEmprestimos.SpeedButton3Click(Sender: TObject);
var
  pesquisa : TfrmPesquisa;
begin
    try
      pesquisa := TfrmPesquisa.create(self, ['obr_codigo', 'exe_numero', 'situacao', 'data_compra'], 'exemplar', DataModule1.qryEmprestimo.Connection);
      if pesquisa.ShowModal() = mryes then
      begin
        DataModule1.qryEmprestimo.FieldByName('obr_codigo').AsInteger:= pesquisa.qryConsulta.FieldByName('obr_codigo').AsInteger;
        DataModule1.qryEmprestimo.FieldByName('exe_numero').AsInteger:= pesquisa.qryConsulta.FieldByName('exe_numero').AsInteger;
        DataModule1.qryEmprestimo.FieldByName('situacao').AsString:= pesquisa.qryConsulta.FieldByName('situacao').AsString;
        DataModule1.qryEmprestimo.FieldByName('data_compra').AsString:= pesquisa.qryConsulta.FieldByName('data_compra').AsString;
      end;
    finally
      pesquisa.free
    end;
end;


procedure TfrmEmprestimos.TabSheet2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TfrmEmprestimos.DBDateEdit1Change(Sender: TObject);
begin

end;

procedure TfrmEmprestimos.edtUsuarioChange(Sender: TObject);
begin

end;

procedure TfrmEmprestimos.dsEmprestimoDataChange(Sender: TObject; Field: TField
  );
begin

end;

end.

