unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private // � como uma Casa, s� tem acesso quem morar nela
    FNome: String;
    FEtnia: String;
    FDataNasc: String;
    FSexo: String;
    function getNome: String;
    procedure setNome(Value: String);
    procedure SetEtnia(const Value: String);
    procedure SetDataNasc(const Value: String);
    procedure SetSexo(const Value: String);

  protected // � como um grupo de Whatsapp da Familia, todos que est�o tem acesso
    FWhatsapp : String;

  public // � com uma Postagem no Facebook, todos que utilizam a classe tem acesso
    property DataNasc: String read FDataNasc write SetDataNasc;
    property Sexo: String read FSexo write SetSexo;
    property Etnia: String read FEtnia write SetEtnia;
    property Nome: String read getNome write setNome;
    function Idade: Integer;
    function Receber(I : Integer) : String; overload;
    function Receber(I : Currency) : String; overload;
    function Receber(A, B : Integer) : String; overload;
    function RetornaNome : String; virtual;
    function MetodoAbstrato : String; virtual; abstract;
  end;

type
  TTeste = class(TPessoa)
    function Teste : Boolean;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(DataNasc)) / 365.25);
end;

function TPessoa.Receber(I: Currency): String;
begin
  Result := 'Recebi um Valor Currency: ' + CurrToStr(I);
end;

function TPessoa.Receber(I: Integer): String;
begin
  Result := 'Recebi um Valor Inteiro: ' + IntToStr(I);
end;

procedure TPessoa.SetDataNasc(const Value: String);
begin
  FDataNasc := Value;
end;

procedure TPessoa.SetEtnia(const Value: String);
begin
  FEtnia := Value;
end;

function TPessoa.getNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.setNome(Value: String);
begin
  if Value = '' then
    raise Exception.Create('Valor N�o pode ser vazio');

  FNome := Value;
end;

procedure TPessoa.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

function TPessoa.Receber(A, B: Integer): String;
begin
  Result := 'A Soma desses Inteiros �: ' + IntToStr((A + B));
end;

function TPessoa.RetornaNome: String;
begin
  Nome := 'TPessoa';
end;

{ TTeste }

function TTeste.Teste: Boolean;
begin
  Self.FNome := '';
  Self.FWhatsapp := '';
  Result := true;
end;

end.
