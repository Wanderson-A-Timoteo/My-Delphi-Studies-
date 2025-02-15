object form_consulta_lojas: Tform_consulta_lojas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 660
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object shape_fundo_form_agendamento: TShape
    Left = 0
    Top = 0
    Width = 716
    Height = 660
    Align = alClient
    Brush.Color = 11976552
    Pen.Color = 11976552
    ExplicitHeight = 465
  end
  object PanelContainer: TPanel
    Left = 8
    Top = 8
    Width = 700
    Height = 644
    BevelOuter = bvNone
    Color = 11976552
    ParentBackground = False
    TabOrder = 0
    object PanelAgrupaCamposConsulta: TPanel
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
      object LabelBuscar: TLabel
        Left = 10
        Top = 141
        Width = 55
        Height = 21
        Caption = 'Buscar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelTituloLojas: TLabel
        Left = 234
        Top = 38
        Width = 196
        Height = 37
        Caption = 'Consultar Lojas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelLojasCadastrados: TLabel
        Left = 10
        Top = 213
        Width = 135
        Height = 21
        Caption = 'Lojas Cadastradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelBuscarInfo: TLabel
        Left = 71
        Top = 146
        Width = 258
        Height = 15
        Caption = 'Digite a Raz'#227'o Social ou Nome Fantasia da Loja'
      end
      object labelMsnDELouEdit: TLabel
        Left = 10
        Top = 526
        Width = 419
        Height = 15
        Caption = 
          'Pressione DELETE para EXCLUIR ou duplo clique para EDITAR Loja c' +
          'adastrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object PanelBotoesConsultarCancelarCadastrarLojas: TPanel
        Left = 573
        Top = 160
        Width = 103
        Height = 35
        BevelOuter = bvNone
        TabOrder = 2
        object PanelBotaoConsultar: TPanel
          Left = 0
          Top = 0
          Width = 106
          Height = 35
          Align = alLeft
          Anchors = [akLeft, akBottom]
          BevelOuter = bvNone
          Color = 11976552
          ParentBackground = False
          TabOrder = 0
          object SpeedButtonConsultarLoja: TSpeedButton
            Left = 2
            Top = 2
            Width = 99
            Height = 31
            Align = alCustom
            Caption = 'Consultar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonConsultarLojaClick
            OnMouseEnter = SpeedButtonConsultarLojaMouseEnter
            OnMouseLeave = SpeedButtonConsultarLojaMouseLeave
          end
        end
      end
      object EditConsultaNomeLojas: TEdit
        Tag = 5
        Left = 10
        Top = 174
        Width = 556
        Height = 20
        Hint = '  -   Nome da Loja'
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
      object PanelBordaConsultaNomeLojas: TPanel
        Left = 10
        Top = 193
        Width = 550
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
        TabOrder = 1
      end
      object dbg_registros_consulta_lojas: TDBGrid
        Left = 10
        Top = 240
        Width = 666
        Height = 271
        BorderStyle = bsNone
        Color = clSilver
        DataSource = ds_consulta_lojas
        FixedColor = clSilver
        GradientEndColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clSilver
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbg_registros_consulta_lojasDblClick
        OnKeyDown = dbg_registros_consulta_lojasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'id_loja'
            Title.Caption = 'C'#243'd.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_razao_social'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_fantasia'
            Title.Caption = 'Nome Fantasia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end>
      end
      object PanelBotoesCadastrarNovaLojaFechar: TPanel
        Left = 10
        Top = 571
        Width = 431
        Height = 50
        Alignment = taRightJustify
        BevelOuter = bvNone
        TabOrder = 4
        object PanelBotaoCancelar: TPanel
          Left = 230
          Top = 0
          Width = 200
          Height = 50
          Alignment = taRightJustify
          BevelOuter = bvNone
          Color = 8421631
          ParentBackground = False
          TabOrder = 0
          object SpeedButtonCancelarConsulta: TSpeedButton
            Left = 2
            Top = 2
            Width = 196
            Height = 46
            Align = alCustom
            Caption = 'Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonCancelarConsultaClick
            OnMouseEnter = SpeedButtonCancelarConsultaMouseEnter
            OnMouseLeave = SpeedButtonCancelarConsultaMouseLeave
          end
        end
        object PanelBotaoCadastrarNovaLoja: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 50
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 5839365
          ParentBackground = False
          TabOrder = 1
          object SpeedButtonCadastrarNovaLoja: TSpeedButton
            Left = 2
            Top = 2
            Width = 196
            Height = 46
            Align = alCustom
            Caption = 'Cadastrar Loja'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonCadastrarNovaLojaClick
            OnMouseEnter = SpeedButtonCadastrarNovaLojaMouseEnter
            OnMouseLeave = SpeedButtonCadastrarNovaLojaMouseLeave
          end
        end
      end
      object PanelBordaGridLojas: TPanel
        Left = 10
        Top = 541
        Width = 663
        Height = 2
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
    end
  end
  object ds_consulta_lojas: TDataSource
    Left = 579
    Top = 283
  end
end
