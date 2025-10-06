object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTeekay: TLabel
    Left = 169
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
    Left = 32
    Top = 520
    Width = 140
    Height = 16
    Caption = 'Already have an account'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLogin: TLabel
    Left = 178
    Top = 520
    Width = 40
    Height = 16
    Hint = 'Click to go log in'
    CustomHint = blnhntHint
    Caption = 'Log In'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = lblLoginClick
  end
  object lblID: TLabel
    Left = 32
    Top = 208
    Width = 51
    Height = 13
    Caption = 'ID Number'
  end
  object lblPassword: TLabel
    Left = 32
    Top = 320
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblUsername: TLabel
    Left = 32
    Top = 264
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lblCPassord: TLabel
    Left = 32
    Top = 376
    Width = 86
    Height = 13
    Caption = 'Confrim Password'
  end
  object lblName: TLabel
    Left = 32
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Full Name'
  end
  object lblAccount: TLabel
    Left = 32
    Top = 435
    Width = 79
    Height = 13
    Caption = 'Account Number'
  end
  object btnSignUp: TButton
    Left = 536
    Top = 520
    Width = 145
    Height = 25
    Hint = 'Click to create account'
    CustomHint = blnhntHint
    Caption = 'Sign Up'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnSignUpClick
  end
  object edtID: TEdit
    Left = 144
    Top = 205
    Width = 377
    Height = 21
    TabOrder = 1
    Text = 'edtID'
  end
  object edtPassword: TEdit
    Left = 144
    Top = 317
    Width = 377
    Height = 21
    TabOrder = 2
    Text = 'edtPassword'
  end
  object edtUsername: TEdit
    Left = 144
    Top = 261
    Width = 377
    Height = 21
    TabOrder = 3
    Text = 'edtUsername'
  end
  object edtCPassword: TEdit
    Left = 144
    Top = 373
    Width = 377
    Height = 21
    TabOrder = 4
    Text = 'edtCPassword'
  end
  object edtFullName: TEdit
    Left = 144
    Top = 149
    Width = 377
    Height = 21
    TabOrder = 5
    Text = 'edtFullName'
  end
  object rgpPos: TRadioGroup
    Left = 576
    Top = 121
    Width = 185
    Height = 105
    Caption = 'I am a'
    Items.Strings = (
      'Customer'
      'Employee')
    TabOrder = 6
    OnClick = rgpPosClick
  end
  object btnHelp: TBitBtn
    Left = 352
    Top = 520
    Width = 107
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnHelpClick
  end
  object edtAccoutNo: TEdit
    Left = 144
    Top = 432
    Width = 377
    Height = 21
    TabOrder = 8
    Text = 'edtAccoutNo'
  end
  object blnhntHint: TBalloonHint
    Left = 536
    Top = 168
  end
end
