object fmQuery1: TfmQuery1
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1088#1086#1089' "'#1057#1087#1080#1089#1086#1082' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074'"'
  ClientHeight = 304
  ClientWidth = 384
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 248
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 585
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 382
      Height = 246
      Align = alClient
      DataSource = fmDM.dsSel1
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
          Width = 136
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 384
    Height = 56
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 585
    object buSpisok: TButton
      Left = 48
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
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      ModalResult = 2
      TabOrder = 1
      OnClick = buExitClick
    end
  end
end
