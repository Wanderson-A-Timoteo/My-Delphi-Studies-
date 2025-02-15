unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, RXSpeedBar, ExtCtrls, RxGrdCpt, DB, Vcl.Imaging.pngimage, Vcl.Buttons,
  Vcl.AppEvnts, System.DateUtils;

type
  TFormPrincipal = class(TForm)
    StatusBarPrincipal: TStatusBar;
    LabelLoja: TLabel;
    Label3: TLabel;
    LabelVersao: TLabel;
    PanelCabecalho: TPanel;
    ImageLogoFontdata: TImage;
    LabelModuloAuxiliar: TLabel;
    PanelMenu: TPanel;
    SpbFechar: TSpeedButton;
    SpbMinimizar: TSpeedButton;
    SpbMenuCadastro: TSpeedButton;
    SpbMenuEncerrar: TSpeedButton;
    SpbMenuPesquisar: TSpeedButton;
    Image1: TImage;
    PnlData: TPanel;
    LblData: TLabel;
    LblHora: TLabel;
    PanelLogoFontData: TPanel;
    PnlRodape: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MnuSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PesquisarStatusdaCriana1Click(Sender: TObject);
    procedure SpbFecharMouseEnter(Sender: TObject);
    procedure SpbMinimizarClick(Sender: TObject);
    procedure SpbMinimizarMouseEnter(Sender: TObject);
    procedure SpbMinimizarMouseLeave(Sender: TObject);
    procedure SpbFecharMouseLeave(Sender: TObject);
    procedure SpbFecharClick(Sender: TObject);
    procedure SpbMenuCadastroMouseEnter(Sender: TObject);
    procedure SpbMenuCadastroMouseLeave(Sender: TObject);
    procedure SpbMenuPesquisarMouseEnter(Sender: TObject);
    procedure SpbMenuPesquisarMouseLeave(Sender: TObject);
    procedure SpbMenuEncerrarMouseEnter(Sender: TObject);
    procedure SpbMenuEncerrarMouseLeave(Sender: TObject);
    procedure SpbMenuCadastroClick(Sender: TObject);
    procedure SpbMenuPesquisarClick(Sender: TObject);
    procedure SpbMenuEncerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TmrHoraAtualTimer(Sender: TObject);
  private
    { Private declarations }
    FDataHoraAtual: TDateTime;

    procedure OnModalBegin(ASender: TObject);
    procedure OnModalEnd(ASender: TObject);
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;


implementation

uses BibMarco, BibVariavel, Login, DMDados, PesquisarCriancas, CadastrarCrianca, Fundo, Fontdata.Utils;


{$R *.dfm}

procedure TFormPrincipal.SpbFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.SpbFecharMouseEnter(Sender: TObject);
begin
  SpbFechar.Font.Color := clRed;
end;

procedure TFormPrincipal.SpbFecharMouseLeave(Sender: TObject);
begin
  SpbFechar.Font.Color := $00DFDFDF;
end;

procedure TFormPrincipal.SpbMenuCadastroClick(Sender: TObject);
begin
  try
     FormCadastrarCrianca := TFormCadastrarCrianca.Create(nil);
     FormCadastrarCrianca.ShowModal;
   finally
     FreeAndNil(FormCadastrarCrianca);
   end;
end;

procedure TFormPrincipal.SpbMenuCadastroMouseEnter(Sender: TObject);
begin
  SpbMenuCadastro.Font.Color := clBlack;
end;

procedure TFormPrincipal.SpbMenuCadastroMouseLeave(Sender: TObject);
begin
  SpbMenuCadastro.Font.Color := clWhite;
end;

procedure TFormPrincipal.SpbMenuEncerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.SpbMenuEncerrarMouseEnter(Sender: TObject);
begin
  SpbMenuEncerrar.Font.Color := clBlack;
end;

procedure TFormPrincipal.SpbMenuEncerrarMouseLeave(Sender: TObject);
begin
  SpbMenuEncerrar.Font.Color := clWhite;
end;

