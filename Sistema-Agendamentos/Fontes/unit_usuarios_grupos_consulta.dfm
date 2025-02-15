object form_usuarios_grupos_consulta: Tform_usuarios_grupos_consulta
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
      object LabelConsultaNomeCliente: TLabel
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
      object LabelTituloConsultarUsuarios: TLabel
        Left = 123
        Top = 38
        Width = 379
        Height = 37
        Caption = 'Consultar Grupos de Usu'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelClientesCadastrados: TLabel
        Left = 10
        Top = 213
        Width = 151
        Height = 21
        Caption = 'Grupos Cadastrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5839365
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 71
        Top = 146
        Width = 130
        Height = 15
        Caption = 'Digite o nome do grupo '
      end
      object labelMsnDELouEdit: TLabel
        Left = 10
        Top = 526
        Width = 441
        Height = 15
        Caption = 
          'Pressione DELETE para EXCLUIR ou duplo clique para EDITAR o grup' +
          'o cadastrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object PanelBotaoConsultar: TPanel
        Left = 573
        Top = 160
        Width = 103
        Height = 35
        BevelOuter = bvNone
        Color = 11976552
        ParentBackground = False
        TabOrder = 1
        object SpeedButtonConsultarGruposUsuario: TSpeedButton
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
          OnClick = SpeedButtonConsultarGruposUsuarioClick
          OnMouseEnter = SpeedButtonConsultarGruposUsuarioMouseEnter
          OnMouseLeave = SpeedButtonConsultarGruposUsuarioMouseLeave
        end
      end
      object EditConsultaNomeGrupoUsuario: TEdit
        Tag = 5
        Left = 10
        Top = 173
        Width = 557
        Height = 20
        Hint = '  -   Nome do Usu'#225'rio'
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
        OnKeyDown = EditConsultaNomeGrupoUsuarioKeyDown
      end
      object PanelBordaConsultaNomeCliente: TPanel
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
        TabOrder = 5
      end
      object dbg_registros_consulta_usuarios: TDBGrid
        Left = 10
        Top = 240
        Width = 666
        Height = 271
        BorderStyle = bsNone
        Color = clSilver
        DataSource = ds_grupos_usuario_consulta
        FixedColor = clSilver
        GradientEndColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clSilver
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_registros_consulta_usuariosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id_grupo_usuario'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_grupo_usuario'
            Title.Caption = 'Nome do Grupo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 11976552
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 500
            Visible = True
          end>
      end
      object PanelBotoesCadastrarNovoClienteFechar: TPanel
        Left = 10
        Top = 571
        Width = 663
        Height = 50
        BevelOuter = bvNone
        TabOrder = 3
        object PanelBotaoCancelar: TPanel
          Left = 230
          Top = 0
          Width = 200
          Height = 50
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
            Caption = 'Fechar'
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
        object PanelBotaoCadastrarNovoCliente: TPanel
          Left = 0
          Top = 0
          Width = 200
          Height = 50
          Alignment = taRightJustify
          BevelOuter = bvNone
          Color = 5839365
          ParentBackground = False
          TabOrder = 1
          object SpeedButtonCadastrarNovoGrupo: TSpeedButton
            Left = 2
            Top = 2
            Width = 196
            Height = 46
            Align = alCustom
            Caption = 'Novo Grupo'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButtonCadastrarNovoGrupoClick
            OnMouseEnter = SpeedButtonCadastrarNovoGrupoMouseEnter
            OnMouseLeave = SpeedButtonCadastrarNovoGrupoMouseLeave
          end
        end
      end
      object PanelBordaGrid: TPanel
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
        TabOrder = 4
      end
    end
  end
  object ds_grupos_usuario_consulta: TDataSource
    DataSet = form_usuarios_permissoes.cds_modulos
    Left = 579
    Top = 283
  end
end
