object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 502
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 112
    Top = 64
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object listbox1: TListBox
    Left = 112
    Top = 176
    Width = 137
    Height = 113
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object PageControl1: TPageControl
    Left = 376
    Top = 48
    Width = 289
    Height = 193
    ActivePage = TabSheet2
    TabOrder = 3
    object TabSheet1: TTabSheet
      Hint = 'tabsheet1'
      Caption = 'Tab'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabVisible = False
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsStrikeOut]
      ImageIndex = 1
      ParentFont = False
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 526
    Top = 392
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
