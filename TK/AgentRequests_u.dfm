object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 381
  ClientWidth = 393
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblRequests: TLabel
    Left = 16
    Top = 24
    Width = 95
    Height = 19
    Caption = 'lblRequests'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object memDisplay: TMemo
    Left = 8
    Top = 49
    Width = 321
    Height = 280
    Lines.Strings = (
      'memDisplay')
    TabOrder = 0
  end
  object btnBack: TBitBtn
    Left = 208
    Top = 335
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnBackClick
  end
  object btnHelp: TBitBtn
    Left = 24
    Top = 335
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnHelpClick
  end
end
