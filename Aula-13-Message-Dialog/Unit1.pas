unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Retorno : Integer;
begin
  //MessageDlg('Erro na opera��o', mtError, [mbOK], 0);
  //MessageDlg('Erro na opera��o', mtWarning, [mbOK], 0);
  MessageDlg('Erro na opera��o, deseja continuar?', mtConfirmation, [mbYes, mbNo], 0);
  ShowMessage(IntToStr(Retorno));
end;

end.
