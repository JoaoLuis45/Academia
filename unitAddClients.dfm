object formAddClients: TformAddClients
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'formAddClients'
  ClientHeight = 543
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 543
    Align = alClient
    BevelOuter = bvNone
    Color = 14077653
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 803
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object imgIconForm: TImage
        Left = 0
        Top = 0
        Width = 65
        Height = 57
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
          00160806000000D7632CCF000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
          784944415478DAB5968151C2401045371D840E4205C60A8C1DD881D88154C059
          8152015081630568056005860A4C09EE1FFE11C4DCED05E29FF99300977BBB7B
          7B1732194613F5BDBAE2E7ADFA45BD0A3D900D005D121AFAEDA10FB8502FD4A5
          3A8F64E0D43323B0299F35C1806E083CD513615E5F1C1F53A31EA580D7D2AE55
          97469CAC20384518BB8B8191E5B731C9A37A3E3438653227FB920B83CCC55666
          7D91131C9BEC4EFDC67B6B59A0A57474F6396B3C56D7BC47D76F0CF0F1F828B8
          9070573B69CBEC85357F0E407D3FFC516C1FAFA5DD2A0DA1F3C0F892F08A63B7
          1CFF112A83757295BCD69C703085C088FC8A19E7047F3293FA3FC0589399C4BB
          1AC7DFF42840F8864116FCDE971B5EF1DA0906E855ECADD13038ACDD2261BCD7
          BBECB7D4A15A1E8C2E2E1326B896B691520E8E531D5E18004F18BD2564BA6365
          2E1178AB2C315B94E8567E6FB17385E51A039C72DE22CA8AD721E40046173B2B
          4256E6D26CBDEA3E7F7D52DF44296AFA806367722FA8DAFD00330954E3F01F60
          B10000000049454E44AE426082}
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 68
        Top = 20
        Width = 166
        Height = 34
        Margins.Top = 20
        Align = alLeft
        Caption = 'Matricular Clientes'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5395028
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 25
      end
    end
    object pnlDados: TPanel
      Left = 0
      Top = 57
      Width = 803
      Height = 399
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlNome: TPanel
        Left = 30
        Top = 24
        Width = 500
        Height = 40
        Margins.Left = 15
        Margins.Top = 15
        Margins.Right = 15
        Margins.Bottom = 15
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblUser: TLabel
          Left = 0
          Top = 0
          Width = 500
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Nome'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 37
        end
        object txtNome: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 500
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'nome'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object pnlBairro: TPanel
        Left = 30
        Top = 89
        Width = 350
        Height = 40
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 350
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Bairro'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 37
        end
        object txtBairro: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 350
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'bairro'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object pnlNumero: TPanel
        Left = 395
        Top = 89
        Width = 135
        Height = 40
        BevelOuter = bvNone
        TabOrder = 2
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 135
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'N'#250'mero da Casa'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 101
        end
        object txtNumCasa: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 135
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'num'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object pnlRua: TPanel
        Left = 30
        Top = 159
        Width = 500
        Height = 40
        BevelOuter = bvNone
        TabOrder = 3
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 500
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Rua'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 23
        end
        object txtRua: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 500
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'rua'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object pnlIdade: TPanel
        Left = 30
        Top = 223
        Width = 200
        Height = 40
        BevelOuter = bvNone
        TabOrder = 4
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 200
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Idade'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 34
        end
        object txtIdade: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 200
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'idade'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object pnlTelefone: TPanel
        Left = 330
        Top = 223
        Width = 200
        Height = 40
        BevelOuter = bvNone
        TabOrder = 5
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 200
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Telefone'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 53
        end
        object txtTelefone: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 200
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'telefone'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object checkSaude: TDBCheckBox
        Left = 22
        Top = 296
        Width = 339
        Height = 17
        Caption = 'Possui Algum Problema de Sa'#250'de ou F'#237'sico?'
        DataField = 'tem_prob'
        DataSource = DM.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = checkSaudeClick
      end
      object pnlSaude: TPanel
        Left = 366
        Top = 273
        Width = 400
        Height = 40
        BevelOuter = bvNone
        TabOrder = 7
        Visible = False
        object Label7: TLabel
          Left = 0
          Top = 0
          Width = 400
          Height = 17
          Margins.Left = 10
          Align = alTop
          Caption = 'Qual?'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 35
        end
        object txtProbSaude: TSWHDBEdit
          Left = 0
          Top = 17
          Width = 400
          Height = 23
          Align = alClient
          BorderStyle = bsNone
          DataField = 'prob_saude'
          DataSource = DM.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          MudarColor = 6006501
        end
      end
      object checkComec: TDBCheckBox
        Left = 22
        Top = 344
        Width = 208
        Height = 17
        Caption = 'Est'#225' Come'#231'ando agora?'
        DataField = 'comec_agr'
        DataSource = DM.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = checkComecClick
      end
      object pnlPersonais: TPanel
        AlignWithMargins = True
        Left = 237
        Top = 337
        Width = 150
        Height = 30
        Margins.Left = 40
        BevelOuter = bvNone
        Color = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 9
        Visible = False
        object btnPersonais: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 27
          Align = alClient
          Caption = 'Personais'
          Flat = True
          OnClick = btnPersonaisClick
          OnMouseEnter = btnPersonaisMouseEnter
          OnMouseLeave = btnPersonaisMouseLeave
          ExplicitLeft = -40
          ExplicitHeight = 436
        end
        object Panel2: TPanel
          Left = 0
          Top = 27
          Width = 150
          Height = 3
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
      object txtPersonais: TDBLookupComboBox
        Left = 393
        Top = 345
        Width = 160
        Height = 23
        DataField = 'id_personal'
        DataSource = DM.dsClientes
        KeyField = 'id'
        ListField = 'nome'
        ListSource = DM.dsPersonais
        TabOrder = 10
        Visible = False
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 456
      Width = 803
      Height = 87
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 583
        Top = 3
        Width = 150
        Height = 34
        Margins.Left = 50
        Margins.Right = 70
        Margins.Bottom = 50
        Align = alRight
        BevelOuter = bvNone
        Color = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnEditar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 31
          Align = alClient
          Caption = 'Adicionar Cliente'
          Flat = True
          OnClick = btnEditarClick
          OnMouseEnter = btnEditarMouseEnter
          OnMouseLeave = btnEditarMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel7: TPanel
          Left = 0
          Top = 31
          Width = 150
          Height = 3
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
      object pnlFechar: TPanel
        AlignWithMargins = True
        Left = 373
        Top = 3
        Width = 150
        Height = 34
        Margins.Left = 50
        Margins.Right = 10
        Margins.Bottom = 50
        Align = alRight
        BevelOuter = bvNone
        Color = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btnFechar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 31
          Align = alClient
          Caption = 'Fechar'
          Flat = True
          OnClick = btnFecharClick
          OnMouseEnter = btnFecharMouseEnter
          OnMouseLeave = btnFecharMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel3: TPanel
          Left = 0
          Top = 31
          Width = 150
          Height = 3
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
end
