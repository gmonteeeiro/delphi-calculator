object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 287
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    229
    287)
  PixelsPerInch = 96
  TextHeight = 13
  object EdtVisor: TEdit
    Left = 8
    Top = 8
    Width = 214
    Height = 41
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = '0'
  end
  object BtnNum2: TButton
    Left = 63
    Top = 177
    Width = 49
    Height = 49
    Caption = '2'
    TabOrder = 1
    OnClick = BtnNum1Click
  end
  object BtnNum1: TButton
    Left = 8
    Top = 177
    Width = 49
    Height = 49
    Caption = '1'
    TabOrder = 2
    OnClick = BtnNum1Click
  end
  object BtnNum4: TButton
    Left = 8
    Top = 122
    Width = 49
    Height = 49
    Caption = '4'
    TabOrder = 3
    OnClick = BtnNum1Click
  end
  object BtnNum3: TButton
    Left = 118
    Top = 177
    Width = 49
    Height = 49
    Caption = '3'
    TabOrder = 4
    OnClick = BtnNum1Click
  end
  object BtnNum5: TButton
    Left = 63
    Top = 122
    Width = 49
    Height = 49
    Caption = '5'
    TabOrder = 5
    OnClick = BtnNum1Click
  end
  object BtnNum6: TButton
    Left = 118
    Top = 122
    Width = 49
    Height = 49
    Caption = '6'
    TabOrder = 6
    OnClick = BtnNum1Click
  end
  object BtnNum7: TButton
    Left = 8
    Top = 67
    Width = 49
    Height = 49
    Caption = '7'
    TabOrder = 7
    OnClick = BtnNum1Click
  end
  object BtnNum8: TButton
    Left = 63
    Top = 67
    Width = 49
    Height = 49
    Caption = '8'
    TabOrder = 8
    OnClick = BtnNum1Click
  end
  object BtnNum9: TButton
    Left = 118
    Top = 67
    Width = 49
    Height = 49
    Caption = '9'
    TabOrder = 9
    OnClick = BtnNum1Click
  end
  object BtnNum0: TButton
    Left = 63
    Top = 232
    Width = 49
    Height = 49
    Caption = '0'
    TabOrder = 10
    OnClick = BtnNum1Click
  end
  object BtnEqual: TButton
    Left = 118
    Top = 232
    Width = 49
    Height = 49
    Caption = '='
    TabOrder = 11
  end
  object BtnSub: TButton
    Left = 173
    Top = 177
    Width = 49
    Height = 49
    Caption = '-'
    TabOrder = 12
  end
  object BtnMult: TButton
    Left = 173
    Top = 122
    Width = 49
    Height = 49
    Caption = '*'
    TabOrder = 13
  end
  object BtnDiv: TButton
    Left = 173
    Top = 67
    Width = 49
    Height = 49
    Caption = '/'
    TabOrder = 14
  end
  object BtnSom: TButton
    Left = 173
    Top = 232
    Width = 49
    Height = 49
    Caption = '+'
    TabOrder = 15
  end
  object BtnClear: TButton
    Left = 8
    Top = 232
    Width = 49
    Height = 49
    Caption = 'C'
    TabOrder = 16
    OnClick = BtnClearClick
  end
end
