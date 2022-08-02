object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 305
  ClientWidth = 532
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
    Width = 529
    Height = 305
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 110
      Top = 40
      Width = 291
      Height = 18
      Caption = #1053#1072#1078#1084#1080#1090#1077' '#1085#1072' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1087#1088#1086#1076#1072#1078
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 407
      Top = 264
      Width = 100
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 110
      Top = 87
      Width = 323
      Height = 90
      Color = clRed
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 49
        Top = 20
        Width = 220
        Height = 16
        Caption = '*'#1059#1095#1090#1080#1090#1077' '#1095#1090#1086' '#1087#1088#1080' '#1091#1076#1072#1083#1077#1085#1080#1080' '#1091#1076#1072#1083#1103#1090#1100#1089#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 33
        Top = 55
        Width = 252
        Height = 16
        Caption = ' '#1074#1089#1077' '#1087#1088#1086#1076#1072#1078#1080', '#1087#1088#1080#1093#1086#1076' '#1080' '#1083#1102#1073#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080'*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object Button2: TButton
      Left = 301
      Top = 264
      Width = 100
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1073#1072#1079#1091
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\UNO\Database\RDB.AKS'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB'
      'Protocol=Local')
    LoginPrompt = False
    Left = 16
    Top = 120
  end
  object FDCommand1: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      'execute block'
      'as'
      ' begin'
      '   delete from resources;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_RESOURCES_ID RESTART WI' +
        'TH 0'#39';'
      ''
      '   delete from dimension;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_DIMENSION_ID RESTART WI' +
        'TH 0'#39';'
      ''
      '   delete from tbevents;'
      ''
      '   delete from tbevents_pack;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_TBEVENTS_PACK_ID RESTAR' +
        'T WITH 0'#39';'
      ' '
      '   delete from d_lines;'
      ''
      '   delete from documents;'
      ''
      '   delete from doc_guests;'
      ''
      '   delete from kass_protocol;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_KASS_PROTOCOL_ID RESTAR' +
        'T WITH 0'#39';'
      ''
      '   delete from tbaccount;'
      ''
      '   delete from tbdoc_joistic;'
      ''
      '   delete from tbkassa;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_TBKASSA_ID RESTART WITH' +
        ' 0'#39';'
      ''
      '   delete from tbmenu_added_log;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_TBMENU_ADDED_LOG_ID RES' +
        'TART WITH 0'#39';'
      ''
      '   delete from tbsmeny;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_TBSMENY_ID RESTART WITH' +
        ' 0'#39';'
      ''
      '   delete from tbspec;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_SPEC_ID RESTART WITH 0'#39 +
        ';'
      ''
      '   delete from telegram;'
      
        '   execute statement '#39'ALTER SEQUENCE GEN_TELEGRAM_ID RESTART WIT' +
        'H 0'#39';'
      ''
      ' end')
    Left = 8
    Top = 72
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 16
    Top = 32
  end
end
