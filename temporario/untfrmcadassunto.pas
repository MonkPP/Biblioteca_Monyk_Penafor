unit untFrmCadAssunto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  DBCtrls, StdCtrls;

type

  { TfrmCadAssunto }

  TfrmCadAssunto = class(TForm)
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dsAssunto: TDataSource;
    Label1: TLabel;
    StatusBar1: TStatusBar;
  private

  public

  end;

var
  frmCadAssunto: TfrmCadAssunto;

implementation

{$R *.lfm}

end.

