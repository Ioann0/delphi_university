object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1056#1080#1089#1086#1074#1072#1085#1080#1077' '#1085#1072' Chart '
  ClientHeight = 468
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 208
    Top = 353
    Width = 113
    Height = 16
    Caption = #1042#1099#1089#1086#1090#1072' '#1080' '#1096#1080#1088#1080#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 28
    Top = 80
    Width = 49
    Height = 16
    Caption = #1042#1099#1089#1086#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 383
    Top = 353
    Width = 122
    Height = 16
    Caption = #1056#1072#1079#1084#1077#1088' '#1087#1086' '#1096#1080#1088#1080#1085#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 643
    Top = 80
    Width = 141
    Height = 16
    Caption = #1042#1099#1073#1086#1086#1088' '#1090#1080#1087#1072' '#1074#1099#1074#1086#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart1: TChart
    Left = 120
    Top = 24
    Width = 489
    Height = 281
    BackWall.Color = clGray
    Border.Visible = True
    BottomWall.Color = clBlack
    Foot.Text.Strings = (
      'ln(1-x) '#1080' ln(1-x)/2')
    Gradient.Direction = gdFromCenter
    Gradient.EndColor = 14483738
    Gradient.MidColor = 1016661
    Gradient.StartColor = 10559208
    Gradient.Visible = True
    LeftWall.Color = 8388863
    Legend.Symbol.Shadow.Color = 4194432
    Title.Font.Color = clWhite
    Title.Text.Strings = (
      'ln(1-x) '#1080' ln(1-x)/2')
    BottomAxis.Title.Caption = 'x'
    BottomAxis.Title.Position = tpEnd
    LeftAxis.Title.Angle = 360
    LeftAxis.Title.Caption = 'y'
    LeftAxis.Title.Position = tpEnd
    TopAxis.Axis.Color = clMaroon
    TopAxis.Title.Position = tpStart
    BevelInner = bvLowered
    BevelWidth = 3
    Color = clAqua
    TabOrder = 0
    OnMouseDown = Chart1MouseDown
    OnMouseMove = Chart1MouseMove
    OnMouseUp = Chart1MouseUp
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      Selected.Hover.Visible = True
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Style = smsLegend
      SeriesColor = clWhite
      Title = 'ln(1-x)'
      LinePen.Color = clWhite
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Callout.Length = 20
      Title = 'ln(1-x)'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TPointSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Callout.Length = 8
      Title = 'ln(1-x)'
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      Selected.Hover.Visible = False
      Active = False
      BarPen.Color = 11048782
      Marks.Transparent = True
      Marks.Callout.Length = 8
      SeriesColor = 8453888
      Title = 'ln(1-x)'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series5: TAreaSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Callout.Length = 0
      Title = 'ln(1-x)'
      AreaChartBrush.Color = clGray
      AreaChartBrush.BackColor = clDefault
      DrawArea = True
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TFastLineSeries
      Selected.Hover.Visible = True
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Style = smsLegend
      SeriesColor = 4259584
      Title = '(ln(1-x))/2'
      LinePen.Color = 4259584
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series7: TLineSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Style = smsLegend
      SeriesColor = clFuchsia
      Title = '(ln(1-x))/2'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series8: TPointSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Style = smsLegend
      Marks.Callout.Length = 8
      SeriesColor = clNavy
      Title = '(ln(1-x))/2'
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series9: TBarSeries
      Active = False
      BarBrush.BackColor = clDefault
      Marks.Transparent = True
      Marks.Style = smsLegend
      Marks.Callout.Length = 8
      SeriesColor = clRed
      Title = '(ln(1-x))/2'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series10: TAreaSeries
      Active = False
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Style = smsLegend
      Title = '(ln(1-x))/2'
      AreaChartBrush.Color = clGray
      AreaChartBrush.BackColor = clDefault
      DrawArea = True
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object BitBtn1: TBitBtn
    Left = 702
    Top = 443
    Width = 75
    Height = 25
    Caption = '&'#1042#1099#1093#1086#1076
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 643
    Top = 110
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = ComboBox1Click
    Items.Strings = (
      #1051#1080#1085#1080#1103#1084#1080
      #1051#1077#1085#1090#1072#1084#1080
      #1058#1086#1095#1082#1072#1084#1080
      #1055#1072#1088#1072#1083#1083#1077#1083#1077#1087#1080#1087#1077#1076#1072#1084#1080
      #1055#1083#1086#1089#1082#1086#1089#1090#1103#1084#1080)
  end
  object Panel1: TPanel
    Left = 568
    Top = 340
    Width = 209
    Height = 89
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 2
      Width = 162
      Height = 16
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1088#1072#1079#1084#1077#1088#1072'  '#1087#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 164
      Height = 13
      Caption = '- '#1074#1099#1089#1086#1090#1077'                         - '#1096#1080#1088#1080#1085#1077
    end
    object SpinButton1: TSpinButton
      Left = 24
      Top = 43
      Width = 49
      Height = 30
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 0
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton1DownClick
      OnUpClick = SpinButton1UpClick
    end
    object SpinButton2: TSpinButton
      Left = 144
      Top = 43
      Width = 49
      Height = 30
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 1
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton2DownClick
      OnUpClick = SpinButton2UpClick
    end
  end
  object TrackBar1: TTrackBar
    Left = 36
    Top = 110
    Width = 41
    Height = 150
    Max = 100
    Orientation = trVertical
    Frequency = 10
    TabOrder = 4
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 383
    Top = 383
    Width = 154
    Height = 45
    BorderWidth = 2
    Max = 100
    TabOrder = 5
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 200
    Top = 384
    Width = 153
    Height = 45
    Max = 100
    TabOrder = 6
    OnChange = TrackBar3Change
  end
  object ProgressBar1: TProgressBar
    Left = 643
    Top = 243
    Width = 150
    Height = 17
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 323
    Width = 185
    Height = 105
    Caption = #1056#1080#1089#1091#1085#1086#1082
    Items.Strings = (
      #1087#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100
      #1080#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1079#1084#1077#1088#1099
      #1080#1079#1084#1077#1085#1080#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090)
    TabOrder = 8
  end
end
