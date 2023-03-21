unit unitPersonais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TDBGridPadrao = class(TDBGrid);
  TformPersonais = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    imgIconForm: TImage;
    Label1: TLabel;
    pnlButtons: TPanel;
    panel1: TPanel;
    btnPayment: TSpeedButton;
    pnlborder1: TPanel;
    Panel2: TPanel;
    btnRemoveClient: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    btnAddClient: TSpeedButton;
    Panel5: TPanel;
    pnlGrid: TPanel;
    gridPersonais: TDBGrid;
    pnlBottom: TPanel;
    lblSave: TLabel;
    Panel8: TPanel;
    btnEditar: TSpeedButton;
    Panel9: TPanel;
    imgPersonal: TImage;
    pnlDados: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNome: TLabel;
    lblIdade: TLabel;
    lblTel: TLabel;
    Label4: TLabel;
    lblQtdAlunos: TLabel;
    procedure btnAddClientClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridPersonaisDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAddClientMouseEnter(Sender: TObject);
    procedure btnAddClientMouseLeave(Sender: TObject);
    procedure btnRemoveClientMouseEnter(Sender: TObject);
    procedure btnRemoveClientMouseLeave(Sender: TObject);
    procedure btnPaymentMouseEnter(Sender: TObject);
    procedure btnPaymentMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnRemoveClientClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPersonais: TformPersonais;

implementation

{$R *.dfm}

uses uFuncoes, unitAddClients, unitClientes, UnitDM, unitHome, unitLogin,
  unitaddPersonais;

procedure dsDadosDataChange(Sender: TObject; Field: TField);
  begin
  ShowMessage('teste');
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

procedure TformPersonais.btnAddClientClick(Sender: TObject);
begin
formPersonais.Close;
    formAddPersonal:= TformAddPersonal.Create(self);
    formAddPersonal.Parent := formHome.pnlForms;
    formAddPersonal.Align := alClient;
    formAddPersonal.BorderStyle := bsNone;
    formAddPersonal.Show;
    DM.sqlPersonais.Open();
    dm.sqlPersonais.Insert;
end;

procedure TformPersonais.btnAddClientMouseEnter(Sender: TObject);
begin
    panel4.Color := clGreen;
    panel4.Font.Style := [TFontStyle.fsBold];
    panel5.Visible := True;
end;

procedure TformPersonais.btnAddClientMouseLeave(Sender: TObject);
begin
    panel4.Color := $0050AF4C;
    panel4.Font.Style := [];
    panel5.Visible := False;
end;

procedure TformPersonais.btnEditarClick(Sender: TObject);
begin
    formPersonais.Close;
    formAddPersonal:= TformAddPersonal.Create(self);
    formAddPersonal.Parent := formHome.pnlForms;
    formAddPersonal.Align := alClient;
    formAddPersonal.BorderStyle := bsNone;
    formAddPersonal.Show;
    DM.sqlPersonais.Open();
    dm.sqlPersonais.Edit;
end;

procedure TformPersonais.btnEditarMouseEnter(Sender: TObject);
begin
  panel8.Color := $005BA6E5;
  panel8.Font.Style := [TFontStyle.fsBold];
  panel9.Visible := True;
end;

procedure TformPersonais.btnEditarMouseLeave(Sender: TObject);
begin
    panel8.Color := $00F2556E;
    panel8.Font.Style := [];
    panel9.Visible := False;
end;

procedure TformPersonais.btnPaymentMouseEnter(Sender: TObject);
begin
    panel1.Color := clHotLight;
    panel1.Font.Style := [TFontStyle.fsBold];
    pnlborder1.Visible := True;
end;

procedure TformPersonais.btnPaymentMouseLeave(Sender: TObject);
begin
    panel1.Color := $00BA8C00;
    panel1.Font.Style := [];
    pnlborder1.Visible := False;
end;

procedure TformPersonais.btnRemoveClientClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja realmente Excluir esse Personal?','Atenção',MB_ICONEXCLAMATION+MB_OKCANCEL) = mrOk then begin
    DM.sqlPersonais.Delete;
  end;
end;

procedure TformPersonais.btnRemoveClientMouseEnter(Sender: TObject);
begin
    panel2.Color := clMaroon;
    panel2.Font.Style := [TFontStyle.fsBold];
    panel3.Visible := True;
end;

procedure TformPersonais.btnRemoveClientMouseLeave(Sender: TObject);
begin
    panel2.Color := $003643F4;
    panel2.Font.Style := [];
    panel3.Visible := False;
end;

procedure TformPersonais.FormCreate(Sender: TObject);
begin
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridPersonais).DefaultRowHeight := 30;
  TDBGridPadrao(gridPersonais).ClientHeight := (30 * TDBGridPadrao(gridPersonais).RowCount + 30);
  DM.sqlPersonais.Open();
end;

procedure TformPersonais.FormShow(Sender: TObject);
begin
  MakeRounded(panel1);
  MakeRounded(panel2);
  MakeRounded(panel4);
  MakeRounded(panel8);
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridPersonais).DefaultRowHeight := 30;
  TDBGridPadrao(gridPersonais).ClientHeight := (30 * TDBGridPadrao(gridPersonais).RowCount + 30);
  DM.sqlPersonais.Open();


  imgPersonal.Picture.LoadFromFile(DM.sqlPersonais.FieldByName('imagem').Value);
  lblNome.Caption := DM.sqlPersonais.FieldByName('nome').Value;
  lblIdade.Caption := DM.sqlPersonais.FieldByName('idade').Value;
  lblTel.Caption := DM.sqlPersonais.FieldByName('nome').Value;
  DM.sqlQtdAlunos.SQL.Clear;
  DM.sqlQtdAlunos.SQL.Text := 'SELECT * FROM clientes WHERE id_personal = :pPersonal';
  DM.sqlQtdAlunos.ParamByName('pPersonal').Value := DM.sqlPersonais.FieldByName('id').Value;
  DM.sqlQtdAlunos.Open();
  lblQtdAlunos.Caption := IntToStr(DM.sqlQtdAlunos.RecordCount);
end;

procedure TformPersonais.gridPersonaisDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//zebrando a dbgrid
  if Odd(gridPersonais.DataSource.DataSet.RecNo) then begin
    gridPersonais.Canvas.Brush.Color := $00E9E9E9;
  end else
    gridPersonais.Canvas.Brush.Color := clWhite;

  //mudando a cor da seleção
  if (gdSelected in State) then
    begin
      gridPersonais.Canvas.Brush.Color := $005BA6E5;
      gridPersonais.Canvas.Font.Color := clWhite;
      gridPersonais.Canvas.Font.Style := [TFontStyle.fsBold];
    end;

    gridPersonais.Canvas.FillRect(rect);
    gridPersonais.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  //mudando a posição e alinhamento vertical do texto de cadalinha
  gridPersonais.Canvas.TextRect(Rect, rect.Left + 8, rect.Top + 8, Column.Field.DisplayText);
end;

end.
