object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 469
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 48
    Top = 8
    Width = 378
    Height = 233
  end
  object lbl1: TLabel
    Left = 48
    Top = 328
    Width = 91
    Height = 17
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1091#1075#1086#1083': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 273
    Width = 95
    Height = 17
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 423
    Top = 423
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 48
    Top = 296
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 167
    Top = 399
    Width = 97
    Height = 24
    Caption = '*'#1096#1088#1080#1092#1090' '#1090#1077#1082#1089#1090#1072'*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 48
    Top = 398
    Width = 97
    Height = 25
    Caption = '*'#1094#1074#1077#1090' '#1090#1077#1082#1089#1090#1072'*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object Edit2: TEdit
    Left = 48
    Top = 351
    Width = 129
    Height = 21
    MaxLength = 3
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 322
    Top = 296
    Width = 104
    Height = 56
    Caption = #1042#1074#1086#1076
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object ColorDialog1: TColorDialog
    Color = clLime
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 448
    Top = 104
  end
  object FontDialog1: TFontDialog
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Viner Hand ITC'
    Font.Style = [fsBold, fsItalic]
    Left = 448
    Top = 56
  end
end
