object fmPostavshik: TfmPostavshik
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 379
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 32
      Top = 13
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
    end
    object Button2: TButton
      Left = 128
      Top = 13
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
    end
    object Button3: TButton
      Left = 224
      Top = 13
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
    end
    object Button4: TButton
      Left = 320
      Top = 13
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 424
      Top = 17
      Width = 97
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 527
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 691
    Height = 311
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 689
      Height = 309
      Align = alClient
      DataSource = fmDM.dsPostavshik
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 360
    Width = 691
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
