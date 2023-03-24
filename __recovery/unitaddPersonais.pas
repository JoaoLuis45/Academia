unit unitaddPersonais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, SWHDBEdit, Vcl.Imaging.pngimage, Vcl.ExtDlgs;

type
  TformAddPersonal = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    imgIconForm: TImage;
    Label1: TLabel;
    pnlDados: TPanel;
    pnlNome: TPanel;
    lblUser: TLabel;
    txtNome: TSWHDBEdit;
    pnlIdade: TPanel;
    Label5: TLabel;
    txtIdade: TSWHDBEdit;
    pnlTelefone: TPanel;
    Label6: TLabel;
    txtTelefone: TSWHDBEdit;
    pnlBottom: TPanel;
    Panel6: TPanel;
    btnAddPersonal: TSpeedButton;
    Panel7: TPanel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    Label2: TLabel;
    pnlEscolherImg: TPanel;
    btnEscolherImg: TSpeedButton;
    Panel2: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel12: TPanel;
    btnVoltar: TSpeedButton;
    Panel13: TPanel;
    procedure btnEscolherImgMouseEnter(Sender: TObject);
    procedure btnEscolherImgMouseLeave(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnAddPersonalMouseEnter(Sender: TObject);
    procedure btnAddPersonalMouseLeave(Sender: TObject);
    procedure btnEscolherImgClick(Sender: TObject);
    procedure btnAddPersonalClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarMouseEnter(Sender: TObject);
    procedure btnVoltarMouseLeave(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAddPersonal: TformAddPersonal;

implementation

{$R *.dfm}

uses uFuncoes, unitAddClients, unitClientes, UnitDM, unitHome, unitLogin,
  unitPersonais, jpeg, Data.DB;


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

procedure TformAddPersonal.btnAddPersonalClick(Sender: TObject);
begin
  if DM.sqlPersonais.State in [dsEdit] then begin
    if OpenPictureDialog1.FileName = '' then begin
          DM.sqlPersonais.FieldByName('imagem').Value := DM.sqlPersonais.FieldByName('imagem').Value;
          DM.sqlPersonais.Post;
          DM.sqlPersonais.Refresh;
          formAddPersonal.Close;
          formPersonais:= TformPersonais.Create(self);
          formPersonais.Parent := formHome.pnlForms;
          formPersonais.Align := alClient;
          formPersonais.BorderStyle := bsNone;
          formPersonais.Show;
    end else begin
    DM.sqlPersonais.FieldByName('imagem').Value := OpenPictureDialog1.FileName;
    DM.sqlPersonais.Post;
    DM.sqlPersonais.Refresh;
    formAddPersonal.Close;
    formPersonais:= TformPersonais.Create(self);
    formPersonais.Parent := formHome.pnlForms;
    formPersonais.Align := alClient;
    formPersonais.BorderStyle := bsNone;
    formPersonais.Show;
    end;
  end else if (OpenPictureDialog1.FileName = '') or (txtNome.Text = '') or (txtTelefone.Text = '') or (txtIdade.Text = '') then begin
      ShowMessage('Preencha todos os campos!');
    end else begin
      DM.sqlPersonais.FieldByName('imagem').Value := OpenPictureDialog1.FileName;
        DM.sqlPersonais.Post;
        DM.sqlPersonais.Refresh;
        formAddPersonal.Close;
        formPersonais:= TformPersonais.Create(self);
        formPersonais.Parent := formHome.pnlForms;
        formPersonais.Align := alClient;
        formPersonais.BorderStyle := bsNone;
        formPersonais.Show;
  end;

end;

procedure TformAddPersonal.btnAddPersonalMouseEnter(Sender: TObject);
begin
AoEntrar(panel6,panel7)
end;

procedure TformAddPersonal.btnAddPersonalMouseLeave(Sender: TObject);
begin
AoSair(panel6,panel7)
end;

procedure TformAddPersonal.btnEscolherImgClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute = True then begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    image1.Center := True;
  end;

end;

procedure TformAddPersonal.btnEscolherImgMouseEnter(Sender: TObject);
begin
  pnlEscolherImg.Color := $005BA6E5;
  pnlEscolherImg.Font.Style := [TFontStyle.fsBold];
  panel2.Visible := True;
end;

procedure TformAddPersonal.btnEscolherImgMouseLeave(Sender: TObject);
begin
    pnlEscolherImg.Color := $00F2556E;
    pnlEscolherImg.Font.Style := [];
    panel2.Visible := False;
end;

procedure TformAddPersonal.btnFecharClick(Sender: TObject);
begin
  DM.sqlPersonais.Cancel;
  formAddPersonal.Close;
  formPersonais:= TformPersonais.Create(self);
  formPersonais.Parent := formHome.pnlForms;
  formPersonais.Align := alClient;
  formPersonais.BorderStyle := bsNone;
  formPersonais.Show;
end;

procedure TformAddPersonal.btnFecharMouseEnter(Sender: TObject);
begin
AoEntrar(pnlFechar,panel3)
end;

procedure TformAddPersonal.btnFecharMouseLeave(Sender: TObject);
begin
AoSair(pnlFechar,panel3)
end;

procedure TformAddPersonal.btnVoltarClick(Sender: TObject);
begin
  DM.sqlPersonais.Cancel;
  formAddPersonal.Close;
end;

procedure TformAddPersonal.btnVoltarMouseEnter(Sender: TObject);
begin
AoEntrar(panel12,panel13)
end;

procedure TformAddPersonal.btnVoltarMouseLeave(Sender: TObject);
begin
AoSair(panel12,panel13)
end;

procedure TformAddPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.sqlPersonais.Cancel;
end;

procedure TformAddPersonal.FormShow(Sender: TObject);
begin
  MakeRounded(pnlEscolherImg);
  MakeRounded(panel6);
  MakeRounded(pnlFechar);
  MakeRounded(panel12);

end;

end.
