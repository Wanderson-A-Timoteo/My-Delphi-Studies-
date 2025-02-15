unit classe.cliente;

interface

uses FireDAC.Comp.Client, classe_conexao, System.SysUtils, Vcl.Forms, Data.DB;

type
  TCliente = class

    private
      FConecao       : TFDConnection;

      Fid_cliente    : Integer;
      Fdt_nascimento : TDateTime;

      Fds_cliente,
      Fnr_cpf,
      Fnr_rg,
      Fnr_cep,
      Fds_endereco,
      Fnr_numero,
      Fds_complemento,
      Fds_bairro,
      Fds_cidade,
      Fds_uf,
      Fnr_telefone,
      Fnr_telefone2,
      Fds_obs        : String;

    public
      property Conexao        : TFDConnection read FConecao        write FConecao;
      property id_cliente     : Integer       read Fid_cliente     write Fid_cliente;
      property dt_nascimento  : TDateTime     read Fdt_nascimento  write Fdt_nascimento;
      property ds_cliente     : String        read Fds_cliente     write Fds_cliente;
      property nr_cpf         : String        read Fnr_cpf         write Fnr_cpf;
      property nr_rg          : String        read Fnr_rg          write Fnr_rg;
      property nr_cep         : String        read Fnr_cep         write Fnr_cep;
      property ds_endereco    : String        read Fds_endereco    write Fds_endereco;
      property nr_numero      : String        read Fnr_numero      write Fnr_numero;
      property ds_complemento : String        read Fds_complemento write Fds_complemento;
      property ds_bairro      : String        read Fds_bairro      write Fds_bairro;
      property ds_cidade      : String        read Fds_cidade      write Fds_cidade;
      property ds_uf          : String        read Fds_uf          write Fds_uf;
      property nr_telefone    : String        read Fnr_telefone    write Fnr_telefone;
      property nr_telefone2   : String        read Fnr_telefone2   write Fnr_telefone2;
      property ds_obs         : String        read Fds_obs         write Fds_obs;

      constructor Create (Conexao : TFDConnection);
      destructor Destroy; Override;

      function fnc_inserir_alterar (TipoOperacao: String; out Erro : String) : boolean;
      function fnc_consulta (Texto : String) : TFDQuery;

      procedure prc_deleta (id_chave : Integer);
  end;

var
  QryConsulta : TFDQuery;

implementation

{ TCliente }

uses unit_funcoes, unit_dados;

constructor TCliente.Create(Conexao: TFDConnection);
begin
  FConecao               := Conexao;
  QryConsulta            := TFDQuery.Create(nil);
  QryConsulta.Connection := FConecao;
end;

destructor TCliente.Destroy;
begin
  QryConsulta.Free;
  inherited;
end;

function TCliente.fnc_consulta(Texto: String): TFDQuery;
begin
  try
    FConecao.Connected := True;

    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add('SELECT id_cliente,             ');
    QryConsulta.SQL.Add('       ds_cliente,             ');
    QryConsulta.SQL.Add('       dt_nascimento,          ');
    QryConsulta.SQL.Add('       nr_cpf,                 ');
    QryConsulta.SQL.Add('       nr_rg,                  ');
    QryConsulta.SQL.Add('       nr_cep,                 ');
    QryConsulta.SQL.Add('       ds_endereco,            ');
    QryConsulta.SQL.Add('       nr_numero,              ');
    QryConsulta.SQL.Add('       ds_complemento,         ');
    QryConsulta.SQL.Add('       ds_bairro,              ');
    QryConsulta.SQL.Add('       ds_cidade,              ');
    QryConsulta.SQL.Add('       ds_uf,                  ');
    QryConsulta.SQL.Add('       nr_telefone,            ');
    QryConsulta.SQL.Add('       nr_telefone2,           ');
    QryConsulta.SQL.Add('       ds_obs                  ');
    QryConsulta.SQL.Add('FROM clientes                  ');
    QryConsulta.SQL.Add('WHERE (ds_cliente LIKE :p_texto');
    QryConsulta.SQL.Add('Or ds_endereco LIKE :p_texto)  ');

    QryConsulta.ParamByName('p_texto').AsString := '%'+Texto+'%';
    QryConsulta.Open;
    TIntegerField(QryConsulta.FieldByName('id_cliente')).DisplayFormat := '0000';  // use Data.DB
  finally
    Result := QryConsulta;
  end;
end;

function TCliente.fnc_inserir_alterar(TipoOperacao: String; out Erro: String): boolean;
var
  QryInserir : TFDQuery;
