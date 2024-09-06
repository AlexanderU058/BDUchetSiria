object fmQuery2: TfmQuery2
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1088#1086#1089' "'#1057#1087#1080#1089#1086#1082' '#1077#1076#1080#1085#1080#1094' '#1080#1079#1084#1077#1088#1077#1085#1080#1081'"'
  ClientHeight = 300
  ClientWidth = 379
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
    Top = 244
    Width = 379
    Height = 56
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 243
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
      Left = 246
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
    Width = 379
    Height = 244
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 264
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 377
      Height = 242
      Align = alClient
      DataSource = fmDM.dsSel2
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
          FieldName = 'NAZVANIE'
          Title.Alignment = taCenter
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 99
          Visible = True
        end>
    end
  end
end
