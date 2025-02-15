unit Classe.Pessoa;

interface

uses
  System.Classes, System.SysUtils, Interfaces;

type
  TPessoa = class
  private
    FPrivate : String;

  protected // Variaveis protected somente as classes filhas tem visibilidade
    FProtected : String;

  public
    Nome : String;
    Telefone : String;
    Endereco : String;
    Cidade : String;
    UF : String;
    Tipo : String;
    Conexao : IConexao;

    constructor Create(aConexao : IConexao); virtual;
    procedure Cadastrar;
    procedure CriarFinanceiro;
    function GetFProtected : String;

  end;

implementation

{ TCliente }

procedure TPessoa.Cadastrar;
var
  Lista : TStringList;

begin

  Lista := TStringList.Create;

  try
    Lista.Add('Nome: ' + Nome);
    Lista.Add('Telefone: ' + Telefone);
    Lista.Add('Endere�o: ' + Endereco);
    Lista.Add('Cidade: ' + Cidade);
    Lista.Add('UF: ' + UF);

    Lista.SaveToFile(Nome + '_Cliente.txt');

    Conexao.Gravar;

  finally
    Lista.Free;
  end;

end;

constructor TPessoa.Create(aConexao : IConexao);
begin
  Conexao := aConexao;
  UF := 'MT';
end;

procedure TPessoa.CriarFinanceiro;
var
  Lista : TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome: ' + Nome);
    Lista.SaveToFile(Nome + '_Financeiro.txt');
  finally
    Lista.Free;
  end;

end;

function TPessoa.GetFProtected: String;
begin
  Result := FProtected;
end;

end.
