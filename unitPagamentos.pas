unit unitPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TDBGridPadrao = class(TDBGrid);
  TformPagamentos = class(TForm)
    pnlPrincipal: TPanel;
    pnlTop: TPanel;
    imgIconForm: TImage;
    Label1: TLabel;
    pnlButtons: TPanel;
    Panel2: TPanel;
    btnExcluirPagamento: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    btnReceberPagamento: TSpeedButton;
    Panel5: TPanel;
    pnlGrid: TPanel;
    gridPagamentos: TDBGrid;
    pnlBottom: TPanel;
    lblSave: TLabel;
    Panel6: TPanel;
    btnSalvar: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    btnEditar: TSpeedButton;
    Panel9: TPanel;
    Panel1: TPanel;
    btnCancelar: TSpeedButton;
    Panel10: TPanel;
    Panel11: TPanel;
    btnVoltar: TSpeedButton;
    Panel12: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure gridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnReceberPagamentoMouseEnter(Sender: TObject);
    procedure btnReceberPagamentoMouseLeave(Sender: TObject);
    procedure btnExcluirPagamentoMouseEnter(Sender: TObject);
    procedure btnExcluirPagamentoMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSalvarMouseEnter(Sender: TObject);
    procedure btnSalvarMouseLeave(Sender: TObject);
    procedure btnExcluirPagamentoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnReceberPagamentoClick(Sender: TObject);
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
  formPagamentos: TformPagamentos;

implementation

{$R *.dfm}

uses uFuncoes, unitAddClients, unitaddPersonais, UnitDM, unitHome,
  unitLogin, unitReceberPagamentos;

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

procedure TformPagamentos.btnCancelarClick(Sender: TObject);
begin
      DM.sqlPagamentos.Cancel;
      DM.sqlPagamentos.Refresh;
      formPagamentos.Close;
      formPagamentos:= TformPagamentos.Create(self);
      formPagamentos.Parent := formHome.pnlForms;
      formPagamentos.Align := alClient;
      formPagamentos.BorderStyle := bsNone;
      formPagamentos.Show;
end;

procedure TformPagamentos.btnCancelarMouseEnter(Sender: TObject);
begin
AoEntrar(panel1,panel10)
end;

procedure TformPagamentos.btnCancelarMouseLeave(Sender: TObject);
begin
AoSair(panel1,panel10)
end;

