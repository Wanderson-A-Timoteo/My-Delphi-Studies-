object form_profissionais: Tform_profissionais
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 664
  ClientWidth = 716
  Color = 11976552
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 11976552
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object shape_fundo_form_agendamento: TShape
    Left = 0
    Top = 0
    Width = 716
    Height = 664
    Align = alClient
    Brush.Color = 11976552
    Pen.Color = 11976552
    ExplicitHeight = 465
  end
  object PanelContainer: TPanel
    Left = 8
    Top = 8
    Width = 700
    Height = 648
    BevelOuter = bvNone
    Color = 11976552
    ParentBackground = False
    TabOrder = 0
    object PanelAgrupaCamposAgendamento: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 694
      Height = 638
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
      object LabelNoemProfissional: TLabel
        Left = 10
        Top = 137
        Width = 165
        Height = 21
        Caption = 'Nome do Profissional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelCelular: TLabel
        Left = 420
        Top = 209
        Width = 54
        Height = 21
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelTituloCadastrarProfissional: TLabel
        Left = 203
        Top = 38
        Width = 282
        Height = 37
        Caption = 'Cadastrar Profissional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelEspecialidade: TLabel
        Left = 10
        Top = 209
        Width = 105
        Height = 21
        Caption = 'Especialidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 298
        Width = 194
        Height = 21
        Caption = 'Profissionais Cadastrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 178
        Top = 137
        Width = 5
        Height = 15
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 120
        Top = 209
        Width = 5
        Height = 15
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object labelMsnDELouEdit: TLabel
        Left = 10
        Top = 527
        Width = 434
        Height = 15
        Caption = 
          'Pressione DEL para excluir ou duplo clique para editar profissio' +
          'nais cadastrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object MaskEditCelular: TMaskEdit
        Left = 420
        Top = 246
        Width = 250
        Height = 20
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '(##) #.####-####;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11976552
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        MaxLength = 16
        ParentFont = False
        TabOrder = 2
        Text = '(  )  .    -    '
      end
      object PanelBotoesAgendarCancelar: TPanel
        Left = 10
        Top = 570
        Width = 364
        Height = 49
        BevelOuter = bvNone
        TabOrder = 6
        object PanelBotaoAgendar: TPanel
          Left = 0
          Top = 0
          Width = 177
          Height = 49
          Align = alLeft
          Anchors = [akLeft, akBottom]
          BevelOuter = bvNone
          Color = 11976552
          ParentBackground = False
          TabOrder = 0
          object SpeedButtonAgendar: TSpeedButton
            Left = 2
            Top = 2
            Width = 173
            Height = 45
            Align = alCustom
            Caption = 'Salvar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonAgendarClick
            OnMouseEnter = SpeedButtonAgendarMouseEnter
            OnMouseLeave = SpeedButtonAgendarMouseLeave
          end
        end
        object PanelBotaoCancelar: TPanel
          Left = 187
          Top = 0
          Width = 177
          Height = 49
          Align = alRight
          BevelOuter = bvNone
          Color = 8421631
          ParentBackground = False
          TabOrder = 1
          object SpeedButtonCancelar: TSpeedButton
            Left = 2
            Top = 2
            Width = 173
            Height = 45
            Align = alCustom
            Caption = 'Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonCancelarClick
            OnMouseEnter = SpeedButtonCancelarMouseEnter
            OnMouseLeave = SpeedButtonCancelarMouseLeave
          end
        end
      end
      object EditNomeProfissional: TEdit
        Tag = 5
        Left = 10
        Top = 174
        Width = 660
        Height = 20
        Hint = '  -   Nome do Profissional'
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11976552
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PanelBordaNomeProfissional: TPanel
        Left = 10
        Top = 193
        Width = 660
        Height = 2
        Caption = 'PanelBorda'
        Color = 5839365
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
      object PanelBordaEspecialidade: TPanel
        Left = 10
        Top = 265
        Width = 375
        Height = 2
        Caption = 'PanelBorda'
        Color = 5839365
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
      end
      object EditEspecialidade: TEdit
        Tag = 5
        Left = 10
        Top = 246
        Width = 375
        Height = 20
        Hint = '  -   Especialidade do Profissional'
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11976552
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object PanelBordaCelular: TPanel
        Left = 420
        Top = 265
        Width = 250
        Height = 2
        Caption = 'PanelBorda'
        Color = 5839365
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
      end
      object dbg_registros: TDBGrid
        Left = 10
        Top = 328
        Width = 660
        Height = 193
        BorderStyle = bsNone
        DataSource = ds_profissionais
        FixedColor = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clSilver
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_registrosDrawColumnCell
        OnDblClick = dbg_registrosDblClick
        OnKeyDown = dbg_registrosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'id_profissional'
            Title.Caption = 'C'#243'digo'
            Title.Color = clBtnShadow
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_profissional'
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 349
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_especialidade'
            Title.Caption = 'Especialidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 216
            Visible = True
          end>
      end
    end
  end
  object ds_profissionais: TDataSource
    Left = 627
    Top = 467
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 643
    Top = 27
  end
end
