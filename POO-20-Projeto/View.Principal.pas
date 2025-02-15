unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Pessoa,
  Classe.Vendedor, Classe.Administrativo;

type
  TEnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbFuncao: TComboBox;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtSalario: TEdit;
    Label4: TLabel;
    edtBonus: TEdit;
    btnCadastrar: TButton;
    btnVoltar: TButton;
    btnProximo: TButton;
    Memo1: TMemo;
    btnCalcular: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
  private
    procedure fnc_IncluirAdministrativo;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    procedure fnc_ExibirDados(Posicao : Integer);
  public

    Funcionario: Array [1 .. 100] of TPessoa; { Polimorfismo -> Heren�a }
    QtdFuncionario: Integer;
    RegAtual : Integer;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  try
    case TEnumFuncao(cbFuncao.ItemIndex) of
      tpAdministrativo:
        begin
          fnc_IncluirAdministrativo;
        end;
      tpVendedor:
        begin
          fnc_IncluirVendedor;
        end;
      tpFuncionario:
        begin
          fnc_IncluirFuncionario;
        end;
    end;
    Inc(QtdFuncionario);
  except
    raise Exception.Create('Error ao cadastrar funcion�rio');
  end;

end;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  Total : Currency;
  I : Integer;
begin
  Total := 0;
  for I := 0 to QtdFuncionario -1 do
  begin
    Total := Total + Funcionario[I].calcularSalario;
  end;
  Memo1.Lines.Add('Sua folha salarial � de: R$ ' + CurrToStr(Total));
end;

procedure TForm1.btnVoltarClick(Sender: TObject);
begin
  if RegAtual <= 0 then
    exit;

  RegAtual := RegAtual - 1;
  fnc_ExibirDados(RegAtual);
end;

procedure TForm1.btnProximoClick(Sender: TObject);
begin
  if RegAtual >= QtdFuncionario then
    exit;

  RegAtual := RegAtual + 1;
  fnc_ExibirDados(RegAtual);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QtdFuncionario := 0;
  RegAtual := 0;
end;

procedure TForm1.fnc_ExibirDados(Posicao: Integer);
begin
  edtNome.Text := Funcionario[RegAtual].Nome;
  edtSalario.Text := CurrToStr(Funcionario[RegAtual].Salario);

  if (Funcionario[RegAtual].ClassName = 'TAdministrativo') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TAdministrativo(Funcionario[RegAtual]).Bonus);
    cbFuncao.ItemIndex := Integer(tpAdministrativo);
  end;

  if (Funcionario[RegAtual].ClassName = 'TVendedor') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TVendedor(Funcionario[RegAtual]).Comissao);
    cbFuncao.ItemIndex := Integer(tpVendedor);
  end;

  if (Funcionario[RegAtual].ClassName = 'TPessoa') then
  begin
    edtBonus.Enabled := false;
    edtBonus.Text := '';
    cbFuncao.ItemIndex := Integer(tpFuncionario);
  end;
end;

procedure TForm1.fnc_IncluirAdministrativo;
begin
  Funcionario[QtdFuncionario] := TAdministrativo.Create;
  TAdministrativo(Funcionario[QtdFuncionario]).Bonus :=
    StrToCurr(edtBonus.Text);
  TAdministrativo(Funcionario[QtdFuncionario]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[QtdFuncionario]).Salario :=
    StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[QtdFuncionario] := TVendedor.Create;
  TVendedor(Funcionario[QtdFuncionario]).Comissao := StrToCurr(edtBonus.Text);
  TVendedor(Funcionario[QtdFuncionario]).Nome := edtNome.Text;
  TVendedor(Funcionario[QtdFuncionario]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[QtdFuncionario] := TPessoa.Create;
  (Funcionario[QtdFuncionario]).Nome := edtNome.Text;
  (Funcionario[QtdFuncionario]).Salario := StrToCurr(edtSalario.Text);
end;

end.
