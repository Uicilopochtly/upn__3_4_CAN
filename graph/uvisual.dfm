object frmVis: TfrmVis
  Left = 338
  Top = 181
  Width = 1529
  Height = 619
  AlphaBlendValue = 0
  Caption = 'Visual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1513
    Height = 580
    Align = alClient
    TabOrder = 0
    object Chart1: TChart
      Left = 2
      Top = 15
      Width = 1509
      Height = 563
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = -1
      Title.Alignment = taLeftJustify
      Title.Text.Strings = (
        'TChart')
      BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
      BottomAxis.LabelsFont.Color = clYellow
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = []
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
      LeftAxis.LabelsFont.Color = clYellow
      LeftAxis.LabelsFont.Height = -11
      LeftAxis.LabelsFont.Name = 'Arial'
      LeftAxis.LabelsFont.Style = []
      LeftAxis.Maximum = 1000.000000000000000000
      LeftAxis.Minimum = -1000.000000000000000000
      Legend.Alignment = laBottom
      Legend.ResizeChart = False
      Legend.Visible = False
      View3D = False
      View3DWalls = False
      Align = alClient
      Color = clDefault
      TabOrder = 0
      AutoSize = True
      OnMouseDown = Chart1MouseDown
      OnMouseMove = Chart1MouseMove
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 37
        Height = 24
        AutoSize = False
        Caption = 'TAG0 ='
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 153
        Top = 1
        Width = 64
        Height = 24
        AutoSize = False
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1
        Top = 25
        Width = 37
        Height = 24
        AutoSize = False
        Caption = 'TAG2 ='
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 153
        Top = 25
        Width = 64
        Height = 24
        AutoSize = False
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 49
        Width = 37
        Height = 24
        AutoSize = False
        Caption = 'TAG2 ='
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 153
        Top = 49
        Width = 64
        Height = 24
        AutoSize = False
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 1
        Top = 73
        Width = 37
        Height = 24
        AutoSize = False
        Caption = 'TAG3 ='
        Color = clFuchsia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 153
        Top = 73
        Width = 64
        Height = 24
        AutoSize = False
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 3
        Top = 98
        Width = 30
        Height = 16
        Caption = 'TMR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 64
        Top = 40
        Width = 8
        Height = 8
        AutoSize = False
        Color = 4227327
        ParentColor = False
      end
      object Label21: TLabel
        Left = 64
        Top = 64
        Width = 8
        Height = 8
        AutoSize = False
        Color = 16744448
        ParentColor = False
      end
      object Label22: TLabel
        Left = 152
        Top = 96
        Width = 65
        Height = 21
        AutoSize = False
        Caption = 'FQ:'
        Color = 8421440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object TrackBar1: TTrackBar
        Left = 1483
        Top = 1
        Width = 25
        Height = 561
        Align = alRight
        Max = 65535
        Min = 1
        Orientation = trVertical
        Position = 50
        TabOrder = 0
      end
      object TrackBar2: TTrackBar
        Left = 1
        Top = 517
        Width = 657
        Height = 16
        Max = 4096
        Min = 4
        Position = 2048
        TabOrder = 1
        OnChange = TrackBar2Change
      end
      object MaskEdit1: TMaskEdit
        Left = 40
        Top = 0
        Width = 113
        Height = 24
        AutoSize = False
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'SENSOR_VN'
      end
      object MaskEdit2: TMaskEdit
        Left = 40
        Top = 24
        Width = 113
        Height = 24
        AutoSize = False
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'SENSOR_GN'
      end
      object MaskEdit3: TMaskEdit
        Left = 40
        Top = 48
        Width = 113
        Height = 24
        AutoSize = False
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'TraFrame.cur.x'
      end
      object MaskEdit4: TMaskEdit
        Left = 40
        Top = 72
        Width = 113
        Height = 24
        AutoSize = False
        Color = clFuchsia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'PATH.FRM.Y'
      end
      object MaskEdit5: TMaskEdit
        Left = 40
        Top = 96
        Width = 113
        Height = 21
        Color = clWindowText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = '1000'
        OnKeyPress = MaskEdit5KeyPress
      end
      object GroupBox2: TGroupBox
        Left = 219
        Top = 0
        Width = 574
        Height = 117
        Caption = 'REPERS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Label12: TLabel
          Left = 72
          Top = 16
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label13: TLabel
          Left = 192
          Top = 16
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label14: TLabel
          Left = 23
          Top = 40
          Width = 22
          Height = 13
          Caption = 'RB:'
          Color = 4227327
          ParentColor = False
          OnClick = Label14Click
        end
        object Label15: TLabel
          Left = 23
          Top = 64
          Width = 22
          Height = 13
          Caption = 'RE:'
          Color = 16744448
          ParentColor = False
          OnClick = Label15Click
        end
        object Label16: TLabel
          Left = 72
          Top = 40
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label17: TLabel
          Left = 192
          Top = 40
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label18: TLabel
          Left = 72
          Top = 64
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label19: TLabel
          Left = 192
          Top = 64
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label10: TLabel
          Left = 320
          Top = 40
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label11: TLabel
          Left = 480
          Top = 40
          Width = 8
          Height = 13
          Caption = '0'
        end
        object Label23: TLabel
          Left = 368
          Top = 64
          Width = 8
          Height = 13
          Caption = '0'
          Color = 12615680
          ParentColor = False
        end
        object Label24: TLabel
          Left = 528
          Top = 64
          Width = 8
          Height = 13
          Caption = '0'
          Color = 33023
          ParentColor = False
        end
        object Label25: TLabel
          Left = 320
          Top = 64
          Width = 35
          Height = 13
          Caption = 'TIME:'
          Color = 12615680
          ParentColor = False
        end
        object Label26: TLabel
          Left = 480
          Top = 64
          Width = 45
          Height = 13
          Caption = 'VALUE:'
          Color = 33023
          ParentColor = False
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 38
          Width = 17
          Height = 17
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 62
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 16
          Width = 65
          Height = 17
          Caption = 'EXEC'
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 464
        Width = 209
        Height = 33
        TabOrder = 8
        object RadioButton3: TRadioButton
          Left = 24
          Top = 11
          Width = 81
          Height = 17
          Caption = 'SIGNED'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object RadioButton4: TRadioButton
          Left = 120
          Top = 11
          Width = 81
          Height = 17
          Caption = 'UNSIGNED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 1344
        Top = 0
        Width = 137
        Height = 89
        Caption = 'range '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        object RadioButton5: TRadioButton
          Left = 8
          Top = 16
          Width = 64
          Height = 17
          Caption = '10'
          TabOrder = 0
        end
        object RadioButton6: TRadioButton
          Left = 8
          Top = 40
          Width = 64
          Height = 17
          Caption = '100'
          TabOrder = 1
        end
        object RadioButton7: TRadioButton
          Left = 8
          Top = 64
          Width = 64
          Height = 17
          Caption = '1000'
          TabOrder = 2
        end
        object RadioButton8: TRadioButton
          Left = 64
          Top = 16
          Width = 64
          Height = 17
          Caption = '10000'
          TabOrder = 3
        end
        object RadioButton9: TRadioButton
          Left = 64
          Top = 40
          Width = 64
          Height = 17
          Caption = '100000'
          Checked = True
          TabOrder = 4
          TabStop = True
        end
        object RadioButton10: TRadioButton
          Left = 64
          Top = 64
          Width = 64
          Height = 17
          Caption = '1000000'
          TabOrder = 5
        end
      end
      object Series1: TFastLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clSilver
        LinePen.Color = clSilver
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 290
    Top = 215
    object View1: TMenuItem
      Caption = 'View'
      object gr01: TMenuItem
        Caption = 'tag0'
        object UsiseX1: TMenuItem
          AutoCheck = True
          Caption = 'RMD00'
          Default = True
          ShortCut = 112
        end
        object UsiseY1: TMenuItem
          AutoCheck = True
          Caption = 'RMD01'
          RadioItem = True
        end
        object N3: TMenuItem
          AutoCheck = True
          Caption = 'RMD02'
          RadioItem = True
        end
        object STATE1: TMenuItem
          AutoCheck = True
          Caption = 'RMD03'
          RadioItem = True
        end
        object RMD041: TMenuItem
          AutoCheck = True
          Caption = 'RMD04'
          RadioItem = True
        end
        object RMD051: TMenuItem
          AutoCheck = True
          Caption = 'RMD05'
          RadioItem = True
        end
        object RMD061: TMenuItem
          AutoCheck = True
          Caption = 'RMD06'
          RadioItem = True
        end
        object RMD071: TMenuItem
          AutoCheck = True
          Caption = 'RMD07'
          RadioItem = True
        end
        object N7: TMenuItem
          Caption = '-'
        end
      end
      object tag01: TMenuItem
        Caption = 'tag1'
        object UsiseX2: TMenuItem
          AutoCheck = True
          Caption = 'RMD00'
          RadioItem = True
        end
        object UsiseY2: TMenuItem
          AutoCheck = True
          Caption = 'RMD01'
          ShortCut = 113
        end
        object N4: TMenuItem
          AutoCheck = True
          Caption = 'RMD02'
          RadioItem = True
        end
        object STATE2: TMenuItem
          AutoCheck = True
          Caption = 'RMD03'
          RadioItem = True
        end
        object RMD042: TMenuItem
          AutoCheck = True
          Caption = 'RMD04'
          RadioItem = True
        end
        object RMD052: TMenuItem
          AutoCheck = True
          Caption = 'RMD05'
          RadioItem = True
        end
        object RMD062: TMenuItem
          AutoCheck = True
          Caption = 'RMD06'
          RadioItem = True
        end
        object RMD072: TMenuItem
          AutoCheck = True
          Caption = 'RMD07'
          RadioItem = True
        end
        object N8: TMenuItem
          Caption = '-'
        end
      end
      object tag02: TMenuItem
        Caption = 'tag2'
        object UsiseX3: TMenuItem
          AutoCheck = True
          Caption = 'RMD00'
          RadioItem = True
        end
        object UsiseY3: TMenuItem
          AutoCheck = True
          Caption = 'RMD01'
          RadioItem = True
        end
        object N5: TMenuItem
          AutoCheck = True
          Caption = 'RMD02'
          ShortCut = 114
        end
        object STATE3: TMenuItem
          AutoCheck = True
          Caption = 'RMD03'
          RadioItem = True
        end
        object RMD043: TMenuItem
          AutoCheck = True
          Caption = 'RMD04'
          RadioItem = True
        end
        object RMD053: TMenuItem
          AutoCheck = True
          Caption = 'RMD05'
          RadioItem = True
        end
        object RMD063: TMenuItem
          AutoCheck = True
          Caption = 'RMD06'
          RadioItem = True
        end
        object RMD073: TMenuItem
          AutoCheck = True
          Caption = 'RMD07'
          RadioItem = True
        end
        object N9: TMenuItem
          Caption = '-'
        end
      end
      object tag03: TMenuItem
        Caption = 'tag3'
        object UsiseX4: TMenuItem
          AutoCheck = True
          Caption = 'RMD00'
          RadioItem = True
        end
        object UsiseY4: TMenuItem
          AutoCheck = True
          Caption = 'RMD01'
          RadioItem = True
        end
        object N6: TMenuItem
          AutoCheck = True
          Caption = 'RMD02'
          RadioItem = True
        end
        object STATE4: TMenuItem
          AutoCheck = True
          Caption = 'RMD03'
          ShortCut = 115
        end
        object RMD044: TMenuItem
          AutoCheck = True
          Caption = 'RMD04'
          RadioItem = True
        end
        object RMD054: TMenuItem
          AutoCheck = True
          Caption = 'RMD05'
          RadioItem = True
        end
        object RMD064: TMenuItem
          AutoCheck = True
          Caption = 'RMD06'
          RadioItem = True
        end
        object RMD074: TMenuItem
          AutoCheck = True
          Caption = 'RMD07'
          RadioItem = True
        end
        object N10: TMenuItem
          Caption = '-'
        end
      end
    end
    object Play1: TMenuItem
      Caption = 'Play'
      object StartStop1: TMenuItem
        Caption = 'Start/Stop'
        ShortCut = 16464
        OnClick = StartStop1Click
      end
      object Clear1: TMenuItem
        Caption = 'Clear'
        ShortCut = 46
        OnClick = Clear1Click
      end
      object Marks1: TMenuItem
        Caption = 'Marks'
        ShortCut = 16461
        OnClick = Marks1Click
      end
      object IME1: TMenuItem
        Caption = 'TIME'
        ShortCut = 16468
        OnClick = IME1Click
      end
      object MarksProc1: TMenuItem
        Caption = 'MarksProc'
        ShortCut = 16462
        OnClick = MarksProc1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
  end
end
