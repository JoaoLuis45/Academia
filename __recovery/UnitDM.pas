unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    sqlLogin: TFDQuery;
    sqlClientes: TFDQuery;
    dsClientes: TDataSource;
    sqlPersonais: TFDQuery;
    dsPersonais: TDataSource;
    sqlClientesid: TFDAutoIncField;
    sqlClientesnome: TStringField;
    sqlClientestelefone: TStringField;
    sqlClientesdataPag: TDateField;
    sqlClientesrua: TStringField;
    sqlClientesbairro: TStringField;
    sqlClientesnum: TIntegerField;
    sqlClientesemail: TStringField;
    sqlClientesidade: TIntegerField;
    sqlClientesprob_saude: TStringField;
    sqlClientestem_prob: TBooleanField;
    sqlClientescomec_agr: TBooleanField;
    sqlClientesacomp: TBooleanField;
    sqlClientesid_personal: TIntegerField;
    sqlPersonaisid: TFDAutoIncField;
    sqlPersonaisnome: TStringField;
    sqlPersonaisidade: TIntegerField;
    sqlPersonaistelefone: TStringField;
    sqlPersonaisimagem: TStringField;
    sqlQtdAlunos: TFDQuery;
    procedure dsPersonaisDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitLogin, uFuncoes, unitAddClients, unitaddPersonais, unitClientes,
  unitHome, unitPersonais;

{$R *.dfm}

procedure TDM.dsPersonaisDataChange(Sender: TObject; Field: TField);
begin
  if sqlPersonais.State in [dsBrowse] then begin
      formPersonais.imgPersonal.Picture.LoadFromFile(sqlPersonais.FieldByName('imagem').Value);
      formPersonais.lblNome.Caption := sqlPersonais.FieldByName('nome').Value;
      formPersonais.lblIdade.Caption := sqlPersonais.FieldByName('idade').Value;
      formPersonais.lblTel.Caption := sqlPersonais.FieldByName('telefone').Value;
      sqlQtdAlunos.SQL.Clear;
      sqlQtdAlunos.SQL.Text := 'SELECT * FROM clientes WHERE id_personal = :pPersonal';
      sqlQtdAlunos.ParamByName('pPersonal').Value := sqlPersonais.FieldByName('id').Value;
      sqlQtdAlunos.Open();
      formPersonais.lblQtdAlunos.Caption := IntToStr(sqlQtdAlunos.RecordCount);
  end;
end;

end.
