object fmQuery3: TfmQuery3
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1088#1086#1089' "'#1057#1087#1080#1089#1086#1082' '#1085#1072#1082#1083#1072#1076#1085#1099#1093'"'
  ClientHeight = 291
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 235
    Width = 374
    Height = 56
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 243
    ExplicitWidth = 651
    object buSpisok: TButton
      Left = 40
      Top = 16
      Width = 116
      Height = 25
      Caption = #1042#1099#1074#1077#1089#1090#1080' '#1089#1087#1080#1089#1086#1082
      TabOrder = 0
      OnClick = buSpisokClick
    end
    object buExit: TButton
      Left = 241
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      OnClick = buExitClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 374
    Height = 235
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 128
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 372
      Height = 233
      Align = alClient
      DataSource = fmDM.dsSel3
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
          FieldName = 'NOMERNAKL'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Width = 114
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Width = 122
          Visible = True
        end>
    end
  end
end
