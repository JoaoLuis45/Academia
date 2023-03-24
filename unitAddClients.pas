unit unitAddClients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, SWHTEdit, Vcl.Mask, Vcl.DBCtrls, SWHDBEdit;

type
  TformAddClients = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    imgIconForm: TImage;
    Label1: TLabel;
    pnlDados: TPanel;
    pnlBottom: TPanel;
    Panel6: TPanel;
    btnEditar: TSpeedButton;
    Panel7: TPanel;
    pnlNome: TPanel;
    lblUser: TLabel;
    txtNome: TSWHDBEdit;
    pnlBairro: TPanel;
    Label2: TLabel;
    txtBairro: TSWHDBEdit;
    pnlNumero: TPanel;
    Label3: TLabel;
    txtNumCasa: TSWHDBEdit;
    pnlRua: TPanel;
    Label4: TLabel;
    txtRua: TSWHDBEdit;
    pnlIdade: TPanel;
    Label5: TLabel;
    txtIdade: TSWHDBEdit;
    pnlTelefone: TPanel;
    Label6: TLabel;
    txtTelefone: TSWHDBEdit;
    checkSaude: TDBCheckBox;
    pnlSaude: TPanel;
    Label7: TLabel;
    txtProbSaude: TSWHDBEdit;
    checkComec: TDBCheckBox;
    pnlPersonais: TPanel;
    btnPersonais: TSpeedButton;
    Panel2: TPanel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    Panel3: TPanel;
    txtPersonais: TDBLookupComboBox;
    Panel12: TPanel;
    btnVoltar: TSpeedButton;
    Panel13: TPanel;
    lblSave: TLabel;
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnPersonaisMouseEnter(Sender: TObject);
    procedure btnPersonaisMouseLeave(Sender: TObject);
    procedure checkSaudeClick(Sender: TObject);
    procedure checkComecClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPersonaisClick(Sender: TObject);
    procedure btnVoltarMouseEnter(Sender: TObject);
    procedure btnVoltarMouseLeave(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAddClients: TformAddClients;

implementation

{$R *.dfm}

uses UnitDM, uFuncoes, unitClientes, unitHome, unitLogin;

procedure TformAddClients.btnEditarClick(Sender: TObject);
begin
  if (txtNome.Text = '') or (txtBairro.Text = '') or (txtNumCasa.Text = '')  or (txtRua.Text = '') or (txtIdade.Text = '') or (txtTelefone.Text = '')  then begin
    ShowMessage('Preencha todos os campos!');
  end else begin

     if (checkSaude.Checked = True) and (txtProbSaude.Text = '') then begin
        ShowMessage('Especifique o problema físico ou de saúde!');
        exit
     end;

     if (checkComec.Checked = True)  and (txtPersonais.Text = '')then begin
        ShowMessage('Escolha um personal para acompanhar o treino!!');
        exit
     end;

    DM.sqlClientesdataPag.Value := Date();
    DM.sqlClientes.Post;
    DM.sqlClientes.Refresh;
    DM.sqlClientes.Insert;
    lblSave.Caption := 'Cliente Adicionado com sucesso!';
  end;


end;

procedure TformAddClients.btnEditarMouseEnter(Sender: TObject);
begin
AoEntrar(panel6,panel7)
end;

procedure TformAddClients.btnEditarMouseLeave(Sender: TObject);
begin
AoSair(panel6,panel7)
end;

procedure TformAddClients.btnFecharClick(Sender: TObject);
begin
  DM.sqlClientes.Cancel;
  formAddClients.Close;
  formClientes:= TformClientes.Create(self);
  formClientes.Parent := formHome.pnlForms;
  formClientes.Align := alClient;
  formClientes.BorderStyle := bsNone;
  formClientes.Show;
end;

procedure TformAddClients.btnFecharMouseEnter(Sender: TObject);
begin
AoEntrar(pnlFechar,panel3)
end;

procedure TformAddClients.btnFecharMouseLeave(Sender: TObject);
begin
AoSair(pnlFechar,panel3)
end;

procedure TformAddClients.btnPersonaisClick(Sender: TObject);
begin
  if txtPersonais.Visible = False then begin
     txtPersonais.Visible := True;
  end else begin
    txtPersonais.Visible := False;
  end;
end;

procedure TformAddClients.btnPersonaisMouseEnter(Sender: TObject);
begin
AoEntrar(pnlPersonais,panel2)
end;

procedure TformAddClients.btnPersonaisMouseLeave(Sender: TObject);
begin
AoSair(pnlPersonais,panel2)
end;

procedure TformAddClients.btnVoltarClick(Sender: TObject);
begin
  DM.sqlClientes.Cancel;
  formAddClients.Close;
end;

procedure TformAddClients.btnVoltarMouseEnter(Sender: TObject);
begin
AoEntrar(panel12,panel13)
end;

procedure TformAddClients.btnVoltarMouseLeave(Sender: TObject);
begin
aoSair(panel12,panel13)
end;

procedure TformAddClients.checkSaudeClick(Sender: TObject);
begin
  if checkSaude.Checked then begin
    pnlSaude.Visible := True;
  end else begin
    pnlSaude.Visible := False;
  end;
end;


procedure TformAddClients.checkComecClick(Sender: TObject);
begin
  if checkComec.Checked then begin
    pnlPersonais.Visible := True;
  end else begin
    pnlPersonais.Visible := False;
    txtPersonais.Visible := False;
  end;


end;


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


procedure TformAddClients.FormShow(Sender: TObject);
begin
MakeRounded(pnlFechar);
MakeRounded(panel6);
MakeRounded(pnlBairro);
MakeRounded(pnlIdade);
MakeRounded(pnlNome);
MakeRounded(pnlNumero);
MakeRounded(pnlTelefone);
MakeRounded(pnlPersonais);
MakeRounded(pnlRua);
MakeRounded(pnlSaude);
MakeRounded(panel12);
lblSave.Caption := '';
txtNome.SetFocus;
end;

end.
