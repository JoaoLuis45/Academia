program ProjetoLogin;

uses
  Vcl.Forms, Windows,
  unitLogin in 'unitLogin.pas' {formLogin},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  unitHome in 'unitHome.pas' {formHome},
  unitClientes in 'unitClientes.pas' {formClientes},
  uFuncoes in 'uFuncoes.pas',
  unitAddClients in 'unitAddClients.pas' {formAddClients},
  unitPersonais in 'unitPersonais.pas' {formPersonais},
  unitaddPersonais in 'unitaddPersonais.pas' {formAddPersonal},
  unitPagamentos in 'unitPagamentos.pas' {formPagamentos},
  unitReceberPagamentos in 'unitReceberPagamentos.pas' {formReceberPagamento},
  unitPagFunc in 'unitPagFunc.pas' {formPagFunc},
  unitRealPag in 'unitRealPag.pas' {formRealPag};

{$R *.res}

var
  Handle: THandle;
begin
  Handle := FindWindow('TformHome', nil);
  if Handle <> 0 then begin { J� est� aberto }
    Exit;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformHome, formHome);
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformClientes, formClientes);
  Application.CreateForm(TformAddClients, formAddClients);
  Application.CreateForm(TformPersonais, formPersonais);
  Application.CreateForm(TformAddPersonal, formAddPersonal);
  Application.CreateForm(TformPagamentos, formPagamentos);
  Application.CreateForm(TformReceberPagamento, formReceberPagamento);
  Application.CreateForm(TformPagFunc, formPagFunc);
  Application.CreateForm(TformRealPag, formRealPag);
  Application.Run;
end.
