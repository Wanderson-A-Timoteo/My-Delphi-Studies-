object form_lojas: Tform_lojas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 646
  ClientWidth = 818
  Color = 11976552
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 11976552
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object shape_fundo_form_agendamento: TShape
    Left = 0
    Top = 0
    Width = 818
    Height = 646
    Align = alClient
    Brush.Color = 11976552
    Pen.Color = 11976552
    ExplicitWidth = 716
    ExplicitHeight = 625
  end
  object PanelContainer: TPanel
    Left = 8
    Top = 8
    Width = 801
    Height = 738
    BevelOuter = bvNone
    Color = 11976552
    ParentBackground = False
    TabOrder = 0
    object PanelAgrupaCamposAgendamento: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 795
      Height = 622
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 919
      object PanelGrupoCampos: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 789
        Height = 710
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 11
        object LabelNomeCliente: TLabel
          Left = 10
          Top = 90
          Width = 96
          Height = 21
          Caption = 'Raz'#227'o Social'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelCelular: TLabel
          Left = 175
          Top = 409
          Width = 54
          Height = 21
          Caption = 'Celular'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 299
          Top = 30
          Width = 185
          Height = 37
          Caption = 'Cadastrar Loja'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -27
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelEndereco: TLabel
          Left = 10
          Top = 216
          Width = 71
          Height = 21
          Caption = 'Endere'#231'o'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelTelefoneFixo: TLabel
          Left = 10
          Top = 409
          Width = 102
          Height = 21
          Caption = 'Telefone Fixo'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelComplemento: TLabel
          Left = 10
          Top = 350
          Width = 109
          Height = 21
          Caption = 'Complemento'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 10
          Top = 470
          Width = 97
          Height = 21
          Caption = 'Observa'#231'oes'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelDataNascimento: TLabel
          Left = 470
          Top = 156
          Width = 130
          Height = 21
          Caption = 'Data de Abertura'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelNumero: TLabel
          Left = 519
          Top = 216
          Width = 63
          Height = 21
          Caption = 'N'#250'mero'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelInscricaoEstadual: TLabel
          Left = 633
          Top = 90
          Width = 137
          Height = 21
          Caption = 'Inscri'#231#227'o Estadual'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelCNPJ: TLabel
          Left = 470
          Top = 90
          Width = 39
          Height = 21
          Hint = ' - CNPJ'
          Caption = 'CNPJ'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelCEP: TLabel
          Left = 627
          Top = 156
          Width = 29
          Height = 21
          Caption = 'CEP'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelBairro: TLabel
          Left = 10
          Top = 283
          Width = 46
          Height = 21
          Caption = 'Bairro'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelCidade: TLabel
          Left = 369
          Top = 287
          Width = 53
          Height = 21
          Caption = 'Cidade'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object LabelUF: TLabel
          Left = 686
          Top = 283
          Width = 20
          Height = 21
          Caption = 'UF'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SpeedButtonLupaPesquisaNomeCliente: TSpeedButton
          Left = 747
          Top = 178
          Width = 31
          Height = 32
          Cursor = crHandPoint
          Flat = True
          Glyph.Data = {
            F6120000424DF612000000000000360000002800000028000000280000000100
            180000000000C0120000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFE1D5D1B99F96966F62784534662D195C1D0B5C1D0B662D1978453496
            6F62B99F96E1D5D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2F2A583776D34225717024D
            09005210005515005717025819045819045717025514005210004D0900571802
            6D3522A68478F6F3F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF9771645412004D0900541400571702581904591A05591A05
            591A05591A05591A05591A05591A05591A055819045717025414004D09005314
            00976F62FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4ADA65F230F
            4E0C00571702591A05591A05591A05591A05591A05591A05591A05591A05591A
            05591A05591A05591A05591A05591A05591A05591A055717024E0B005F230FC4
            ADA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA27F734E0B00541400581904591A05591A
            05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05591A05591A055819045514004D0A00A27F74FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF845646480300581803591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05
            591A05591A05591A05591A05591A05581803480300825343FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8355444F0D0058
            1904591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05
            591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A
            05581803591A05591A05581904500D00825242FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFA17D72480300581904591A05591A05591A05
            591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A
            05591A05591A05591A05591A05591A05591A05591A05541400541400500D0058
            1904591A05581904480300A38074FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC3ADA54E0B00581803591A05591A05591A05591A05591A05591A05591A
            05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05531300612511E7DEDA977063500D00581904591A05
            5818034D0B00C4ADA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF5E230D5414
            00591A05591A05591A05591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05
            541300500E00DDD0CCFFFFFFFFFFFF9E786D500E00591A05591A055414005F23
            0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9770624F0B00581904591A05591A0559
            1A05591A05591A05591A05591A05591A05591A05591A05591A05581904581904
            581904581904591A05591A05591A05591A05591A055312005C1D09E9E1DFFFFF
            FFFFFFFFFFFFFF9C786B510E00591A05591A055819044E0C00997264FFFFFFFF
            FFFFFFFFFFF6F2F1531200571702591A05591A05591A05591A05591A05591A05
            591A05591A05591A05581904561600500E004F0D00510F00510F004F0C005312
            00581803591A05591A055413005C1E0AD8CAC4FFFFFFFFFFFFFFFFFF93695C50
            0E00581904591A05591A05591A05571702541300F6F2F1FFFFFFFFFFFFA38176
            4D0A00591A05591A05591A05591A05591A05591A05591A05591A055819045514
            004A06005E220D956D60B1958BBDA49ABCA198A684797A48374D0900500E0052
            1100510E00E9E1DEFFFFFFFFFFFFFFFFFF9A7468480200581904591A05591A05
            591A05591A05591A054D0900A58377FFFFFFFEFDFE6C3421541400591A05591A
            05591A05591A05591A05591A05591A05581904510F00672D1AC8B5ADFEFFFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1ECEA8C6152642815DCD0CBFFFFFF
            FFFFFFFFFFFF9167594D0A00581904591A05591A05591A05591A05591A05591A
            055414006D3522FFFFFFE0D4D0571602571802591A05591A05591A05591A0559
            1A05591A05591904490500845646FBF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE7E5FFFFFFFFFFFFFFFFFF9A74674D0A
            00581803591A05591A05591A05591A05591A05591A05591A05571702571803E0
            D6D2B89D954C0900591A05591A05591A05591A05591A05591A055819044C0800
            9B7568FFFFFFFFFFFFFFFFFFFFFFFFCDBAB39F7B708557478F6557B3958CEBE4
            E1FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF91685B480200581904591A05591A0559
            1A05591A05591A05591A05591A05591A055919044C0900BAA097956D60521000
            591A05591A05591A05591A05591A05581904541300642916FFFFFFFFFFFFFFFF
            FFE6DDDA7C4A394F0C004E0C00521000510F004C07005C200BA48277FFFFFFFF
            FFFFFFFFFFCFBEB74D0A00571702591A05591A05591A05591A05591A05591A05
            591A05591A05591A05591A05521000966F61774432551500591A05591A05591A
            05591A05591A05571803541400D7C7C2FFFFFFFFFFFFE5DDD9561500500E0058
            1803591904591A05591A055819045615004B07008B6152FFFFFFFFFFFFFFFFFF
            7F4D3E521100591A05591A05591A05591A05591A05591A05591A05591A05591A
            05591A05551400784535662C18571702591A05591A05591A05591A05591A0553
            12007B4837FFFFFFFFFFFFFFFFFF6A311F521100581904591A05591A05591A05
            591A05591A05591A055819034A0500B69A91FFFFFFFFFFFFD5C7C24A05005819
            04591A05591A05591A05591A05591A05591A05591A05591A05591A0557170266
            2D185D1F0B581904591A05591A05591A05591A05591A054E0B00B19389FFFFFF
            FFFFFFC8B4AD480300581904591A05591A05591A05591A05591A05591A05591A
            05591A0554140069301EFBF9F9FFFFFFFFFFFF5F220D561601591A05591A0559
            1A05591A05591A05591A05591A05591A05591A055819045D1F0B5D1E0A581904
            591A05591A05591A05591A05591A05490300E7DDDAFFFFFFFFFFFF7D4B3B5211
            00591A05591A05591A05591A05591A05591A05591A05591A05591A0558180352
            1100D2C0BBFFFFFFFFFFFF845445521100591A05591A05591A05591A05591A05
            591A05591A05591A05591A055819045D1F0B662C18571702591A05591A05591A
            05591A05581904470100F6F2F1FFFFFFFFFFFF6F3927541300591A05591A0559
            1A05591A05591A05591A05591A05591A05591A055819044C0800C0AAA1FFFFFF
            FFFFFF956D5F510F00591A05591A05591A05591A05591A05591A05591A05591A
            05591A05571702662D18774432551500591A05591A05591A05591A0558190448
            0200F8F6F4FFFFFFFFFFFF6F3827541300591A05591A05591A05591A05591A05
            591A05591A05591A05591A055819044B0700BFA79FFFFFFFFFFFFF946B5E510F
            00591A05591A05591A05591A05591A05591A05591A05591A05591A0555140078
            4535956C60521000591A05591A05591A05591A05591A05490400E0D5D1FFFFFF
            FFFFFF865849521000591A05591A05591A05591A05591A05591A05591A05591A
            05591A05571803551400D6C6C1FFFFFFFFFFFF825344531100591A05591A0559
            1A05591A05591A05591A05591A05591A05591A05521000966E61B89D954C0900
            591A05591A05591A05591A05591A054D0A00BA9F96FFFFFFFFFFFFC4AEA64600
            00581904591A05591A05591A05591A05591A05591A05591A05591A0554140066
            2B19FAF9F9FFFFFFFFFFFF622511561600591A05591A05591A05591A05591A05
            591A05591A05591A055919044C0900BA9F96E0D4D0571701571802591A05591A
            05591A05591A0553120075412FFFFFFFFFFFFFFFFFFF75402F510F0058190459
            1A05591A05591A05591A05591A05591A05571803490300C6B2AAFFFFFFFFFFFF
            D3C2BE490300581904591A05591A05591A05591A05591A05591A05591A05591A
            05571702571803E0D5D2FEFDFE6C3321541400591A05591A05591A05591A0557
            1802561601D6C6C1FFFFFFFFFFFFEAE2E05D200C500D00581904591A05591A05
            591A05591A055515004D0900966F61FFFFFFFFFFFFFFFFFF815243521100591A
            05591A05591A05591A05591A05591A05591A05591A05591A055414006D3422FF
            FFFFFFFFFFA381754D0A00591A05591A05591A05591A05591A0553120068301D
            FFFFFFFFFFFFFFFFFFEFEAE787594A4500004D0A00500E004F0D004904005919
            05B2968BFFFFFFFFFFFFFFFFFFC0A8A0510E00581803591A05591A05591A0559
            1A05591A05591A05591A05591A05591A054D0900A58377FFFFFFFFFFFFF5F1F0
            541100571702591A05591A05591A05591A055819044D0A0092695BFFFFFFFFFF
            FFFFFFFFFFFFFFE5DBD8B19289966E609E7A6DC3ACA5FEFDFDFFFFFFFFFFFFFF
            FFFFE5DBD84F0D00561601591A05591A05591A05591A05591A05591A05591A05
            591A05591A05571702541300F6F2F1FFFFFFFFFFFFFFFFFF966E614F0B005819
            04591A05591A05591A05591A055819044F0C008C6153FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3C2BD5D1F0B541400
            591A05591A05591A05591A05591A05591A05591A05591A05591A055819044F0C
            00977163FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF5F220D551400591A05591A0559
            1A05591A05591A055819044E0C005B1D08C4ADA5F9F7F6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE4D9D68E6355490300551500591A05591A05591A05591A
            05591A05591A05591A05591A05591A05591A055414005F230FFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC2ABA44D0B00581803591A05591A05591A05591A05
            591A05591904551500521000672E1B936A5CB3978DC7B1ABBFA69EA8887D7541
            305C1E094F0D00581904591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A055818034E0A00C3ADA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFA07C71480300581904591A05591A05591A05591A05591A05591A
            05581803551500510F004E0A004C08004C09004F0C0053130056170158190459
            1A05591A05591A05591A05591A05591A05591A05591A05591A05591A05581904
            490300A17D71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF825444500E00581904591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05
            591A05591A05591A05591A05591A05591A05581904500E00815141FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81514048
            0300581803591A05591A05591A05591A05591A05591A05591A05591A05591A05
            591A05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A
            05591A05591A05581803480300825242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA17E724E0B00541400
            581904591A05591A05591A05591A05591A05591A05591A05591A05591A05591A
            05591A05591A05591A05591A05591A05591A05591A05591A055819045514004D
            0A00A07C70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3ACA45F210D4F0C00571702591A
            05591A05591A05591A05591A05591A05591A05591A05591A05591A05591A0559
            1A05591A05591A05591A05591A055717024F0B005E210DC3ACA5FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF966F615312004D0A0054140057180258
            1904591A05591A05591A05591A05591A05591A05591A05591A05581904571802
            5414004D0A00541200976E61FBF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF5F1F0A481756B34215717014D0900521000551500
            5717025819045819045717025515005210004D09005717016B3421A48275F6F2
            F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDFEE0D4D0B99D95956D60774332662C185C1E0A5C1E
            0A662C18784432966E60B99D95E0D4D0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButtonLupaPesquisaCEP
        end
        object Label1: TLabel
          Left = 110
          Top = 90
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 773
          Top = 90
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 502
          Top = 90
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 604
          Top = 156
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 660
          Top = 156
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 85
          Top = 216
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 587
          Top = 216
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 710
          Top = 283
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 426
          Top = 287
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 61
          Top = 283
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 119
          Top = 409
          Width = 15
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 10
          Top = 156
          Width = 114
          Height = 21
          Caption = 'Nome Fantasia'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 128
          Top = 156
          Width = 5
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 621
          Top = 216
          Width = 130
          Height = 21
          Caption = 'C'#243'd. IBGE Cidade'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 753
          Top = 214
          Width = 17
          Height = 15
          Caption = '*'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421631
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 332
          Top = 413
          Width = 49
          Height = 21
          Caption = 'E-Mail'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object MaskEditCelular: TMaskEdit
          Left = 175
          Top = 447
          Width = 150
          Height = 20
          Hint = '  -   Celular'
          BorderStyle = bsNone
          EditMask = '(##) #.####-####;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          MaxLength = 16
          ParentFont = False
          TabOrder = 13
          Text = '(  )  .    -    '
        end
        object PanelBotoesSalvarCancelar: TPanel
          Left = 10
          Top = 546
          Width = 556
          Height = 49
          BevelOuter = bvNone
          TabOrder = 20
          object PanelBotaoSalvar: TPanel
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
            object SpeedButtonSalvar: TSpeedButton
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
              OnClick = SpeedButtonSalvarClick
              OnMouseEnter = SpeedButtonSalvarMouseEnter
              OnMouseLeave = SpeedButtonSalvarMouseLeave
            end
          end
          object PanelBotaoCancelar: TPanel
            Left = 379
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
          object PanelBotaoLimpar: TPanel
            Left = 193
            Top = 0
            Width = 177
            Height = 49
            BevelOuter = bvNone
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object SpeedButtonLimpar: TSpeedButton
              Left = 2
              Top = 2
              Width = 173
              Height = 45
              Align = alCustom
              Caption = 'Limpar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButtonLimparClick
              OnMouseEnter = SpeedButtonLimparMouseEnter
              OnMouseLeave = SpeedButtonLimparMouseLeave
            end
          end
        end
        object EditRazaoSocial: TEdit
          Tag = 5
          Left = 10
          Top = 121
          Width = 450
          Height = 20
          Hint = '  -   Raz'#227'o Social'
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
        object PanelBordaNomeCliente: TPanel
          Left = 10
          Top = 142
          Width = 450
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
          TabOrder = 26
        end
        object PanelBordaEndereco: TPanel
          Left = 10
          Top = 271
          Width = 500
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
          TabOrder = 24
        end
        object EditEndereco: TEdit
          Tag = 5
          Left = 10
          Top = 252
          Width = 500
          Height = 20
          Hint = '  -   Endere'#231'o'
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
          TabOrder = 5
        end
        object PanelBordaCelular: TPanel
          Left = 175
          Top = 465
          Width = 150
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
          TabOrder = 25
          Visible = False
        end
        object MaskEditTelefoneFixo: TMaskEdit
          Left = 10
          Top = 447
          Width = 150
          Height = 20
          Hint = '  -   Telefone'
          BorderStyle = bsNone
          EditMask = '(##) ####-####;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 12
          Text = '(  )     -    '
        end
        object PanelBordaComplemento: TPanel
          Left = 10
          Top = 400
          Width = 768
          Height = 1
          Caption = 'PanelBorda'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 22
        end
        object EditComplemento: TEdit
          Left = 10
          Top = 380
          Width = 768
          Height = 20
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
          TabOrder = 11
        end
        object PanelBordaObservacoes: TPanel
          Left = 10
          Top = 526
          Width = 768
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
          TabOrder = 18
        end
        object EditObservacoes: TEdit
          Left = 10
          Top = 507
          Width = 768
          Height = 20
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
          TabOrder = 15
        end
        object PanelBordaTelefoneFixo: TPanel
          Left = 10
          Top = 465
          Width = 150
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
          TabOrder = 23
        end
        object PanelBordaCidade: TPanel
          Left = 369
          Top = 340
          Width = 300
          Height = 1
          Caption = 'PanelBorda'
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 21
        end
        object MaskEditDataAbertura: TMaskEdit
          Tag = 5
          Left = 470
          Top = 190
          Width = 140
          Height = 20
          Hint = '  -   Data de Abertura '
          BorderStyle = bsNone
          EditMask = '##/##/####;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MaskEditDataAberturaExit
        end
        object PanelBordaDataNascimento: TPanel
          Left = 470
          Top = 209
          Width = 140
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
          TabOrder = 16
        end
        object PanelBordaNumero: TPanel
          Left = 519
          Top = 271
          Width = 95
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
          TabOrder = 19
        end
        object EditNumero: TEdit
          Tag = 5
          Left = 519
          Top = 252
          Width = 95
          Height = 20
          Hint = '  -   N'#250'mero'
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
          TabOrder = 6
        end
        object MaskEditInscricaoEstadual: TMaskEdit
          Tag = 5
          Left = 627
          Top = 124
          Width = 150
          Height = 20
          Hint = '  -   Inscri'#231#227'o Estadual'
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = ''
        end
        object PanelBordaRG: TPanel
          Left = 627
          Top = 143
          Width = 150
          Height = 2
          Color = 5839365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5839365
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 17
        end
        object MaskEditCNPJ: TMaskEdit
          Tag = 5
          Left = 470
          Top = 124
          Width = 147
          Height = 20
          Hint = '  -   CNPJ'
          BorderStyle = bsNone
          EditMask = '###.###.###-##;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
          Text = '   .   .   -  '
          OnExit = MaskEditCNPJExit
        end
        object PanelBordaCPF: TPanel
          Left = 470
          Top = 143
          Width = 150
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
          TabOrder = 30
        end
        object MaskEditCEP: TMaskEdit
          Tag = 5
          Left = 627
          Top = 190
          Width = 105
          Height = 20
          Hint = '  -   CEP'
          BorderStyle = bsNone
          EditMask = '##.###-###;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11976552
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
          Text = '  .   -   '
          OnExit = MaskEditCEPExit
        end
        object PanelBordaCEP: TPanel
          Left = 627
          Top = 209
          Width = 124
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
          TabOrder = 28
        end
        object PanelBordaBairro: TPanel
          Left = 10
          Top = 339
          Width = 340
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
          TabOrder = 27
        end
        object EditBairro: TEdit
          Tag = 5
          Left = 10
          Top = 320
          Width = 340
          Height = 20
          Hint = '  -   Bairro'
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
          TabOrder = 8
        end
        object EditCidade: TEdit
          Tag = 5
          Left = 369
          Top = 320
          Width = 300
          Height = 20
          Hint = '  -   Cidade'
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
          TabOrder = 9
        end
        object PanelBordaUF: TPanel
          Left = 686
          Top = 339
          Width = 92
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
          TabOrder = 29
        end
        object EditUF: TEdit
          Tag = 5
          Left = 686
          Top = 320
          Width = 92
          Height = 20
          Hint = '  -   UF'
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
          TabOrder = 10
        end
        object EditNomeFantasia: TEdit
          Tag = 5
          Left = 10
          Top = 187
          Width = 450
          Height = 20
          Hint = '  -   Nome Fantasia'
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
          TabOrder = 31
        end
        object PanelBordaFantasia: TPanel
          Left = 10
          Top = 208
          Width = 450
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
          TabOrder = 32
        end
        object Panel1: TPanel
          Left = 621
          Top = 271
          Width = 157
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
          TabOrder = 33
        end
        object EditCodigoIBGE: TEdit
          Tag = 5
          Left = 621
          Top = 251
          Width = 150
          Height = 20
          Hint = '  -   UF'
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
          TabOrder = 7
        end
        object Panel2: TPanel
          Left = 332
          Top = 465
          Width = 446
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
          TabOrder = 34
        end
        object EditEmail: TEdit
          Tag = 5
          Left = 332
          Top = 446
          Width = 446
          Height = 20
          Hint = '  -   UF'
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
          TabOrder = 14
        end
      end
    end
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 750
    Top = 46
  end
  object ACBrEnterTab1: TACBrEnterTab
    Left = 702
    Top = 46
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 574
    Top = 46
  end
  object ACBrEnterTab2: TACBrEnterTab
    EnterAsTab = True
    Left = 622
    Top = 46
  end
end
