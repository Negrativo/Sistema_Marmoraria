unit Data_Modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, Data.Win.ADODB, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TData_Module = class(TDataModule)
    Conexao: TFDConnection;
    Tb_Cliente: TFDTable;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    Tb_Clientennumeclie: TIntegerField;
    Tb_Clientecnomeclie: TStringField;
    Tb_Clientecmailclie: TStringField;
    Tb_Clientec_cpfclie: TStringField;
    Tb_Clientecendeclie: TStringField;
    Tb_Clientednascclie: TDateField;
    Tb_Clientecsexoclie: TStringField;
    Tb_Clientecfoneclie: TStringField;
    Q_Cliente: TFDQuery;
    Q_Clientennumeclie: TIntegerField;
    Q_Clientecnomeclie: TStringField;
    Q_Clientecmailclie: TStringField;
    Q_Clientec_cpfclie: TStringField;
    Q_Clientecendeclie: TStringField;
    Q_Clientednascclie: TDateField;
    Q_Clientecsexoclie: TStringField;
    Q_Clientecfoneclie: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data_Module: TData_Module;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
