unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, ZSqlUpdate,
  Vcl.DBLookup, System.Types, System.IOUtils, ZSqlMonitor, Unit2, Unit3;

type
  // Hack to redeclare your TDBGrid here without the the form designer going mad
  TDBGrid = class(Vcl.DBGrids.TDBGrid)
      procedure WMHScroll(var Msg: TWMHScroll); message WM_HSCROLL;
  end;
type
  TfrmMainForm = class(TForm)
    dsModule: TDataSource;
    qModule: TZQuery;
    PageControl1: TPageControl;
    tsSystem: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    lblLabelSystem: TLabel;
    lblLabelModule: TLabel;
    tsSystemVersion: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid; // !!!
    Label3: TLabel;
    lblLabelSystemVersion: TLabel;
    lblLabelModuleVersion: TLabel;
    qSystemVersion: TZQuery;
    dsSystemVersion: TDataSource;
    qModuleVersion: TZQuery;
    dsModuleVersion: TDataSource;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    lblLabelSytemName: TLabel;
    uqSystemVersion: TZUpdateSQL;
    qDropBox: TZQuery;
    dsComboBox: TDataSource;
    cbDBLookupComboBox: TDBLookupComboBox;
    qDropBoxsystem_code: TWideStringField;
    qDropBoxcode: TWideStringField;
    DBGrid5: TDBGrid;
    qModuleVerDiff: TZQuery;
    dsModuleVerDiff: TDataSource;
    Button1: TButton;
    Button2: TButton;
    qModuleVerDiffdestination_path: TWideStringField;
    qModuleVerDiffInsrt: TZQuery;
    qModuleVerDiffDel: TZQuery;
    qModuleVerDiffsize_in_bytes: TIntegerField;
    qModuleVersionmodule_code: TWideStringField;
    qModuleVersionversion: TWideStringField;
    upModuleVersion: TZUpdateSQL;
    tsCustomers: TTabSheet;
    DBGrid6: TDBGrid;
    lblSites: TLabel;
    qSite: TZQuery;
    dsSite: TDataSource;
    qSiteid: TIntegerField;
    qSiteupdater_user: TWideStringField;
    qSitedescription: TWideStringField;
    qSiteaddress: TWideStringField;
    qSitecontact_person: TWideStringField;
    qSitecontact_phone: TWideStringField;
    qSitecontact_email: TWideStringField;
    qSitecomment: TWideStringField;
    qSitemanager: TWideStringField;
    qSitedb_uri: TWideStringField;
    DBGrid7: TDBGrid;
    lblSiteRunsSystem: TLabel;
    qSiteRunsSystem: TZQuery;
    dsSiteRunsSystem: TDataSource;
    qSiteRunsModule: TZQuery;
    dsSiteRunsModule: TDataSource;
    DBGrid8: TDBGrid;
    lblSiteRunsModule: TLabel;
    DBNavigator5: TDBNavigator;
    qSiteRunsSystemsystem_code: TWideStringField;
    qSiteRunsSystemlast_deployment: TIntegerField;
    qSiteRunsSystemlast_successfull_deployment: TIntegerField;
    qSiteRunsModulemodule_code: TWideStringField;
    qSiteRunsModulenum_of_lic: TIntegerField;
    upSite: TZUpdateSQL;
    qSystemVersionversion: TWideStringField;
    dsSystem: TDataSource;
    qSystem: TZQuery;
    conn: TZConnection;
    qModulesystem_code: TWideStringField;
    qModulecode: TWideStringField;
    qModuledescription: TWideStringField;
    qModulemandatory: TBooleanField;
    tsUsers: TTabSheet;
    qUser: TZQuery;
    dsUser: TDataSource;
    DBGrid9: TDBGrid;
    DBNavigator6: TDBNavigator;
    upSystem: TZUpdateSQL;
    qSystemcode: TWideStringField;
    qSystemdescription: TWideStringField;
    upUser: TZUpdateSQL;
    qUserusername: TWideStringField;
    qUsername: TWideStringField;
    qUseremail: TWideStringField;
    qUserphone: TWideStringField;
    qUseractive: TBooleanField;
    procedure readConfigFile();
    procedure qSystemAfterScroll(DataSet: TDataSet);
    procedure qModuleAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qModuleVersionBeforeOpen(DataSet: TDataSet);
    procedure qSystemVersionBeforeOpen(DataSet: TDataSet);
    procedure tsSystemVersionEnter(Sender: TObject);
    procedure uqSystemVersionBeforeDeleteSQL(Sender: TObject);
    procedure uqSystemVersionBeforeInsertSQL(Sender: TObject);
    procedure uqSystemVersionBeforeModifySQL(Sender: TObject);
    procedure DBGrid4ColExit(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure qModuleVersionAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure qSystemVersionAfterScroll(DataSet: TDataSet);
    procedure upModuleVersionBeforeInsertSQL(Sender: TObject);
    procedure upModuleVersionBeforeDeleteSQL(Sender: TObject);
    procedure upModuleVersionBeforeModifySQL(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4Exit(Sender: TObject);
    procedure qModuleVersionBeforeScroll(DataSet: TDataSet);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure tsSystemVersionShow(Sender: TObject);
    procedure qSystemVersionAfterPost(DataSet: TDataSet);
    procedure tsCustomersEnter(Sender: TObject);
    procedure qSiteAfterScroll(DataSet: TDataSet);
    procedure qSiteRunsSystemAfterScroll(DataSet: TDataSet);
    procedure qUserusernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tsUsersEnter(Sender: TObject);



  private
    FHost            : string;
    FPort            : string;
    FDbName          : string;
    FUser            : string;
    FPasswrd         : string;
  public

end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.FormCreate(Sender: TObject);
begin
  PageControl1.Pages[1];
  readConfigFile();

  conn.HostName := FHost;
  conn.Port := strtoint(FPort);
  conn.Database := FDbName;
  conn.User := FUser;
  conn.Password := FPasswrd;
  conn.Connect;

  qSystem.Open;
end;


procedure TfrmMainForm.readConfigFile();
var
_InputConfigFile : TextFile;
_Line            : string;

begin
if not FileExists('config.ini') then
  ShowMessage('File: config.ini was not found')
else
  begin
    AssignFile(_InputConfigFile, 'config.ini');
    Reset(_InputConfigFile);
    while not Eof(_InputConfigFile) do
    begin
      Readln(_InputConfigFile, _Line);
      FHost := _Line;
      Readln(_InputConfigFile, _Line);
      FPort := _Line;
      Readln(_InputConfigFile, _Line);
      FDbName := _Line;
      Readln(_InputConfigFile, _Line);
      FUser := _Line;
      Readln(_InputConfigFile, _Line);
      FPasswrd := _Line;
    end;
    CloseFile(_InputConfigFile);
  end;
end;


procedure TfrmMainForm.tsSystemVersionEnter(Sender: TObject);
begin
  lblLabelSytemName.Caption := 'System: ' + qSystemcode.Value;
  qSystemVersion.Close;
  qSystemVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qSystemVersion.Open;
  qModuleVersion.Close;
  qModuleVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qModuleVersion.Open;
  cbDBLookupComboBox.Visible := False;

  if (qModuleVersionmodule_code.Value <> '') or (qModuleVersionversion.Value <> '') then
  begin
    qModuleVerDiff.Close;
    qModuleVerDiff.ParamByName('prm_system_code').Value := qSystemcode.Value;
    qModuleVerDiff.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
    qModuleVerDiff.ParamByName('prm_module_ver').Value := qModuleVersionversion.Value;
    qModuleVerDiff.Open;
  end
  else
  begin
    qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    qModuleVerDiff.Open;
  end;
end;


procedure TfrmMainForm.tsSystemVersionShow(Sender: TObject);
begin
  lblLabelSytemName.Caption := 'System: ' + qSystemcode.Value;
  qSystemVersion.Close;
  qSystemVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qSystemVersion.Open;
  qModuleVersion.Close;
  qModuleVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qModuleVersion.Open;
  cbDBLookupComboBox.Visible := False;

  if (qModuleVersionmodule_code.Value <> '') or (qModuleVersionversion.Value <> '') then
  begin
    qModuleVerDiff.Close;
    qModuleVerDiff.ParamByName('prm_system_code').Value := qSystemcode.Value;
    qModuleVerDiff.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
    qModuleVerDiff.ParamByName('prm_module_ver').Value := qModuleVersionversion.Value;
    qModuleVerDiff.Open;
  end
  else
  begin
    qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    qModuleVerDiff.Open;
  end;
end;

procedure TfrmMainForm.tsCustomersEnter(Sender: TObject);
begin
  qSite.Close;
  qSite.Open;
end;

procedure TfrmMainForm.tsUsersEnter(Sender: TObject);
begin
  qUser.Open;
end;

procedure TDBGrid.WMHScroll(var Msg: TWMHScroll);
begin
  if self.Name = 'DBGrid4' then
  begin
    if Self.SelectedField.FieldName = frmMainForm.cbDBLookupComboBox.DataField then
    begin
      case Msg.ScrollCode of
        SB_LEFT,SB_LINELEFT,SB_PAGELEFT: begin
          Self.SelectedIndex := Self.SelectedIndex-1;
          frmMainForm.cbDBLookupComboBox.Visible := False;
        end;
        SB_RIGHT,SB_LINERIGHT,SB_PAGERIGHT: begin
          Self.SelectedIndex := Self.SelectedIndex+1;
          frmMainForm.cbDBLookupComboBox.Visible := False;
        end;
      end;
    end
    else
      frmMainForm.cbDBLookupComboBox.Visible := False;
  end;
  inherited; // to keep the expected behavior
end;


procedure TfrmMainForm.Button1Click(Sender: TObject);
var
  _FileNameFull: string;
  _FileName: string;
  _MainDirName: string;
  _Idx, _I : Integer;
  _PathStrArray : TStringDynArray;
begin
  with TFileOpenDialog.Create(nil) do
  try
    Options := [fdoPickFolders];
    if Execute then
      _FileNameFull:= FileName;
  finally
    Free;
  end;

  try
    frmFormFileUpload.Position := TPosition(6);
    frmFormFileUpload.Visible := True;
    frmFormFileUpload.Update;

    _Idx := LastDelimiter('\', _FileNameFull);
    _MainDirName := copy (_FileNameFull, _Idx, length(_FileNameFull));
    //ShowMessage(_FileNameFull);

    if (_FileNameFull <> '') then
    begin
      _PathStrArray := System.IOUtils.TDirectory.GetFiles(_FileNameFull, '*', System.IOUtils.TSearchOption.soAllDirectories);
      //ShowMessage('_PathStrArray: ' + IntToStr( length(_PathStrArray)));
      for _I := 0 to length(_PathStrArray)-1 do
      begin
        _FileNameFull := _PathStrArray[_I];
        if _Idx>0 then
        begin
          _FileName := copy (_FileNameFull, _Idx+length(_MainDirName), length(_FileNameFull));
        end
        else
          ShowMessage('Direktorija nepasirinkta');

          qModuleVerDiffInsrt.Params.ParamByName('prm_system_code').Value := qSystemcode.Value;
          qModuleVerDiffInsrt.Params.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
          qModuleVerDiffInsrt.Params.ParamByName('prm_module_ver').Value := qModuleVersionversion.Value;
          qModuleVerDiffInsrt.Params.ParamByName('prm_dir_name').Value := _FileName;
          qModuleVerDiffInsrt.Params.ParamByName('prm_blob').LoadFromFile(_FileNameFull, ftBlob);
          qModuleVerDiffInsrt.ExecSQL;
      end;
    end;

    frmFormFileUpload.Visible := False;
  finally
    frmFormFileUpload.Visible := False;
  end;

  qModuleVerDiff.Close;
  if (qModuleVersionmodule_code.Value <> '') or (qModuleVersionversion.Value <> '') then
  begin
    qModuleVerDiff.Close;
    qModuleVerDiff.ParamByName('prm_system_code').Value := qSystemcode.Value;
    qModuleVerDiff.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
    qModuleVerDiff.ParamByName('prm_module_ver').Value := qModuleVersionversion.Value;
    qModuleVerDiff.Open;
  end
  else
  begin
    qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    qModuleVerDiff.Open;
  end;
  qModuleVerDiff.Open;
end;

procedure TfrmMainForm.Button2Click(Sender: TObject);
begin
  qModuleVerDiffDel.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qModuleVerDiffDel.Params.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
  qModuleVerDiffDel.Params.ParamByName('prm_dir_path').Value := qModuleVerDiffdestination_path.Value;
  qModuleVerDiffDel.ExecSQL;

  qModuleVerDiff.Close;
  qModuleVerDiff.Open;
end;


procedure TfrmMainForm.DBGrid4CellClick(Column: TColumn);
begin
   if Column.Index <1 then
     DBGrid4.Options := DBGrid4.Options - [dgEditing]
   else
     DBGrid4.Options := DBGrid4.Options + [dgEditing];
   DBGrid4.SetFocus;
end;

procedure TfrmMainForm.DBGrid4ColExit(Sender: TObject);
begin
  if DBGrid4.SelectedField.FieldName = cbDBLookupComboBox.DataField then
    cbDBLookupComboBox.Visible := False;
end;

procedure TfrmMainForm.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdFocused in State) then //or ( qModuleVersion.State in [dsBrowse]) then
  begin
    if (Column.Field.FieldName = cbDBLookupComboBox.DataField) then
    begin
   // if cbDBLookupComboBox.Visible then
   //  exit;
      cbDBLookupComboBox.Left := Rect.Left + DBGrid4.Left + 2;
      cbDBLookupComboBox.Top := Rect.Top + DBGrid4.Top + 2;
      cbDBLookupComboBox.Width := Rect.Right - Rect.Left;
      cbDBLookupComboBox.Width := Rect.Right - Rect.Left;
      cbDBLookupComboBox.Height := Rect.Bottom - Rect.Top;

      cbDBLookupComboBox.Visible := True;
    end;
  end
end;


procedure TfrmMainForm.DBGrid4Exit(Sender: TObject);
begin
  if qModuleVersion.State in [dsEdit, dsInsert] then
    qModuleVersion.ApplyUpdates;
end;

procedure TfrmMainForm.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;
  if (key = Chr(13)) then
    qModuleVersion.ApplyUpdates;
  if (DBGrid1.SelectedField.FieldName = cbDBLookupComboBox.DataField) then
  begin
    cbDBLookupComboBox.SetFocus;
    SendMessage(cbDBLookupComboBox.Handle, WM_Char, word(Key), 0);
  end;
end;


procedure TfrmMainForm.upModuleVersionBeforeDeleteSQL(Sender: TObject);
begin
  upModuleVersion.Params.ParamByName('prm_system_code').Value := qSystemcode.Value;
  upModuleVersion.Params.ParamByName('prm_system_version').Value := qSystemVersionversion.Value;
end;

procedure TfrmMainForm.upModuleVersionBeforeInsertSQL(Sender: TObject);
begin
  upModuleVersion.Params.ParamByName('prm_system_code').Value := qSystemcode.Value;
  upModuleVersion.Params.ParamByName('prm_system_version').Value := qSystemVersionversion.Value;
end;

procedure TfrmMainForm.upModuleVersionBeforeModifySQL(Sender: TObject);
begin
  upModuleVersion.Params.ParamByName('prm_system_code').Value := qSystemcode.Value;
  upModuleVersion.Params.ParamByName('prm_system_version').Value := qSystemVersionversion.Value;
end;

procedure TfrmMainForm.uqSystemVersionBeforeDeleteSQL(Sender: TObject);
begin
  uqSystemVersion.Params.ParamByName('prm_system_code2').Value := qSystemcode.Value;
end;

procedure TfrmMainForm.uqSystemVersionBeforeInsertSQL(Sender: TObject);
begin
  uqSystemVersion.Params.ParamByName('prm_system_code').Value := qSystemcode.Value;
end;

procedure TfrmMainForm.uqSystemVersionBeforeModifySQL(Sender: TObject);
begin
  uqSystemVersion.Params.ParamByName('prm_system_code3').Value := qSystemcode.Value;
end;


procedure TfrmMainForm.qSiteAfterScroll(DataSet: TDataSet);
begin
  qSiteRunsSystem.Close;
  qSiteRunsSystem.ParamByName('prm_site').Value := qSiteid.Value;
  qSiteRunsSystem.Open;
end;

procedure TfrmMainForm.qSiteRunsSystemAfterScroll(DataSet: TDataSet);
begin
  qSiteRunsModule.Close;
  qSiteRunsModule.ParamByName('prm_site').Value := qSiteid.Value;
  qSiteRunsModule.ParamByName('prm_system_code').Value := qSiteRunsSystemsystem_code.Value;
  qSiteRunsModule.Open;
end;

procedure TfrmMainForm.qSystemAfterScroll(DataSet: TDataSet);
begin
  qModule.Close;
  qModule.Params.ParamByName('prm_system').Value := qSystemcode.Value;
  qModule.Open;

  qDropBox.Close;
  qDropBox.ParamByName('prm_system').Value := qSystemcode.Value;
  qDropBox.Open;
end;


procedure TfrmMainForm.qSystemVersionAfterScroll(DataSet: TDataSet);
begin
  cbDBLookupComboBox.Visible := False;

  if (not qSystemVersionversion.IsNull) then
  begin
    qModuleVersion.Close;
    qModuleVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
    qModuleVersion.Params.ParamByName('prm_system_version').Value := qSystemVersionversion.Value;
    qModuleVersion.Open;
  end;
end;


procedure TfrmMainForm.qSystemVersionAfterPost(DataSet: TDataSet);
begin
    qSystemVersion.Close;
    qModuleVersion.Params.ParamByName('prm_system').Value := qSystemcode.Value;
    qSystemVersion.Open;
end;

procedure TfrmMainForm.qSystemVersionBeforeOpen(DataSet: TDataSet);
begin
  qSystemVersion.ParamByName('prm_system').Value := qSystemcode.Value;
end;

procedure TfrmMainForm.qUserusernameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TfrmMainForm.qModuleAfterInsert(DataSet: TDataSet);
begin
  qModulesystem_code.Value := qSystemcode.Value;
end;

procedure TfrmMainForm.DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = TNavigateBtn.nbInsert then
  begin
    qModuleVersion.Post;
    DBGrid4.SetFocus
  end
  else if Button = TNavigateBtn.nbPost then
    qModuleVersion.ApplyUpdates
  else if Button = TNavigateBtn.nbDelete then
    if (not qModuleVersionmodule_code.IsNull) and (not qModuleVersionmodule_code.IsNull) then
      qModuleVersion.ApplyUpdates;
end;






procedure TfrmMainForm.qModuleVersionAfterScroll(DataSet: TDataSet);
begin
  if (qModuleVersionmodule_code.Value <> '') or (qModuleVersionversion.Value <> '') then
  begin
    qModuleVerDiff.Close;
    qModuleVerDiff.ParamByName('prm_system_code').Value := qSystemcode.Value;
    qModuleVerDiff.ParamByName('prm_module_code').Value := qModuleVersionmodule_code.Value;
    qModuleVerDiff.ParamByName('prm_module_ver').Value := qModuleVersionversion.Value;
    qModuleVerDiff.Open;
  end
  else
  begin
    qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    qModuleVerDiff.Open;
  end;
end;


procedure TfrmMainForm.qModuleVersionBeforeOpen(DataSet: TDataSet);
begin
  qModuleVersion.ParamByName('prm_system').Value := qSystemcode.Value;
end;


procedure TfrmMainForm.qModuleVersionBeforeScroll(DataSet: TDataSet);
begin
  if (not qModuleVersionmodule_code.IsNull) and ( not qModuleVersionmodule_code.IsNull) then
    qModuleVersion.ApplyUpdates;
//??? Edzio kodas
//  if (qModuleVersion.State in [dsEdit, dsInsert]) and (not qModuleVersionmodule_code.IsNull) then
//    qModuleVersion.ApplyUpdates;
end;

end.
