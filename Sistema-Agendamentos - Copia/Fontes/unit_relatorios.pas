﻿unit unit_relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, classe.profissionais, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab, classe.relatorios,
  unit_dados;

type
  Tform_relatorios = class(TForm)
    shape_fundo_form_agendamento: TShape;
    PanelAgrupaCamposAgendamento: TPanel;
    PanelContainer: TPanel;
    LabelTipoRelatorio: TLabel;
    LabelDataInicial: TLabel;
    LabelTituloCadastrarUsuarios: TLabel;
    PanelBotoesAgendarCancelar: TPanel;
    PanelBotaoAgendar: TPanel;
    PanelBotaoCancelar: TPanel;
    SpeedButtonVizualizar: TSpeedButton;
    SpeedButtonCancelar: TSpeedButton;
    Label10: TLabel;
    PanelBordaTitulo: TPanel;
    Label4: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    ComboBoxTipoRelatorio: TComboBox;
    PanelBordaDataInicial: TPanel;
    MaskEditDataInicial: TMaskEdit;
    LabelDataFinal: TLabel;
    Label7: TLabel;
    MaskEditDataFinal: TMaskEdit;
    PanelBordaDataFinal: TPanel;
    ds_profissionais: TDataSource;
    LabelNoemProfissional: TLabel;
    dbl_cmb_profissionais: TDBLookupComboBox;
    LabelNomeCliente: TLabel;
    SpeedButtonPesquisaNomeCliente: TSpeedButton;
    EditNomeCliente: TEdit;
    Panel1: TPanel;
    procedure SpeedButtonCancelarClick(Sender: TObject);
    procedure SpeedButtonVizualizarMouseEnter(Sender: TObject);
    procedure SpeedButtonVizualizarMouseLeave(Sender: TObject);
    procedure SpeedButtonCancelarMouseEnter(Sender: TObject);
    procedure SpeedButtonCancelarMouseLeave(Sender: TObject);
    procedure SpeedButtonVizualizarClick(Sender: TObject);
    procedure MaskEditDataInicialExit(Sender: TObject);
    procedure MaskEditDataFinalExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonPesquisaNomeClienteClick(Sender: TObject);
    procedure ComboBoxTipoRelatorioCloseUp(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Relatorios     : TRelatorios;
    senha_original : String;
    cli_id_cliente : Integer;
  end;

var
  form_relatorios: Tform_relatorios;

implementation

{$R *.dfm}

uses unit_funcoes, unit_relatorio_agendamento_periodo, unit_cliente_consulta, unit_relatorio_agendamento_cliente,
  unit_relatorio_agendamento_profissional;

procedure Tform_relatorios.ComboBoxTipoRelatorioCloseUp(Sender: TObject);
begin
  if ComboBoxTipoRelatorio.ItemIndex = 0 then  // período
  begin
    cli_id_cliente := 0;
    EditNomeCliente.Text := '';

    SpeedButtonPesquisaNomeCliente.Enabled := False;

    dbl_cmb_profissionais.Enabled          := False;
    dbl_cmb_profissionais.KeyValue         := null;

  end else
  if ComboBoxTipoRelatorio.ItemIndex = 1 then  // cliente
  begin

    SpeedButtonPesquisaNomeCliente.Enabled := True;

    dbl_cmb_profissionais.Enabled          := False;
    dbl_cmb_profissionais.KeyValue         := null;

  end else
  if ComboBoxTipoRelatorio.ItemIndex = 2 then  // profissional
  begin
    cli_id_cliente := 0;
    EditNomeCliente.Text := '';

    SpeedButtonPesquisaNomeCliente.Enabled := False;

    dbl_cmb_profissionais.Enabled          := True;

  end;
end;

procedure Tform_relatorios.FormCreate(Sender: TObject);
begin
  Relatorios := TRelatorios.Create( DataModule1.FDConnection );
end;

procedure Tform_relatorios.FormDestroy(Sender: TObject);
begin
  Relatorios.Free;
end;

procedure Tform_relatorios.FormShow(Sender: TObject);
begin
  ComboBoxTipoRelatorio.ItemIndex          := 0;
  dbl_cmb_profissionais.Enabled            := False;
  SpeedButtonPesquisaNomeCliente.Enabled   := False;
  ds_profissionais.DataSet                 := DataModule1.Profissional.fnc_consulta('');
end;

procedure Tform_relatorios.MaskEditDataFinalExit(Sender: TObject);
begin
   if (fncRomoveCaracteres ( MaskEditDataFinal.Text ) <> '') and
                          ( MaskEditDataFinal.Text <> '  /  /    ') then
  begin
    try
      MaskEditDataFinal.Text := FormatDateTime('DD/MM/YYYY', StrToDate( MaskEditDataFinal.Text));
    except
      fnc_criar_mensagem('VALIDANDO DADOS',
                         'Erro ao validar DATA FINAL',
                         'Data Final Inválida',
                         ExtractFilePath( Application.ExeName ) + 'imagens\erro.png',
                         'OK');

      MaskEditDataFinal.SetFocus;
      Exit;
    end;
  end;
end;

procedure Tform_relatorios.MaskEditDataInicialExit(Sender: TObject);
begin
   if (fncRomoveCaracteres ( MaskEditDataInicial.Text ) <> '') and
                          ( MaskEditDataInicial.Text <> '  /  /    ') then
  begin
    try
      MaskEditDataInicial.Text := FormatDateTime('DD/MM/YYYY', StrToDate( MaskEditDataInicial.Text));
    except
      fnc_criar_mensagem('VALIDANDO DADOS',
                         'Erro ao validar DATA INICIAL',
                         'Data Inicial Inválida',
                         ExtractFilePath( Application.ExeName ) + 'imagens\erro.png',
                         'OK');

      MaskEditDataInicial.SetFocus;
    end;
  end;
end;

procedure Tform_relatorios.SpeedButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure Tform_relatorios.SpeedButtonCancelarMouseEnter(Sender: TObject);
begin
  SpeedButtonCancelar.Font.Color := $00591A05;
end;

procedure Tform_relatorios.SpeedButtonCancelarMouseLeave(Sender: TObject);
begin
  SpeedButtonCancelar.Font.Color := clWhite;
end;

procedure Tform_relatorios.SpeedButtonPesquisaNomeClienteClick(Sender: TObject);
begin
   form_cliente_consulta := Tform_cliente_consulta.Create(Self);
  try
    form_cliente_consulta.ShowModal;
  finally
    form_cliente_consulta.Free;
  end;
end;

procedure Tform_relatorios.SpeedButtonVizualizarClick(Sender: TObject);
begin
  prcValidarCamposObrigatorios( form_relatorios );

  case ComboBoxTipoRelatorio.ItemIndex of
    0:begin
      try
        form_relatorio_agendamento_periodo := Tform_relatorio_agendamento_periodo.Create(Self);
        form_relatorio_agendamento_periodo.RLLabelPeriodo.Caption := 'PERÍODO DE:  ' + MaskEditDataInicial.Text + '  ATÉ:  ' + MaskEditDataFinal.Text;

        Relatorios.prc_agendamento_periodo( StrToDate(MaskEditDataInicial.Text), StrToDate(MaskEditDataFinal.Text));
        form_relatorio_agendamento_periodo.ds_padrao.DataSet := Relatorios.Qry_agendamento_periodo;
        form_relatorio_agendamento_periodo.lblTotal.Caption  := IntToStr(Relatorios.Qry_agendamento_periodo.RecordCount);

        // Mostra o form relatório
        //form_relatorio_agendamento_periodo.ShowModal;

        // Mostra o relatório coo folha de papel para ser impressa
        form_relatorio_agendamento_periodo.RLReportAgendamentoPeriodo.Preview;
      finally
        form_relatorio_agendamento_periodo.Free;
      end;
    end;

    1:begin
      try
        form_relatorio_agendamento_cliente := Tform_relatorio_agendamento_cliente.Create(Self);
        form_relatorio_agendamento_cliente.RLLabelPeriodo.Caption := 'PERÍODO DE:  '
                                                                     + MaskEditDataInicial.Text +
                                                                     '  ATÉ:  '
                                                                     + MaskEditDataFinal.Text;

        form_relatorio_agendamento_cliente.RLLabelNomeCliente.Caption := 'CLIENTE:  '
                                                                     + EditNomeCliente.Text;

        Relatorios.prc_agendamento_cliente( StrToDate(MaskEditDataInicial.Text), StrToDate(MaskEditDataFinal.Text), cli_id_cliente);
        form_relatorio_agendamento_cliente.ds_padrao.DataSet := Relatorios.Qry_agendamento_cliente;
        form_relatorio_agendamento_cliente.lblTotal.Caption  := IntToStr(Relatorios.Qry_agendamento_cliente.RecordCount);

        // Mostra o form relatório
        //form_relatorio_agendamento_cliente.ShowModal;

        // Mostra o relatório coo folha de papel para ser impressa
        form_relatorio_agendamento_cliente.RLReportAgendamentoCliente.Preview;
      finally
        form_relatorio_agendamento_cliente.Free;
      end;
    end;



    2:begin
      try
        form_relatorio_agendamento_profissional := Tform_relatorio_agendamento_profissional.Create(Self);
        form_relatorio_agendamento_profissional.RLLabelPeriodo.Caption := 'PERÍODO DE:  '
                                                                     + MaskEditDataInicial.Text +
                                                                     '  ATÉ:  '
                                                                     + MaskEditDataFinal.Text;

        form_relatorio_agendamento_profissional.RLLabelNomeProfissional.Caption := 'PROFISSIONAL:  '
                                                                     + dbl_cmb_profissionais.Text;

        Relatorios.prc_agendamento_profissional( StrToDate(MaskEditDataInicial.Text), StrToDate(MaskEditDataFinal.Text), dbl_cmb_profissionais.KeyValue);
        form_relatorio_agendamento_profissional.ds_padrao.DataSet := Relatorios.Qry_agendamento_profissional;
        form_relatorio_agendamento_profissional.lblTotal.Caption  := IntToStr(Relatorios.Qry_agendamento_profissional.RecordCount);

        // Mostra o form relatório
        //form_relatorio_agendamento_profissional.ShowModal;

        // Mostra o relatório como folha de papel para ser impressa
        form_relatorio_agendamento_profissional.RLReportAgendamentoProfissional.Preview;
      finally
        form_relatorio_agendamento_profissional.Free;
      end;
    end;






  end;
end;

procedure Tform_relatorios.SpeedButtonVizualizarMouseEnter(Sender: TObject);
begin
   SpeedButtonVizualizar.Font.Color := $00591A05;
end;

procedure Tform_relatorios.SpeedButtonVizualizarMouseLeave(Sender: TObject);
begin
  SpeedButtonVizualizar.Font.Color := clWhite;
end;

end.
