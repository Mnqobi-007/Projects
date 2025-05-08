object Form6: TForm6
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form6'
  ClientHeight = 749
  ClientWidth = 816
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblProp: TLabel
    Left = 32
    Top = 29
    Width = 74
    Height = 13
    Caption = 'tblPropertyInfo'
  end
  object lblClient: TLabel
    Left = 32
    Top = 253
    Width = 39
    Height = 13
    Caption = 'tblClient'
  end
  object lblSortBy: TLabel
    Left = 29
    Top = 628
    Width = 112
    Height = 13
    Caption = 'Sort tblPropertyInfo By'
  end
  object lblSort: TLabel
    Left = 29
    Top = 674
    Width = 77
    Height = 13
    Caption = 'Sort tblClient By'
  end
  object lblManipulate: TLabel
    Left = 478
    Top = 544
    Width = 52
    Height = 13
    Caption = 'Manipulate'
  end
  object dbgrdProp: TDBGrid
    Left = 0
    Top = 48
    Width = 817
    Height = 170
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgrdClient: TDBGrid
    Left = 0
    Top = 272
    Width = 817
    Height = 161
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAddP: TButton
    Left = 400
    Top = 465
    Width = 106
    Height = 25
    Caption = 'Add Property'
    TabOrder = 2
    OnClick = btnAddPClick
  end
  object btnAddC: TButton
    Left = 248
    Top = 465
    Width = 107
    Height = 25
    Caption = 'Add Client'
    TabOrder = 3
    OnClick = btnAddCClick
  end
  object btnUpdateP: TButton
    Left = 280
    Top = 521
    Width = 97
    Height = 25
    Caption = 'Update Property'
    TabOrder = 4
    OnClick = btnUpdatePClick
  end
  object btnUpdateC: TButton
    Left = 280
    Top = 561
    Width = 97
    Height = 25
    Caption = 'Update Client'
    TabOrder = 5
    OnClick = btnUpdateCClick
  end
  object btnDeleteC: TButton
    Left = 568
    Top = 465
    Width = 89
    Height = 25
    Caption = 'Delete Client'
    TabOrder = 6
    OnClick = btnDeleteCClick
  end
  object btnDeleteP: TButton
    Left = 688
    Top = 465
    Width = 97
    Height = 25
    Caption = 'Delete Property'
    TabOrder = 7
    OnClick = btnDeletePClick
  end
  object btnSort: TButton
    Left = 320
    Top = 623
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 8
    OnClick = btnSortClick
  end
  object cmbSort: TComboBox
    Left = 161
    Top = 625
    Width = 145
    Height = 21
    TabOrder = 9
    Text = 'cmbSort'
    Items.Strings = (
      'Property Name'
      'Rent Cost')
  end
  object cmbSort1: TComboBox
    Left = 161
    Top = 671
    Width = 145
    Height = 21
    TabOrder = 10
    Text = 'cmbSort'
    Items.Strings = (
      'Client Name'
      'Username')
  end
  object btnSort1: TButton
    Left = 320
    Top = 669
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 11
    OnClick = btnSort1Click
  end
  object btnNext: TButton
    Left = 616
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Next'
    TabOrder = 12
    OnClick = btnNextClick
  end
  object btnPrevious: TButton
    Left = 519
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Previous'
    TabOrder = 13
    OnClick = btnPreviousClick
  end
  object btnFirst: TButton
    Left = 424
    Top = 592
    Width = 75
    Height = 25
    Caption = 'First'
    TabOrder = 14
    OnClick = btnFirstClick
  end
  object btnLast: TButton
    Left = 710
    Top = 592
    Width = 75
    Height = 25
    Caption = 'Last'
    TabOrder = 15
    OnClick = btnLastClick
  end
  object cmbTable: TComboBox
    Left = 536
    Top = 541
    Width = 233
    Height = 21
    TabOrder = 16
    Items.Strings = (
      'tblPropertyInfo'
      'tblClients')
  end
  object btnViewRequest: TButton
    Left = 529
    Top = 669
    Width = 162
    Height = 25
    Caption = 'View Request'
    TabOrder = 17
    OnClick = btnViewRequestClick
  end
  object cmbField1: TComboBox
    Left = 64
    Top = 523
    Width = 202
    Height = 21
    TabOrder = 18
    Text = 'cmbField1'
    Items.Strings = (
      'Property Name'
      'UserID'
      'Rent Cost'
      'Address'
      'Picture')
  end
  object cmbField2: TComboBox
    Left = 64
    Top = 565
    Width = 202
    Height = 21
    TabOrder = 19
    Text = 'cmbField2'
    Items.Strings = (
      'Client Name'
      'Username'
      'Password'
      'ID Number')
  end
  object btnClose: TButton
    Left = 710
    Top = 669
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 20
    OnClick = btnCloseClick
  end
end
