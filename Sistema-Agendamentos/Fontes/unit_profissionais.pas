unit unit_profissionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, unit_dados, classe.profissionais, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab;

type
  Tform_profissionais = class(TForm)
    shape_fundo_form_agendamento: TShape;
    PanelAgrupaCamposAgendamento: TPanel;
    PanelContainer: TPanel;
    LabelNoemProfissional: TLabel;
    LabelCelular: TLabel;
    LabelTituloCadastrarProfissional: TLabel;
    MaskEditCelular: TMaskEdit;
    PanelBotoesAgendarCancelar: TPanel;
    PanelBotaoAgendar: TPanel;
    PanelBotaoCancelar: TPanel;
    SpeedButtonAgendar: TSpeedButton;
    SpeedButtonCancelar: TSpeedButton;
    EditNomeProfissional: TEdit;
    PanelBordaNomeProfissional: TPanel;
    PanelBordaEspecialidade: TPanel;
    EditEspecialidade: TEdit;
    LabelEspecialidade: TLabel;
    PanelBordaCelular: TPanel;
    dbg_registros: TDBGrid;
    Label1: TLabel;
    ds_profissionais: TDataSource;
    Label10: TLabel;
    Label2: TLabel;
    labelMsnDELouEdit: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    procedure SpeedButtonCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbg_registrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure dbg_registrosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButtonAgendarClick(Sender: TObject);
    procedure dbg_registrosDblClick(Sender: TObject);
    procedure SpeedButtonAgendarMouseEnter(Sender: TObject);
    procedure SpeedButtonAgendarMouseLeave(Sender: TObject);
    procedure SpeedButtonCancelarMouseEnter(Sender: TObject);
    procedure SpeedButtonCancelarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_profissionais: Tform_profissionais;

implementation

{$R *.dfm}

uses unit_funcoes;


procedure Tform_profissionais.dbg_registrosDblClick(Sender: TObject);
begin
  if (not (dbg_registros.DataSource.DataSet.IsEmpty)) then
  begin
    EditNomeProfissional.Text := dbg_registros.DataSource.DataSet.FieldByName('ds_profissional').AsString;
    EditEspecialidade.Text    := dbg_registros.DataSource.DataSet.FieldByName('ds_especialidade').AsString;
    MaskEditCelular.Text      := dbg_registros.DataSource.DataSet.FieldByName('nr_contato').AsString;

    DataModule1.Profissional.id_profissional := dbg_registros.DataSource.DataSet.FieldByName('id_profissional').AsInteger;

    EditNomeProfissional.SetFocus;
  end;
end;

procedure Tform_profissionais.dbg_registrosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //prcDrawColumnCell(dbg_registros, Rect, DataCol, Column, State);
  //prcAjustaTamanhoLinha(dbg_Registros, 33);
end;

procedure Tform_profissionais.dbg_registrosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (dbg_registros.DataSource.DataSet.IsEmpty)) AND (key = VK_DELETE) then
    DataModule1.Profissional.prc_deleta(dbg_registros.DataSource.DataSet.FieldByName('id_profissional').AsInteger );

  //prcAjustaTamanhoLiha(dbg_Registros, 33);
end;

procedure Tform_profissionais.FormShow(Sender: TObject);
begin
  ds_profissionais.DataSet := DataModule1.Profissional.fnc_consulta('');
  //prcAjustaTamanhoLiha(dbg_Registros, 33);
end;

procedure Tform_profissionais.SpeedButtonAgendarClick(Sender: TObject);
var
  Operacao,
  Erro: string;
begin
  prcValidarCamposObrigatorios( form_profissionais );

  DataModule1.Profissional.ds_profissional  := EditNomeProfissional.Text;
  DataModule1.Profissional.ds_especialidade := EditEspecialidade.Text;
  DataModule1.Profissional.nr_contato       := MaskEditCelular.Text;

  if DataModule1.Profissional.id_profissional > 0 then
    Operacao := 'ALTERAR'
  else
    Operacao := 'INSERIR';

  if DataModule1.Profissional.fnc_inserir_altear(Operacao, Erro) then
  begin
    fnc_criar_mensagem('INSERINDO DADOS',
                       'Cadastrar/Alterar Profissional',
                       'Cadastro/Altera��o Realizado com Sucesso! ' +
                       '',
                       ExtractFilePath(Application.ExeName) + 'imagens\sucesso.png',
                       'OK');
    Close;
  end else
  begin
    fnc_criar_mensagem('INSERINDO DADOS',
                       'Erro ao Cadastrar/Alterar Profissional',
                       'N�o foi poss�vel Cadastrar/Alterar Profissional, poss�vel causa: ' +
                       Erro,
                       ExtractFilePath(Application.ExeName) + 'imagens\erro.png',
                       'OK');

    EditNomeProfissional.SetFocus;
  end;
end;

procedure Tform_profissionais.SpeedButtonAgendarMouseEnter(Sender: TObject);
begin
  SpeedButtonAgendar.Font.Color := $00591A05;
end;

procedure Tform_profissionais.SpeedButtonAgendarMouseLeave(Sender: TObject);
begin
  SpeedButtonAgendar.Font.Color := clWhite;
end;

procedure Tform_profissionais.SpeedButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure Tform_profissionais.SpeedButtonCancelarMouseEnter(Sender: TObject);
begin
  SpeedButtonCancelar.Font.Color := $00591A05;
end;

procedure Tform_profissionais.SpeedButtonCancelarMouseLeave(Sender: TObject);
begin
  SpeedButtonCancelar.Font.Color := clWhite;
end;

end.
