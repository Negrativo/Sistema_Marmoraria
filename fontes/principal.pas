unit principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tform_principal = class(TForm)
    mn_principal: TMainMenu;
    mn_cadastro: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    mn_Estoque: TMenuItem;
    mn_movimentacao: TMenuItem;
    mn_relatorio: TMenuItem;
    mn_sair: TMenuItem;
    mn_clientes: TMenuItem;
    mn_funcionario: TMenuItem;
    mn_fornecedor: TMenuItem;
    mn_pedras: TMenuItem;
    mn_materias: TMenuItem;
    mn_venda: TMenuItem;
    mn_relatorio_vendas: TMenuItem;
    bt_Clientes: TSpeedButton;
    bt_vendas: TSpeedButton;
    bt_sair: TSpeedButton;
    Img_clientes: TImage;
    Img_Vendas: TImage;
    Img_sair: TImage;
    Line1: TLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mn_fornecedorClick(Sender: TObject);
    procedure mn_funcionarioClick(Sender: TObject);
    procedure Img_sairClick(Sender: TObject);
    procedure Img_clientesClick(Sender: TObject);
    procedure mn_clientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation


{$R *.fmx}

uses login, Fornecedor, Funcionarios, Cliente;



procedure Tform_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure Tform_principal.Img_clientesClick(Sender: TObject);
begin
  Form_Clientes := TForm_Clientes.Create(form_principal);
  Form_Clientes.ShowModal;
end;

procedure Tform_principal.Img_sairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tform_principal.mn_clientesClick(Sender: TObject);
begin
  Form_Clientes := TForm_Clientes.Create(form_principal);
  Form_Clientes.ShowModal;
end;

procedure Tform_principal.mn_fornecedorClick(Sender: TObject);
begin
  Form_Fornecedor := TForm_Fornecedor.Create(form_principal);
  Form_Fornecedor.ShowModal;
end;

procedure Tform_principal.mn_funcionarioClick(Sender: TObject);
begin
  Form_Funcionarios := TForm_Funcionarios.Create(form_principal);
  Form_Funcionarios.ShowModal;
end;

end.
