unit untFrmCadAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBCtrls,
  DBGrids, StdCtrls;

type

  { TfrmCadAutor }

  TfrmCadAutor = class(TForm)
    dsAutor: TDataSource;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    StatusBar1: TStatusBar;
  private

  public

  end;

var
  frmCadAutor: TfrmCadAutor;

implementation

{$R *.lfm}

end.

