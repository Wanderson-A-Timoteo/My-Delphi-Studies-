unit Classe.Pessoa;

interface

uses
  System.SysUtils, Classe.SQL;

type
  TPessoa = class
  private
    FNome: String;
    FEtnia: String;
    FDataNasc: String;
    FSexo: String;
    function getNome: String;
    procedure setNome(Value: String);
    procedure SetEtnia(const Value: String);
    procedure SetDataNasc(const Value: String);
    procedure SetSexo(const Value: String);
  public
    property DataNasc: String read FDataNasc write SetDataNasc;
    property Sexo: String read FSexo write SetSexo;
    property Etnia: String read FEtnia write SetEtnia;
    property Nome: String read getNome write setNome;
    function Idade: Integer;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(DataNasc)) / 365.25);
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

end.
