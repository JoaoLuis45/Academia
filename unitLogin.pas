unit unitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, SWHDBEdit, SWHTEdit,
  unitHome;

type
  TformLogin = class(TForm)
    pnlMain: TPanel;
    pnlLogo: TPanel;
    logoLogin: TImage;
    pnlDivision: TPanel;
    pnlPrincipal: TPanel;
    pnlGlyphGym: TPanel;
    Image1: TImage;
    pnlLogin: TPanel;
    lblWelcome: TLabel;
    pnlButtonLogin: TPanel;
    btnEntrar: TSpeedButton;
    pnlBorderBottom: TPanel;
    pnlDataUser: TPanel;
    lblUser: TLabel;
    pnlBorderBottomUser: TPanel;
    pnlDataPassword: TPanel;
    lblPassword: TLabel;
    pnlBorderBottomPassword: TPanel;
    txtUser: TEdit1;
    txtPassword: TEdit1;
    pnlBorderTop: TPanel;
    logoDev: TImage;
    pnlClose: TPanel;
    btnClose: TSpeedButton;
    procedure btnEntrarMouseEnter(Sender: TObject);
    procedure btnEntrarMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure txtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Entrar();
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

uses UnitDM, uFuncoes;

procedure MakeRounded(Control: TWinControl);
var
R: TRect;
Rgn: HRGN;
begin
with Control do
begin
 R := ClientRect;
 rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10);
 Perform(EM_GETRECT, 0, lParam(@r));
 InflateRect(r, - 5, - 5);
 Perform(EM_SETRECTNP, 0, lParam(@r));
 SetWindowRgn(Handle, rgn, True);
 Invalidate;
end;
end;

procedure TformLogin.btnCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TformLogin.btnEntrarClick(Sender: TObject);
begin
  Entrar();
end;

procedure TformLogin.btnEntrarMouseEnter(Sender: TObject);
begin
AoEntrar(pnlButtonLogin,pnlBorderBottom)
end;

procedure TformLogin.btnEntrarMouseLeave(Sender: TObject);
begin
AoSair(pnlButtonLogin,pnlBorderBottom)
end;

procedure TformLogin.Entrar;
var
  user: String;
  pass: String;
begin
  user := txtUser.Text;
  pass := txtPassword.Text;
  DM.sqlLogin.Close;
  DM.sqlLogin.SQL.Text := 'SELECT senha FROM users WHERE usuario = :USUARIO';
  DM.sqlLogin.ParamByName('USUARIO').AsString := user;
  DM.sqlLogin.Open();
  if pass = DM.sqlLogin.FieldByName('senha').Value then begin
    formLogin.Close;
  end
  else begin
    ShowMessage('Usuário ou senha Incorretos!');
  end;
end;

procedure TformLogin.FormCreate(Sender: TObject);
begin
MakeRounded(txtPassword);
MakeRounded(txtUser);
MakeRounded(pnlButtonLogin);
end;

procedure TformLogin.txtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    entrar();


end;

end.
