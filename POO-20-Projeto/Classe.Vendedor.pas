unit Classe.Vendedor;

interface

uses
  Classe.Pessoa;

type
  TVendedor = class(TPessoa)
  private
    FComissao: Currency;
    procedure SetComissao(const Value: Currency);
  public
    property Comissao : Currency read FComissao write SetComissao;
//Override - Sobrecarregando a fun��o calcularSalario criada na classe Pessoa.
    function calcularSalario :  Currency; override;

  end;

implementation

{ TVendedor }

function TVendedor.calcularSalario: Currency;
begin
  Result := Salario + Comissao;
end;

procedure TVendedor.SetComissao(const Value: Currency);
begin
  FComissao := Value;
end;

end.
