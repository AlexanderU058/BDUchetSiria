object fmEditEdIzmer: TfmEditEdIzmer
  Left = 0
  Top = 0
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' '#1086' '#1077#1076#1080#1085#1080#1094#1072#1093' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 230
  ClientWidth = 350
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
    Top = 175
    Width = 350
    Height = 55
    Align = alBottom
    TabOrder = 0
    object buOk: TButton
      Left = 70
      Top = 16
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = buOkClick
    end
    object buCancel: TButton
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 175
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 86
      Top = 67
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object Label2: TLabel
      Left = 86
      Top = 115
      Width = 70
      Height = 13
      Caption = #1050#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103
    end
    object edNazv: TEdit
      Left = 192
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = edNazvKeyPress
    end
    object edKod: TEdit
      Left = 192
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
end
