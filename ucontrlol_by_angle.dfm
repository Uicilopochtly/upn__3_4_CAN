object frmControlByAngle: TfrmControlByAngle
  Left = 188
  Top = 384
  Width = 640
  Height = 320
  Caption = 'frmControlByAngle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 624
    Height = 281
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 176
      Width = 19
      Height = 13
      Caption = 'GN:'
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 18
      Height = 13
      Caption = 'VN:'
    end
    object Label3: TLabel
      Left = 32
      Top = 176
      Width = 18
      Height = 13
      Caption = '000'
    end
    object Label4: TLabel
      Left = 376
      Top = 16
      Width = 18
      Height = 13
      Caption = '000'
    end
    object Label5: TLabel
      Left = 376
      Top = 40
      Width = 21
      Height = 20
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 400
      Top = 40
      Width = 6
      Height = 20
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 408
      Top = 40
      Width = 31
      Height = 20
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 32
      Top = 200
      Width = 31
      Height = 20
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 64
      Top = 200
      Width = 6
      Height = 20
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 72
      Top = 200
      Width = 31
      Height = 20
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 104
      Top = 200
      Width = 7
      Height = 20
      Caption = #176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 440
      Top = 40
      Width = 7
      Height = 20
      Caption = #176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TrackBar1: TTrackBar
      Left = 0
      Top = 232
      Width = 625
      Height = 45
      Max = 65535
      Position = 32767
      TabOrder = 0
      OnChange = TrackBar1Change
    end
    object TrackBar2: TTrackBar
      Left = 302
      Top = 8
      Width = 45
      Height = 221
      Max = 16384
      Orientation = trVertical
      Position = 15474
      TabOrder = 1
      OnChange = TrackBar2Change
    end
  end
end
