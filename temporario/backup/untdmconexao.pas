unit untDmConexao;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, ZSqlUpdate, untFrmCadObra;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    qryUsuario: TZQuery;
    updQryUsuario: TZUpdateSQL;
    qryEditora: TZQuery;
    updQryEditora: TZUpdateSQL;
    qryAssunto: TZQuery;
    updQryAssunto: TZUpdateSQL;
    qryAutor: TZQuery;
    updQryAutor: TZUpdateSQL;
    qryObra: TZQuery;
    updQryObra: TZUpdateSQL;
    qryEmprestimo: TZQuery;
    updQryEmprestimo: TZUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  qryEditora.open;
  qryAutor.open;
  qryAssunto.Open;
  qryUsuario.open;
  qryObra.open;
  qryEmprestimo.open;

end;

end.

