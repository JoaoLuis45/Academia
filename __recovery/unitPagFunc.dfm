object formPagFunc: TformPagFunc
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'formPagFunc'
  ClientHeight = 441
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    Color = 14077653
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 887
    ExplicitHeight = 440
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 891
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 887
      object imgIconForm: TImage
        Left = 0
        Top = 0
        Width = 65
        Height = 57
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
          454944415478DABD978D71C2300C85C50465843041C304A413B49DA030013001
          6102E8040D135026204C5036209D0098805AE41984B1839D1EBC3BDD99FCD89F
          9F653934284C4D1503157DB473153D1545603F2735029FFF51115BAEBF00E6AE
          005D155F8E7BEC40EBDE0072F6530C9A52B914B55D08013858663B02048B73E3
          F3D1007DB8410019A3AD93F503ED6FDC2BFE03B05111A1CD9DAD554CC4B53715
          0BB46DC9BAA37299D67501A4DDA6A42B299EB52907442D8026661659EEBD5369
          B3E95406B8019D93B52D5D08AD031166D7C56FEE682C06E741B61657268020BC
          3BAB0B20DD7852F16B01DC08B836DA3259AD00B1B0482BAF09B7157D0DE1844C
          D644C54A02CCA9CC605372062192769B62988B8AC900878ACE74C55B91B17D2A
          E49BAC5E00267D4A62FD2AC483F3B991E037D7809E39B80950E0057E28AEE89C
          5D1906B8614B562700AFCF5290170E2B4DADE9BC250B4F382F8008F45D2AF7FF
          2D18EEE39DFCF3C51B402BA3F280A912AFF7D4717D613A140AC07AA5EB9A91D0
          B93ADE12E798AE0FB5005C4AF0AE8F78ACE3528500441E1D73C9D545688720C7
          FB3C5E3B04C0B75E686554EE7D2D5EB62E9595F2F4CC3D017232CE7EF4B7146E
          148F04300767B56E0170B6EA2DD50904D8D3B91E70659D1B831F3F626F01B032
          AA51E120FD716A7EA2A5E833E830629019F97D27987FE1AC83870268ED606D8E
          F61ED7F9D089E05EEC78EFEA446400D372AD02B34E03016DCAC9F127B601EA67
          8B550B50F3FD1120A31A03F30456AE07423F4A3B0049001C09F01D66A88FE619
          5D5642ABFE00B299BCCFA50ED0630000000049454E44AE426082}
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 68
        Top = 20
        Width = 213
        Height = 34
        Margins.Top = 20
        Align = alLeft
        Caption = 'Pagamentos  Realizados'
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
      Width = 891
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 887
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 530
        Top = 3
        Width = 200
        Height = 74
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
        TabOrder = 0
        object btnExcluirPagamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 200
          Height = 71
          Align = alClient
          Caption = 'Excluir Pagamento'
          Flat = True
          OnClick = btnExcluirPagamentoClick
          OnMouseEnter = btnExcluirPagamentoMouseEnter
          OnMouseLeave = btnExcluirPagamentoMouseLeave
          ExplicitLeft = -16
          ExplicitWidth = 150
        end
        object Panel3: TPanel
          Left = 0
          Top = 71
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
        Height = 74
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
        TabOrder = 1
        object btnReceberPagamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 200
          Height = 71
          Align = alClient
          Caption = 'Realizar  Pagamento'
          Flat = True
          OnClick = btnReceberPagamentoClick
          OnMouseEnter = btnReceberPagamentoMouseEnter
          OnMouseLeave = btnReceberPagamentoMouseLeave
        end
        object Panel5: TPanel
          Left = 0
          Top = 71
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
      Top = 137
      Width = 891
      Height = 254
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 887
      ExplicitHeight = 253
      object gridPagFunc: TDBGrid
        Left = 0
        Top = 0
        Width = 891
        Height = 254
        Align = alClient
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DM.dsPagFunc
        DrawingStyle = gdsClassic
        FixedColor = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = gridPagFuncDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo do Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFunc'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Funcionario'
            Width = 338
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_pag'
            Title.Alignment = taCenter
            Title.Caption = 'Data de Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Visible = True
          end>
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 391
      Width = 891
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitTop = 390
      ExplicitWidth = 887
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
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 738
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
        Visible = False
        ExplicitLeft = 734
        object btnSalvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 41
          Align = alClient
          Caption = 'Salvar Altera'#231#245'es'
          Flat = True
          OnClick = btnSalvarClick
          OnMouseEnter = btnSalvarMouseEnter
          OnMouseLeave = btnSalvarMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel7: TPanel
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
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 545
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
        TabOrder = 1
        ExplicitLeft = 541
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
      object Panel10: TPanel
        AlignWithMargins = True
        Left = 352
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
        TabOrder = 2
        Visible = False
        ExplicitLeft = 348
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 41
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          OnClick = btnCancelarClick
          OnMouseEnter = btnCancelarMouseEnter
          OnMouseLeave = btnCancelarMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel11: TPanel
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
      object Panel12: TPanel
        AlignWithMargins = True
        Left = 37
        Top = 3
        Width = 150
        Height = 44
        Margins.Left = 20
        Align = alLeft
        BevelOuter = bvNone
        Color = 15881582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object btnVoltar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 41
          Align = alClient
          Caption = 'Voltar'
          Flat = True
          OnClick = btnVoltarClick
          OnMouseEnter = btnVoltarMouseEnter
          OnMouseLeave = btnVoltarMouseLeave
          ExplicitWidth = 200
          ExplicitHeight = 71
        end
        object Panel13: TPanel
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
