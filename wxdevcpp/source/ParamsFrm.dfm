object ParamsForm: TParamsForm
  Left = 547
  Top = 307
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Parameters'
  ClientHeight = 166
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpParameters: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 56
    Caption = 'Parameters to pass to your program :'
    TabOrder = 0
    object ParamEdit: TEdit
      Left = 8
      Top = 22
      Width = 264
      Height = 21
      TabOrder = 0
    end
  end
  object grpHost: TGroupBox
    Left = 8
    Top = 72
    Width = 281
    Height = 56
    Caption = 'Host Application :'
    TabOrder = 1
    object LoadBtn: TSpeedButton
      Left = 248
      Top = 21
      Width = 22
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
        BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
        BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
        000000000000000000000000000000000000000000000000000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
        96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
        00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
        AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
        00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
        CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
        5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      OnClick = LoadBtnClick
    end
    object HostEdit: TEdit
      Left = 8
      Top = 22
      Width = 234
      Height = 21
      TabOrder = 0
    end
  end
  object OkBtn: TBitBtn
    Left = 125
    Top = 135
    Width = 80
    Height = 23
    TabOrder = 2
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 210
    Top = 135
    Width = 80
    Height = 23
    TabOrder = 3
    Kind = bkCancel
  end
  object XPMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    XPControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcListBox, xcEdit, xcMaskEdit, xcMemo, xcRichEdit, xcMiscEdit, xcCheckBox, xcRadioButton, xcButton, xcBitBtn, xcSpeedButton, xcUpDown, xcPanel, xcTreeView, xcListView, xcProgressBar, xcHotKey]
    Active = False
    Left = 11
    Top = 135
  end
end