procedure TformPagamentos.btnEditarClick(Sender: TObject);
begin
  if DM.sqlPagamentos.IsEmpty then begin
    ShowMessage('A tabela está vazia!');
  end else begin
    DM.sqlPagamentos.Close;
    DM.sqlPagamentos.Open();
    gridPagamentos.Options := [dgEditing,dgTitles,dgColumnResize,dgColLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
    DM.sqlClientes.Edit;
    panel6.visible := True;
    panel1.Visible := True;
    panel8.visible := False;
    TDBGridPadrao(gridPagamentos).DefaultRowHeight := 30;
    TDBGridPadrao(gridPagamentos).ClientHeight := (30 * TDBGridPadrao(gridPagamentos).RowCount + 30);
  end;

end;

procedure TformPagamentos.btnEditarMouseEnter(Sender: TObject);
begin
AoEntrar(panel8,panel9)
end;

procedure TformPagamentos.btnEditarMouseLeave(Sender: TObject);
begin
AoSair(panel8,panel9)
end;

procedure TformPagamentos.btnExcluirPagamentoClick(Sender: TObject);
begin
  if DM.sqlPagamentos.IsEmpty then begin
    ShowMessage('A tabela já está vazia!');
  end else
  if Application.MessageBox('Deseja realmente Excluir esse Pagamento?','Atenção',MB_ICONEXCLAMATION+MB_OKCANCEL) = mrOk then begin
    DM.sqlPagamentos.Delete;
  end;
end;

procedure TformPagamentos.btnExcluirPagamentoMouseEnter(Sender: TObject);
begin
AoEntrarVermelho(panel2,panel3)
end;

procedure TformPagamentos.btnExcluirPagamentoMouseLeave(Sender: TObject);
begin
AoSairVermelho(panel2,panel3)
end;

procedure TformPagamentos.btnReceberPagamentoClick(Sender: TObject);
begin
    if DM.sqlClientes.IsEmpty = True then begin
      ShowMessage('Não existem clientes cadastrados!')
    end else begin
    formReceberPagamento:= TformReceberPagamento.Create(self);
    formReceberPagamento.Parent := formHome.pnlForms;
    formReceberPagamento.Align := alClient;
    formReceberPagamento.BorderStyle := bsNone;
    formReceberPagamento.Show;
    end;
end;

procedure TformPagamentos.btnReceberPagamentoMouseEnter(Sender: TObject);
begin
AoEntrarVerde(panel4,panel5)
end;

procedure TformPagamentos.btnReceberPagamentoMouseLeave(Sender: TObject);
begin
AoSairVerde(panel4,panel5)
end;

procedure TformPagamentos.btnSalvarClick(Sender: TObject);
begin
  if DM.sqlPagamentos.State in [dsBrowse] then begin
    ShowMessage('Edite algo primeiro para poder salvar!');
  end else begin
    panel6.visible := False;
    panel8.visible := True;
    try
      DM.sqlPagamentos.Post;
      DM.sqlPagamentos.Refresh;
      formPagamentos.Close;
      formPagamentos:= TformPagamentos.Create(self);
      formPagamentos.Parent := formHome.pnlForms;
      formPagamentos.Align := alClient;
      formPagamentos.BorderStyle := bsNone;
      formPagamentos.Show;
    except
      on E:Exception do
      ShowMessage('Preencha os campos que deseja editar corretamente!')
    end;

  end;

end;

procedure TformPagamentos.btnSalvarMouseEnter(Sender: TObject);
begin
AoEntrar(panel6,panel7)
end;

procedure TformPagamentos.btnSalvarMouseLeave(Sender: TObject);
begin
AoSair(panel6,panel7)
end;

procedure TformPagamentos.btnVoltarClick(Sender: TObject);
begin
formPagamentos.Close;
end;

procedure TformPagamentos.btnVoltarMouseEnter(Sender: TObject);
begin
AoEntrar(panel11,panel12)
end;

procedure TformPagamentos.btnVoltarMouseLeave(Sender: TObject);
begin
AoSair(panel11,panel12)
end;

procedure TformPagamentos.FormCreate(Sender: TObject);
var
    I: Integer;
begin
    For I := 0 to gridPagamentos.FieldCount - 1 do
        gridPagamentos.Fields[i].Tag := 30;
    AutoSizeDBGrid(gridPagamentos);
end;

procedure TformPagamentos.FormResize(Sender: TObject);
begin
  AutoSizeDBGrid(gridPagamentos);
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridPagamentos).DefaultRowHeight := 30;
  TDBGridPadrao(gridPagamentos).ClientHeight := (30 * TDBGridPadrao(gridPagamentos).RowCount + 30);
end;

procedure TformPagamentos.FormShow(Sender: TObject);
begin
MakeRounded(panel4);
MakeRounded(panel2);
MakeRounded(panel8);
MakeRounded(panel6);
MakeRounded(panel1);
MakeRounded(panel12);
  // aumentando a altura das linhas da dbgrid
  TDBGridPadrao(gridPagamentos).DefaultRowHeight := 30;
  TDBGridPadrao(gridPagamentos).ClientHeight := (30 * TDBGridPadrao(gridPagamentos).RowCount + 30);

end;

procedure TformPagamentos.gridPagamentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  //zebrando a dbgrid
  if Odd(gridPagamentos.DataSource.DataSet.RecNo) then begin
    gridPagamentos.Canvas.Brush.Color := $00E9E9E9;
  end else
    gridPagamentos.Canvas.Brush.Color := clWhite;

  //mudando a cor da seleção
  if (gdSelected in State) then
    begin
      gridPagamentos.Canvas.Brush.Color := $005BA6E5;
      gridPagamentos.Canvas.Font.Color := clWhite;
      gridPagamentos.Canvas.Font.Style := [TFontStyle.fsBold];
    end;

    gridPagamentos.Canvas.FillRect(rect);
    gridPagamentos.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  //mudando a posição e alinhamento vertical do texto de cadalinha
  gridPagamentos.Canvas.TextRect(Rect, rect.Left + 8, rect.Top + 8, Column.Field.DisplayText);
end;

end.
