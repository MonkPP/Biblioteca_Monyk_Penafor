program biblioteca;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, untFrmPrincipal, untDmConexao, zcomponent, untFrmCadUsuario, 
untFrmCadObra, untFrmCadAutor, untFrmCadAssunto, untFrmCadEditora, 
untFrmEmprestimos, upesquisa
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

