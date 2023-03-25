unit unitHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, unitClientes;

type
  TformHome = class(TForm)
    formMain: TPanel;
    pnlHeader: TPanel;
    pnlBorderTop: TPanel;
    Image1: TImage;
    pnlClose: TPanel;
    btnClose: TSpeedButton;
    pnlMinimize: TPanel;
    btnMinimize: TSpeedButton;
    pnlMenu: TPanel;
    Panel1: TPanel;
    btnSair: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnMenuPrincipal: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    btnEcercicios: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    btnPagamentos: TSpeedButton;
    Panel14: TPanel;
    Panel15: TPanel;
    logoDev: TImage;
    pnlForms: TPanel;
    Panel16: TPanel;
    btnClientes: TSpeedButton;
    Panel17: TPanel;
    Panel18: TPanel;
    pnlClientsExtends: TPanel;
    Panel20: TPanel;
    btnMatricularClientes: TSpeedButton;
    Panel22: TPanel;
    pnlPersonaisExtends: TPanel;
    Panel8: TPanel;
    btnAddPersonal: TSpeedButton;
    Panel9: TPanel;
    pnlPaymentExtends: TPanel;
    Panel19: TPanel;
    btnReceberPagamento: TSpeedButton;
    Panel21: TPanel;
    Panel7: TPanel;
    btnPagarFunc: TSpeedButton;
    Panel23: TPanel;
    Panel24: TPanel;
    btnPagReal: TSpeedButton;
    Panel25: TPanel;
    imgWelcome: TImage;
    procedure btnCloseClick(Sender: TObject);
    procedure btnMinimizeClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSairMouseEnter(Sender: TObject);
    procedure EscondeBorda(panel: Tpanel);
    procedure ExpandeMenu();
    procedure MudaFonteCor(btn: TSpeedButton);
    procedure EscondeSubMenus();
    procedure MostraSubMenu(pnl : TPanel);
    procedure btnSairMouseLeave(Sender: TObject);
    procedure btnMenuPrincipalMouseEnter(Sender: TObject);
    procedure btnMenuPrincipalMouseLeave(Sender: TObject);
    procedure btnPagamentosMouseEnter(Sender: TObject);
    procedure btnPagamentosMouseLeave(Sender: TObject);
    procedure btnEcerciciosMouseEnter(Sender: TObject);
    procedure btnEcerciciosMouseLeave(Sender: TObject);
    procedure btnPagamentosClick(Sender: TObject);
    procedure btnEcerciciosClick(Sender: TObject);
    procedure btnMenuPrincipalClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnClientesMouseEnter(Sender: TObject);
    procedure btnClientesMouseLeave(Sender: TObject);
    procedure btnMatricularClientesMouseEnter(Sender: TObject);
    procedure btnMatricularClientesMouseLeave(Sender: TObject);
    procedure pnlFormsMouseEnter(Sender: TObject);
    procedure btnMatricularClientesClick(Sender: TObject);
    procedure btnAddPersonalMouseEnter(Sender: TObject);
    procedure btnAddPersonalMouseLeave(Sender: TObject);
    procedure btnAddPersonalClick(Sender: TObject);
    procedure btnPagarFuncMouseEnter(Sender: TObject);
    procedure btnPagarFuncMouseLeave(Sender: TObject);
    procedure btnReceberPagamentoMouseEnter(Sender: TObject);
    procedure btnReceberPagamentoMouseLeave(Sender: TObject);
    procedure btnReceberPagamentoClick(Sender: TObject);
    procedure btnPagRealMouseEnter(Sender: TObject);
    procedure btnPagRealMouseLeave(Sender: TObject);
    procedure btnPagRealClick(Sender: TObject);
    procedure btnPagarFuncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FechaTudo();
    procedure FormResize(Sender: TObject);
    procedure imgWelcomeMouseEnter(Sender: TObject);
    procedure pnlMenuMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formHome: TformHome;

implementation

{$R *.dfm}

uses UnitDM, unitLogin, unitAddClients, uFuncoes, unitaddPersonais,
  unitPersonais, unitPagamentos, unitReceberPagamentos, unitPagFunc,
  unitRealPag;





procedure TformHome.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformHome.btnMinimizeClick(Sender: TObject);
begin
if formHome.WindowState = TWindowState.wsMaximized then begin
  formHome.WindowState := TWindowState.wsMinimized;
end else begin
  formHome.WindowState := TWindowState.wsMaximized;
  formHome.BorderStyle := bsNone;
end;
end;

procedure TformHome.EscondeBorda;
begin
  if panel.Visible = True then begin
    panel.Visible := False;
  end else
    panel.Visible := True;
end;

procedure TformHome.EscondeSubMenus;
begin
  pnlClientsExtends.Visible := False;
  pnlPersonaisExtends.Visible := False;
  pnlPaymentExtends.Visible := False;
end;

procedure TformHome.ExpandeMenu;
var
  i: integer;
