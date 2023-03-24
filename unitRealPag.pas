unit unitRealPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, SWHDBEdit, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TformRealPag = class(TForm)
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
    Panel4: TPanel;
    btnPix: TSpeedButton;
    Panel5: TPanel;
    pnlFormaPag: TPanel;
    pnlTopPag: TPanel;
    imgLogoPix: TImage;
    imgLogoDinheiro: TImage;
    imgLogoCartao: TImage;
    lblTipoPag: TLabel;
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
    procedure btnVoltarMouseEnter(Sender: TObject);
    procedure btnVoltarMouseLeave(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRealPag: TformRealPag;

implementation

{$R *.dfm}

uses uFuncoes, unitAddClients, unitaddPersonais, unitClientes, UnitDM, unitHome,
  unitLogin, unitPagamentos, unitPagFunc, unitPersonais, unitReceberPagamentos;
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


{ TformRealPag }

procedure TformRealPag.btnCartaoClick(Sender: TObject);
begin
    if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Cartão';
      imgLogoCartao.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := False;
      DM.sqlPagFunc.Insert;
  end else begin
      if lblTipoPag.Caption = 'Cartão' then begin
        pnlFormaPag.Visible := False;
        DM.sqlPagFunc.Cancel;

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Cartão';
      imgLogoCartao.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := False;
      DM.sqlPagFunc.Cancel;
      DM.sqlPagFunc.Insert;
      end;
  end;
end;

procedure TformRealPag.btnCartaoMouseEnter(Sender: TObject);
begin
AoEntrar(panel2,panel3)
end;

procedure TformRealPag.btnCartaoMouseLeave(Sender: TObject);
begin
AoSair(panel2,panel3)
end;

procedure TformRealPag.btnDinheiroClick(Sender: TObject);
begin
    if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Dinheiro';
      imgLogoDinheiro.Visible := True;
      imgLogoPix.Visible := False;
      imgLogoCartao.Visible := False;
      DM.sqlPagFunc.Insert;
  end else begin
      if lblTipoPag.Caption = 'Dinheiro' then begin
        pnlFormaPag.Visible := False;
        DM.sqlPagFunc.Cancel;

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Dinheiro';
      imgLogoCartao.Visible := False;
      imgLogoDinheiro.Visible := True;
      imgLogoPix.Visible := False;
      DM.sqlPagFunc.Cancel;
      DM.sqlPagFunc.Insert;
      end;

  end;
end;

procedure TformRealPag.btnDinheiroMouseEnter(Sender: TObject);
begin
AoEntrar(panel1,panel6)
end;

procedure TformRealPag.btnDinheiroMouseLeave(Sender: TObject);
begin
AoSair(panel1,panel6)
end;

procedure TformRealPag.btnFecharClick(Sender: TObject);
begin
  DM.sqlPagFunc.Cancel;
  formRealPag.Close;
  formPagFunc:= TformPagFunc.Create(self);
  formPagFunc.Parent := FormHome.pnlForms;
  formPagFunc.Align := alClient;
  formPagFunc.BorderStyle := bsNone;
  formPagFunc.Show;
end;

procedure TformRealPag.btnFecharMouseEnter(Sender: TObject);
begin
AoEntrar(panel10,panel11)
end;

procedure TformRealPag.btnFecharMouseLeave(Sender: TObject);
begin
AoSair(panel10,panel11)
end;

procedure TformRealPag.btnPagarClick(Sender: TObject);
begin
  if imgLogoPix.Visible = True then
    DM.sqlPagFunc.FieldByName('tipo').Value := 'Pix';
  if imgLogoDinheiro.Visible = True then
    DM.sqlPagFunc.FieldByName('tipo').Value := 'Dinheiro';
  if imgLogoCartao.Visible = True then
    DM.sqlPagFunc.FieldByName('tipo').Value := 'Cartão';
  try
    DM.sqlPagFunc.Post;
    DM.sqlPagFunc.Refresh;
    DM.sqlPagFunc.Insert;
  except
    on E:Exception do
      ShowMessage('Preencha todos os campos!')
  end;
end;

procedure TformRealPag.btnPagarMouseEnter(Sender: TObject);
begin
AoEntrar(pnlPagar,panel8)
end;

procedure TformRealPag.btnPagarMouseLeave(Sender: TObject);
begin
 AoEntrar(pnlPagar,panel8)
end;

procedure TformRealPag.btnPixClick(Sender: TObject);
begin
begin
  if pnlFormaPag.Visible = False then begin
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Pix';
      imgLogoPix.Visible := True;
      imgLogoDinheiro.Visible := False;
      imgLogoCartao.Visible := False;
      DM.sqlPagFunc.Insert;
  end else begin
      if lblTipoPag.Caption = 'Pix' then begin
        pnlFormaPag.Visible := False;
        DM.sqlPagFunc.Cancel;

      end
      else begin
      pnlFormaPag.Visible := False;
      pnlFormaPag.Visible := True;
      lblTipoPag.Caption := 'Pix';
      imgLogoCartao.Visible := False;
      imgLogoDinheiro.Visible := False;
      imgLogoPix.Visible := True;
      DM.sqlPagFunc.Cancel;
      DM.sqlPagFunc.Insert;
      end;

  end;

end;
end;

procedure TformRealPag.btnPixMouseEnter(Sender: TObject);
begin
AoEntrar(panel4,panel5)
end;

procedure TformRealPag.btnPixMouseLeave(Sender: TObject);
begin
AoSair(panel4,panel5)
end;

procedure TformRealPag.btnVoltarClick(Sender: TObject);
begin
formRealPag.Close;
end;

procedure TformRealPag.btnVoltarMouseEnter(Sender: TObject);
begin
AoEntrar(panel12,panel13)
end;

procedure TformRealPag.btnVoltarMouseLeave(Sender: TObject);
begin
AoSair(panel12,panel13)
end;

procedure TformRealPag.FormShow(Sender: TObject);
begin
MakeRounded(panel1);
MakeRounded(panel2);
MakeRounded(panel4);
MakeRounded(pnlPagar);
MakeRounded(panel10);
MakeRounded(panel12);
end;

end.
