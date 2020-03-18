program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmMainForm},
  Unit2 in 'Unit2.pas' {frmFormFileUpload},
  Unit3 in 'Unit3.pas' {frmResources},
  Unit4 in 'Unit4.pas' {DataModule4: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TfrmFormFileUpload, frmFormFileUpload);
  Application.CreateForm(TfrmResources, frmResources);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.Run;
end.
