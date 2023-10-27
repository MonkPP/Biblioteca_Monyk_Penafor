unit untFrmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  untFrmCadUsuario, untFrmCadObra, untFrmCadAutor, untFrmCadAssunto,
  untFrmCadEditora, untFrmEmprestimos;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    StatusBar1: TStatusBar;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }


procedure TfrmPrincipal.MenuItem2Click(Sender: TObject);
begin
  try
    frmcadusuario := TfrmCadUsuario.Create(self);
    frmCadUsuario.ShowModal();
  finally
    frmcadusuario.Free;
  end;
end;

procedure TfrmPrincipal.MenuItem3Click(Sender: TObject);
begin
  try
    frmcadobra := TfrmCadobra.Create(self);
    frmCadObra.ShowModal();
  finally
    frmcadobra.Free;
  end;
end;

procedure TfrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  try
    frmCadAutor := TfrmCadAutor.Create(self);
    frmCadAutor.ShowModal();
  finally
    frmCadAutor.Free;
  end;
end;

procedure TfrmPrincipal.MenuItem5Click(Sender: TObject);
begin
  try
    frmCadAssunto := TfrmCadAssunto.Create(self);
    frmCadAssunto.ShowModal();
  finally
    frmCadAssunto.Free;

  end;
end;

procedure TfrmPrincipal.MenuItem6Click(Sender: TObject);
begin
  try
    frmCadEditora := TfrmCadEditora.Create(self);
    frmCadEditora.ShowModal();
  finally
    frmCadEditora.Free;

  end;
end;

procedure TfrmPrincipal.MenuItem7Click(Sender: TObject);
begin
  try
    frmEmprestimos := TfrmEmprestimos.Create(self);
    frmEmprestimos.ShowModal();
  finally
    frmEmprestimos.Free;

  end;
end;

end.
