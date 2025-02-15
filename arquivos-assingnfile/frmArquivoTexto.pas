unit frmArquivoTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnClick: TButton;
    Label1: TLabel;
    procedure btnClickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure ZapFile;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClickClick(Sender: TObject);
var
  files: TextFile;
  x, y: Integer;
  ok: Boolean;
begin
  // Essa opera��o cria um arquivo vazio com o nome associado ao AssignFile.
  // O conte�do do arquivo ser� apagado se esse arquivo j� existir.
  AssignFile(files, 'texto.tx');

  Rewrite(files);
  x := 10;
  y := 7;

  Writeln(files, x); //Escreve 10 na primeira lina do
  // arquivo. O cursor vai para a segunda linha.

  Write(files, x + 2);  //Esceve 12 (10 + 2) na segunda
  //linha. O cursor permanece na segunda linha

  Write(files, 'Hello');
  //No fim da segunda linha (posi��o do cursor) ser�
  // escrito a palavra �Hello�. O cursor permanece no
  // final da segunda linha.

  Write(files, x, y);  //Escreve 10 e depois 7 sem espa�o
  // na posi��o do cursor. O cursor permanece no fim da
  // segunda linha.

  Writeln(files, x, y); //Escreve 10 e depois 7 sem
 // espa�o na posi��o do cursor. O cursor se move para a
 // terceira linha

  ok := 5 > 7;

  Writeln(files, ok); //Escreve False (valor da vari�vel OK) na terceira linha.
  // O cursor se move para a quarta linha

  Writeln(files, x,' ',y); //Escreve 10, depois dois
  // espa�o, depois 7 na quarta linha. O Cursor vai
  // para a quinta linha

  Writeln(files, 'x=', x);  //Escreve �x=10� na quinta linha

  CloseFile(files); // CloseFile deve ser chamado ap�s ter terminado de trabalha com o arquivo
  //  Ele encerra o arquivo e conclui a grava��o.
end;

end.
