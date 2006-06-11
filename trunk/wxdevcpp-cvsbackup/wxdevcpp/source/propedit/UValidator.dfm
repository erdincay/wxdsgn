object wxValidator: TwxValidator
  Left = 252
  Top = 271
  BorderStyle = bsDialog
  Caption = 'Validator Editor'
  ClientHeight = 196
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TBitBtn
    Left = 245
    Top = 165
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 321
    Top = 165
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkCancel
  end
  object Settings: TGroupBox
    Left = 8
    Top = 5
    Width = 390
    Height = 105
    Caption = 'Settings'
    TabOrder = 2
    object ValidatorTypeLbl: TLabel
      Left = 8
      Top = 19
      Width = 71
      Height = 13
      Caption = 'Validator Type:'
    end
    object ValidatorVariableLbl: TLabel
      Left = 8
      Top = 73
      Width = 116
      Height = 13
      Caption = 'Validator Variable Name:'
    end
    object FilterStyleLbl: TLabel
      Left = 8
      Top = 46
      Width = 51
      Height = 13
      Caption = 'Filter Style:'
    end
    object ValidatorVariableOpt: TLabel
      Left = 335
      Top = 73
      Width = 45
      Height = 13
      Caption = '(Optional)'
    end
    object ValidatorType: TComboBox
      Left = 130
      Top = 15
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'None'
      OnChange = ValidatorTypeChange
      Items.Strings = (
        'None'
        'wxTextValidator'
        'wxGenericValidator')
    end
    object ValidatorVariable: TEdit
      Left = 130
      Top = 69
      Width = 200
      Height = 21
      TabOrder = 1
      OnChange = VariableChange
    end
    object FilterStyle: TComboBox
      Left = 130
      Top = 42
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'wxFILTER_NONE'
      OnChange = OnChange
      Items.Strings = (
        'wxFILTER_NONE'
        'wxFILTER_ASCII'
        'wxFILTER_ALPHANUMERIC'
        'wxFILTER_NUMERIC'
        'wxFILTER_INCLUDE_LIST'
        'wxFILTER_EXCLUDE_LIST'
        'wxFILTER_INCLUDE_CHAR_LIST'
        'wxFILTER_EXCLUDE_CHAR_LIST')
    end
  end
  object ValidatorCommand: TGroupBox
    Left = 8
    Top = 115
    Width = 390
    Height = 45
    Caption = 'Validator Command'
    TabOrder = 3
    object ValidatorString: TEdit
      Left = 8
      Top = 17
      Width = 370
      Height = 21
      TabOrder = 0
    end
  end
end
