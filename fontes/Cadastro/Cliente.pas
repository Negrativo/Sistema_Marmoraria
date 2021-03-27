unit Cliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ExtCtrls, FMX.StdCtrls, FMX.ScrollBox, FMX.Grid,
  FMX.Objects, FMX.Edit, FMX.TabControl, FMX.Controls.Presentation,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm_Clientes = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    D_cliente: TDataSource;
    Q_cliente: TFDQuery;
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    T_cliente: TFDTable;
    T_clientennumeclie: TIntegerField;
    T_clientecnomeclie: TStringField;
    T_clientecmailclie: TStringField;
    T_clientec_cpfclie: TStringField;
    T_clientecendeclie: TStringField;
    T_clientednascclie: TDateField;
    T_clientecsexoclie: TStringField;
    T_clientecfoneclie: TStringField;
    procedure Image5Click(Sender: TObject);
    procedure Image_salvarCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Clientes: TForm_Clientes;

implementation

{$R *.fmx}

uses Conexao;

procedure TForm_Clientes.Image5Click(Sender: TObject);
var
  i :Integer;
begin

end;

procedure TForm_Clientes.Image_salvarCClick(Sender: TObject);
begin
 Q_cliente.Post;
end;



end.
