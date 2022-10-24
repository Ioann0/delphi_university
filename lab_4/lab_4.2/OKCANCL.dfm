object OKRightDlg1: TOKRightDlg1
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
    Top = 8
    Width = 281
    Height = 161
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 48
    Top = 38
    Width = 214
    Height = 15
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1072#1084#1086#1083#1077#1090#1072' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
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
    Left = 80
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '*'#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1072#1084#1086#1083#1077#1090#1072'*'
  end
end
