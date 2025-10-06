object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 420
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 216
    Top = 224
    Width = 63
    Height = 13
    Caption = 'Agent Name:'
  end
  object lblArea: TLabel
    Left = 216
    Top = 264
    Width = 73
    Height = 13
    Caption = 'Agent Number:'
  end
  object lblCost: TLabel
    Left = 216
    Top = 304
    Width = 60
    Height = 13
    Caption = 'Agent Email:'
  end
  object lblPName: TLabel
    Left = 216
    Top = 346
    Width = 76
    Height = 13
    Caption = 'Property Name:'
  end
  object dbgrdMansions: TDBGrid
    Left = 0
    Top = 0
    Width = 785
    Height = 209
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdMansionsCellClick
  end
  object edtName: TEdit
    Left = 368
    Top = 221
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'edtName'
  end
  object edtNumber: TEdit
    Left = 368
    Top = 261
    Width = 265
    Height = 21
    TabOrder = 2
    Text = 'edtNumber'
  end
  object edtMail: TEdit
    Left = 368
    Top = 301
    Width = 265
    Height = 21
    TabOrder = 3
    Text = 'edtMail'
  end
  object btnSelect: TButton
    Left = 216
    Top = 387
    Width = 393
    Height = 25
    Hint = 'Click to select agent to request via app'
    CustomHint = blnhntHint
    Caption = 'Select Agent'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnSelectClick
  end
  object btnHelp: TBitBtn
    Left = 24
    Top = 379
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnHelpClick
  end
  object edtPName: TEdit
    Left = 368
    Top = 343
    Width = 265
    Height = 21
    TabOrder = 6
    Text = 'edtPName'
  end
  object btnBack: TButton
    Left = 648
    Top = 379
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 7
    OnClick = btnBackClick
  end
  object blnhntHint: TBalloonHint
    Left = 704
    Top = 248
  end
end
