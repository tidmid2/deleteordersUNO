object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 131
  ClientWidth = 304
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
    Left = 0
    Top = 0
    Width = 361
    Height = 193
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 89
      Height = 17
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1073#1072#1079#1091
    end
    object labelip: TLabel
      Left = 114
      Top = 62
      Width = 50
      Height = 13
      Caption = 'IP-'#1040#1076#1088#1077#1089#1089
      Visible = False
    end
    object labelport: TLabel
      Left = 139
      Top = 86
      Width = 25
      Height = 13
      Caption = #1055#1086#1088#1090
      Visible = False
    end
    object Button1: TButton
      Left = 27
      Top = 62
      Width = 81
      Height = 47
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 89
      Top = 31
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1077#1085#1085#1072#1103
      TabOrder = 1
      OnClick = Button2Click
    end
    object editip: TEdit
      Left = 170
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object editport: TEdit
      Left = 170
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object Button3: TButton
      Left = 8
      Top = 31
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 92
    Top = 6
  end
end
