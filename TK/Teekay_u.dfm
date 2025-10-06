object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'frmLogin'
  ClientHeight = 389
  ClientWidth = 747
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
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
  object lblUsername: TLabel
    Left = 32
    Top = 200
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lblPassword: TLabel
    Left = 32
    Top = 264
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblAccount: TLabel
    Left = 268
    Top = 344
    Width = 63
    Height = 16
    Hint = 'Click to create an account'
    CustomHint = blnhnt1
    Caption = 'Click Here'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = lblAccountClick
  end
  object lbl1: TLabel
    Left = 136
    Top = 344
    Width = 126
    Height = 16
    Caption = 'Don'#39't have an account'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblID: TLabel
    Left = 32
    Top = 144
    Width = 51
    Height = 13
    Caption = 'ID Number'
  end
  object edtUsername: TEdit
    Left = 128
    Top = 197
    Width = 377
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 128
    Top = 261
    Width = 345
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLogIn: TButton
    Left = 557
    Top = 341
    Width = 145
    Height = 25
    Hint = 'Click to log in'
    CustomHint = blnhnt1
    Caption = 'Log In'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnLogInClick
  end
  object edtID: TEdit
    Left = 128
    Top = 141
    Width = 377
    Height = 21
    TabOrder = 3
  end
  object btnHelp: TBitBtn
    Left = 627
    Top = 144
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnHelpClick
  end
  object btnExit: TBitBtn
    Left = 32
    Top = 341
    Width = 75
    Height = 25
    Hint = 'Click to exit app'
    CustomHint = blnhnt1
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkAbort
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnExitClick
  end
  object btnShowHide: TButton
    Left = 470
    Top = 259
    Width = 35
    Height = 25
    Caption = #934
    TabOrder = 6
    OnClick = btnShowHideClick
  end
  object blnhnt1: TBalloonHint
    Left = 664
    Top = 192
  end
end
