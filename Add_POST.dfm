object fmAddPostavshik: TfmAddPostavshik
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' '#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1077
  ClientHeight = 249
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 374
    Height = 194
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 64
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object Label2: TLabel
      Left = 80
      Top = 104
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label3: TLabel
      Left = 80
      Top = 144
      Width = 89
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    end
    object edNazv: TEdit
      Left = 200
      Top = 61
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edAdres: TEdit
      Left = 200
      Top = 101
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edNomNakl: TEdit
      Left = 200
      Top = 141
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 194
    Width = 374
    Height = 55
    Align = alBottom
    TabOrder = 1
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
end