procedure TFormPrincipal.SpbMenuPesquisarClick(Sender: TObject);
begin
  try
     FormPesquisarCriancas := TFormPesquisarCriancas.Create(nil);
     FormPesquisarCriancas.ShowModal;
   finally
     FreeAndNil(FormPesquisarCriancas);
   end;
end;

procedure TFormPrincipal.SpbMenuPesquisarMouseEnter(Sender: TObject);
begin
  SpbMenuPesquisar.Font.Color := clBlack;
end;

procedure TFormPrincipal.SpbMenuPesquisarMouseLeave(Sender: TObject);
begin
  SpbMenuPesquisar.Font.Color := clWhite;
end;

procedure TFormPrincipal.SpbMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFormPrincipal.SpbMinimizarMouseEnter(Sender: TObject);
begin
  SpbMinimizar.Font.Color := clRed;
end;

procedure TFormPrincipal.SpbMinimizarMouseLeave(Sender: TObject);
begin
  SpbMinimizar.Font.Color := $00DFDFDF;
end;

procedure TFormPrincipal.TmrHoraAtualTimer(Sender: TObject);
begin
  FDataHoraAtual    := DataModuleDados.DataServidor(False);
  if Verificado_Hora_Sefaz then
    Data_Hora_Sefaz := IncSecond(Data_Hora_Sefaz);
  LblData.Caption   := Format('%s %s', [TUtils.ConverterDiaSemana(FDataHoraAtual),
                         FormatDateTime('dd/MM/yyyy', FDataHoraAtual)]);
  LblHora.Caption   := FormatDateTime('HH:mm', FDataHoraAtual);
end;

procedure TFormPrincipal.OnModalBegin(ASender: TObject);
begin
  FormFundo.Show;
end;

procedure TFormPrincipal.OnModalEnd(ASender: TObject);
begin
  FormFundo.Hide;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Mensagem('Deseja sair do sistema?',mtConfirmation,[mbYes,mbNo]) = mrNo then
  begin
     Action := caNone;
  end;
end;

procedure TFormPrincipal.MnuSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.PesquisarStatusdaCriana1Click(Sender: TObject);
begin
  try
     FormPesquisarCriancas := TFormPesquisarCriancas.Create(nil);
     FormPesquisarCriancas.ShowModal;
   finally
     FreeAndNil(FormPesquisarCriancas);
   end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  LDataHoraExecutavel: TDateTime;
begin
  if FormLogin.Showmodal <> mrOk then
    Application.Terminate;
  LabelVersao.Caption                             := FormLogin.RxLabelVersao.Caption;
  LabelLoja.Caption                               := FormLogin.Fantasia_Loja;
  LabelLoja.Left                                  := (FormPrincipal.Width - LabelLoja.Width) div 2;
  FormLogin.Free;
  FormPrincipal.StatusBarPrincipal.Panels[0].Text := 'Banco de Dados';
  FormPrincipal.StatusBarPrincipal.Panels[1].Text := 'PostgreSQL';
  FileAge(Application.ExeName, LDataHoraExecutavel);
  PnlRodape.Caption                               := Format(PnlRodape.Caption, [YearOf(LDataHoraExecutavel)]);
  //Pega o Nome do Banco
  with DataModuleDados.QueryParametros do
  begin
    SQL.Clear;
    SQL.Add('SELECT current_database() as servidor_atual ');
    Prepare;
    Open;
    FormPrincipal.StatusBarPrincipal.Panels[2].Text := FieldByName('servidor_atual').AsString;

    FDataHoraAtual                                  := DataModuleDados.DataServidor(False);
    LblData.Caption                                 :=  Format('%s %s', [TUtils.ConverterDiaSemana(FDataHoraAtual),
                                                         FormatDateTime('dd/MM/yyyy', FDataHoraAtual)]);
    LblHora.Caption                                 := FormatDateTime('HH:mm', FDataHoraAtual);
  end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  Application.CreateForm(TFormFundo, FormFundo);
  Application.OnModalBegin := Self.OnModalBegin;
  Application.OnModalEnd   := Self.OnModalEnd;
end;

end.
