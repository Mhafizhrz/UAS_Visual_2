object Form1: TForm1
  Left = 363
  Top = 166
  Width = 507
  Height = 480
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 32
    Top = 120
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 32
    Top = 152
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 32
    Top = 184
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 224
    Top = 184
    Width = 38
    Height = 13
    Caption = 'DISKON'
  end
  object Label8: TLabel
    Left = 320
    Top = 184
    Width = 11
    Height = 13
    Caption = '%'
  end
  object Label9: TLabel
    Left = 32
    Top = 384
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 88
    Top = 24
    Width = 369
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 88
    Top = 56
    Width = 369
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 88
    Top = 88
    Width = 369
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 88
    Top = 120
    Width = 369
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 88
    Top = 152
    Width = 369
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 272
    Top = 184
    Width = 41
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 120
    Top = 384
    Width = 337
    Height = 21
    TabOrder = 6
    OnChange = edt7Change
  end
  object cbb1: TComboBox
    Left = 88
    Top = 184
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    OnChange = cbb1Change
    Items.Strings = (
      'yes'
      'no')
  end
  object btn1: TButton
    Left = 32
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 208
    Top = 216
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 296
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 384
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 384
    Top = 184
    Width = 73
    Height = 25
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 256
    Width = 425
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
