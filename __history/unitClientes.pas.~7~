unit unitClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TDBGridPadrao = class(TDBGrid);
  TformClientes = class(TForm)
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
    gridClients: TDBGrid;
    pnlBottom: TPanel;
    Panel6: TPanel;
    btnSalvar: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    btnEditar: TSpeedButton;
    Panel9: TPanel;
    lblSave: TLabel;
    procedure btnPaymentMouseEnter(Sender: TObject);
    procedure btnPaymentMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClientMouseEnter(Sender: TObject);
    procedure btnAddClientMouseLeave(Sender: TObject);
    procedure btnRemoveClientMouseEnter(Sender: TObject);
    procedure btnRemoveClientMouseLeave(Sender: TObject);
    procedure gridClientsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSalvarMouseEnter(Sender: TObject);
    procedure btnSalvarMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnAddClientClick(Sender: TObject);
    procedure btnRemoveClientClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formClientes: TformClientes;

implementation

{$R *.dfm}

uses UnitDM, unitLogin, uFuncoes, unitAddClients, unitHome;
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

procedure TformClientes.btnAddClientClick(Sender: TObject);
begin
    formClientes.Close;
    formAddClients:= TformAddClients.Create(self);
    formAddClients.Parent := formHome.pnlForms;
    formAddClients.Align := alClient;
    formAddClients.BorderStyle := bsNone;
    formAddClients.Show;
    DM.sqlClientes.Close();
    DM.sqlClientes.Open();
    dm.sqlClientes.Insert;
end;

procedure TformClientes.btnAddClientMouseEnter(Sender: TObject);
begin
    panel4.Color := clGreen;
    panel4.Font.Style := [TFontStyle.fsBold];
    panel5.Visible := True;
end;

procedure TformClientes.btnAddClientMouseLeave(Sender: TObject);
begin
    panel4.Color := $0050AF4C;
    panel4.Font.Style := [];
    panel5.Visible := False;
end;

procedure TformClientes.btnPaymentMouseEnter(Sender: TObject);
begin
    panel1.Color := clHotLight;
    panel1.Font.Style := [TFontStyle.fsBold];
    pnlborder1.Visible := True;
end;

procedure TformClientes.btnPaymentMouseLeave(Sender: TObject);
begin
    panel1.Color := $00BA8C00;
    panel1.Font.Style := [];
    pnlborder1.Visible := False;
end;

procedure TformClientes.btnRemoveClientClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente Excluir esse cliente?','Atenção',MB_ICONEXCLAMATION+MB_OKCANCEL) = mrOk then begin
    DM.sqlClientes.Delete;
  end;
end;

procedure TformClientes.btnRemoveClientMouseEnter(Sender: TObject);
begin
    panel2.Color := clMaroon;
    panel2.Font.Style := [TFontStyle.fsBold];
    panel3.Visible := True;
end;

procedure TformClientes.btnRemoveClientMouseLeave(Sender: TObject);
begin
    panel2.Color := $003643F4;
    panel2.Font.Style := [];
    panel3.Visible := False;
end;

procedure TformClientes.FormCreate(Sender: TObject);
var
    I: Integer;
begin
    For I := 0 to gridClients.FieldCount - 1 do
      begin
        gridClients.Fields[i].Tag := 30;
      end;

    AutoSizeDBGrid(gridClients);
end;

procedure TformClientes.FormResize(Sender: TObject);
begin
  AutoSizeDBGrid(gridClients);
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridClients).DefaultRowHeight := 30;
  TDBGridPadrao(gridClients).ClientHeight := (30 * TDBGridPadrao(gridClients).RowCount + 30);
end;

procedure TformClientes.FormShow(Sender: TObject);
begin
  MakeRounded(panel1);
  MakeRounded(panel4);
  MakeRounded(panel2);
  MakeRounded(panel6);
  MakeRounded(panel8);
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridClients).DefaultRowHeight := 30;
  TDBGridPadrao(gridClients).ClientHeight := (30 * TDBGridPadrao(gridClients).RowCount + 30);
  lblSave.Caption := '';
end;

procedure TformClientes.gridClientsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


  //zebrando a dbgrid
  if Odd(gridClients.DataSource.DataSet.RecNo) then begin
    gridClients.Canvas.Brush.Color := $00E9E9E9;
  end else
    gridClients.Canvas.Brush.Color := clWhite;

  //mudando a cor da seleção
  if (gdSelected in State) then
    begin
      gridClients.Canvas.Brush.Color := $005BA6E5;
      gridClients.Canvas.Font.Color := clWhite;
      gridClients.Canvas.Font.Style := [TFontStyle.fsBold];
    end;

    gridClients.Canvas.FillRect(rect);
    gridClients.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  //mudando a posição e alinhamento vertical do texto de cadalinha
  gridClients.Canvas.TextRect(Rect, rect.Left + 8, rect.Top + 8, Column.Field.DisplayText);
end;

procedure TformClientes.btnEditarClick(Sender: TObject);
begin
  DM.sqlClientes.Close;
  DM.sqlClientes.Open();
  gridClients.Options := [dgEditing,dgTitles,dgColumnResize,dgColLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
  DM.sqlClientes.Edit;
  panel6.visible := True;
  panel8.visible := False;
  TDBGridPadrao(gridClients).DefaultRowHeight := 30;
  TDBGridPadrao(gridClients).ClientHeight := (30 * TDBGridPadrao(gridClients).RowCount + 30);
  lblSave.Caption := '';
end;

procedure TformClientes.btnEditarMouseEnter(Sender: TObject);
begin
  panel8.Color := $005BA6E5;
  panel8.Font.Style := [TFontStyle.fsBold];
  panel9.Visible := True;
end;

procedure TformClientes.btnEditarMouseLeave(Sender: TObject);
begin
    panel8.Color := $00F2556E;
    panel8.Font.Style := [];
    panel9.Visible := False;
end;

procedure TformClientes.btnSalvarClick(Sender: TObject);
begin
  panel6.visible := False;
  panel8.visible := True;
  DM.sqlClientes.Post;
  DM.sqlClientes.Refresh;
  formClientes.Close;
  formClientes:= TformClientes.Create(self);
  formClientes.Parent := formHome.pnlForms;
  formClientes.Align := alClient;
  formClientes.BorderStyle := bsNone;
  formClientes.Show;
end;

procedure TformClientes.btnSalvarMouseEnter(Sender: TObject);
begin
  panel6.Color := $005BA6E5;
  panel6.Font.Style := [TFontStyle.fsBold];
  panel7.Visible := True;
end;

procedure TformClientes.btnSalvarMouseLeave(Sender: TObject);
begin
    panel6.Color := $00F2556E;
    panel6.Font.Style := [];
    panel7.Visible := False;
end;

end.
