unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit4;

type
  TForm3 = class(TForm)
    Button1: TButton;
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
  Orienta��o a Objetos Possui 4 Principais Conceitos:

  1 - Abstra��o
  2 - Heran�a
  3 - Encapsulamento
  4 - Polimorfismo
}

procedure TForm3.Button1Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := 'Wanderson';
    ShowMessage(Pessoa.Nome);
  finally
    Pessoa.Free;
  end;
end;

end.
