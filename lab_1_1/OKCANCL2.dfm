object OKRightDlg: TOKRightDlg
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Dialog'
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
    Left = 24
    Top = 19
    Width = 241
    Height = 45
    Alignment = taCenter
    Caption = 
      #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082' '#1080' '#1089#1090#1086#1083#1073#1094#1086#1074'.  '#1059#1095#1090#1080#1090#1077', '#1095#1090#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088 +
      #1086#1082' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1088#1072#1074#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1091' '#1089#1090#1086#1083#1073#1094#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 117
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1086#1083#1073#1094#1086#1074': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 123
    Width = 99
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082': '
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
    Left = 168
    Top = 93
    Width = 48
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 168
    Top = 120
    Width = 48
    Height = 21
    TabOrder = 3
  end
end
