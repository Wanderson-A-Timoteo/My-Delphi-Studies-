unit Mediator.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mediator.Model.Interfaces,
  Mediator.Model.Pedido.Mediator, Mediator.Model.Pedido;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FMediator : iMediator;
    FCaixa, FCozinha : iColleague;
  public
    { Public declarations }
    procedure ExibirCaixa(Value : String);
    procedure ExibirCozinha(Value : String);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  FCaixa
    .EnviarPedido(
      FCozinha,
      'Big Mac'
    );
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  FCozinha
    .EnviarPedido(
      FCaixa,
      'Big Mac Est� Pronto'
    );
end;

procedure TForm2.ExibirCaixa(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

procedure TForm2.ExibirCozinha(Value: String);
begin
  Memo2.Lines.Add(Value);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FMediator := TModelPedidoMediator.New;
  FCaixa := TModelPedido.New(FMediator, 'Caixa').Display.Exibir(ExibirCaixa).&End;
  FCozinha := TModelPedido.New(FMediator, 'Cozinha').Display.Exibir(ExibirCozinha).&End;
end;

end.
