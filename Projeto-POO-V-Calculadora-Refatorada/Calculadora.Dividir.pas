unit Calculadora.Dividir;

interface

uses
  Calculadora.Interfaces, Calculadora.Helpers, System.SysUtils;

type

  TDividir = class(TInterfacedObject, IOperacoes)
    constructor Create;
    destructor Destroy; override;

    class function New: IOperacoes;

    function Operacao(Num1, Num2: double): double; overload;
    function Operacao(Num1, Num2 : String) : String; overload;
  end;

implementation



{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New: IOperacoes;
begin
  Result := Self.Create;
end;

function TDividir.Operacao(Num1, Num2: String): String;
begin
  Result := CurrToStr(Num1.ToDouble / Num2.ToDouble);
end;

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Error: Valor n�o pode ser dividido por zero');
  Result := Num1 / Num2;
end;

end.
