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
    Panel10: TPanel;
    btnCancelar: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    btnVoltar: TSpeedButton;
    Panel13: TPanel;
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
    procedure btnPaymentClick(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVoltarMouseEnter(Sender: TObject);
    procedure btnVoltarMouseLeave(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formClientes: TformClientes;

implementation

{$R *.dfm}

uses UnitDM, unitLogin, uFuncoes, unitAddClients, unitHome, unitaddPersonais,
  unitPagamentos, unitPersonais, unitReceberPagamentos;
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
AoEntrarVerde(panel4,panel5)
end;

procedure TformClientes.btnAddClientMouseLeave(Sender: TObject);
begin
AoSairVerde(panel4,panel5)
end;

procedure TformClientes.btnCancelarClick(Sender: TObject);
begin
      DM.sqlClientes.Cancel;
      DM.sqlClientes.Refresh;
      formClientes.Close;
      formClientes:= TformClientes.Create(self);
      formClientes.Parent := formHome.pnlForms;
      formClientes.Align := alClient;
      formClientes.BorderStyle := bsNone;
      formClientes.Show;
end;

procedure TformClientes.btnCancelarMouseEnter(Sender: TObject);
begin
AoEntrar(panel10,panel11)
end;

procedure TformClientes.btnCancelarMouseLeave(Sender: TObject);
begin
AoSair(panel10,panel11)
end;

procedure TformClientes.btnPaymentClick(Sender: TObject);
begin
    formPagamentos:= TformPagamentos.Create(self);
    formPagamentos.Parent := formHome.pnlForms;
    formPagamentos.Align := alClient;
    formPagamentos.BorderStyle := bsNone;
    formPagamentos.Show;
end;

procedure TformClientes.btnPaymentMouseEnter(Sender: TObject);
begin
AoEntrarAzul(panel1,pnlborder1)
end;

procedure TformClientes.btnPaymentMouseLeave(Sender: TObject);
begin
AoSairAzul(panel1,pnlborder1)
end;

procedure TformClientes.btnRemoveClientClick(Sender: TObject);
begin
  if DM.sqlClientes.IsEmpty then begin
    ShowMessage('A tabela já está vazia!');
  end else
  if Application.MessageBox('Deseja realmente Excluir esse cliente?','Atenção',MB_ICONEXCLAMATION+MB_OKCANCEL) = mrOk then begin
    DM.sqlClientes.Delete;
    DM.sqlPagamentos.Refresh;
  end;
end;

procedure TformClientes.btnRemoveClientMouseEnter(Sender: TObject);
begin
AoEntrarVermelho(panel2,panel3)
end;

procedure TformClientes.btnRemoveClientMouseLeave(Sender: TObject);
begin
AoSairVermelho(panel2,panel3)
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
  MakeRounded(panel10);
  MakeRounded(panel12);
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
    if DM.sqlPagamentos.IsEmpty then begin
    ShowMessage('A tabela está vazia!');
  end else begin
    DM.sqlClientes.Close;
    DM.sqlClientes.Open();
    gridClients.Options := [dgEditing,dgTitles,dgColumnResize,dgColLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
    DM.sqlClientes.Edit;
    panel6.visible := True;
    panel8.visible := False;
    panel10.Visible := True;
    TDBGridPadrao(gridClients).DefaultRowHeight := 30;
    TDBGridPadrao(gridClients).ClientHeight := (30 * TDBGridPadrao(gridClients).RowCount + 30);
    lblSave.Caption := '';
  end;
end;

procedure TformClientes.btnEditarMouseEnter(Sender: TObject);
begin
AoEntrar(panel8,panel9)
end;

procedure TformClientes.btnEditarMouseLeave(Sender: TObject);
begin
AoSair(panel8,panel9)
end;

procedure TformClientes.btnSalvarClick(Sender: TObject);
begin
  if DM.sqlClientes.State in [dsBrowse] then begin
    ShowMessage('Edite algo primeiro para poder salvar!');
  end else begin
    panel6.visible := False;
    panel8.visible := True;
    try
      DM.sqlClientes.Post;
      DM.sqlClientes.Refresh;
      formClientes.Close;
      formClientes:= TformClientes.Create(self);
      formClientes.Parent := formHome.pnlForms;
      formClientes.Align := alClient;
      formClientes.BorderStyle := bsNone;
      formClientes.Show;
    except
      on E:Exception do
      ShowMessage('Preencha os campos que deseja editar corretamente!')
    end;
  end;

end;

procedure TformClientes.btnSalvarMouseEnter(Sender: TObject);
begin
AoEntrar(panel6,panel7)
end;

procedure TformClientes.btnSalvarMouseLeave(Sender: TObject);
begin
AoSair(panel6,panel7)
end;

procedure TformClientes.btnVoltarClick(Sender: TObject);
begin
formClientes.Close;
end;

procedure TformClientes.btnVoltarMouseEnter(Sender: TObject);
begin
aoEntrar(panel12,panel13)
end;

procedure TformClientes.btnVoltarMouseLeave(Sender: TObject);
begin
aoSair(panel12,panel13)
end;

end.
