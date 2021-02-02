unit Clientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit,
  System.Rtti, FMX.Grid.Style, Data.DB, Data.Win.ADODB, FMX.ScrollBox, FMX.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ExtCtrls;

type
  Tform_Clientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    TabControl1: TTabControl;
    Usuarios: TTabItem;
    Cadastro: TTabItem;
    Panel2: TPanel;
    Image1: TImage;
    e_nomeC: TEdit;
    E_mailC: TEdit;
    E_foneC: TEdit;
    E_cpfC: TEdit;
    E_endeC: TEdit;
    E_nascC: TEdit;
    bt_salvar: TSpeedButton;
    Image_salvarC: TImage;
    bt_cancelar: TSpeedButton;
    image_cancelarC: TImage;
    bt_novo: TSpeedButton;
    Image_novoC: TImage;
    E_pesquisar: TEdit;
    bt_pesquisar: TSpeedButton;
    Image5: TImage;
    Grid1: TGrid;
    FDQuery1: TFDQuery;
    pop_sexo: TPopupBox;
    procedure Image_novoCClick(Sender: TObject);
    procedure Image_salvarCClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure associar_campos;
  public
    { Public declarations }
  end;

var
  form_Clientes: Tform_Clientes;

implementation

{$R *.fmx}

uses Data_Modulo;
{$R *.Surface.fmx MSWINDOWS}
{$R *.Windows.fmx MSWINDOWS}

procedure Tform_Clientes.associar_campos;
begin
  Data_Module.tb_Cliente.FieldByName('cnomeclie').Value := e_nomeC.Text;
  Data_Module.tb_Cliente.FieldByName('cmailclie').Value := e_mailC.Text;
  Data_Module.tb_Cliente.FieldByName('c_cpfclie').Value := e_cpfC.Text;
  Data_Module.tb_Cliente.FieldByName('cendeclie').Value := e_endeC.Text;
  Data_Module.tb_Cliente.FieldByName('dnascclie').Value := e_nascC.Text;
  Data_Module.tb_Cliente.FieldByName('dfoneclie').Value := e_foneC.Text;
  if pop_sexo.ItemIndex = 1 then
    Data_Module.tb_Cliente.FieldByName('csexoclie').Value := 'M'
  else
    Data_Module.tb_Cliente.FieldByName('csexoclie').Value := 'F';
end;

procedure Tform_Clientes.Image_salvarCClick(Sender: TObject);
begin
  associar_campos;
  Data_Module.tb_Cliente.Post;
  ShowMessage('Cliente salvo com sucesso!');
end;

procedure Tform_Clientes.FormActivate(Sender: TObject);
begin
  Data_module.Tb_Cliente.Active := true;
  Data_Module.Q_Cliente.Active := true;
end;

procedure Tform_Clientes.Image_novoCClick(Sender: TObject);
begin
  e_nomeC.Text := '';
  e_mailC.Text := '';
  e_cpfC.Text  := '';
  e_endeC.Text := '';
  e_foneC.Text := '';
  e_nascC.Text := '  /  /    ';

  Data_Module.tb_Cliente.Insert;

  e_nomeC.SetFocus;
end;

end.
