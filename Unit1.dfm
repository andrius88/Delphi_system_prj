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
    ActivePage = tsUsers
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
      object DBGrid1: TDBGrid
        Left = 3
        Top = 40
        Width = 345
        Height = 377
        DataSource = dsSystem
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
      object DBGrid2: TDBGrid
        Left = 367
        Top = 40
        Width = 348
        Height = 377
        DataSource = dsModule
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
        DataSource = dsSystem
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
        DataSource = dsModule
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
      object DBGrid3: TDBGrid
        Left = 28
        Top = 56
        Width = 149
        Height = 494
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsSystemVersion
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
      object DBGrid4: TDBGrid
        Left = 183
        Top = 56
        Width = 527
        Height = 193
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsModuleVersion
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        OnColExit = DBGrid4ColExit
        OnDrawColumnCell = DBGrid4DrawColumnCell
        OnExit = DBGrid4Exit
        OnKeyPress = DBGrid4KeyPress
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
        DataSource = dsSystemVersion
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
        DataSource = dsModuleVersion
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
        DataSource = dsModuleVersion
        KeyField = 'code'
        ListField = 'code'
        ListSource = dsComboBox
        TabOrder = 4
        Visible = False
      end
      object DBGrid5: TDBGrid
        Left = 183
        Top = 286
        Width = 527
        Height = 265
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsModuleVerDiff
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
    object tsCustomers: TTabSheet
      Caption = 'Customers'
      ImageIndex = 2
      OnEnter = tsCustomersEnter
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
        Top = 423
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
        Left = 408
        Top = 423
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
      object DBGrid6: TDBGrid
        Left = 3
        Top = 40
        Width = 710
        Height = 120
        DataSource = dsSite
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'updater_user'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_person'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_phone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contact_email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comment'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'manager'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'db_uri'
            Visible = True
          end>
      end
      object DBGrid7: TDBGrid
        Left = 3
        Top = 448
        Width = 382
        Height = 129
        DataSource = dsSiteRunsSystem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'system_code'
            Width = 78
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
      object DBGrid8: TDBGrid
        Left = 408
        Top = 448
        Width = 305
        Height = 129
        DataSource = dsSiteRunsModule
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'module_code'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_of_lic'
            Visible = True
          end>
      end
      object DBNavigator5: TDBNavigator
        Left = 3
        Top = 166
        Width = 240
        Height = 25
        DataSource = dsSite
        Kind = dbnHorizontal
        TabOrder = 3
      end
    end
    object tsUsers: TTabSheet
      Caption = 'Users'
      ImageIndex = 3
      OnEnter = tsUsersEnter
      ExplicitLeft = 8
      ExplicitTop = 27
      object DBGrid9: TDBGrid
        Left = 184
        Top = 32
        Width = 528
        Height = 249
        DataSource = dsUser
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
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active'
            Visible = True
          end>
      end
      object DBNavigator6: TDBNavigator
        Left = 184
        Top = 287
        Width = 240
        Height = 25
        DataSource = dsUser
        Kind = dbnHorizontal
        TabOrder = 1
      end
    end
  end
  object dsModule: TDataSource
    DataSet = qModule
    Left = 448
    Top = 144
  end
  object qModule: TZQuery
    Connection = conn
    AfterInsert = qModuleAfterInsert
    SQL.Strings = (
      'SELECT '
      
        '  system_code, code, CAST (description AS CHARACTER VARYING(40))' +
        ', mandatory '
      'FROM private.module '
      'WHERE'
      '  system_code = :prm_system '
      'ORDER BY'
      '  code')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    object qModulesystem_code: TWideStringField
      FieldName = 'system_code'
      Required = True
      Size = 40
    end
    object qModulecode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 40
    end
    object qModuledescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 80
    end
    object qModulemandatory: TBooleanField
      FieldName = 'mandatory'
      Required = True
    end
  end
  object qSystemVersion: TZQuery
    Connection = conn
    BeforeOpen = qSystemVersionBeforeOpen
    AfterScroll = qSystemVersionAfterScroll
    UpdateObject = uqSystemVersion
    AfterPost = qSystemVersionAfterPost
    SQL.Strings = (
      'SELECT '
      '  public.ver4_to_str("version")::::varchar(100) as version'
      'FROM '
      '  private.system_version '
      'WHERE '
      '  system_code = :prm_system'
      'ORDER BY'
      '  version  ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    Left = 64
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    object qSystemVersionversion: TWideStringField
      FieldName = 'version'
      ReadOnly = True
      Size = 200
    end
  end
  object dsSystemVersion: TDataSource
    DataSet = qSystemVersion
    Left = 144
    Top = 200
  end
  object qModuleVersion: TZQuery
    Connection = conn
    BeforeOpen = qModuleVersionBeforeOpen
    BeforeScroll = qModuleVersionBeforeScroll
    AfterScroll = qModuleVersionAfterScroll
    UpdateObject = upModuleVersion
    CachedUpdates = True
    SQL.Strings = (
      'SELECT '
      '  CAST(module_code AS VARCHAR(20)) AS module_code,'
      
        '  public.ver4_to_str("module_version")::::varchar(100) as versio' +
        'n'
      ' FROM '
      '  private.system_composition'
      'WHERE '
      '  system_code =:prm_system '
      '  AND system_version =str_to_ver4(:prm_system_version)'
      'ORDER BY'
      ' module_code')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_version'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_version'
        ParamType = ptUnknown
      end>
    object qModuleVersionmodule_code: TWideStringField
      FieldName = 'module_code'
      Required = True
      Size = 40
    end
    object qModuleVersionversion: TWideStringField
      FieldName = 'version'
      Size = 200
    end
  end
  object dsModuleVersion: TDataSource
    DataSet = qModuleVersion
    Left = 384
    Top = 200
  end
  object uqSystemVersion: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM private.system_version'
      'WHERE'
      '  system_version.system_code = :prm_system_code2 AND'
      '  system_version.version = public.str_to_ver4( :OLD_version)'
      '')
    InsertSQL.Strings = (
      'INSERT INTO private.system_version'
      '  (system_code, version)'
      'VALUES'
      '  (:prm_system_code,  public.str_to_ver4(:version))'
      '')
    ModifySQL.Strings = (
      'UPDATE private.system_version '
      'SET'
      '  version =public.str_to_ver4( :version)'
      'WHERE'
      '  system_version.system_code = :prm_system_code3 AND'
      '  system_version.version = public.str_to_ver4(:OLD_version)')
    UseSequenceFieldForRefreshSQL = False
    BeforeDeleteSQL = uqSystemVersionBeforeDeleteSQL
    BeforeInsertSQL = uqSystemVersionBeforeInsertSQL
    BeforeModifySQL = uqSystemVersionBeforeModifySQL
    Left = 88
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'version'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_code3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_version'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_code2'
        ParamType = ptUnknown
      end>
  end
  object qDropBox: TZQuery
    Connection = conn
    SQL.Strings = (
      'SELECT '
      '  system_code, '
      '  code '
      'FROM '
      '  private.module'
      'WHERE '
      '  system_code= :prm_system'
      'ORDER BY'
      '  code')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end>
    object qDropBoxsystem_code: TWideStringField
      FieldName = 'system_code'
      Required = True
      Size = 40
    end
    object qDropBoxcode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 40
    end
  end
  object dsComboBox: TDataSource
    DataSet = qDropBox
    Left = 608
    Top = 184
  end
  object qModuleVerDiff: TZQuery
    Connection = conn
    SQL.Strings = (
      'SELECT '
      '  CAST(destination_path AS VARCHAR(50)), '
      '  octet_length(file_content) AS size_in_bytes'
      'FROM '
      '  private.module_version_diff '
      'WHERE'
      
        '  system_code = :prm_system_code AND module_code = :prm_module_c' +
        'ode'
      '  AND "version" = str_to_ver4(:prm_module_ver)'
      'ORDER BY destination_path ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_ver'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_ver'
        ParamType = ptUnknown
      end>
    object qModuleVerDiffdestination_path: TWideStringField
      DisplayLabel = 'Path'
      DisplayWidth = 112
      FieldName = 'destination_path'
      Required = True
      Size = 100
    end
    object qModuleVerDiffsize_in_bytes: TIntegerField
      DisplayLabel = 'Size'
      DisplayWidth = 13
      FieldName = 'size_in_bytes'
      ReadOnly = True
    end
  end
  object dsModuleVerDiff: TDataSource
    DataSet = qModuleVerDiff
    Left = 120
    Top = 328
  end
  object qModuleVerDiffInsrt: TZQuery
    Connection = conn
    SQL.Strings = (
      'INSERT INTO private.module_version_diff '
      
        '  (system_code, module_code, "version", destination_path, file_c' +
        'ontent)'
      
        'VALUES (:prm_system_code, :prm_module_code, str_to_ver4(:prm_mod' +
        'ule_ver),'
      '  :prm_dir_name,:prm_blob);')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_ver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_dir_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_blob'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_ver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_dir_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_blob'
        ParamType = ptUnknown
      end>
  end
  object qModuleVerDiffDel: TZQuery
    Connection = conn
    SQL.Strings = (
      'DELETE FROM private.module_version_diff '
      'WHERE '
      '  system_code = :prm_system  AND '
      '  module_code = :prm_module_code AND '
      '  destination_path = :prm_dir_path;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_dir_path'
        ParamType = ptUnknown
      end>
    Left = 136
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_dir_path'
        ParamType = ptUnknown
      end>
  end
  object upModuleVersion: TZUpdateSQL
    DeleteSQL.Strings = (
      'Select public.pgp_pub_check_module_version('
      '  3,'
      '  :prm_system_code, '
      '   public.str_to_ver4(:prm_system_version),'
      '   :module_code,'
      '    public.str_to_ver4(:version),'
      '   CAST(NULL AS character varying),'
      '   CAST(NULL AS ver4)'
      ')')
    InsertSQL.Strings = (
      'Select public.pgp_pub_check_module_version('
      '  1,'
      '  :prm_system_code, '
      '   public.str_to_ver4(:prm_system_version),'
      '   :module_code,'
      '    public.str_to_ver4(:version),'
      '   CAST(NULL AS character varying),'
      '   CAST(NULL AS ver4)'
      ')')
    ModifySQL.Strings = (
      'Select public.pgp_pub_check_module_version('
      '  2,'
      '  :prm_system_code, '
      '   public.str_to_ver4(:prm_system_version),'
      '   :module_code,'
      '    public.str_to_ver4(:version),'
      '   :OLD_module_code,'
      '   public.str_to_ver4(:OLD_version)'
      ')'
      '')
    UseSequenceFieldForRefreshSQL = False
    BeforeDeleteSQL = upModuleVersionBeforeDeleteSQL
    BeforeInsertSQL = upModuleVersionBeforeInsertSQL
    BeforeModifySQL = upModuleVersionBeforeModifySQL
    Left = 320
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_version'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'version'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_module_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_version'
        ParamType = ptUnknown
      end>
  end
  object qSite: TZQuery
    Connection = conn
    AfterScroll = qSiteAfterScroll
    UpdateObject = upSite
    SQL.Strings = (
      'SELECT '
      '  id,'
      '  CAST(updater_user AS VARCHAR(30)) AS updater_user,'
      '  CAST(description AS VARCHAR(30)) AS description,'
      '  CAST(address  AS VARCHAR(30)) AS address,'
      '  CAST(contact_person AS VARCHAR(30)) AS contact_person,'
      '  CAST(contact_phone AS VARCHAR(15)) AS contact_phone,'
      '  CAST(contact_email AS VARCHAR(30)) AS contact_email,'
      '  CAST(comment AS VARCHAR(30)) AS comment,'
      '  CAST(manager  AS VARCHAR(30)) AS manager,'
      '  CAST(db_uri AS VARCHAR(30)) AS db_uri '
      'FROM '
      '  private.site')
    Params = <>
    Left = 24
    Top = 384
    object qSiteid: TIntegerField
      DisplayWidth = 15
      FieldName = 'id'
      Required = True
    end
    object qSiteupdater_user: TWideStringField
      DisplayWidth = 27
      FieldName = 'updater_user'
      Size = 60
    end
    object qSitedescription: TWideStringField
      DisplayWidth = 27
      FieldName = 'description'
      Size = 60
    end
    object qSiteaddress: TWideStringField
      DisplayWidth = 30
      FieldName = 'address'
      Size = 60
    end
    object qSitecontact_person: TWideStringField
      DisplayWidth = 23
      FieldName = 'contact_person'
      Size = 60
    end
    object qSitecontact_phone: TWideStringField
      DisplayWidth = 17
      FieldName = 'contact_phone'
      Size = 30
    end
    object qSitecontact_email: TWideStringField
      DisplayWidth = 23
      FieldName = 'contact_email'
      Size = 60
    end
    object qSitecomment: TWideStringField
      DisplayLabel = 'Komentaras'
      DisplayWidth = 50
      FieldName = 'comment'
      Size = 100
    end
    object qSitemanager: TWideStringField
      DisplayWidth = 19
      FieldName = 'manager'
      Size = 60
    end
    object qSitedb_uri: TWideStringField
      DisplayWidth = 17
      FieldName = 'db_uri'
      Size = 60
    end
  end
  object dsSite: TDataSource
    DataSet = qSite
    Left = 96
    Top = 384
  end
  object qSiteRunsSystem: TZQuery
    Connection = conn
    AfterScroll = qSiteRunsSystemAfterScroll
    SQL.Strings = (
      'SELECT'
      '  CAST(system_code AS VARCHAR(20)) AS system_code,'
      '  last_deployment,'
      '  last_successfull_deployment'
      'FROM'
      '  private.site_runs_system'
      'WHERE'
      ' site =:prm_site')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_site'
        ParamType = ptUnknown
      end>
    Left = 240
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_site'
        ParamType = ptUnknown
      end>
    object qSiteRunsSystemsystem_code: TWideStringField
      DisplayWidth = 16
      FieldName = 'system_code'
      ReadOnly = True
      Size = 40
    end
    object qSiteRunsSystemlast_deployment: TIntegerField
      DisplayWidth = 16
      FieldName = 'last_deployment'
    end
    object qSiteRunsSystemlast_successfull_deployment: TIntegerField
      DisplayWidth = 27
      FieldName = 'last_successfull_deployment'
    end
  end
  object dsSiteRunsSystem: TDataSource
    DataSet = qSiteRunsSystem
    Left = 288
    Top = 400
  end
  object qSiteRunsModule: TZQuery
    Connection = conn
    SQL.Strings = (
      'SELECT '
      '  CAST(module_code AS VARCHAR(20)) AS module_code,'
      '  num_of_lic'
      'FROM private.site_runs_module'
      'WHERE'
      '  site =:prm_site AND'
      '  system_code =:prm_system_code  ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prm_site'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end>
    Left = 392
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prm_site'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prm_system_code'
        ParamType = ptUnknown
      end>
    object qSiteRunsModulemodule_code: TWideStringField
      FieldName = 'module_code'
      ReadOnly = True
      Size = 40
    end
    object qSiteRunsModulenum_of_lic: TIntegerField
      FieldName = 'num_of_lic'
      Required = True
    end
  end
  object dsSiteRunsModule: TDataSource
    DataSet = qSiteRunsModule
    Left = 456
    Top = 384
  end
  object upSite: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM site'
      'WHERE'
      '  site.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO site'
      
        '  (id, updater_user, description, address, contact_person, conta' +
        'ct_phone, '
      '   contact_email, comment, manager, db_uri)'
      'VALUES'
      
        '  (:id, :updater_user, :description, :address, :contact_person, ' +
        ':contact_phone, '
      '   :contact_email, :comment, :manager, :db_uri)')
    ModifySQL.Strings = (
      'UPDATE site SET'
      '  id = :id,'
      '  updater_user = :updater_user,'
      '  description = :description,'
      '  address = :address,'
      '  contact_person = :contact_person,'
      '  contact_phone = :contact_phone,'
      '  contact_email = :contact_email,'
      '  comment = :comment,'
      '  manager = :manager,'
      '  db_uri = :db_uri'
      'WHERE'
      '  site.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 48
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'updater_user'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'description'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'address'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contact_person'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contact_phone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contact_email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comment'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'manager'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'db_uri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object dsSystem: TDataSource
    DataSet = qSystem
    Left = 176
    Top = 32
  end
  object qSystem: TZQuery
    Connection = conn
    AfterScroll = qSystemAfterScroll
    UpdateObject = upSystem
    SQL.Strings = (
      'SELECT '
      '  code, '
      '  CAST(description AS VARCHAR(50)) AS description'
      'FROM'
      '  private.system'
      'ORDER BY'
      '  description')
    Params = <>
    Left = 128
    Top = 32
    object qSystemcode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 40
    end
    object qSystemdescription: TWideStringField
      FieldName = 'description'
      Size = 100
    end
  end
  object conn: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    Connected = True
    HostName = 'dbdev.nsoft.eu'
    Port = 5435
    Database = 'update_prod'
    User = 'update_server_owner'
    Password = '0sEgVwDnSHi6'
    Protocol = 'postgresql-9'
    Left = 80
    Top = 32
  end
  object qUser: TZQuery
    Connection = conn
    UpdateObject = upUser
    Active = True
    SQL.Strings = (
      'SELECT '
      '  CAST(username AS VARCHAR(20)) AS username,'
      '  CAST(name AS VARCHAR(20)) AS name, '
      '  CAST(email AS VARCHAR(30)) AS email, '
      '  CAST(phone AS VARCHAR(20)) AS phone, '
      '  active '
      'FROM '
      '  private.user;')
    Params = <>
    Left = 560
    Top = 512
    object qUserusername: TWideStringField
      FieldName = 'username'
      Size = 40
    end
    object qUsername: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object qUseremail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
    object qUserphone: TWideStringField
      FieldName = 'phone'
      Size = 40
    end
    object qUseractive: TBooleanField
      FieldName = 'active'
      Required = True
    end
  end
  object dsUser: TDataSource
    DataSet = qUser
    Left = 608
    Top = 512
  end
  object upSystem: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM private.system'
      'WHERE'
      '  system.code = :OLD_code')
    InsertSQL.Strings = (
      'INSERT INTO private.system'
      '  (code, description)'
      'VALUES'
      '  (:code, :description)')
    ModifySQL.Strings = (
      'UPDATE private.system SET'
      '  code = :code,'
      '  description = :description'
      'WHERE'
      '  system.code = :OLD_code')
    UseSequenceFieldForRefreshSQL = False
    Left = 136
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'description'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_code'
        ParamType = ptUnknown
      end>
  end
  object upUser: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM user'
      'WHERE'
      '  user.username = :OLD_username')
    InsertSQL.Strings = (
      'INSERT INTO private.user'
      '  (username, name, email, phone, active)'
      'VALUES'
      '  (:username, :name, :email, :phone, :active)')
    ModifySQL.Strings = (
      'UPDATE private.user SET'
      '  username = :username,'
      '  name = :name,'
      '  email = :email,'
      '  phone = :phone,'
      '  active = :active'
      'WHERE'
      '  user.username = :OLD_username')
    UseSequenceFieldForRefreshSQL = False
    Left = 584
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'phone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'active'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_username'
        ParamType = ptUnknown
      end>
  end
end
