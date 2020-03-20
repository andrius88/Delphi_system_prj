object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  Caption = 'System'
  ClientHeight = 637
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 32
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 730
    Height = 637
    ActivePage = tsSites
    Align = alClient
    TabOrder = 0
    object tsSystem: TTabSheet
      Caption = 'System'
      object lblLabelSystem: TLabel
        Left = 3
        Top = 15
        Width = 51
        Height = 19
        Caption = 'System'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLabelModule: TLabel
        Left = 367
        Top = 15
        Width = 51
        Height = 19
        Caption = 'Module'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbgSystem: TDBGrid
        Left = 3
        Top = 40
        Width = 345
        Height = 377
        DataSource = dmDataModule.dsSystem
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'code'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end>
      end
      object dgbModule: TDBGrid
        Left = 367
        Top = 40
        Width = 348
        Height = 377
        DataSource = dmDataModule.dsModule
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'code'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mandatory'
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 423
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsSystem
        Kind = dbnHorizontal
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBNavigator2: TDBNavigator
        Left = 367
        Top = 423
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsModule
        Kind = dbnHorizontal
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
    object tsSystemVersion: TTabSheet
      Caption = 'System versions'
      ImageIndex = 1
      OnEnter = tsSystemVersionEnter
      OnShow = tsSystemVersionShow
      DesignSize = (
        722
        609)
      object lblLabelSystemVersion: TLabel
        Left = 28
        Top = 31
        Width = 107
        Height = 19
        Caption = 'System version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLabelModuleVersion: TLabel
        Left = 183
        Top = 31
        Width = 107
        Height = 19
        Caption = 'Module version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLabelSytemName: TLabel
        Left = 28
        Top = 6
        Width = 95
        Height = 19
        Caption = 'System name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbgSystemVersion: TDBGrid
        Left = 28
        Top = 56
        Width = 149
        Height = 494
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dmDataModule.dsSystemVersion
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'version'
            Width = 100
            Visible = True
          end>
      end
      object dbgModuleVersion: TDBGrid
        Left = 183
        Top = 56
        Width = 527
        Height = 193
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmDataModule.dsModuleVersion
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgModuleVersionCellClick
        OnColExit = dbgModuleVersionColExit
        OnDrawColumnCell = dbgModuleVersionDrawColumnCell
        OnExit = dbgModuleVersionExit
        OnKeyPress = dbgModuleVersionKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'module_code'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'version'
            Width = 110
            Visible = True
          end>
      end
      object DBNavigator3: TDBNavigator
        Left = 28
        Top = 556
        Width = 144
        Height = 25
        DataSource = dmDataModule.dsSystemVersion
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Anchors = [akLeft, akBottom]
        Kind = dbnHorizontal
        TabOrder = 2
      end
      object DBNavigator4: TDBNavigator
        Left = 183
        Top = 255
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsModuleVersion
        Kind = dbnHorizontal
        TabOrder = 3
        OnClick = DBNavigator4Click
      end
      object cbDBLookupComboBox: TDBLookupComboBox
        Left = 528
        Top = 255
        Width = 145
        Height = 21
        DataField = 'module_code'
        DataSource = dmDataModule.dsModuleVersion
        KeyField = 'code'
        ListField = 'code'
        ListSource = dmDataModule.dsComboBox
        TabOrder = 4
        Visible = False
      end
      object dbgModuleDiff: TDBGrid
        Left = 183
        Top = 286
        Width = 527
        Height = 265
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dmDataModule.dsModuleVerDiff
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'destination_path'
            Width = 379
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'size_in_bytes'
            Width = 93
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 510
        Top = 556
        Width = 119
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'add Files'
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 635
        Top = 556
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'del File'
        TabOrder = 7
        OnClick = Button2Click
      end
    end
    object tsSites: TTabSheet
      Caption = 'Sites'
      ImageIndex = 2
      OnEnter = tsSitesEnter
      ExplicitLeft = 0
      ExplicitTop = 28
      object lblSites: TLabel
        Left = 3
        Top = 15
        Width = 33
        Height = 19
        Caption = 'Sites'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSiteRunsSystem: TLabel
        Left = 3
        Top = 320
        Width = 116
        Height = 19
        Caption = 'Site runs system'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSiteRunsModule: TLabel
        Left = 400
        Top = 320
        Width = 120
        Height = 19
        Caption = 'Site runs module'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbgSites: TDBGrid
        Left = 3
        Top = 40
        Width = 710
        Height = 233
        DataSource = dmDataModule.dsSite
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColExit = dbgSitesColExit
        OnDrawColumnCell = dbgSitesDrawColumnCell
        OnKeyPress = dbgSitesKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'updater_user'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_person'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_phone'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_email'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comment'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'manager'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'db_uri'
            Width = 81
            Visible = True
          end>
      end
      object dbgSiteRunSystem: TDBGrid
        Left = 3
        Top = 345
        Width = 382
        Height = 209
        DataSource = dmDataModule.dsSiteRunsSystem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgSiteRunSystemCellClick
        OnColExit = dbgSiteRunSystemColExit
        OnDrawColumnCell = dbgSiteRunSystemDrawColumnCell
        OnKeyPress = dbgSiteRunSystemKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'system_code'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_deployment'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_successfull_deployment'
            Visible = True
          end>
      end
      object dbgSiteRunsModule: TDBGrid
        Left = 400
        Top = 345
        Width = 313
        Height = 209
        DataSource = dmDataModule.dsSiteRunsModule
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColExit = dbgSiteRunsModuleColExit
        OnDrawColumnCell = dbgSiteRunsModuleDrawColumnCell
        OnKeyPress = dbgSiteRunsModuleKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'module_code'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_of_lic'
            Width = 84
            Visible = True
          end>
      end
      object DBNavigator5: TDBNavigator
        Left = 3
        Top = 279
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsSite
        Kind = dbnHorizontal
        TabOrder = 3
      end
      object cbUserComboBox: TDBLookupComboBox
        Left = 560
        Top = 13
        Width = 145
        Height = 21
        DataField = 'manager'
        DataSource = dmDataModule.dsSite
        KeyField = 'username'
        ListField = 'username'
        ListSource = dmDataModule.dsUserComboBox
        TabOrder = 4
        Visible = False
      end
      object DBNavigator7: TDBNavigator
        Left = 3
        Top = 560
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsSiteRunsSystem
        Kind = dbnHorizontal
        TabOrder = 5
      end
      object DBNavigator8: TDBNavigator
        Left = 400
        Top = 560
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsSiteRunsModule
        Kind = dbnHorizontal
        TabOrder = 6
      end
      object cbSiteRunsSystemComboBox: TDBLookupComboBox
        Left = 200
        Top = 318
        Width = 145
        Height = 21
        DataField = 'system_code'
        DataSource = dmDataModule.dsSiteRunsSystem
        KeyField = 'code'
        ListField = 'code'
        ListSource = dmDataModule.dsSiteRunsSystemCmbBox
        TabOrder = 7
        Visible = False
      end
      object cbSiteRunsModuleComboBox: TDBLookupComboBox
        Left = 560
        Top = 318
        Width = 145
        Height = 21
        DataField = 'module_code'
        DataSource = dmDataModule.dsSiteRunsModule
        KeyField = 'code'
        ListField = 'code'
        ListSource = dmDataModule.dsSiteRunsModuleCmbBox
        TabOrder = 8
        Visible = False
      end
    end
    object tsUsers: TTabSheet
      Caption = 'Users'
      ImageIndex = 3
      OnEnter = tsUsersEnter
      ExplicitLeft = 0
      ExplicitTop = 27
      object lblUser: TLabel
        Left = 16
        Top = 7
        Width = 39
        Height = 19
        Caption = 'Users'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbgUser: TDBGrid
        Left = 16
        Top = 32
        Width = 689
        Height = 273
        DataSource = dmDataModule.dsUser
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'username'
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active'
            Width = 58
            Visible = True
          end>
      end
      object DBNavigator6: TDBNavigator
        Left = 16
        Top = 311
        Width = 240
        Height = 25
        DataSource = dmDataModule.dsUser
        Kind = dbnHorizontal
        TabOrder = 1
      end
      object DBGrid10: TDBGrid
        Left = 312
        Top = 424
        Width = 320
        Height = 120
        DataSource = dmDataModule.dsSiteRunsModuleCmbBox
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ZSQLMonitor1: TZSQLMonitor
    Active = True
    AutoSave = True
    FileName = 'sql_monitor.txt'
    MaxTraceCount = 100
    Left = 376
    Top = 304
  end
end
