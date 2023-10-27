unit untFrmCadEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  DBCtrls, StdCtrls;

type

  { TfrmCadEditora }

  TfrmCadEditora = class(TForm)
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    dsEditora: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    StatusBar1: TStatusBar;
  private

  public

  end;

var
  frmCadEditora: TfrmCadEditora;

implementation

{$R *.lfm}

end.

