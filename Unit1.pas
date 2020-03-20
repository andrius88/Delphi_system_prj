unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, ZSqlUpdate,
  Vcl.DBLookup, System.Types, System.IOUtils, ZSqlMonitor, Unit2, Unit3, Unit4;

type
  // Hack to redeclare your TDBGrid here without the the form designer going mad
  TDBGrid = class(Vcl.DBGrids.TDBGrid)
      procedure WMHScroll(var Msg: TWMHScroll); message WM_HSCROLL;
  end;
type
  TfrmMainForm = class(TForm)
    PageControl1: TPageControl;
    tsSystem: TTabSheet;
    dbgSystem: TDBGrid;
    dgbModule: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    lblLabelSystem: TLabel;
    lblLabelModule: TLabel;
    tsSystemVersion: TTabSheet;
    dbgSystemVersion: TDBGrid;
    dbgModuleVersion: TDBGrid; // !!!
    Label3: TLabel;
    lblLabelSystemVersion: TLabel;
    lblLabelModuleVersion: TLabel;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    lblLabelSytemName: TLabel;
    cbDBLookupComboBox: TDBLookupComboBox;
    dbgModuleDiff: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    tsSites: TTabSheet;
    dbgSites: TDBGrid;
    lblSites: TLabel;
    dbgSiteRunSystem: TDBGrid;
    lblSiteRunsSystem: TLabel;
    dbgSiteRunsModule: TDBGrid;
    lblSiteRunsModule: TLabel;
    DBNavigator5: TDBNavigator;
    tsUsers: TTabSheet;
    dbgUser: TDBGrid;
    DBNavigator6: TDBNavigator;
    lblUser: TLabel;
    cbUserComboBox: TDBLookupComboBox;
    ZSQLMonitor1: TZSQLMonitor;
    DBNavigator7: TDBNavigator;
    DBNavigator8: TDBNavigator;
    cbSiteRunsSystemComboBox: TDBLookupComboBox;
    cbSiteRunsModuleComboBox: TDBLookupComboBox;
    DBGrid10: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure tsSystemVersionEnter(Sender: TObject);
    procedure dbgModuleVersionColExit(Sender: TObject);
    procedure dbgModuleVersionKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgModuleVersionDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgModuleVersionExit(Sender: TObject);
    procedure dbgModuleVersionCellClick(Column: TColumn);
    procedure tsSystemVersionShow(Sender: TObject);
    procedure tsSitesEnter(Sender: TObject);
    procedure qUserusernameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tsUsersEnter(Sender: TObject);
    procedure dbgSitesDrawColumnCell (Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSitesColExit(Sender: TObject);
    procedure dbgSitesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSiteRunSystemDrawColumnCell (Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSiteRunSystemColExit(Sender: TObject);
    procedure dbgSiteRunSystemKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSiteRunsModuleDrawColumnCell (Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSiteRunsModuleColExit(Sender: TObject);
    procedure dbgSiteRunsModuleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSiteRunSystemCellClick(Column: TColumn);


  private

  public

end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.FormCreate(Sender: TObject);
begin

  PageControl1.Pages[1];
  dmDataModule.qSystem.Open;
end;


procedure TfrmMainForm.tsSystemVersionEnter(Sender: TObject);
begin
  lblLabelSytemName.Caption := 'System: ' + dmDataModule.qSystemcode.Value;
  dmDataModule.qSystemVersion.Close;
  dmDataModule.qSystemVersion.Params.ParamByName('prm_system').Value := dmDataModule.qSystemcode.Value;
  dmDataModule.qSystemVersion.Open;
  dmDataModule.qModuleVersion.Close;
  dmDataModule.qModuleVersion.Params.ParamByName('prm_system').Value := dmDataModule.qSystemcode.Value;
  dmDataModule.qModuleVersion.Open;
  cbDBLookupComboBox.Visible := False;

  if (dmDataModule.qModuleVersionmodule_code.Value <> '') or (dmDataModule.qModuleVersionversion.Value <> '') then
  begin
    dmDataModule.qModuleVerDiff.Close;
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := dmDataModule.qSystemcode.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := dmDataModule.qModuleVersionmodule_code.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := dmDataModule.qModuleVersionversion.Value;
    dmDataModule.qModuleVerDiff.Open;
  end
  else
  begin
    dmDataModule.qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    dmDataModule.qModuleVerDiff.Open;
  end;
end;


procedure TfrmMainForm.tsSystemVersionShow(Sender: TObject);
begin
  lblLabelSytemName.Caption := 'System: ' + dmDataModule.qSystemcode.Value;
  dmDataModule.qSystemVersion.Close;
  dmDataModule.qSystemVersion.Params.ParamByName('prm_system').Value := dmDataModule.qSystemcode.Value;
  dmDataModule.qSystemVersion.Open;
  dmDataModule.qModuleVersion.Close;
  dmDataModule.qModuleVersion.Params.ParamByName('prm_system').Value := dmDataModule.qSystemcode.Value;
  dmDataModule.qModuleVersion.Open;
  cbDBLookupComboBox.Visible := False;

  if (dmDataModule.qModuleVersionmodule_code.Value <> '') or (dmDataModule.qModuleVersionversion.Value <> '') then
  begin
    dmDataModule.qModuleVerDiff.Close;
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := dmDataModule.qSystemcode.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := dmDataModule.qModuleVersionmodule_code.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := dmDataModule.qModuleVersionversion.Value;
    dmDataModule.qModuleVerDiff.Open;
  end
  else
  begin
    dmDataModule.qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    dmDataModule.qModuleVerDiff.Open;
  end;
end;

procedure TfrmMainForm.tsSitesEnter(Sender: TObject);
begin
  dmDataModule.qSite.Close;
  dmDataModule.qSite.Open;

  cbUserComboBox.Visible := False;
end;

procedure TfrmMainForm.tsUsersEnter(Sender: TObject);
begin
  dmDataModule.qUser.Close;
  dmDataModule.qUser.Open;
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

          dmDataModule.qModuleVerDiffInsrt.Params.ParamByName('prm_system_code').Value := dmDataModule.qSystemcode.Value;
          dmDataModule.qModuleVerDiffInsrt.Params.ParamByName('prm_module_code').Value := dmDataModule.qModuleVersionmodule_code.Value;
          dmDataModule.qModuleVerDiffInsrt.Params.ParamByName('prm_module_ver').Value := dmDataModule.qModuleVersionversion.Value;
          dmDataModule.qModuleVerDiffInsrt.Params.ParamByName('prm_dir_name').Value := _FileName;
          dmDataModule.qModuleVerDiffInsrt.Params.ParamByName('prm_blob').LoadFromFile(_FileNameFull, ftBlob);
          dmDataModule.qModuleVerDiffInsrt.ExecSQL;
      end;
    end;

    frmFormFileUpload.Visible := False;
  finally
    frmFormFileUpload.Visible := False;
  end;

  dmDataModule.qModuleVerDiff.Close;
  if (dmDataModule.qModuleVersionmodule_code.Value <> '') or (dmDataModule.qModuleVersionversion.Value <> '') then
  begin
    dmDataModule.qModuleVerDiff.Close;
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := dmDataModule.qSystemcode.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := dmDataModule.qModuleVersionmodule_code.Value;
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := dmDataModule.qModuleVersionversion.Value;
    dmDataModule.qModuleVerDiff.Open;
  end
  else
  begin
    dmDataModule.qModuleVerDiff.Close;
    // nustatomi tiketina neegzistuojancios parametru vertes, kad failu gride nieko nerodytu
    dmDataModule.qModuleVerDiff.ParamByName('prm_system_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_code').Value := 'test_test';
    dmDataModule.qModuleVerDiff.ParamByName('prm_module_ver').Value := '0.0.0.0';
    dmDataModule.qModuleVerDiff.Open;
  end;
  dmDataModule.qModuleVerDiff.Open;
end;

procedure TfrmMainForm.Button2Click(Sender: TObject);
begin
  dmDataModule.qModuleVerDiffDel.Params.ParamByName('prm_system').Value := dmDataModule.qSystemcode.Value;
  dmDataModule.qModuleVerDiffDel.Params.ParamByName('prm_module_code').Value := dmDataModule.qModuleVersionmodule_code.Value;
  dmDataModule.qModuleVerDiffDel.Params.ParamByName('prm_dir_path').Value := dmDataModule.qModuleVerDiffdestination_path.Value;
  dmDataModule.qModuleVerDiffDel.ExecSQL;

  dmDataModule.qModuleVerDiff.Close;
  dmDataModule.qModuleVerDiff.Open;
end;



procedure TfrmMainForm.dbgModuleVersionCellClick(Column: TColumn);
begin
   if Column.Index = 0 then
     dbgModuleVersion.Options := dbgModuleVersion.Options - [dgEditing]
   else
     dbgModuleVersion.Options := dbgModuleVersion.Options + [dgEditing];
   dbgModuleVersion.SetFocus;
end;

procedure TfrmMainForm.dbgSiteRunSystemCellClick(Column: TColumn);
begin
   if Column.Index = 0 then
     dbgSiteRunSystem.Options := dbgModuleVersion.Options - [dgEditing]
   else
     dbgSiteRunSystem.Options := dbgModuleVersion.Options + [dgEditing];
   dbgSiteRunSystem.SetFocus;
end;


procedure TfrmMainForm.dbgModuleVersionDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = cbDBLookupComboBox.DataField) then
    begin
//    if cbDBLookupComboBox.Visible then
//      exit;
      cbDBLookupComboBox.Left := Rect.Left + dbgModuleVersion.Left + 2;
      cbDBLookupComboBox.Top := Rect.Top + dbgModuleVersion.Top + 2;
      cbDBLookupComboBox.Width := Rect.Right - Rect.Left;
      cbDBLookupComboBox.Width := Rect.Right - Rect.Left;
      cbDBLookupComboBox.Height := Rect.Bottom - Rect.Top;

      cbDBLookupComboBox.Visible := True;
    end;
  end
end;


procedure TfrmMainForm.dbgSitesDrawColumnCell (Sender: TObject; const Rect: TRect;
 DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdFocused in State) then
  begin
  if (Column.Field.FieldName = cbUserComboBox.DataField) then
    begin
      cbUserComboBox.Left := Rect.Left + dbgSites.Left + 2;
      cbUserComboBox.Top := Rect.Top + dbgSites.Top + 2;
      cbUserComboBox.Width := Rect.Right - Rect.Left;
      cbUserComboBox.Width := Rect.Right - Rect.Left;
      cbUserComboBox.Height := Rect.Bottom - Rect.Top;

      cbUserComboBox.Visible := True;
    end;
   end
end;

procedure TfrmMainForm.dbgSiteRunSystemDrawColumnCell (Sender: TObject; const Rect: TRect;
 DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdFocused in State) then
  begin
  if (Column.Field.FieldName = cbSiteRunsSystemComboBox.DataField) then
    begin
      cbSiteRunsSystemComboBox.Left := Rect.Left + dbgSiteRunSystem.Left + 2;
      cbSiteRunsSystemComboBox.Top := Rect.Top + dbgSiteRunSystem.Top + 2;
      cbSiteRunsSystemComboBox.Width := Rect.Right - Rect.Left;
      cbSiteRunsSystemComboBox.Width := Rect.Right - Rect.Left;
      cbSiteRunsSystemComboBox.Height := Rect.Bottom - Rect.Top;

      cbSiteRunsSystemComboBox.Visible := True;
    end;
   end
end;

procedure TfrmMainForm.dbgSiteRunsModuleDrawColumnCell (Sender: TObject; const Rect: TRect;
 DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdFocused in State) then
  begin
  if (Column.Field.FieldName = cbSiteRunsModuleComboBox.DataField) then
    begin
      cbSiteRunsModuleComboBox.Left := Rect.Left + dbgSiteRunsModule.Left + 2;
      cbSiteRunsModuleComboBox.Top := Rect.Top + dbgSiteRunsModule.Top + 2;
      cbSiteRunsModuleComboBox.Width := Rect.Right - Rect.Left;
      cbSiteRunsModuleComboBox.Width := Rect.Right - Rect.Left;
      cbSiteRunsModuleComboBox.Height := Rect.Bottom - Rect.Top;

      cbSiteRunsModuleComboBox.Visible := True;
    end;
   end
end;

procedure TfrmMainForm.dbgModuleVersionColExit(Sender: TObject);
begin
  if dbgModuleVersion.SelectedField.FieldName = cbDBLookupComboBox.DataField then
    cbDBLookupComboBox.Visible := False;
end;

procedure TfrmMainForm.dbgSitesColExit(Sender: TObject);
begin
if dbgSites.SelectedField.FieldName = cbUserComboBox.DataField then
  cbUserComboBox.Visible := False;
end;

procedure TfrmMainForm.dbgSiteRunSystemColExit(Sender: TObject);
begin
if dbgSiteRunSystem.SelectedField.FieldName = cbSiteRunsSystemComboBox.DataField then
  cbSiteRunsSystemComboBox.Visible := False;
end;

procedure TfrmMainForm.dbgSiteRunsModuleColExit(Sender: TObject);
begin
if dbgSiteRunsModule.SelectedField.FieldName = cbSiteRunsModuleComboBox.DataField then
  cbSiteRunsModuleComboBox.Visible := False;
end;

procedure TfrmMainForm.dbgModuleVersionKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;
  if (key = Chr(13)) then
    dmDataModule.qModuleVersion.ApplyUpdates;
  if (dbgModuleVersion.SelectedField.FieldName = cbDBLookupComboBox.DataField) then
  begin
    cbDBLookupComboBox.SetFocus;
    SendMessage(cbDBLookupComboBox.Handle, WM_Char, word(Key), 0);
  end;
end;


procedure TfrmMainForm.dbgSitesKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;
  if (key = Chr(13)) then
    dmDataModule.qSite.ApplyUpdates;
  if (dbgSites.SelectedField.FieldName = cbUserComboBox.DataField) then
  begin
    cbUserComboBox.SetFocus;
    SendMessage(cbUserComboBox.Handle, WM_Char, word(Key), 0);
  end
end;

procedure TfrmMainForm.dbgSiteRunSystemKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;
  if (key = Chr(13)) then
    dmDataModule.qSiteRunsSystem.ApplyUpdates;
  if (dbgSiteRunSystem.SelectedField.FieldName = cbSiteRunsSystemComboBox.DataField) then
  begin
    cbSiteRunsSystemComboBox.SetFocus;
    SendMessage(cbSiteRunsSystemComboBox.Handle, WM_Char, word(Key), 0);
  end
end;

procedure TfrmMainForm.dbgSiteRunsModuleKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = Chr(9)) then
    Exit;
  if (key = Chr(13)) then
    dmDataModule.qSiteRunsModule.ApplyUpdates;
  if (dbgSiteRunsModule.SelectedField.FieldName = cbSiteRunsModuleComboBox.DataField) then
  begin
    cbSiteRunsModuleComboBox.SetFocus;
    SendMessage(cbSiteRunsModuleComboBox.Handle, WM_Char, word(Key), 0);
  end
end;

procedure TfrmMainForm.dbgModuleVersionExit(Sender: TObject);
begin
  if dmDataModule.qModuleVersion.State in [dsEdit, dsInsert] then
    dmDataModule.qModuleVersion.ApplyUpdates;
end;


procedure TfrmMainForm.qUserusernameGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
//  Text := Sender.AsString;
end;


procedure TfrmMainForm.DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = TNavigateBtn.nbInsert then
  begin
    dmDataModule.qModuleVersion.Post;
    dbgModuleVersion.SetFocus
  end
  else if Button = TNavigateBtn.nbPost then
    dmDataModule.qModuleVersion.ApplyUpdates
  else if Button = TNavigateBtn.nbDelete then
    if (not dmDataModule.qModuleVersionmodule_code.IsNull) and (not dmDataModule.qModuleVersionmodule_code.IsNull) then
      dmDataModule.qModuleVersion.ApplyUpdates;
end;

end.
