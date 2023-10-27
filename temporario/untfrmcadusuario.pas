unit untFrmCadUsuario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  DBCtrls, StdCtrls;

type

  { TfrmCadUsuario }

  TfrmCadUsuario = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    navUsuario: TDBNavigator;
    dsUsuario: TDataSource;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    procedure dsUsuarioDataChange(Sender: TObject; Field: TField);
    procedure dsUsuarioStateChange(Sender: TObject);
    procedure dsUsuarioUpdateData(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.lfm}

{ TfrmCadUsuario }

procedure TfrmCadUsuario.dsUsuarioDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TfrmCadUsuario.dsUsuarioStateChange(Sender: TObject);
begin

end;

procedure TfrmCadUsuario.dsUsuarioUpdateData(Sender: TObject);
begin

end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  dsUsuario.DataSet.open;
end;

end.

