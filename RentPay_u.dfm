object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 377
  ClientWidth = 773
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTeekay: TLabel
    Left = 144
    Top = 24
    Width = 480
    Height = 54
    Caption = 'Teekay'#39's Mansions'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Algerian'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 308
    Top = 299
    Width = 62
    Height = 19
    Caption = 'Or check'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblClick: TLabel
    Left = 376
    Top = 299
    Width = 98
    Height = 19
    Caption = 'Our website'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = lblClickClick
  end
  object btnPay: TButton
    Left = 48
    Top = 160
    Width = 233
    Height = 129
    Hint = 'Click to pay rent for a mansion'
    CustomHint = blnhntHint
    Caption = 'Pay rent for a mansion'
    TabOrder = 0
    OnClick = btnPayClick
  end
  object btnApply: TButton
    Left = 496
    Top = 160
    Width = 233
    Height = 129
    Hint = 'Click to select a property to rent'
    CustomHint = blnhntHint
    Caption = 'Apply for renting a mansion'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnApplyClick
  end
  object btnHelp: TBitBtn
    Left = 352
    Top = 336
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnHelpClick
  end
  object btnExit: TBitBtn
    Left = 176
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnExitClick
  end
  object blnhntHint: TBalloonHint
    Left = 512
    Top = 112
  end
end
