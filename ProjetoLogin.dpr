program ProjetoLogin;

uses
  Vcl.Forms,
  unitLogin in 'unitLogin.pas' {formLogin},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  unitHome in 'unitHome.pas' {formHome},
  unitClientes in 'unitClientes.pas' {formClientes},
  uFuncoes in 'uFuncoes.pas',
  unitAddClients in 'unitAddClients.pas' {formAddClients},
  unitPersonais in 'unitPersonais.pas' {formPersonais},
  unitaddPersonais in 'unitaddPersonais.pas' {formAddPersonal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformHome, formHome);
  Application.CreateForm(TformClientes, formClientes);
  Application.CreateForm(TformAddClients, formAddClients);
  Application.CreateForm(TformPersonais, formPersonais);
  Application.CreateForm(TformAddPersonal, formAddPersonal);
  Application.Run;
end.