begin
  try
    try
      FConecao.Connected    := False;
      FConecao.Connected    := True;

      QryInserir            := TFDQuery.Create(nil);
      QryInserir.Connection := FConecao;

      QryInserir.Close;
      QryInserir.SQL.Clear;

      if TipoOperacao = 'INSERIR' then
      begin
        QryInserir.SQL.Add('INSERT INTO clientes           ');
        QryInserir.SQL.Add('      ( id_cliente,            ');
        QryInserir.SQL.Add('       ds_cliente,             ');
        QryInserir.SQL.Add('       dt_nascimento,          ');
        QryInserir.SQL.Add('       nr_cpf,                 ');
        QryInserir.SQL.Add('       nr_rg,                  ');
        QryInserir.SQL.Add('       nr_cep,                 ');
        QryInserir.SQL.Add('       ds_endereco,            ');
        QryInserir.SQL.Add('       nr_numero,              ');
        QryInserir.SQL.Add('       ds_complemento,         ');
        QryInserir.SQL.Add('       ds_bairro,              ');
        QryInserir.SQL.Add('       ds_cidade,              ');
        QryInserir.SQL.Add('       ds_uf,                  ');
        QryInserir.SQL.Add('       nr_telefone,            ');
        QryInserir.SQL.Add('       nr_telefone2,           ');
        QryInserir.SQL.Add('       ds_obs  )               ');
        QryInserir.SQL.Add('VALUES (                       ');
        QryInserir.SQL.Add('      :id_cliente,             ');
        QryInserir.SQL.Add('      :ds_cliente,             ');
        QryInserir.SQL.Add('      :dt_nascimento,          ');
        QryInserir.SQL.Add('      :nr_cpf,                 ');
        QryInserir.SQL.Add('      :nr_rg,                  ');
        QryInserir.SQL.Add('      :nr_cep,                 ');
        QryInserir.SQL.Add('      :ds_endereco,            ');
        QryInserir.SQL.Add('      :nr_numero,              ');
        QryInserir.SQL.Add('      :ds_complemento,         ');
        QryInserir.SQL.Add('      :ds_bairro,              ');
        QryInserir.SQL.Add('      :ds_cidade,              ');
        QryInserir.SQL.Add('      :ds_uf,                  ');
        QryInserir.SQL.Add('      :nr_telefone,            ');
        QryInserir.SQL.Add('      :nr_telefone2,           ');
        QryInserir.SQL.Add('      :ds_obs  )               ');

        QryInserir.ParamByName('id_cliente').AsInteger := fnc_proximo_codigo('clientes', 'id_cliente');
      end else
      begin
        QryInserir.SQL.Add('UPDATE clientes SET               ');
        QryInserir.SQL.Add('ds_cliente     = :ds_cliente,     ');
        QryInserir.SQL.Add('dt_nascimento  = :dt_nascimento,  ');
        QryInserir.SQL.Add('nr_cpf         = :nr_cpf,         ');
        QryInserir.SQL.Add('nr_rg          = :nr_rg,          ');
        QryInserir.SQL.Add('nr_cep         = :nr_cep,         ');
        QryInserir.SQL.Add('ds_endereco    = :ds_endereco,    ');
        QryInserir.SQL.Add('nr_numero      = :nr_numero,      ');
        QryInserir.SQL.Add('ds_complemento = :ds_complemento, ');
        QryInserir.SQL.Add('ds_bairro      = :ds_bairro,      ');
        QryInserir.SQL.Add('ds_cidade      = :ds_cidade,      ');
        QryInserir.SQL.Add('ds_uf          = :ds_uf,          ');
        QryInserir.SQL.Add('nr_telefone    = :nr_telefone,    ');
        QryInserir.SQL.Add('nr_telefone2   = :nr_telefone2,   ');
        QryInserir.SQL.Add('ds_obs         = :ds_obs          ');
        QryInserir.SQL.Add('WHERE id_cliente = :p_id_cliente  ');

        QryInserir.ParamByName('p_id_cliente').AsInteger := Fid_cliente;
      end;
      QryInserir.ParamByName('ds_cliente').AsString      := Fds_cliente;
      QryInserir.ParamByName('dt_nascimento').AsDate     := Fdt_nascimento;
      QryInserir.ParamByName('nr_cpf').AsString          := Fnr_cpf;
      QryInserir.ParamByName('nr_rg').AsString           := Fnr_rg;
      QryInserir.ParamByName('nr_cep').AsString          := Fnr_cep;
      QryInserir.ParamByName('ds_endereco').AsString     := Fds_endereco;
      QryInserir.ParamByName('nr_numero').AsString       := Fnr_numero;
      QryInserir.ParamByName('ds_complemento').AsString  := Fds_complemento;
      QryInserir.ParamByName('ds_bairro').AsString       := Fds_bairro;
      QryInserir.ParamByName('ds_cidade').AsString       := Fds_cidade;
      QryInserir.ParamByName('ds_uf').AsString           := Fds_uf;
      QryInserir.ParamByName('nr_telefone').AsString     := Fnr_telefone;
      QryInserir.ParamByName('nr_telefone2').AsString    := Fnr_telefone2;
      QryInserir.ParamByName('ds_obs').AsString          := Fds_obs;

      QryInserir.ExecSQL;

      Result := true;
    except
      on E: Exception do
      begin
        Erro   := E.Message;
        Result := False;
      end;
    end;
  finally
    QryInserir.Free;
  end;

end;

procedure TCliente.prc_deleta(id_chave: Integer);
begin
  if fnc_criar_mensagem('CONFIRMAÇÃO', 'Excluir Dados',
                        'Tem certeza que deseja EXCLUIR os dados deste Cliente?',
                        ExtractFilePath (Application.ExeName)+ 'imagens\aviso.png',
                        'CONFIRMAR') then
  begin
    FConecao.Connected := False;
    FConecao.Connected := True;

    FConecao.ExecSQL('DELETE FROM clientes WHERE id_cliente = :id_chave', [id_chave]);

    fnc_consulta('');
  end;
end;

end.
