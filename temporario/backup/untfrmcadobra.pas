unit untFrmCadObra;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  StdCtrls, DBCtrls, Buttons, ZDataset, ZSqlUpdate, lcltype, Types;

type

  { TfrmCadObra }

  TfrmCadObra = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dsAutor: TDataSource;
    dsAssunto: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    dsObraAssunto: TDataSource;
    dsExemplar: TDataSource;
    dsObraAutor: TDataSource;
    dsEditora: TDataSource;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    dsObra: TDataSource;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    qryObraAutor: TZQuery;
    updQryObraAutor: TZUpdateSQL;
    qryObraAssunto: TZQuery;
    updQryObraAssunto: TZUpdateSQL;
    qryExemplar: TZQuery;
    updQryExemplar: TZUpdateSQL;
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure DBLookupComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox2Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure dsObraAutorStateChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  frmCadObra: TfrmCadObra;

implementation
   uses upesquisa;
{$R *.lfm}

{ TfrmCadObra }

procedure TfrmCadObra.PageControl1Change(Sender: TObject);
begin

end;

procedure TfrmCadObra.SpeedButton1Click(Sender: TObject);
var
  pesquisa : TfrmPesquisa;
begin
    try

      pesquisa := TfrmPesquisa.create(self, ['aut_codigo', 'nome'], 'autor', qryObraAutor.Connection);
      if pesquisa.ShowModal() = mryes then
      begin

        qryObraAutor.FieldByName('aut_codigo').AsInteger:= pesquisa.qryConsulta.FieldByName('aut_codigo').AsInteger;
        qryObraAutor.FieldByName('nome').AsString:= pesquisa.qryConsulta.FieldByName('nome').AsString;
      end;
    finally

      pesquisa.free
    end;
end;

procedure TfrmCadObra.TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TfrmCadObra.TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;


procedure TfrmCadObra.DBLookupComboBox1Change(Sender: TObject);
begin

end;

procedure TfrmCadObra.DBLookupComboBox2Change(Sender: TObject);
begin

end;

procedure TfrmCadObra.Button1Click(Sender: TObject);
begin

end;

procedure TfrmCadObra.DBEdit2Change(Sender: TObject);
begin

end;

procedure TfrmCadObra.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  pesquisa : TfrmPesquisa;
begin
  if key = vk_f4 then
  begin
    try
      pesquisa := TfrmPesquisa.create(self, ['aut_codigo', 'nome'], 'autor', qryObraAutor.Connection);
      if pesquisa.ShowModal() = mryes then
      begin
        qryObraAutor.FieldByName('aut_codigo').AsInteger:= pesquisa.qryConsulta.FieldByName('aut_codigo').AsInteger;
        qryObraAutor.FieldByName('nome').AsString:= pesquisa.qryConsulta.FieldByName('nome').AsString;
      end;
    finally
      pesquisa.free
    end;
  end;
end;

procedure TfrmCadObra.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin

end;

procedure TfrmCadObra.dsObraAutorStateChange(Sender: TObject);
begin

end;

procedure TfrmCadObra.Edit1Change(Sender: TObject);
begin

end;

procedure TfrmCadObra.FormCreate(Sender: TObject);
begin
  qryObraAssunto.Open;
  qryObraAutor.open;
  qryExemplar.open;
  dsObraAutor.DataSet.open;
  dsObra.DataSet.open;
  dsExemplar.DataSet.open;
end;

end.

