unit unitReceberPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.DBCtrls, Vcl.Mask,
  SWHDBEdit;

type
  TformReceberPagamento = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    imgIconForm: TImage;
    Label1: TLabel;
    pnlButtons: TPanel;
    pnlFormasDePagamento: TPanel;
    Panel1: TPanel;
    btnDinheiro: TSpeedButton;
    Panel6: TPanel;
    Panel2: TPanel;
    btnCartao: TSpeedButton;
    Panel3: TPanel;
    pnlFormaPag: TPanel;
    pnlTopPag: TPanel;
    imgLogoPix: TImage;
    pnlData: TPanel;
    lblData: TLabel;
    txtData: TSWHDBEdit;
    pnlValor: TPanel;
    lblValor: TLabel;
    txtValor: TSWHDBEdit;
    pnlName: TPanel;
    lblName: TLabel;
    txrName: TDBLookupComboBox;
    pnlPagar: TPanel;
    btnPagar: TSpeedButton;
    Panel8: TPanel;
    imgLogoDinheiro: TImage;
    imgLogoCartao: TImage;
    lblTipoPag: TLabel;
    Panel4: TPanel;
    btnPix: TSpeedButton;
    Panel5: TPanel;
    pnlBottom: TPanel;
    Panel10: TPanel;
    btnFechar: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    btnVoltar: TSpeedButton;
    Panel13: TPanel;
    procedure FormShow(Sender: TObject);
    procedure btnPixMouseEnter(Sender: TObject);
    procedure btnPixMouseLeave(Sender: TObject);
    procedure btnDinheiroMouseEnter(Sender: TObject);
    procedure btnDinheiroMouseLeave(Sender: TObject);
    procedure btnCartaoMouseEnter(Sender: TObject);
    procedure btnCartaoMouseLeave(Sender: TObject);
    procedure btnPagarMouseEnter(Sender: TObject);
    procedure btnPagarMouseLeave(Sender: TObject);
    procedure btnPixClick(Sender: TObject);
    procedure btnDinheiroClick(Sender: TObject);
    procedure btnCartaoClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure pnlPrincipalMouseEnter(Sender: TObject);
    procedure btnVoltarMouseEnter(Sender: TObject);
    procedure btnVoltarMouseLeave(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formReceberPagamento: TformReceberPagamento;

implementation

{$R *.dfm}

uses UnitDM, unitPagamentos, uFuncoes, unitAddClients, unitaddPersonais,
  unitClientes, unitHome, unitLogin, unitPersonais;

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
procedure TformReceberPagamento.btnCartaoClick(Sender: TObject);
begin
    if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Cart�o';
      imgLogoCartao.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := False;
      DM.sqlPagamentos.Insert;
  end else begin
      if lblTipoPag.Caption = 'Cart�o' then begin
        DM.sqlPagamentos.Cancel;
        pnlFormaPag.Visible := False

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Cart�o';
      imgLogoCartao.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := False;
      DM.sqlPagamentos.Cancel;
      DM.sqlPagamentos.Insert;
      end;
  end;
end;

procedure TformReceberPagamento.btnCartaoMouseEnter(Sender: TObject);
begin
AoEntrar(panel2,panel3)
end;

procedure TformReceberPagamento.btnCartaoMouseLeave(Sender: TObject);
begin
AoSair(panel2,panel3)
end;

procedure TformReceberPagamento.btnDinheiroClick(Sender: TObject);
begin
    if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Dinheiro';
      imgLogoDinheiro.Visible := True;
      imgLogoPix.Visible := False;
      imgLogoCartao.Visible := False;
      DM.sqlPagamentos.Insert;
  end else begin
      if lblTipoPag.Caption = 'Dinheiro' then begin
        pnlFormaPag.Visible := False;
        DM.sqlPagamentos.Cancel;

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Dinheiro';
      imgLogoCartao.Visible := False;
      imgLogoDinheiro.Visible := True;
      imgLogoPix.Visible := False;
      DM.sqlPagamentos.Cancel;
      DM.sqlPagamentos.Insert;
      end;

  end;
end;

procedure TformReceberPagamento.btnDinheiroMouseEnter(Sender: TObject);
begin
AoEntrar(panel1,panel6)
end;

procedure TformReceberPagamento.btnDinheiroMouseLeave(Sender: TObject);
begin
AoSair(panel1,panel6)
end;

procedure TformReceberPagamento.btnFecharClick(Sender: TObject);
begin
  DM.sqlPagamentos.Cancel;
  formReceberPagamento.Close;
  formPagamentos:= TformPagamentos.Create(self);
  formPagamentos.Parent := FormHome.pnlForms;
  formPagamentos.Align := alClient;
  formPagamentos.BorderStyle := bsNone;
  formPagamentos.Show;
end;

procedure TformReceberPagamento.btnFecharMouseEnter(Sender: TObject);
begin
AoEntrar(panel10,panel11)
end;

procedure TformReceberPagamento.btnFecharMouseLeave(Sender: TObject);
begin
AoSair(panel10,panel11)
end;

procedure TformReceberPagamento.btnPagarClick(Sender: TObject);
begin
  if imgLogoPix.Visible = True then
    DM.sqlPagamentos.FieldByName('tipo').Value := 'Pix';
  if imgLogoDinheiro.Visible = True then
    DM.sqlPagamentos.FieldByName('tipo').Value := 'Dinheiro';
  if imgLogoCartao.Visible = True then
    DM.sqlPagamentos.FieldByName('tipo').Value := 'Cart�o';
  try
    DM.sqlPagamentos.Post;
    DM.sqlPagamentos.Refresh;
    DM.sqlPagamentos.Insert;
  except
    on E:Exception do
      ShowMessage('Preencha todos os campos!')
  end;
end;

procedure TformReceberPagamento.btnPagarMouseEnter(Sender: TObject);
begin
AoEntrar(pnlPagar,panel8)
end;

procedure TformReceberPagamento.btnPagarMouseLeave(Sender: TObject);
begin
AoSair(pnlPagar,panel8)
end;

procedure TformReceberPagamento.btnPixClick(Sender: TObject);
begin
  if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Pix';
      imgLogoPix.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoCartao.Visible := False;
      DM.sqlPagamentos.Insert;
  end else begin
      if lblTipoPag.Caption = 'Pix' then begin
        pnlFormaPag.Visible := False;
        DM.sqlPagamentos.Cancel;

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Pix';
      imgLogoCartao.Visible := False;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := True;
      DM.sqlPagamentos.Cancel;
      DM.sqlPagamentos.Insert;
      end;

  end;

end;

procedure TformReceberPagamento.btnPixMouseEnter(Sender: TObject);
begin
AoEntrar(panel4,panel5)
end;

procedure TformReceberPagamento.btnPixMouseLeave(Sender: TObject);
begin
AoSair(panel4,panel5)
end;

procedure TformReceberPagamento.btnVoltarClick(Sender: TObject);
begin
formReceberPagamento.Close;
end;

procedure TformReceberPagamento.btnVoltarMouseEnter(Sender: TObject);
begin
AoEntrar(panel12,panel13)
end;

procedure TformReceberPagamento.btnVoltarMouseLeave(Sender: TObject);
begin
AoSair(panel12,panel13)
end;

procedure TformReceberPagamento.FormShow(Sender: TObject);
begin
MakeRounded(panel1);
MakeRounded(panel2);
MakeRounded(panel4);
MakeRounded(pnlPagar);
MakeRounded(panel10);
MakeRounded(panel12);
end;

procedure TformReceberPagamento.pnlPrincipalMouseEnter(Sender: TObject);
begin
formHome.EscondeSubMenus;
end;

end.
