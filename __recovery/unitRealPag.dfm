object formRealPag: TformRealPag
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'formRealPag'
  ClientHeight = 492
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 492
    Align = alClient
    BevelOuter = bvNone
    Color = 14077653
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 776
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 772
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
        Width = 184
        Height = 34
        Margins.Top = 20
        Align = alLeft
        Caption = 'Realizar Pagamentos'
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
      Width = 776
      Height = 386
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 772
      ExplicitHeight = 385
      object pnlFormasDePagamento: TPanel
        Left = 200
        Top = 126
        Width = 251
        Height = 291
        BevelOuter = bvNone
        TabOrder = 0
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 69
          Width = 245
          Height = 60
          Align = alTop
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
          object btnDinheiro: TSpeedButton
            Left = 0
            Top = 0
            Width = 245
            Height = 57
            Align = alClient
            Caption = 'Dinheiro'
            Flat = True
            Glyph.Data = {
              2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
              180000000000F8090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFD4F3D79EE6A39EE5A399E49E98E49D98E49D98E49E98E49E98E49D
              98E49E98E49D98E49E98E49D98E49E98E49D98E49D98E49D98E49D98E49D98E4
              9E98E49D98E49D9CE5A19EE5A29FE7A4E1F7E3FFFFFFFFFFFF00D9F5DB48DA52
              40DC4B3EDB496FE3777BE68279E58079E58179E58179E58079E58179E58079E5
              8179E58079E58179E58079E58079E58079E58079E58079E58179E5807FE78650
              DD5941DC4B40DB4B49D953E7F9E9FFFFFF00A4EDA941DC4B48DD5259E163A8EE
              AD8DEA9497EC9D96EC9C96EC9C96EB9C96EC9C96EB9C98EC9E98EC9E98EC9E96
              EB9C96EB9C96EB9C96EB9C96EB9C96EC9C97EC9D8CEA9398EB9D43DC4E4CDD56
              3DDB48B0EFB4FFFFFF00A1EDA73BDA4650DF5AA5EDA987E88DBDF2C0B9F2BDB8
              F1BBB8F1BBB9F2BDB8F1BCC0F3C4AEEFB3A5EEAAB0F0B4BFF3C3BAF2BEB9F2BD
              B9F2BDB9F2BDB7F1BBBBF2BEAAEFAE90EA9780E78745DB4F39DB44AEF0B2FFFF
              FF009DEDA369E271A7EDAB85E88BB2EFB6B7F0BBB6F0BAB6F0BAB6F0BAB7F0BB
              BAF1BD7EE68557DF5F8CE99353DF5C7DE584B9F1BDB7F0BBB6F0BAB6F0BAB6F0
              B9B6F0BABAF1BE9AECA090E9969FEBA451DE5BACEFB0FFFFFF009AECA081E587
              86E88DBBF1BFB6F0BAB6F0BAB7F0BAB5EFB9B5EFB9BDF2C07BE5825BDF64B4EF
              B7B1F0B5B0EFB45DDF6572E37ABFF2C2B5F0B9B5F0B9B4EFB8B5F0B9B5F0B9BA
              F1BEA9EEAE87E88D7BE481A6EEABFFFFFF009AEBA079E48094E999B8F0BBB7F1
              BAB0F0B4A8EEADB6F0B9B6F0BAA5EEAA46DA50A4EDAA6CE2747CE5835EDF67A6
              EDAA3BD946A8EEADB7F1BBB6F1BAB6F0BAB9F2BDB8F1BCB7F1BBBAF2BE8AE891
              73E37BA6EEAAFFFFFF009AEA9F79E58192E998B8F0BCAFEFB486E78D87E78D9C
              EBA2BBF1BF8FE9953BD84550DB5945DB4F91EA97A0EBA592E99838D84288E78E
              BBF1BFA8EDAC9AEB9F8EE89491E997A3ECA8BAF1BE8AE89073E37BA7EDABFFFF
              FF005FDF667EE58492EA97B8EFBCAAEEAE6BE17361E06985E68BBEF0C186E68C
              34D63F57DE60B7EFBAB7F0BB7BE4813ED7483AD7447FE586BDF1BF81E4887CE4
              8272E2797DE48386E58CBCF2BF8AE78F72E27AA0ECA5FFFFFF005BDF647DE483
              90E996B7EFBAB1EFB584E58A7DE382A5ECA8B9F0BB95E89A36D53F91E8967FE5
              857AE48054DB5C67DF6E37D54091E896B8F0BBAFEFB3AEEEB2AAEDAEA8EDACB2
              EFB6B7F0BB88E88E76E37E74E37AFFFFFF0082E58978E37E90E995B9F0BBB3EF
              B7B7EFBAB5EFB8B5EFB8B4EFB7B0EEB346D9506FE176A1EAA599E99EADEEB26D
              E1733AD744B7EFB9B4EFB7B3EFB7B4EFB6B4EFB7B4EFB7B4EFB7B9F0BD85E58B
              79E38050DC5AFFFFFF0098EA9D80E4868BE790A1EAA5B6EFB9B2EEB4B2EEB5B1
              EDB4B1EDB4B7EFBA9AE99F2ED43859DC61A0EBA553DB5B31D43A94E998B7EFBA
              B1EEB4B2EEB4B1EDB4B2EEB4B2EEB5B5EFB889E68F99E99E7BE38141D84CF0FC
              F1009AEAA03AD64487E58D8CE79298E99DB5EFB8B2EEB5B1EEB4B1EEB4B2EFB5
              B6EFB9A5EBAA60DD675EDD6560DE68A4ECA8B7EFBAB2EEB5B2EEB5B2EEB5B1ED
              B4B2EFB5B6EFB97EE68699E99E69E07038D54139D644D7F6D9009AEAA02FD238
              30D33A83E58B84E589A8EDACAEEEB2ADEDB1ADEDB1AEEEB1ADEDB1B1EFB4B5EF
              B9B4F0B7B6EFB9B0EEB4AEEEB1ADEEB1ADEEB1AEEEB1ADEDB1B1EEB48AE7909A
              E99E4FDA5734D33D3AD54330D439BBF1BE00A2EBA629D13336D33F36D440A2EB
              A78BE6918EE7948FE7948FE7948EE7948FE7948EE7948FE7958FE7948FE7958E
              E7948EE7948EE7948EE7948EE7948FE7948EE7939BEA9F70E07730D23839D442
              38D44132D33C90E89400EEFBEE48D65031D23A31D13A41D6494ED9564CD8544D
              D8554DD8554CD8544DD8554DD8554DD85550D95853D95B4DD8564CD8544DD855
              4DD8554DD8554ED8564DD85551D95938D34032D33B38D34138D14136D33F60DD
              6800FFFFFF98E89D61D86971DC7792E2978CE0918BE0918BE0908BE0908BE090
              8BE0908FE1936DDA743AD14235CE3E58D6608AE08F8EE1938EE1938CE1918AE0
              8F8AE08F7ADD805AD66080DE873FD04837D14030D2395CDC6400FFFFFFCBF4CD
              59DD6197E99C95E99ABCF1BEB7F0BBB5EFB9B5EFB9B6F0BAB7EFB9B8F0BBBBF0
              BDC0F2C3C3F2C5BCF1C0A6EDAA92E99791E99791E99690E8958FE8948EE89392
              E99771E07625D13022CF2C3ED446D6F5D800FFFFFFEDFAED3BD64490E89696E9
              9C80E586ABEDB0B6EFB9B6EEB9B3EFB6A6ECAA9FEBA39BEAA08EE89383E68884
              E5898EE89395E99B87E68C6CE07350DA5945D74D4CD85457DB5F7CE382AEEDB2
              E4F8E6FBFEFBFFFFFF00FFFFFFF9FDF950DB572ED3394BD9539AEA9E7FE4868C
              E69180E58685E68B91E8979AEAA090E79480E4866EDF7552DA5A40D64832D33C
              52D85A82E488B5EFB9D5F5D6EEFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFF6DE07432D23B37D44032D23C9FEBA38EE89386E48C66DD6E
              49D85031D43A44D64D65DD6D8CE690BBF0BEE8FAEAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              C0F1C329D13327D1312DD13644D64D52D95A65DD6B99E99DC9F2CCEFFBF0FBFE
              FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFCBF3CDADED
              B1C9F3CBE7F9E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Margin = 10
            Spacing = 7
            OnClick = btnDinheiroClick
            OnMouseEnter = btnDinheiroMouseEnter
            OnMouseLeave = btnDinheiroMouseLeave
            ExplicitLeft = -16
            ExplicitWidth = 150
            ExplicitHeight = 71
          end
          object Panel6: TPanel
            Left = 0
            Top = 57
            Width = 245
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
          Left = 3
          Top = 135
          Width = 245
          Height = 60
          Align = alTop
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
          object btnCartao: TSpeedButton
            Left = 0
            Top = 0
            Width = 245
            Height = 57
            Align = alClient
            Caption = 'Cart'#227'o'
            Flat = True
            Glyph.Data = {
              46050000424D4605000000000000360000002800000018000000120000000100
              18000000000010050000C40E0000C40E00000000000000000000B9E1EC3DACCC
              21A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0
              C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C52FA6C8B9
              E1EC2FA6C921A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C5
              21A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0
              C521A0C521A0C53DACCC21A0C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5
              FFFFFFFFFFFF21A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0
              C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521
              A0C521A0C521A0C5FFFFFFFFFFFF3DACCD21A0C521A0C521A0C521A0C521A0C5
              21A0C521A0C521A0C52FA6C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFB9E1ED2FA6C921A0C521
              A0C521A0C521A0C521A0C521A0C53DACCDB9E1ECFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFF
              FFF1F9FCABDBE882CADF67BED759B8D382CADFB9E1ECFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521
              A0C521A0C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90D0E32FA6C82FA6C8
              9ED6E6FFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFF
              FFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFC7E7F021
              A0C521A0C521A0C521A0C5BAE2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFF
              FFFFFFFF90D0E221A0C521A0C521A0C521A0C590D0E2FFFFFFFFFFFF21A0C521
              A0C521A0C521A0C521A0C521A0C5FFFFFFFFFFFF21A0C521A0C521A0C521A0C5
              FFFFFFFFFFFFFFFFFFFFFFFFB9E1EC21A0C521A0C521A0C521A0C5C7E7F0FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521
              A0C521A0C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ED5E52FA6C92FA6C9
              90CFE1FFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C521A0C521A0C5FFFF
              FFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C521A0C521A0C5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A0C521A0C53DACCD21A0C5
              21A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0
              C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C52F
              A6C9B9E1ED2FA6C921A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C5
              21A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0C521A0
              C521A0C53DACCDB9E1EC}
            Margin = 10
            Spacing = 10
            OnClick = btnCartaoClick
            OnMouseEnter = btnCartaoMouseEnter
            OnMouseLeave = btnCartaoMouseLeave
            ExplicitLeft = -16
            ExplicitWidth = 150
            ExplicitHeight = 71
          end
          object Panel3: TPanel
            Left = 0
            Top = 57
            Width = 245
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
          Left = 3
          Top = 3
          Width = 245
          Height = 60
          Align = alTop
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
          object btnPix: TSpeedButton
            Left = 0
            Top = 0
            Width = 245
            Height = 57
            Align = alClient
            Caption = 'Pix'
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD667B0BE05B2C00DD3DC78FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFC6D049A8B800ADBC00ACBC00A8B700C5D049FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFC5CF49A6B700ADBC00AEBD00AEBD00ADBC00A7B700C4CF49FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDC92E
              A8B800ADBC00AEBD00AEBD00AEBD00AEBD00ADBC00A9B900BDCA31FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9ECBABECA31A8B800AC
              BB00AEBD00AEBD00AEBD00AEBD00ADBC00A9B800B1BF08E8EDBDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFEFBE3E8A7E4E9ABF8F9EAF0F3D3ACBB00ACBB
              00AEBD00AEBD00ADBC00A8B800DDE496FFFFFFE4E8A9E3E8A7FDFEFBFFFFFFFF
              FFFFFFFFFFFFFFFFC6D049A5B600A6B700ABBA00E1E7A4EDF1C8ACBB00ACBB00
              ADBC00A9B900DAE28DF1F3D5B3C112A5B600A5B600C5D049FFFFFFFFFFFFFFFF
              FFC5CF49A6B700ADBC00AEBD00ACBC00A7B700E5EAADEDF1C8ABBA00A6B700D9
              E18CF6F8E7ACBB00ABBA00AEBD00ADBC00A7B700C4CF49FFFFFFD4DC77A7B800
              ADBC00AEBD00AEBD00AEBD00ADBC00A7B700E1E6A3F1F4D4E2E7A5F0F3D4ACBB
              00ACBB00ADBC00AEBD00AEBD00ADBC00A8B800CFD768B2C10DADBC00AEBD00AE
              BD00AEBD00AEBD00AEBD00ACBC00AABA00D0D86BDBE18DB1BE08ABBB00ADBC00
              AEBD00AEBD00AEBD00AEBD00ADBC00AFBE05B0BE05ADBC00AEBD00AEBD00AEBD
              00AEBD00AEBD00ADBC00A9B900CFD868DCE392AFBE04ABBB00ADBC00AEBD00AE
              BD00AEBD00AEBD00ADBC00B2C10DCED867A8B800ADBC00AEBD00AEBD00AEBD00
              ADBC00A7B700E1E7A2EEF0C9E2E6A5F1F4D4ACBC00ACBB00ADBC00AEBD00AEBD
              00ADBC00A8B800D4DC77FFFFFFC4CF49A7B700ADBC00AEBD00ACBB00A7B700E5
              EAADEEF1C9ABBB00A6B700DAE08CF7F9E7ACBC00ABBA00AEBD00ADBC00A7B700
              C4CF49FFFFFFFFFFFFFFFFFFC5D049A6B600A7B700AABA00E2E8A3EEF1C9ACBB
              00ACBB00ADBC00A9B900DAE18DF1F4D5B2BF0BA5B600A5B600C4D049FFFFFFFF
              FFFFFFFFFFFFFFFFFEFEFDDBE18FDBE18FF9FAEDF1F3D4ACBB00ACBB00AEBD00
              AEBD00ADBC00A8B800DEE49BFFFEFFE4E9AAE3E8A7FDFEFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE9EEBEBBC727A9B800ACBB00AEBD00AEBD00AEBD00AE
              BD00ADBC00A7B700B2C00DE9EEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFBCC92EA9B800ADBC00AEBD00AEBD00AEBD00AEBD00ADBC
              00A9B900BCCA30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC4CF49A7B700ADBC00AEBD00AEBD00ADBC00A7B700C4CF49
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFC5D049A7B800ACBC00ADBC00A8B800C4D049FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFD4DB77B2C10DB0BE05CFD868FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Margin = 14
            Spacing = 12
            OnClick = btnPixClick
            OnMouseEnter = btnPixMouseEnter
            OnMouseLeave = btnPixMouseLeave
            ExplicitLeft = 5
            ExplicitTop = 2
          end
          object Panel5: TPanel
            Left = 0
            Top = 57
            Width = 245
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
      object pnlFormaPag: TPanel
        Left = 515
        Top = 73
        Width = 345
        Height = 323
        TabOrder = 1
        Visible = False
        object pnlTopPag: TPanel
          Left = 1
          Top = 1
          Width = 343
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object imgLogoPix: TImage
            Left = 0
            Top = 0
            Width = 70
            Height = 49
            Align = alLeft
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
              000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
              284944415478DAB5974B4EC33010867F1BA9B02347E8117A031A5A09B1A2E5B1
              A6DC004E40B9013728AC58416085042A2937E008BD0101362C20669CA68F90C4
              9D0962A44AAE9AF8FBFC98B1AB50251E832656700A98060C3C288CE873017FF7
              52DA9512C387D77D7AEDB4F8C7EF33B40EFAFF27E0845793E00BB0E072099E80
              082E93582E5009CE97700BFC09CE93281708038FD26C07B1AA53AA35A14C5348
              8EE8FD0B68F502BCDDC13F8AF802F7417DD6DEEE8E27B311D8BC2F1D49260C5E
              F0F1E6A35B0C750BFC9E768531E2F804EDFD5B96C414EE791EB507308B33975F
              8EAC806BCD357A49A5734964E026A4EFF5FC435989B90067C3B92458F0BC8462
              C35D122278564211BC47F0010B5E2461D0C047742483A7117FFB0A4F4198DD28
              DC302768ED9D27CD90B2460A9FCCFF8866E0C6C8E1F30E60D4986A44273996E5
              115981576A5479D9AEFD882C221268D037D9E86763A8BA0486F6413BBD80DC5F
              D5515B0DC512C62E81BDDD681356820FAF8F69476E40D326FC5CF3C412D44F9A
              86A2323B85F767A9AB280D15A5A1488278ADBDB38542C42AB379F834441213F8
              E4B5C57097D972B848620ECF0B144B8CF14587D1963D8C1815332351A36755AF
              0C5E2C501692729D48A82EFCF428773E5A16F64212C71D68BD4ED3DF11A7AA3D
              C68D1A51BD7D867EBF955D4866A316644769E4A79D2FF06709379C2750596239
              9C2F2096E0C165026C093E5C2EB0544206AF2660E3816E515A1FA6FF15A2E44A
              A6D1C7E6EEB3B4AB1F0FD64AB7E12E7DF60000000049454E44AE426082}
            Visible = False
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 47
          end
          object imgLogoDinheiro: TImage
            Left = 70
            Top = 0
            Width = 70
            Height = 49
            Align = alLeft
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              0030080300000060DC09B500000300504C544547704CB5EEB2BAF0B6B6F0B2B3
              EDAF9EEC98B8F0B4B4EEB04FC147B9F0B5BAF1B641D438B4EEB158DA4E57DE4D
              B5EEB1B6EFB345D63C93EA8DB7EFB449D83F9DEC9773E16C59DA514EDA4443D5
              3A52DC4840B43955DD4B96E99145D73C54DD4A40CB374FDB459BE99644D53BB6
              F1B146D73D40D437A9EDA471E16A41D438B2EFAEA0EB9B90E88A91E88BA3EC9E
              40D43745CD3D46D03D9AEA9440D43742D53840D43744D63BB3EFAF7AE2744AD7
              4282E47C70E26851DB4748CB3F55D34C3AC3324AD1413AC23240D43740D43741
              D53840D4373FCF3647D73E40D43747D73EB2EDAF42D23950DA48AAECA6A2EB9D
              88E58252DC4876E17042CF399EEB999CE39756D74C54D54B52CB4A56D44C40D4
              374FC14740D43742D43941D23840D33645D63C44D63B40D43746D63D49D64049
              D84049D83F40D43740D33779DD7240D3377FE27960D7594DDA434AD64146D33D
              40D4374CD9434CD94240D43740D43740D43740D33743D53A9AEA954FDB4553DC
              4A4EDA4451DB4753DC4954DD4AA5E5A1B4EEAFB5DA6CB9F1B5B5F0B158DA4E73
              E16CB4EFB193EA8D59DA519DEC97BBF2B7B6EFB34DD545B5EFB2BAF1B642D439
              BBF1B7B7F0B342D53947D73E44D63B41D43756DE4C4BD94158DF4EA7ECA24FDB
              4546D73D4CDA4354DE4AAFE7ABB8F1B441D23741D538A2EC9DADEDA98BE686A8
              EDA364DE5CA1EB9CB0E7AD92E78C4DD445A0EC9B7EE577ABEDA694E88F9FEA9A
              AEEDAA8EE888AAEEA575E16D8AE6847FE57860DC58B0EFAC7EE5767BE573A5EB
              A17CE37545D63BB2EEAE8CE88552DC486FE068ACEFA786E5804ED845B1E7AD98
              E993B8F0B4B1EEAD7CE3766CE06486E77FB6F0B2B3EEAFB4EEB0B0EEAC95EA8F
              79E37293E88EA4ED9E5EDF5563E05A8AE88377E56F73E36C77E2707DE5766CE2
              638FE68A56DA4C76E26F9BEB95B4EFB0A6EDA15DDD5484E47D4AD44160DF5849
              D83F5ADD519CEA9758DD4E71E16A9DE93A9DEA9890E98943D13A78E57047D33E
              ABE6A749D6417EE37852D84A52DA4982E67B69DE619AEB946AD86341CD3865D7
              5EA4E59FB1E8AD7CDD7690E18B55D34DBAF0AF6EDC568A0000010074524E5300
              FEFEFEFEFEFEFE41FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4501FEFE457116
              71FEFEFEFEFEFFFEF9FEFFFFFEFFF40C2AFEBCA9894FFEFEFEFEFEFE30C80533
              089361C69E1DE45882FEB3FEFEFEFEFEFEFEFEFEE7581DDC352AC29FFF264778
              EDB37948B2CF6CFE3BFEFE8A1FFE7FBBEBD8E9E17641FF46966798C8D4FEFEFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8B
              AA8F84000005034944415478DADD95795053471CC77F0F44452360390433048C
              29D4AA8007D2A942CBA50431621D106CB172544719102122E419121312039562
              131CAB2088A5A3A0A5250C7820156A29DE065140510268142850B10A851C76F3
              9E4726D3B1FA47673ADDF9EEFE767F6F3FBBFBDEEEFB2D066F99B0FF0FE0ABEC
              7C1BC0C3F67EFC95EB26D6BD16F56F062C6C155BC667016C67D8EA302D76F69F
              80A5CDA8780C73E3CBE332AF03D0BC95749346C56B8045517B92405C3061A838
              31A86AC6BA0447661648437EF62D35E9FC7B80991C5ED6461F98EAC30C2EF9E1
              8EDA4927581F304E5BC4C992B25A198D563755C640CC39701D0C64B0EC50FD68
              4AD150EAE0B1E89CB0427AEA5781763D405D5167626D57AB320096EDF72BBD12
              D0EA50878B7011E019E0DB63368B52509DDD1371C1A17DE3E7D65BB3207FCE43
              6CCCA49E009C9F54AE8F5A24FB08808F12E819D1A820C34B1AE3145967AE3CBF
              402D09B3345D5CB23D2B7F9CCB1104C4FD7866529012C0829C538BB2FAE592BF
              B6627A81D561B606D298A8C93041402CCF3E7117E53CC0FD17BDBEFF565E7A7C
              348AF9A2DDC57BB6257352E412538EF81206548FE2A27B8EC4035A37AD1B1510
              BD15FCFC6B5714E9EB40BAEEB1295BF29FCC4DABC4C0B3652FC4EFFDE4DD2480
              3D4968438C449A4D547DA710AFA462CCD91C8D02E3979C78ED09DA504C18FBC1
              95582A55920692F8D94B7301A489D2443012612ADAF74500EAC7CF6AC068DBD0
              9C4137FC62E603083204196024C228BA6774B5A17E525063B43F00345F1ED8FB
              B1E10A668A1412C376BE8B99A0017D6F1BFA298CB6E3BD3FAD47061D7CF9CF37
              8E5F7767CADDA7F2DCD82E54279C48B60736524606267256E56334B6DD983D5F
              5A27E40208B9A8C44F6AC22BFA63CB5A6BBD8174EA4571ED8DEB382AF03C81D1
              86F3D49CFB06D387DE38981316CBD06A411869E09E7CB5F3D9A740BF887136F7
              374B541C107300653187B1212362DA91B1694D63C5579B830927293FD3BED9F2
              561986533F1C4854A1751E7FD42146EFE01E96E21FFB6BA567057D83E26CC28B
              774062AD5DAF6B2F53613BA64F1B96A0C3EEA8F60B9B100C43CB078E78DC56D7
              CBC40FF2203708607A41EFA4353EBDB760A4A253777B0F605CDA3BA6C3095C4D
              F6C1C7BEEDD784B94FC04C8BEF87D1617462831770BDD56B4F77F4FA3C08E16A
              DC3A4C9BF2004BA70B64C3097287161DA5C7622AABB08F2B0CFE206131EB724B
              AC30D84DDE30735BD568777A4980BCD1AD6F44AC042CED9099ACF02440F9ACAD
              510B5D81B185873EC9E9C1E41B854F7939D1E89FE5EB248FAC36F582F6E665B6
              3902A6F33265435FE060E9337EB512FDA331D5EE8AC536CB1E5CCF5FD5E8C4C2
              01443829A6C5CA64C97320A38D70A22CC28352F08BC74E31E33B58CEB7FA3F33
              04069248802E71F56F7FB5416EA5664DA1AEB24791360B7EBB6A789E76510FFF
              AED20325E3E7D7F3C3614726A08C4A47EF7E7EF2F9A765359AE656D249E89B85
              51BC29D15D08585462C928BFB6EED55073BE639E68DA6CE18487188C5F4369AC
              DD58704D0F08F8D5935DFACEAE13019071496419A1BB40997886ABAF03197602
              C73416017C1092007F347CDFEA7942809DBC9D3C3012610EBD1F5A758EFF1CC0
              D37741FAB95B4E28C8E7A4E4A4809108D396E7751750BF6C04CCBBAB5FE2A5EA
              5FE4AF8901354EEE840D2A038C3A5381AE1270096303EC66EF66839148134A5C
              4D3FB52B506C5DF3F0E0D1EC54404299AC18CAA0B1BCA78E8CDE6BCBE14D9267
              870AFECB17FBBF08FC05DCCB4733EF22B4370000000049454E44AE426082}
            Visible = False
            ExplicitLeft = 85
            ExplicitTop = 1
            ExplicitHeight = 47
          end
          object imgLogoCartao: TImage
            Left = 140
            Top = 0
            Width = 70
            Height = 49
            Align = alLeft
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              001A0806000000D69B5E3F000000097048597300000B1300000B1301009A9C18
              000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
              C84944415478DAD5975D4EC24010C7674AD4C417B8810B2780475349E0047203
              DA237002E104E209DA2B780288A6FA082790F50442628C42EC38DBB2B17C14A9
              942A936CF8DAD9F9CD7F67B7030E1C5178437400A0C6A3009919B95382167A6E
              898393955DE045080628BEA8CC09608C3C3209CBF130547BAC0048D39896B4B3
              00F05CC1AAA3A5DE1F1680E788B27A356D395CFE4D15F32B4039CED760B9B55F
              6280474708E29342E14901DE3F8944F5735B4A3DE7CE11562E3C4D31F6BD7E62
              8007B738E24962E9EBA1698D2AFA438F214F72701617FEE3139EEB73E04400F7
              8EA81988BDF5495145CBAA549ACD155A674AB5AA2DFB8901364A8BD4309BF276
              AF5B10141EE2E02705780B0AF923CCC7859FCC68C25B304E0CA08C6BA0472BF2
              2ECE0F400DB85CF665853A2B49250550D91DA3714D408DC009A93BF5E14667B4
              690BB850716780B4ED5700EAA279E7FBDBE771CA155D8964BF370075B47C302C
              AEF626ACB907D867681074A217526A009E536A73E0AB6D16F4093B55FBA99D1A
              00573467BDE94CAF1A11B52E6CD94D0720322101C2D6457C00007CA9600EF2DB
              2CA62DFAB0D91960DFF6EF0082A614C2863493A6741E4F37A57FDC96EB074D96
              10F3BF00FD2991FD05629070DC9FB88B110000000049454E44AE426082}
            Visible = False
            ExplicitLeft = 146
            ExplicitTop = -3
          end
          object lblTipoPag: TLabel
            Left = 76
            Top = 12
            Width = 5
            Height = 25
            Margins.Top = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object pnlData: TPanel
          AlignWithMargins = True
          Left = 16
          Top = 205
          Width = 313
          Height = 40
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object lblData: TLabel
            Left = 0
            Top = 0
            Width = 313
            Height = 17
            Margins.Left = 10
            Align = alTop
            Caption = 'Data'
            Color = 13948116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9737364
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 29
          end
          object txtData: TSWHDBEdit
            Left = 0
            Top = 17
            Width = 313
            Height = 23
            Align = alClient
            BorderStyle = bsNone
            DataField = 'data_pag'
            DataSource = DM.dsPagFunc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            MudarColor = 6006501
          end
        end
        object pnlValor: TPanel
          AlignWithMargins = True
          Left = 16
          Top = 135
          Width = 313
          Height = 40
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object lblValor: TLabel
            Left = 0
            Top = 0
            Width = 313
            Height = 17
            Margins.Left = 10
            Align = alTop
            Caption = 'Valor'
            Color = 13948116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9737364
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 32
          end
          object txtValor: TSWHDBEdit
            Left = 0
            Top = 17
            Width = 313
            Height = 23
            Align = alClient
            BorderStyle = bsNone
            DataField = 'valor'
            DataSource = DM.dsPagFunc
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
        object pnlName: TPanel
          AlignWithMargins = True
          Left = 16
          Top = 65
          Width = 313
          Height = 40
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object lblName: TLabel
            Left = 0
            Top = 0
            Width = 313
            Height = 17
            Margins.Left = 10
            Align = alTop
            Caption = 'Nome do Funcion'#225'rio'
            Color = 13948116
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9737364
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 134
          end
          object txrName: TDBLookupComboBox
            Left = 0
            Top = 17
            Width = 313
            Height = 23
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            DataField = 'id_func'
            DataSource = DM.dsPagFunc
            KeyField = 'id'
            ListField = 'nome'
            ListSource = DM.dsPersonais
            TabOrder = 0
          end
        end
        object pnlPagar: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 279
          Width = 337
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          Color = 15881582
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          object btnPagar: TSpeedButton
            Left = 0
            Top = 0
            Width = 337
            Height = 37
            Align = alClient
            Caption = 'Pagar'
            Flat = True
            OnClick = btnPagarClick
            OnMouseEnter = btnPagarMouseEnter
            OnMouseLeave = btnPagarMouseLeave
            ExplicitWidth = 336
          end
          object Panel8: TPanel
            Left = 0
            Top = 37
            Width = 337
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
    object pnlBottom: TPanel
      Left = 0
      Top = 443
      Width = 776
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 442
      ExplicitWidth = 772
      object Panel10: TPanel
        AlignWithMargins = True
        Left = 623
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
        ExplicitLeft = 619
        object btnFechar: TSpeedButton
          Left = 0
          Top = 0
          Width = 150
          Height = 41
          Align = alClient
          Caption = 'Fechar'
          Flat = True
          OnClick = btnFecharClick
          OnMouseEnter = btnFecharMouseEnter
          OnMouseLeave = btnFecharMouseLeave
          ExplicitWidth = 149
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
        Left = 20
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
        TabOrder = 1
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
          ExplicitWidth = 149
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
