object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 453
  ClientWidth = 641
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTeekay: TLabel
    Left = 72
    Top = 16
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
  object lblName: TLabel
    Left = 24
    Top = 120
    Width = 73
    Height = 13
    Caption = 'Mansion Name:'
  end
  object lblPIN: TLabel
    Left = 24
    Top = 336
    Width = 17
    Height = 13
    Caption = 'PIN'
  end
  object lblCardholder: TLabel
    Left = 24
    Top = 184
    Width = 57
    Height = 13
    Caption = 'Card Holder'
  end
  object lblExpire: TLabel
    Left = 24
    Top = 240
    Width = 56
    Height = 13
    Caption = 'Expiry Date'
  end
  object lblAccountNum: TLabel
    Left = 24
    Top = 288
    Width = 79
    Height = 13
    Caption = 'Account Number'
  end
  object lblCost: TLabel
    Left = 112
    Top = 388
    Width = 48
    Height = 19
    Caption = 'lblCost'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cmbMansion: TComboBox
    Left = 128
    Top = 117
    Width = 313
    Height = 21
    TabOrder = 0
    Text = 'cmbMansion'
    OnChange = cmbMansionChange
  end
  object edtCardHolder: TEdit
    Left = 128
    Top = 181
    Width = 313
    Height = 21
    TabOrder = 1
    Text = 'edtCardHolder'
  end
  object edtExpiry: TEdit
    Left = 128
    Top = 237
    Width = 313
    Height = 21
    TabOrder = 2
    Text = 'edtExpiry'
  end
  object edtAccount: TEdit
    Left = 128
    Top = 285
    Width = 313
    Height = 21
    TabOrder = 3
    Text = 'edtAccount'
  end
  object edtPIN: TEdit
    Left = 128
    Top = 333
    Width = 313
    Height = 21
    TabOrder = 4
    Text = 'edtPIN'
  end
  object btnPay: TButton
    Left = 512
    Top = 331
    Width = 105
    Height = 25
    Hint = 'Click to pay'
    CustomHint = blnhntHint
    Caption = 'Pay'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnPayClick
  end
  object btnHelp: TBitBtn
    Left = 528
    Top = 264
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnHelpClick
  end
  object blnhntHint: TBalloonHint
    Left = 536
    Top = 168
  end
end