begin
  if pnlMenu.Width = 40 then
  begin
    pnlMenu.Width := 170;
  end else
  begin
    pnlMenu.Width := 40;
  end;
end;



procedure TformHome.FechaTudo;
begin
    formAddClients.Close;
    formAddPersonal.Close;
    formPagamentos.Close;
    formPagFunc.Close;
    formPersonais.Close;
    formRealPag.Close;
    formReceberPagamento.Close;
    formClientes.Close;
end;

procedure TformHome.FormCreate(Sender: TObject);
begin
    formLogin:= TformLogin.Create(self);
    formLogin.ShowModal;
end;

procedure TformHome.FormResize(Sender: TObject);
begin
  if formHome.WindowState = TWindowState.wsNormal then begin
    formHome.BorderStyle := bsSingle;
    formHome.BorderIcons := [];

  end;
end;

procedure TformHome.imgWelcomeMouseEnter(Sender: TObject);
begin
EscondeSubMenus;
end;

procedure TformHome.MostraSubMenu(pnl: TPanel);
begin
    if pnlMenu.Width <> 170 then begin
    exit
  end else begin
    pnl.Visible := True;
  end;
end;

procedure TformHome.MudaFonteCor;
begin

    if btn.Font.Color <> $005BA6E5  then begin
      btn.Font.Style := [fsBold];
      btn.Font.Color := $005BA6E5;
      btn.Font.Size := 12;
    end else begin
      btn.Font.Style := [];
      btn.Font.Color := clBlack;
      btn.Font.Size := 9;
    end;

  end;


procedure TformHome.pnlFormsMouseEnter(Sender: TObject);
begin
  EscondeSubMenus;
end;

procedure TformHome.pnlMenuMouseEnter(Sender: TObject);
begin
EscondeSubMenus;
end;

procedure TformHome.btnSairClick(Sender: TObject);

begin
  ExpandeMenu;
  MudaFonteCor(btnSair);
  EscondeBorda(panel3);
  if pnlMenu.Width = 170 then begin
    exit
  end else begin
    Application.Terminate;
  end;


end;
procedure TformHome.btnSairMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnSair);
  EscondeBorda(panel3);
  EscondeSubMenus;
end;

procedure TformHome.btnSairMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnSair);
  EscondeBorda(Panel3)
end;

procedure TformHome.btnMatricularClientesClick(Sender: TObject);
begin
    MudaFonteCor(btnMatricularClientes);
    EscondeBorda(panel22);
    formClientes.Close;
    formAddClients:= TformAddClients.Create(self);
    formAddClients.Parent := pnlForms;
    formAddClients.Align := alClient;
    formAddClients.BorderStyle := bsNone;
    formAddClients.Show;
    EscondeSubMenus;
    ExpandeMenu;
    DM.sqlClientes.Open();
    dm.sqlClientes.Insert;
end;

procedure TformHome.btnMatricularClientesMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnMatricularClientes);
  EscondeBorda(panel22);
end;

procedure TformHome.btnMatricularClientesMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnMatricularClientes);
  EscondeBorda(panel22);
  EscondeSubMenus;
end;

procedure TformHome.btnMenuPrincipalClick(Sender: TObject);
begin
  ExpandeMenu;
  MudaFonteCor(btnMenuPrincipal);
  EscondeBorda(panel6);
    if pnlMenu.Width = 170 then begin
    exit
  end else begin
    FechaTudo;
  end;
end;

procedure TformHome.btnMenuPrincipalMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnMenuPrincipal);
  EscondeBorda(panel6);
  EscondeSubMenus;
end;

procedure TformHome.btnMenuPrincipalMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnMenuPrincipal);
  EscondeBorda(panel6)
end;


procedure TformHome.btnEcerciciosClick(Sender: TObject);
begin
  ExpandeMenu;
  MudaFonteCor(btnEcercicios);
  EscondeBorda(panel12);
  if pnlMenu.Width = 170 then begin
    exit
  end else begin
      formAddClients.Close;
    formAddPersonal.Close;
    formPersonais:= TformPersonais.Create(self);
    formPersonais.Parent := pnlForms;
    formPersonais.Align := alClient;
    formPersonais.BorderStyle := bsNone;
    formPersonais.Show;
  end;
  EscondeSubMenus;
end;

procedure TformHome.btnEcerciciosMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnEcercicios);
  EscondeBorda(panel12);
  EscondeSubMenus;
  MostraSubMenu(pnlPersonaisExtends);
end;

procedure TformHome.btnEcerciciosMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnEcercicios);
  EscondeBorda(panel12)
end;

procedure TformHome.btnPagamentosClick(Sender: TObject);
begin
  ExpandeMenu;
  MudaFonteCor(btnPagamentos);
  EscondeBorda(panel15);
    if pnlMenu.Width = 170 then begin
    exit
  end else begin
      formAddClients.Close;
    formAddPersonal.Close;
    formPagamentos:= TformPagamentos.Create(self);
    formPagamentos.Parent := pnlForms;
    formPagamentos.Align := alClient;
    formPagamentos.BorderStyle := bsNone;
    formPagamentos.Show;
  end;
  EscondeSubMenus;
