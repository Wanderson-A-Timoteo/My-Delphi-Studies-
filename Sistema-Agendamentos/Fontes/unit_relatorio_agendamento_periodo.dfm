object form_relatorio_agendamento_periodo: Tform_relatorio_agendamento_periodo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 358
  ClientWidth = 835
  Color = 11976552
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 11976552
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object shape_fundo_form_agendamento: TShape
    Left = 0
    Top = 0
    Width = 835
    Height = 358
    Align = alClient
    Brush.Color = 11976552
    Pen.Color = 11976552
    ExplicitWidth = 535
    ExplicitHeight = 415
  end
  object PanelContainer: TPanel
    Left = 8
    Top = 8
    Width = 817
    Height = 345
    BevelOuter = bvNone
    Color = 11976552
    ParentBackground = False
    TabOrder = 0
    object PanelAgrupaCamposAgendamento: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 811
      Height = 334
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object RLReportAgendamentoPeriodo: TRLReport
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        DataSource = ds_padrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 75
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabelDataEmissao: TRLLabel
            Left = 542
            Top = 26
            Width = 98
            Height = 15
            Caption = 'Data de Emiss'#227'o: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfoDataEmissao: TRLSystemInfo
            Left = 643
            Top = 26
            Width = 39
            Height = 17
            Text = ''
          end
          object RLLabelHorarioEmissao: TRLLabel
            Left = 527
            Top = 49
            Width = 114
            Height = 15
            Caption = 'Hor'#225'rio de Emiss'#227'o: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfoHorarioEmissao: TRLSystemInfo
            Left = 643
            Top = 49
            Width = 41
            Height = 17
            Info = itHour
            Text = ''
          end
          object RLLabelRazaoSocial: TRLLabel
            Left = 3
            Top = 24
            Width = 182
            Height = 17
            Caption = 'RAZAO SOCIAL DA EMPRESA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelNomeSistema: TRLLabel
            Left = 3
            Top = 3
            Width = 350
            Height = 17
            Caption = 'SGAC - Sistema de Gest'#227'o de Agendamento de Consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelPagina: TRLLabel
            Left = 595
            Top = 5
            Width = 45
            Height = 15
            Caption = 'P'#225'gina: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfoPagina: TRLSystemInfo
            Left = 643
            Top = 3
            Width = 40
            Height = 17
            Info = itPageNumber
            Text = ''
          end
          object RLLabelEmitidoPor: TRLLabel
            Left = 3
            Top = 46
            Width = 85
            Height = 17
            Caption = 'Emitido Por: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelEmitidoPorNomeUsuario: TRLLabel
            Left = 94
            Top = 46
            Width = 302
            Height = 17
            Caption = 'Nome do usu'#225'rio que fez a emiss'#227'o do relat'#243'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 169
          Width = 718
          Height = 35
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          object RLLabelData: TRLLabel
            Left = 3
            Top = 12
            Width = 40
            Height = 21
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelHora: TRLLabel
            Left = 104
            Top = 12
            Width = 41
            Height = 21
            Caption = 'Hora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelNomeProfissional: TRLLabel
            Left = 180
            Top = 12
            Width = 94
            Height = 21
            Caption = 'Profissional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelNomeCliente: TRLLabel
            Left = 368
            Top = 12
            Width = 58
            Height = 21
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelAgendadoPor: TRLLabel
            Left = 527
            Top = 12
            Width = 113
            Height = 21
            Caption = 'Agendado Por'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 204
          Width = 718
          Height = 36
          object RLDBTextData: TRLDBText
            Left = 3
            Top = 10
            Width = 55
            Height = 21
            DataField = 'dt_data'
            DataSource = ds_padrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBTextHora: TRLDBText
            Left = 104
            Top = 10
            Width = 58
            Height = 21
            DataField = 'hr_hora'
            DataSource = ds_padrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBTextNomeProfissional: TRLDBText
            Left = 180
            Top = 10
            Width = 108
            Height = 21
            DataField = 'ds_profissional'
            DataSource = ds_padrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBTextNomeCliente: TRLDBText
            Left = 368
            Top = 10
            Width = 72
            Height = 21
            DataField = 'ds_cliente'
            DataSource = ds_padrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBTextAgendadoPorNomeUsuario: TRLDBText
            Left = 527
            Top = 10
            Width = 79
            Height = 21
            DataField = 'ds_usuario'
            DataSource = ds_padrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 240
          Width = 718
          Height = 35
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabelTotalAgendamentosPeriodo: TRLLabel
            Left = 3
            Top = 12
            Width = 235
            Height = 15
            Caption = 'TOTAL DE AGENDAMENTOS NO PER'#205'ODO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTotal: TRLLabel
            Left = 256
            Top = 6
            Width = 23
            Height = 21
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 113
          Width = 718
          Height = 56
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabelTituloRelatorio: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 25
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'RELAT'#211'RIO DE AGENDAMENTOS POR PER'#205'ODO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabelPeriodo: TRLLabel
            Left = 0
            Top = 25
            Width = 718
            Height = 17
            Align = faTop
            Alignment = taCenter
            Caption = 'PER'#205'ODO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  object ds_padrao: TDataSource
    Left = 731
    Top = 243
  end
end
