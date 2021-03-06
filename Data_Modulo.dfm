object Data_Module: TData_Module
  OldCreateOrder = False
  Height = 365
  Width = 512
  object Conexao: TFDConnection
    ConnectionName = 'conexao'
    Params.Strings = (
      'Database=marmoraria'
      'User_Name=root'
      'Password=Negrativo322+'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object Tb_Cliente: TFDTable
    IndexFieldNames = 'nnumeclie'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'marmoraria.tabcliente'
    TableName = 'marmoraria.tabcliente'
    Left = 40
    Top = 184
    object Tb_Clientennumeclie: TIntegerField
      FieldName = 'nnumeclie'
      Origin = 'nnumeclie'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tb_Clientecnomeclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnomeclie'
      Origin = 'cnomeclie'
      Size = 50
    end
    object Tb_Clientecmailclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cmailclie'
      Origin = 'cmailclie'
      Size = 30
    end
    object Tb_Clientec_cpfclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c_cpfclie'
      Origin = 'c_cpfclie'
      Size = 14
    end
    object Tb_Clientecendeclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cendeclie'
      Origin = 'cendeclie'
      Size = 100
    end
    object Tb_Clientednascclie: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dnascclie'
      Origin = 'dnascclie'
    end
    object Tb_Clientecsexoclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'csexoclie'
      Origin = 'csexoclie'
      Size = 1
    end
    object Tb_Clientecfoneclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfoneclie'
      Origin = 'cfoneclie'
      Size = 11
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Delphi\Marmoraria\libmysql.dll'
    Left = 152
    Top = 24
  end
  object Q_Cliente: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select *'
      '  from tabcliente')
    Left = 40
    Top = 296
    object Q_Clientennumeclie: TIntegerField
      FieldName = 'nnumeclie'
      Origin = 'nnumeclie'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_Clientecnomeclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnomeclie'
      Origin = 'cnomeclie'
      Size = 50
    end
    object Q_Clientecmailclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cmailclie'
      Origin = 'cmailclie'
      Size = 30
    end
    object Q_Clientec_cpfclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'c_cpfclie'
      Origin = 'c_cpfclie'
      Size = 14
    end
    object Q_Clientecendeclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cendeclie'
      Origin = 'cendeclie'
      Size = 100
    end
    object Q_Clientednascclie: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dnascclie'
      Origin = 'dnascclie'
    end
    object Q_Clientecsexoclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'csexoclie'
      Origin = 'csexoclie'
      Size = 1
    end
    object Q_Clientecfoneclie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfoneclie'
      Origin = 'cfoneclie'
      Size = 11
    end
  end
end
