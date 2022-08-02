object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1054#1095#1080#1089#1090#1082#1072' '#1073#1072#1079#1099' '#1086#1090' '#1087#1088#1086#1076#1072#1078
  ClientHeight = 144
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -3
    Top = -3
    Width = 308
    Height = 148
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 86
      Top = 16
      Width = 123
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100
    end
    object Label2: TLabel
      Left = 40
      Top = 51
      Width = 29
      Height = 13
      Caption = #1083#1086#1075#1080#1085
    end
    object Label3: TLabel
      Left = 40
      Top = 78
      Width = 36
      Height = 13
      Caption = #1087#1072#1088#1086#1083#1100
    end
    object Edit1: TEdit
      Left = 88
      Top = 48
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object Edit2: TEdit
      Left = 88
      Top = 75
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object Button1: TButton
      Left = 216
      Top = 110
      Width = 75
      Height = 25
      Caption = #1042#1086#1081#1090#1080
      TabOrder = 2
      OnClick = Button1Click
      OnEnter = Button1Click
    end
  end
end
