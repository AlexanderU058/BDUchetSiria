object fmSirie: TfmSirie
  Left = 0
  Top = 0
  Caption = #1057#1099#1088#1100#1077
  ClientHeight = 364
  ClientWidth = 886
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 49
    Align = alTop
    TabOrder = 0
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
      Left = 671
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
      Left = 552
      Top = 17
      Width = 97
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 886
    Height = 296
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 884
      Height = 294
      Align = alClient
      DataSource = fmDM.dsSirie
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOMERSIRIA'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1089#1099#1088#1100#1103
          Width = 94
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAIMENOVANIE'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SORT'
          Title.Alignment = taCenter
          Title.Caption = #1057#1086#1088#1090
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EDIZMER'
          Title.Alignment = taCenter
          Title.Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
          Width = 132
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CENA'
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072
          Width = 112
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOMERNAKL'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Width = 119
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 345
    Width = 886
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
  end
end
