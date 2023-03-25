object DM: TDM
  Height = 480
  Width = 640
  object conexao: TFDConnection
    Params.Strings = (
      'Database=academia'
      'User_Name=admin'
      'Password=joaobr12'
      'Server=academia.cfydoor5czhr.us-east-1.rds.amazonaws.com'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object sqlLogin: TFDQuery
    Connection = conexao
    Left = 40
    Top = 96
  end
  object sqlClientes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 48
    Top = 256
    object sqlClientesid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sqlClientesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object sqlClientestelefone: TStringField
      FieldName = 'telefone'
      EditMask = '(##) # ####-####;1;_'
      Size = 16
    end
    object sqlClientesdataPag: TDateField
      FieldName = 'dataPag'
      EditMask = '##/##/####;1;_'
    end
    object sqlClientesrua: TStringField
      FieldName = 'rua'
      Size = 50
    end
    object sqlClientesbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object sqlClientesnum: TStringField
      FieldName = 'num'
      Size = 10
    end
    object sqlClientesemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object sqlClientesidade: TIntegerField
      FieldName = 'idade'
      MaxValue = 100
      MinValue = 1
    end
    object sqlClientesprob_saude: TStringField
      FieldName = 'prob_saude'
      Size = 100
    end
    object sqlClientestem_prob: TBooleanField
      FieldName = 'tem_prob'
    end
    object sqlClientescomec_agr: TBooleanField
      FieldName = 'comec_agr'
    end
    object sqlClientesacomp: TBooleanField
      FieldName = 'acomp'
    end
    object sqlClientesid_personal: TIntegerField
      FieldName = 'id_personal'
    end
    object sqlClientespersonalCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'personalCliente'
      LookupDataSet = sqlPersonais
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_personal'
      Size = 50
      Lookup = True
    end
  end
  object dsClientes: TDataSource
    DataSet = sqlClientes
    Left = 48
    Top = 312
  end
  object sqlPersonais: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM personais')
    Left = 120
    Top = 264
    object sqlPersonaisid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlPersonaisnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object sqlPersonaisidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idade'
      Origin = 'idade'
      MaxValue = 60
      MinValue = 18
    end
    object sqlPersonaistelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(##) # ####-####;1;_'
      Size = 16
    end
    object sqlPersonaisimagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'imagem'
      Origin = 'imagem'
      Size = 4000
    end
  end
  object dsPersonais: TDataSource
    DataSet = sqlPersonais
    OnDataChange = dsPersonaisDataChange
    Left = 120
    Top = 320
  end
  object sqlQtdAlunos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM clientes WHERE id_personal = :pPersonal')
    Left = 184
    Top = 264
    ParamData = <
      item
        Name = 'pPersonal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sqlPagamentos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM pagamentos')
    Left = 264
    Top = 264
    object sqlPagamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlPagamentosid_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object sqlPagamentosvalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object sqlPagamentosdata_pag: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pag'
      Origin = 'data_pag'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object sqlPagamentostipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 30
    end
    object sqlPagamentosNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = sqlClientes
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_cliente'
      Required = True
      Size = 50
      Lookup = True
    end
  end
  object dsPagamentos: TDataSource
    DataSet = sqlPagamentos
    OnDataChange = dsPersonaisDataChange
    Left = 264
    Top = 320
  end
  object sqlPagFunc: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM pagamentos_func')
    Left = 352
    Top = 264
    object sqlPagFuncid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlPagFuncid_func: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_func'
      Origin = 'id_func'
    end
    object sqlPagFuncdata_pag: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pag'
      Origin = 'data_pag'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object sqlPagFuncvalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object sqlPagFunctipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 30
    end
    object sqlPagFuncNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = sqlPersonais
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_func'
      Required = True
      Size = 50
      Lookup = True
    end
  end
  object dsPagFunc: TDataSource
    DataSet = sqlPagFunc
    OnDataChange = dsPersonaisDataChange
    Left = 352
    Top = 320
  end
end