end;

procedure TformHome.btnPagamentosMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnPagamentos);
  EscondeBorda(panel15);
  EscondeSubMenus;
  MostraSubMenu(pnlPaymentExtends);
end;

procedure TformHome.btnPagamentosMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnPagamentos);
  EscondeBorda(panel15)
end;

procedure TformHome.btnPagarFuncClick(Sender: TObject);
begin
  MudaFonteCor(btnPagarFunc);
  EscondeBorda(panel23);
    if DM.sqlPersonais.IsEmpty = True then begin
      ShowMessage('N�o existem funcion�rios cadastrados!')
    end else begin
        formAddClients.Close;
    formAddPersonal.Close;
  formRealPag:= TformRealPag.Create(self);
  formRealPag.Parent := formHome.pnlForms;
  formRealPag.Align := alClient;
  formRealPag.BorderStyle := bsNone;
  formRealPag.Show;
  EscondeSubMenus;
  ExpandeMenu;
    end;
end;

procedure TformHome.btnPagarFuncMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnPagarFunc);
  EscondeBorda(panel23);
end;

procedure TformHome.btnPagarFuncMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnPagarFunc);
  EscondeBorda(panel23);
end;

procedure TformHome.btnPagRealClick(Sender: TObject);
begin
    formAddClients.Close;
    formAddPersonal.Close;
  MudaFonteCor(btnPagReal);
  EscondeBorda(panel25);
    formPagFunc:= TformPagFunc.Create(self);
    formPagFunc.Parent := pnlForms;
    formPagFunc.Align := alClient;
    formPagFunc.BorderStyle := bsNone;
    formPagFunc.Show;
    EscondeSubMenus;
    ExpandeMenu;
end;

procedure TformHome.btnPagRealMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnPagReal);
  EscondeBorda(panel25);
end;

procedure TformHome.btnPagRealMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnPagReal);
  EscondeBorda(panel25);

end;

procedure TformHome.btnReceberPagamentoClick(Sender: TObject);
begin
  MudaFonteCor(btnReceberPagamento);
  EscondeBorda(panel21);
    if DM.sqlClientes.IsEmpty = True then begin
      ShowMessage('N�o existem clientes cadastrados!')
    end else begin
        formAddClients.Close;
    formAddPersonal.Close;
    formReceberPagamento:= TformReceberPagamento.Create(self);
    formReceberPagamento.Parent := pnlForms;
    formReceberPagamento.Align := alClient;
    formReceberPagamento.BorderStyle := bsNone;
    formReceberPagamento.Show;
    EscondeSubMenus;
    ExpandeMenu;
    end;
end;

procedure TformHome.btnReceberPagamentoMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnReceberPagamento);
  EscondeBorda(panel21);
end;

procedure TformHome.btnReceberPagamentoMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnReceberPagamento);
  EscondeBorda(panel21);
end;

procedure TformHome.btnAddPersonalClick(Sender: TObject);
begin
    MudaFonteCor(btnAddPersonal);
    EscondeBorda(panel9);
    formPersonais.Close;
    formAddPersonal:= TformAddPersonal.Create(self);
    formAddPersonal.Parent := pnlForms;
    formAddPersonal.Align := alClient;
    formAddPersonal.BorderStyle := bsNone;
    formAddPersonal.Show;
    EscondeSubMenus;
    ExpandeMenu;
    DM.sqlPersonais.Open();
    dm.sqlPersonais.Insert;
end;

procedure TformHome.btnAddPersonalMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnAddPersonal);
  EscondeBorda(panel9);
end;

procedure TformHome.btnAddPersonalMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnAddPersonal);
  EscondeBorda(panel9);
  EscondeSubMenus;
end;

procedure TformHome.btnClientesClick(Sender: TObject);
begin
  ExpandeMenu;
  MudaFonteCor(btnClientes);
  EscondeBorda(panel18);
  if pnlMenu.Width = 170 then begin
    exit
  end else begin
    formAddClients.Close;
    formAddPersonal.Close;
    formClientes:= TformClientes.Create(self);
    formClientes.Parent := pnlForms;
    formClientes.Align := alClient;
    formClientes.BorderStyle := bsNone;
    formClientes.Show;
  end;
  EscondeSubMenus;
end;

procedure TformHome.btnClientesMouseEnter(Sender: TObject);
begin
  MudaFonteCor(btnClientes);
  EscondeBorda(panel18);
  EscondeSubMenus;
  MostraSubMenu(pnlClientsExtends);
end;

procedure TformHome.btnClientesMouseLeave(Sender: TObject);
begin
  MudaFonteCor(btnClientes);
  EscondeBorda(panel18)
end;

end.
