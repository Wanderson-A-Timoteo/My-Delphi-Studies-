unit Form.Heranca2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Form.Padrao, FMX.Controls.Presentation, FMX.Layouts;

type
  TFormPadrao2 = class(TFormPadrao)
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadrao2: TFormPadrao2;

implementation

{$R *.fmx}

procedure TFormPadrao2.Button4Click(Sender: TObject);
begin
  inherited;
  ShowMessage('Inserido pelo Form Heran�a 2');
end;

end.
