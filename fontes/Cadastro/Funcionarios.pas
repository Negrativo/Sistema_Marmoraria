unit Funcionarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.TabControl, FMX.Controls.Presentation;

type
  TForm_Funcionarios = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    Funcionarios: TTabItem;
    E_pesquisar: TEdit;
    bt_pesquisar: TSpeedButton;
    Image5: TImage;
    Cadastro: TTabItem;
    Panel2: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    e_nomeC: TEdit;
    E_emailC: TEdit;
    E_foneC: TEdit;
    E_cpfC: TEdit;
    E_endeC: TEdit;
    E_nascC: TEdit;
    E_sexoC: TEdit;
    bt_salvar: TSpeedButton;
    Image2: TImage;
    bt_cancelar: TSpeedButton;
    Image3: TImage;
    bt_novo: TSpeedButton;
    Image4: TImage;
    E_valor: TEdit;
    Label8: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Funcionarios: TForm_Funcionarios;

implementation

{$R *.fmx}

end.
