unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, Classe.Pessoa, FMX.Edit, Conexao.MySQL, Conexao.SQLServer, Classe.Fornecedor,
  Classe.Cliente, Interfaces, FMX.ListBox, Classe.Animal, Form.Heranca1,
  Form.Heranca2;

type

  TForm1 = class(TForm)
    Button2: TButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    ComboBox2: TComboBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  Cliente: TCliente;

begin
  Cliente := TCliente.Create(TConexaoSQLServer.Create);
  try
    Cliente.Nome := 'Ryan';
    Cliente.Telefone := '6532489444';
    Cliente.Endereco := 'Rua da saudade ';
    Cliente.Cidade := 'Cuiab�';
    Cliente.Saldo := 1000;


    Cliente.Cadastrar;
    Cliente.CriarFinanceiro;

  finally
    Cliente.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Fornecedor : TFornecedor;

begin
  Fornecedor := TFornecedor.Create(TConexaoSQLServer.Create);
  try
    Fornecedor.Nome := 'MT Inova��o Tecnologica LTDA';
    Fornecedor.Telefone := '6532489444';
    Fornecedor.Endereco := 'Rua da saudade ';
    Fornecedor.Cidade := 'Cuiab�';
    Fornecedor.RazaoSocial := 'Empresa de Tecnologia LTDA';

    Fornecedor.Cadastrar;
    Fornecedor.CriarFinanceiro;
  finally
    Fornecedor.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
  Pessoa : TPessoa;
begin
  case ComboBox1.ItemIndex of
    0 : Pessoa := TCliente.Create(nil);
    1 : Pessoa := TFornecedor.Create(nil);
  end;
  try
    ShowMessage(Pessoa.Tipo);
  finally
    Pessoa.Free;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Animal : TAnimal;
begin
  case ComboBox2.ItemIndex of
    0 : Animal :=  TCachorro.Create;
    1 : Animal := TGato.Create;
  end;
  try
  // Voz esta vindo da classe pai
    ShowMessage(Animal.Voz);
  finally
    Animal.Free;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FormPadrao1.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FormPadrao2.ShowModal;
end;

end.
