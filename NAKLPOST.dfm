object fmNaklPost: TfmNaklPost
  Left = 0
  Top = 0
  Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1080' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 560
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 289
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 882
    object DBGrid1: TDBGrid
      Left = 1
      Top = 57
      Width = 790
      Height = 212
      Align = alClient
      DataSource = fmDM.dsNakladnaya
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnMouseWheel = DBGrid1MouseWheel
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOMERNAKL'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Width = 112
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Width = 125
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAIMENSIRIA'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1099#1088#1100#1103
          Width = 169
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KOLICHESTVO'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          Width = 102
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SUMMA'
          Title.Alignment = taCenter
          Title.Caption = #1057#1091#1084#1084#1072
          Width = 145
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 269
      Width = 790
      Height = 19
      Panels = <
        item
          Bevel = pbNone
          Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1087#1080#1089#1077#1081
          Width = 120
        end
        item
          Alignment = taRightJustify
          Width = 50
        end
        item
          Width = 50
        end>
      ExplicitWidth = 880
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 56
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 880
      object buExit: TButton
        Left = 32
        Top = 13
        Width = 75
        Height = 25
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 0
        OnClick = buExitClick
      end
      object buAdd: TButton
        Left = 128
        Top = 13
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = buAddClick
      end
      object buEdit: TButton
        Left = 224
        Top = 13
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 2
        OnClick = buEditClick
      end
      object buDelete: TButton
        Left = 320
        Top = 13
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = buDeleteClick
      end
      object edFiltr: TEdit
        Left = 623
        Top = 15
        Width = 152
        Height = 21
        TabOrder = 4
        OnChange = edFiltrChange
      end
      object buRefresh: TButton
        Left = 416
        Top = 13
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 5
        OnClick = buRefreshClick
      end
      object CheckBox1: TCheckBox
        Left = 520
        Top = 17
        Width = 97
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 6
        OnClick = CheckBox1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 289
    Width = 792
    Height = 271
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 882
    ExplicitHeight = 355
    object StatusBar2: TStatusBar
      Left = 1
      Top = 251
      Width = 790
      Height = 19
      Panels = <
        item
          Bevel = pbNone
          Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1087#1080#1089#1077#1081
          Width = 120
        end
        item
          Alignment = taRightJustify
          Width = 50
        end
        item
          Width = 50
        end>
      ExplicitTop = 335
      ExplicitWidth = 880
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 57
      Width = 790
      Height = 194
      Align = alClient
      DataSource = fmDM.dsPostavshik
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid2TitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOMERPOSTAVSHIKA'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
          Width = 119
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAZVANIE'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 144
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ADRES'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Width = 193
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOMERNAKL'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Width = 147
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 56
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 880
      object buAdd2: TButton
        Left = 128
        Top = 13
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = buAdd2Click
      end
      object buEdit2: TButton
        Left = 224
        Top = 13
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = buEdit2Click
      end
      object buDelete2: TButton
        Left = 320
        Top = 13
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = buDelete2Click
      end
      object edFiltr2: TEdit
        Left = 623
        Top = 13
        Width = 152
        Height = 21
        TabOrder = 3
        OnChange = edFiltr2Change
      end
      object buRefresh2: TButton
        Left = 416
        Top = 13
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 4
        OnClick = buRefresh2Click
      end
      object CheckBox2: TCheckBox
        Left = 520
        Top = 17
        Width = 97
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 5
        OnClick = CheckBox2Click
      end
    end
  end
end
