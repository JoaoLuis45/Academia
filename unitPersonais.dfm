object formPersonais: TformPersonais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Personais'
  ClientHeight = 615
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 615
    Align = alClient
    BevelOuter = bvNone
    Color = 14077653
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1122
    ExplicitHeight = 614
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1126
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1122
      object imgIconForm: TImage
        Left = 0
        Top = 0
        Width = 65
        Height = 57
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00160806000000B28EDEB0000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000
          864944415478DAED97610AC0200846F526DBFD0FB56EB2F5D3B99AE6221DF841
          3F2A7A3D90C010DE73D4B1B1B552C70EB60CF350009EC673D3785A41ECCCAD82
          6A1EDF68956085204D015272EC003C056F7C54025695F8C14FC1148C20D87A49
          12E06BD4FC5F08D2842C710AA66044419E30CD42F8764B0B746B587BC0D173D3
          78D245EE9FA60B3AB86C1535B5C6FA0000000049454E44AE426082}
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 68
        Top = 20
        Width = 84
        Height = 34
        Margins.Top = 20
        Align = alLeft
        Caption = 'Personais'
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
    object pnlButtons: TPanel
      Left = 0
      Top = 57
      Width = 1126
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1122
      object panel1: TPanel
        AlignWithMargins = True
        Left = 810
        Top = 3
        Width = 200
        Height = 68
        Margins.Left = 40
        Margins.Right = 40
        Align = alLeft
        BevelOuter = bvNone
        Color = 12225536
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnPayment: TSpeedButton
          Left = 0
          Top = 0
          Width = 200
          Height = 65
          Align = alClient
          Caption = 'Pagamentos Realizados'
          Flat = True
          OnMouseEnter = btnPaymentMouseEnter
          OnMouseLeave = btnPaymentMouseLeave
          ExplicitHeight = 71
        end
        object pnlborder1: TPanel
          Left = 0
          Top = 65
          Width = 200
          Height = 3
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 530
        Top = 3
        Width = 200
        Height = 68
        Margins.Left = 40
        Margins.Right = 40
        Align = alLeft
        BevelOuter = bvNone
        Color = 3556340
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btnRemoveClient: TSpeedButton
          Left = 0
          Top = 0
          Width = 200
          Height = 65
          Align = alClient
          Caption = 'Remover Personal'
          Flat = True
          OnClick = btnRemoveClientClick
          OnMouseEnter = btnRemoveClientMouseEnter
          OnMouseLeave = btnRemoveClientMouseLeave
          ExplicitLeft = -16
          ExplicitWidth = 150
          ExplicitHeight = 71
        end
        object Panel3: TPanel
          Left = 0
          Top = 65
          Width = 200
          Height = 3
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 250
        Top = 3
        Width = 200
        Height = 68
        Margins.Left = 250
        Margins.Right = 40
        Align = alLeft
        BevelOuter = bvNone
        Color = 5287756
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btnAddClient: TSpeedButton
          Left = 0
          Top = 0
          Width = 200
          Height = 65
          Align = alClient
          Caption = 'Adicionar Personal'
          Flat = True
          OnClick = btnAddClientClick
          OnMouseEnter = btnAddClientMouseEnter
          OnMouseLeave = btnAddClientMouseLeave
          ExplicitHeight = 71
        end
        object Panel5: TPanel
          Left = 0
          Top = 65
          Width = 200
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
    object pnlGrid: TPanel
      Left = 0
      Top = 131
      Width = 1126
      Height = 434
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 1122
      ExplicitHeight = 433
      object imgPersonal: TImage
        AlignWithMargins = True
        Left = 283
        Top = 3
        Width = 441
        Height = 428
        Margins.Left = 50
        Align = alLeft
        Center = True
        ExplicitHeight = 374
      end
      object gridPersonais: TDBGrid
        AlignWithMargins = True
        Left = 20
        Top = 3
        Width = 210
        Height = 428
        Margins.Left = 20
        Align = alLeft
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DM.dsPersonais
        DrawingStyle = gdsClassic
        FixedColor = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = gridPersonaisDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Width = 193
            Visible = True
          end>
      end
      object pnlDados: TPanel
        AlignWithMargins = True
        Left = 757
        Top = 50
        Width = 289
        Height = 381
        Margins.Left = 30
        Margins.Top = 50
        Align = alLeft
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 1
        ExplicitLeft = 749
        ExplicitTop = 91
        object Label5: TLabel
          Left = 28
          Top = 24
          Width = 41
          Height = 17
          Margins.Left = 10
          Caption = 'Nome:'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 28
          Top = 64
          Width = 38
          Height = 17
          Margins.Left = 10
          Caption = 'Idade:'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 28
          Top = 104
          Width = 57
          Height = 17
          Margins.Left = 10
          Caption = 'Telefone:'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblNome: TLabel
          Left = 183
          Top = 24
          Width = 48
          Height = 17
          Margins.Left = 10
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblIdade: TLabel
          Left = 183
          Top = 64
          Width = 44
          Height = 17
          Margins.Left = 10
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblTel: TLabel
          Left = 183
          Top = 104
          Width = 83
          Height = 17
          Margins.Left = 10
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 28
          Top = 144
          Width = 142
          Height = 17
          Margins.Left = 10
          Caption = 'Quantidade de Alunos:'
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblQtdAlunos: TLabel
          Left = 183
          Top = 144
          Width = 63
          Height = 17
          Margins.Left = 10
          Color = 13948116
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9737364
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 565
      Width = 1126
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitTop = 564
      ExplicitWidth = 1122
      object lblSave: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 20
        Width = 4
        Height = 27
        Margins.Left = 10
        Margins.Top = 20
        Align = alLeft
        Color = 13948116
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 9737364
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 17
      end
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 973
        Top = 3
        Width = 150
        Height = 44
        Margins.Left = 40
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
        ExplicitLeft = 969
        object btnEditar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 41
          Align = alClient
          Caption = 'Editar'
          Flat = True
          OnClick = btnEditarClick
          OnMouseEnter = btnEditarMouseEnter
          OnMouseLeave = btnEditarMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel9: TPanel
          Left = 0
          Top = 41
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
