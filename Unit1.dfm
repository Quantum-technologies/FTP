object FTPclient: TFTPclient
  Left = 192
  Top = 125
  Width = 693
  Height = 230
  Caption = 'FTP-'#1082#1083#1080#1077#1085#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 59
    Height = 13
    Caption = 'FTP-'#1089#1077#1088#1074#1077#1088
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 96
    Height = 13
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 25
    Height = 13
    Caption = #1055#1086#1088#1090
  end
  object ftpserver: TEdit
    Left = 112
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object name: TEdit
    Left = 112
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object pass: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object port: TEdit
    Left = 112
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 8
    Top = 120
    Width = 105
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 120
    Width = 105
    Height = 25
    Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 5
    OnClick = Button2Click
  end
  object status1: TMemo
    Left = 240
    Top = 14
    Width = 185
    Height = 171
    Lines.Strings = (
      #1057#1090#1072#1090#1091#1089':'
      '')
    TabOrder = 6
  end
  object del: TEdit
    Left = 432
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object cd: TEdit
    Left = 432
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object cmd: TEdit
    Left = 432
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object md: TEdit
    Left = 432
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object rd: TEdit
    Left = 432
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object download: TEdit
    Left = 432
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Button3: TButton
    Left = 432
    Top = 160
    Width = 241
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '#1085#1072' '#1089#1077#1088#1074#1077#1088
    TabOrder = 13
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 560
    Top = 14
    Width = 113
    Height = 19
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 14
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 560
    Top = 39
    Width = 113
    Height = 18
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1072#1090#1072#1083#1086#1075
    TabOrder = 15
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 560
    Top = 64
    Width = 113
    Height = 17
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1082#1086#1084#1072#1085#1076#1091
    TabOrder = 16
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 560
    Top = 88
    Width = 113
    Height = 17
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1090#1072#1083#1086#1075
    TabOrder = 17
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 560
    Top = 112
    Width = 113
    Height = 17
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1090#1072#1083#1086#1075
    TabOrder = 18
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 560
    Top = 136
    Width = 113
    Height = 17
    Caption = #1057#1082#1072#1095#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 19
    OnClick = Button9Click
  end
  object Open1: TOpenDialog
    Left = 8
    Top = 152
  end
  object Save1: TSaveDialog
    Left = 40
    Top = 152
  end
  object ftp: TNMFTP
    Port = 21
    ReportLevel = 0
    OnDisconnect = ftpDisconnect
    OnConnect = ftpConnect
    OnInvalidHost = ftpInvalidHost
    OnStatus = ftpStatus
    OnConnectionFailed = ftpConnectionFailed
    OnError = ftpError
    OnTransactionStart = ftpTransactionStart
    OnTransactionStop = ftpTransactionStop
    OnAuthenticationFailed = ftpAuthenticationFailed
    OnSuccess = ftpSuccess
    Vendor = 2411
    ParseList = False
    ProxyPort = 0
    Passive = False
    FirewallType = FTUser
    FWAuthenticate = False
    Left = 72
    Top = 152
  end
end
