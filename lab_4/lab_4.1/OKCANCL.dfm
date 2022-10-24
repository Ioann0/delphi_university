object OKRightDlg1: TOKRightDlg1
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1057#1084#1077#1085#1072' '#1089#1090#1088#1086#1082
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
    Left = 96
    Top = 43
    Width = 108
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1089#1090#1088#1086#1082
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
  object MaskEdit1: TMaskEdit
    Left = 80
    Top = 72
    Width = 137
    Height = 21
    TabOrder = 2
    Text = ''
  end
  object MaskEdit2: TMaskEdit
    Left = 80
    Top = 112
    Width = 137
    Height = 21
    TabOrder = 3
    Text = ''
  end
end
