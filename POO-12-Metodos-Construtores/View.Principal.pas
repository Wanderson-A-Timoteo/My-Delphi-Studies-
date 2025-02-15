unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit4, Classe.Cliente,
  Classe.Pessoa;

type
  TForm3 = class(TForm)
    Button1: TButton;
    edtNome: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
{
  4 - Principais Conceitos
  Abstra��o
  Heran�a
  Encapsulamento
  Polimorfismo
}

procedure TForm3.Button1Click(Sender: TObject);
var
  Pessoa1 : TPessoa;
  Cliente1, Cliente2, Cliente3 : TCliente;
  Value : Currency;
begin
  Pessoa1 := TPessoa.Create;
  Pessoa1.Nome := 'Jeane';
  Pessoa1.DataNasc := '21/11/1982';
  Pessoa1.Sexo := 'Feminino';

  Cliente1 := TCliente.Create;
  Cliente2 := TCliente.Create('Wanderson');
  Cliente3 := TCliente.Create(Pessoa1);
  try
    ShowMessage(Cliente1.Nome);

    ShowMessage(Cliente2.Nome);

    ShowMessage(Cliente3.Nome + ' - ' + Cliente3.DataNasc + ' - ' + Cliente3.Sexo);
  finally
    Pessoa1.Free;
    Cliente1.Free;
    Cliente2.Free;
  end;
end;

end.
