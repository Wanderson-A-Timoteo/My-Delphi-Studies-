unit Observer.Model.Garcom;

interface

uses Observer.Model.Interfaces;

Type
  TModelGarcom = class(TInterfacedObject, iPedidoOrigem, iObserver)
  private
    FPedido : TPedido;
    FDisplay : TEvDisplay;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPedidoOrigem;
    function FazerPedido(Value: TPedido): iPedidoOrigem;
    function Display(Value: TEvDisplay): iPedidoOrigem;
    function Observer: iObserver;
    function Update(Value : TPedido) : iObserver;
  end;

implementation

{ TModelGarcom }

constructor TModelGarcom.Create;
begin

end;

destructor TModelGarcom.Destroy;
begin

  inherited;
end;

function TModelGarcom.Display(Value: TEvDisplay): iPedidoOrigem;
begin
  Result := Self;
  FDisplay := Value;
end;

function TModelGarcom.FazerPedido(Value: TPedido): iPedidoOrigem;
begin
  Result := Self;
  FPedido := Value;
end;

class function TModelGarcom.New: iPedidoOrigem;
begin
  Result := Self.Create;
end;

function TModelGarcom.Observer: iObserver;
begin
  Result := Self;
end;

function TModelGarcom.Update(Value: TPedido): iObserver;
begin
  Result := Self;
  FDisplay('O Pedido: ' + Value.Produto + ' est� pronto');
end;

end.
