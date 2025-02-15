unit Classe.Calculadora;

interface

uses
  System.SysUtils;

type

  // Interface
  ICalculadora = Interface
    ['{187FB061-D7B5-48A5-BB46-7E989E40AAA6}'] //Assinatura da Interface
    function Operacao(Num1, Num2 : double) : double;
  End;

  // Toda classe precisa receber TInterfacedObject e a interface que ela usa
  TSomar = class(TInterfacedObject, ICalculadora)
    public
      constructor Create;
      destructor Destroy; override;

      class function New : ICalculadora;

      function Operacao(Num1, Num2 : double) : double;
      function SomarDireto(Num1, Num2 : double) : double;
  end;

  TSubtrair = class(TInterfacedObject, ICalculadora)
    public
        constructor Create;
        destructor Destroy; override;

        class function New : ICalculadora;

        function Operacao(Num1, Num2 : double) : double;
  end;

  TDividir = class(TInterfacedObject, ICalculadora)
    public
      constructor Create;
      destructor Destroy; override;

      class function New : ICalculadora;

      function Operacao(Num1, Num2 : double) : double;
  end;

  TMultiplicar = class(TInterfacedObject, ICalculadora)
    public
      constructor Create;
      destructor Destroy; override;

      class function New : ICalculadora;

      function Operacao(Num1, Num2 : double) : double;
  end;

implementation

{ TSoma }

constructor TSomar.Create;
begin

end;

destructor TSomar.Destroy;
begin

  inherited;
end;

class function TSomar.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TSomar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;

{ TSubtrair }

constructor TSubtrair.Create;
begin

end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

class function TSubtrair.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TSubtrair.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TDividir.Operacao(Num1, Num2: double): double;
begin
  if Num2 <= 0 then
    raise Exception.Create('Error: Valor n�o pode ser dividido por zero');
  Result := Num1 / Num2;
end;

{ TMultiplicar }

constructor TMultiplicar.Create;
begin

end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

class function TMultiplicar.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TMultiplicar.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

function TSomar.SomarDireto(Num1, Num2 : double): double;
begin
  Result := Num1 + Num2;
end;

end.
