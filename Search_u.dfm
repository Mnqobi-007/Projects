object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 500
  ClientWidth = 900
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
    Left = 24
    Top = 248
    Width = 52
    Height = 13
    Caption = 'Search By:'
  end
  object lblMinCost: TLabel
    Left = 24
    Top = 312
    Width = 73
    Height = 13
    Caption = 'Minumum Cost:'
  end
  object lblMaxCost: TLabel
    Left = 312
    Top = 312
    Width = 73
    Height = 13
    Caption = 'Maximum Cost:'
  end
  object lblPName: TLabel
    Left = 33
    Top = 408
    Width = 76
    Height = 13
    Caption = 'Property Nmae:'
  end
  object dbgrdSearch: TDBGrid
    Left = 0
    Top = 0
    Width = 897
    Height = 217
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cmbSearch: TComboBox
    Left = 82
    Top = 245
    Width = 207
    Height = 21
    TabOrder = 1
    Text = 'cmbSearch'
    Items.Strings = (
      'Property Name'
      'Cost')
  end
  object spnMin: TSpinEdit
    Left = 24
    Top = 344
    Width = 145
    Height = 22
    Increment = 1000
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object spnMax: TSpinEdit
    Left = 304
    Top = 344
    Width = 145
    Height = 22
    Increment = 1000
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object edtName: TEdit
    Left = 115
    Top = 405
    Width = 198
    Height = 21
    TabOrder = 4
    Text = 'edtName'
  end
  object btnSearch: TButton
    Left = 400
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 5
    OnClick = btnSearchClick
  end
  object btnHelp: TBitBtn
    Left = 800
    Top = 403
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkHelp
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnHelpClick
  end
  object btnClose: TBitBtn
    Left = 704
    Top = 403
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnCloseClick
  end
  object btnBook: TButton
    Left = 560
    Top = 288
    Width = 177
    Height = 25
    Caption = 'Book Appointment'
    TabOrder = 8
    OnClick = btnBookClick
  end
end
