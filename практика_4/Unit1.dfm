object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 463
  ClientWidth = 902
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
    Left = 24
    Top = 8
    Width = 849
    Height = 217
  end
  object Label1: TLabel
    Left = 56
    Top = 345
    Width = 102
    Height = 16
    Caption = #1058#1086#1083#1097#1080#1085#1072'  '#1083#1080#1085#1080#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 386
    Width = 233
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1084#1077#1089#1090#1086' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1092#1080#1075#1091#1088#1099': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 493
    Top = 257
    Width = 137
    Height = 16
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1080#1083#1100' '#1082#1080#1089#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 415
    Width = 85
    Height = 14
    Caption = #1082#1086#1086#1088#1076#1080#1085#1072#1090#1072' X: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 442
    Width = 86
    Height = 14
    Caption = #1082#1086#1086#1088#1076#1080#1085#1072#1090#1072' Y: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 256
    Width = 145
    Height = 21
    TabOrder = 0
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1080#1075#1091#1088#1091
    Items.Strings = (
      #1050#1074#1072#1076#1088#1072#1090
      #1050#1088#1091#1075
      #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082)
  end
  object ComboBox2: TComboBox
    Left = 56
    Top = 297
    Width = 145
    Height = 21
    TabOrder = 1
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1083#1080#1085#1080#1080
    Items.Strings = (
      #1057#1087#1083#1086#1096#1085#1072#1103' '#1083#1080#1085#1080#1103
      #1064#1090#1088#1080#1093#1086#1074#1072#1103' '#1083#1080#1085#1080#1103
      #1055#1091#1085#1082#1090#1080#1088#1085#1072#1103' '#1083#1080#1085#1080#1103
      #1064#1090#1088#1080#1093'-'#1087#1091#1085#1082#1090#1080#1088#1085#1072#1103' '#1083#1080#1085#1080#1103
      #1051#1080#1085#1080#1103', '#1095#1077#1088#1077#1076#1091#1097#1072#1103' '#1096#1090#1088#1080#1093' '#1080' '#1076#1074#1072' '#1087#1091#1085#1082#1090#1080#1088#1072
      #1054#1090#1089#1091#1090#1089#1090#1074#1091#1102#1097#1072#1103' '#1083#1080#1085#1080#1103)
  end
  object UpDown1: TUpDown
    Left = 208
    Top = 345
    Width = 16
    Height = 21
    Associate = Edit3
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 147
    Top = 408
    Width = 34
    Height = 21
    TabOrder = 3
  end
  object ListBox1: TListBox
    Left = 418
    Top = 295
    Width = 292
    Height = 124
    ItemHeight = 13
    Items.Strings = (
      #1057#1087#1083#1086#1096#1085#1072#1103' '#1079#1072#1083#1080#1074#1082#1072
      #1054#1073#1083#1072#1089#1090#1100' '#1085#1077' '#1079#1072#1082#1088#1072#1096#1080#1074#1072#1077#1090#1089#1103
      #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072
      #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072
      #1044#1080#1072#1075#1086#1085#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072' '#1089' '#1085#1072#1082#1083#1086#1085#1086#1084' '#1083#1080#1085#1080#1081' '#1074#1087#1077#1088#1077#1076
      #1044#1080#1072#1075#1086#1085#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072' '#1089' '#1085#1072#1082#1083#1086#1085#1086#1084' '#1083#1080#1085#1080#1081' '#1085#1072#1079#1072#1076
      #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086'-'#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072', '#1074' '#1082#1083#1077#1090#1082#1091
      #1044#1080#1072#1075#1086#1085#1072#1083#1100#1085#1072#1103' '#1096#1090#1088#1080#1093#1086#1074#1082#1072', '#1074' '#1082#1083#1077#1090#1082#1091)
    TabOrder = 4
  end
  object Button2: TButton
    Left = 234
    Top = 254
    Width = 145
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1094#1074#1077#1090#1072' '#1082#1080#1089#1090#1080
    TabOrder = 5
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 820
    Top = 394
    Width = 74
    Height = 25
    Caption = '&Close'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 752
    Top = 256
    Width = 142
    Height = 73
    Caption = #1053#1072#1088#1080#1089#1086#1074#1072#1090#1100
    TabOrder = 7
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 164
    Top = 344
    Width = 48
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object Button3: TButton
    Left = 234
    Top = 295
    Width = 145
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1094#1074#1077#1090#1072' '#1082#1086#1085#1090#1091#1088#1072
    TabOrder = 9
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 148
    Top = 440
    Width = 33
    Height = 21
    TabOrder = 10
  end
  object ColorDialog1: TColorDialog
    Left = 16
    Top = 312
  end
  object ColorDialog2: TColorDialog
    Left = 16
    Top = 256
  end
end
