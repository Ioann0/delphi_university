object OKRightDlg: TOKRightDlg
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  ClientHeight = 179
  ClientWidth = 384
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 10
    Width = 281
    Height = 161
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 25
    Top = 18
    Width = 256
    Height = 32
    Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072'  '#1087#1086#1083#1103'  "'#1043#1086#1076' '#1074#1074#1086#1076#1072' '#1074' '#1089#1090#1088#1086#1081'" '#1079#1072#1087#1080#1089#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 152
    Top = 72
    Width = 129
    Height = 33
    Caption = '- '#1079#1072#1087#1080#1089#1100', '#1074' '#1082#1086#1090#1086#1088#1086#1081' '#1074#1099' '#1093#1086#1090#1080#1090#1077' '#1080#1079#1084#1077#1085#1080#1090#1100' '#1087#1086#1083#1077
    WordWrap = True
  end
  object Label3: TLabel
    Left = 152
    Top = 131
    Width = 117
    Height = 13
    Caption = '- '#1085#1086#1074#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1086#1083#1103' '
  end
  object OKBtn: TButton
    Left = 300
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 300
    Top = 38
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 25
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '*'#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1072#1084#1086#1083#1077#1090#1072'*'
  end
  object Edit2: TEdit
    Left = 25
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '*'#1075#1086#1076' '#1074#1074#1086#1076#1072' '#1074' '#1089#1090#1088#1086#1081'*'
  end
end
