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
    btnEditar: TSpeedButton;
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
    procedure btnEscolherImgMouseEnter(Sender: TObject);
    procedure btnEscolherImgMouseLeave(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnEscolherImgClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
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
  unitPersonais, jpeg;

procedure TformAddPersonal.btnEditarClick(Sender: TObject);
begin
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

procedure TformAddPersonal.btnEditarMouseEnter(Sender: TObject);
begin
  panel6.Color := $005BA6E5;
  panel6.Font.Style := [TFontStyle.fsBold];
  panel7.Visible := True;
end;

procedure TformAddPersonal.btnEditarMouseLeave(Sender: TObject);
begin
    panel6.Color := $00F2556E;
    panel6.Font.Style := [];
    panel7.Visible := False;
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
  pnlFechar.Color := $005BA6E5;
  pnlFechar.Font.Style := [TFontStyle.fsBold];
  panel3.Visible := True;
end;

procedure TformAddPersonal.btnFecharMouseLeave(Sender: TObject);
begin
    pnlFechar.Color := $00F2556E;
    pnlFechar.Font.Style := [];
    panel3.Visible := False;
end;

end.
