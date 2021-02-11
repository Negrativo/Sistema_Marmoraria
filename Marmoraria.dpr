program Marmoraria;

uses
  System.StartUpCopy,
  FMX.Forms,
  principal in 'fontes\principal.pas' {form_principal},
  login in 'fontes\login.pas' {Form_login},
  Funcionarios in 'fontes\Cadastro\Funcionarios.pas' {Form_Funcionarios},
  Fornecedor in 'fontes\Cadastro\Fornecedor.pas' {Form_Fornecedor},
  Cliente in 'fontes\Cadastro\Cliente.pas' {Form_Clientes},
  Conexao in 'Banco\Conexao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_login, Form_login);
  Application.CreateForm(TForm_Clientes, Form_Clientes);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
