program Marmoraria;

uses
  System.StartUpCopy,
  FMX.Forms,
  principal in 'fontes\principal.pas' {form_principal},
  login in 'fontes\login.pas' {Form_login},
  Funcionarios in 'fontes\Cadastro\Funcionarios.pas' {Form_Funcionarios},
  Fornecedor in 'fontes\Cadastro\Fornecedor.pas' {Form_Fornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_login, Form_login);
  Application.Run;
end.
