unit classe.relatorios;

interface

uses
  FireDAC.Comp.Client, classe_conexao, System.SysUtils, Vcl.Forms,
  Datasnap.DBClient;

type
  TRelatorios = class

  private
    FConexao: TFDConnection;
    FQry_agendamento_periodo      : TFDQuery;
    FQry_agendamento_cliente      : TFDQuery;
    FQry_agendamento_profissional : TFDQuery;

  public
    property Conexao                      : TFDConnection read FConexao                      write FConexao;
    property Qry_agendamento_periodo      : TFDQuery      read FQry_agendamento_periodo      write FQry_agendamento_periodo;
    property Qry_agendamento_cliente      : TFDQuery      read FQry_agendamento_cliente      write FQry_agendamento_cliente;
    property Qry_agendamento_profissional : TFDQuery      read FQry_agendamento_profissional write FQry_agendamento_profissional;

    constructor Create (Conexao : TFDConnection);
    destructor Destroy; Override;

    procedure prc_agendamento_periodo(Inicio, Fim : TDate);
    procedure prc_agendamento_cliente(Inicio, Fim : TDate; codigo_cliente : Integer);
    procedure prc_agendamento_profissional(Inicio, Fim : TDate; codigo_profissional : Integer);
end;


implementation

{ TRelatorios }

constructor TRelatorios.Create(Conexao: TFDConnection);
begin
  FConexao                                 := Conexao;
  FQry_agendamento_periodo                 := TFDQuery.Create(nil);
  FQry_agendamento_periodo.Connection      := Conexao;

  FQry_agendamento_cliente                 := TFDQuery.Create(nil);
  FQry_agendamento_cliente.Connection      := Conexao;

  FQry_agendamento_profissional            := TFDQuery.Create(nil);
  FQry_agendamento_profissional.Connection := Conexao;
end;

destructor TRelatorios.Destroy;
begin
  FQry_agendamento_periodo.Free;
  FQry_agendamento_cliente.Free;
  FQry_agendamento_profissional.Free;
  inherited;
end;

procedure TRelatorios.prc_agendamento_cliente(Inicio, Fim: TDate; codigo_cliente : Integer);
begin
  with FQry_agendamento_cliente do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   agendamentos.id_agendamento,                                    ');
    SQL.Add('         agendamentos.cli_id_cliente,                                    ');
    SQL.Add('         agendamentos.pro_id_profissional,                               ');
    SQL.Add('         profissionais.ds_profissional,                                  ');
    SQL.Add('         agendamentos.usu_id_usuarios,                                   ');
    SQL.Add('         usuarios.ds_usuario,                                            ');
    SQL.Add('         agendamentos.dt_data,                                           ');
    SQL.Add('         agendamentos.hr_hora                                            ');
    SQL.Add('FROM     agendamentos agendamentos                                       ');
    SQL.Add('INNER JOIN profissionais profissionais                                   ');
    SQL.Add('ON       agendamentos.pro_id_profissional = profissionais.id_profissional');
    SQL.Add('INNER JOIN usuarios usuarios                                             ');
    SQL.Add('ON       agendamentos.usu_id_usuarios     = usuarios.id_usuarios         ');
    SQL.Add('WHERE    agendamentos.dt_data BETWEEN :inicio AND :fim                   ');
    SQL.Add('AND      agendamentos.cli_id_cliente      = :p_codigo_cliente            ');
    SQL.Add('ORDER BY agendamentos.dt_data, agendamentos.hr_hora                      ');
    ParamByName('inicio').AsDate              := Inicio;
    ParamByName('fim').AsDate                 := Fim;
    ParamByName('p_codigo_cliente').AsInteger := codigo_cliente;
    Open;
  end;
end;

procedure TRelatorios.prc_agendamento_periodo(Inicio, Fim: TDate);
begin
  FQry_agendamento_periodo.Close;
  FQry_agendamento_periodo.SQL.Clear;
  FQry_agendamento_periodo.SQL.Add('SELECT   agendamentos.id_agendamento,                                    ');
  FQry_agendamento_periodo.SQL.Add('         agendamentos.cli_id_cliente,                                    ');
  FQry_agendamento_periodo.SQL.Add('         clientes.ds_cliente,                                            ');
  FQry_agendamento_periodo.SQL.Add('         agendamentos.pro_id_profissional,                               ');
  FQry_agendamento_periodo.SQL.Add('         profissionais.ds_profissional,                                  ');
  FQry_agendamento_periodo.SQL.Add('         agendamentos.usu_id_usuarios,                                   ');
  FQry_agendamento_periodo.SQL.Add('         usuarios.ds_usuario,                                            ');
  FQry_agendamento_periodo.SQL.Add('         agendamentos.dt_data,                                           ');
  FQry_agendamento_periodo.SQL.Add('         agendamentos.hr_hora                                            ');
  FQry_agendamento_periodo.SQL.Add('FROM     agendamentos agendamentos                                       ');
  FQry_agendamento_periodo.SQL.Add('INNER JOIN clientes clientes                                             ');
  FQry_agendamento_periodo.SQL.Add('ON       agendamentos.cli_id_cliente      = clientes.id_cliente          ');
  FQry_agendamento_periodo.SQL.Add('INNER JOIN profissionais profissionais                                   ');
  FQry_agendamento_periodo.SQL.Add('ON       agendamentos.pro_id_profissional = profissionais.id_profissional');
  FQry_agendamento_periodo.SQL.Add('INNER JOIN usuarios usuarios                                             ');
  FQry_agendamento_periodo.SQL.Add('ON       agendamentos.usu_id_usuarios     = usuarios.id_usuarios         ');
  FQry_agendamento_periodo.SQL.Add('WHERE    agendamentos.dt_data BETWEEN :inicio AND :fim                   ');
  FQry_agendamento_periodo.SQL.Add('ORDER BY agendamentos.dt_data, agendamentos.hr_hora                      ');
  FQry_agendamento_periodo.ParamByName('inicio').AsDate := Inicio;
  FQry_agendamento_periodo.ParamByName('fim').AsDate    := Fim;
  FQry_agendamento_periodo.Open;
end;

procedure TRelatorios.prc_agendamento_profissional(Inicio, Fim: TDate; codigo_profissional: Integer);
begin
  with FQry_agendamento_profissional do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT   agendamentos.id_agendamento,                                    ');
    SQL.Add('         agendamentos.cli_id_cliente,                                    ');
    SQL.Add('         clientes.ds_cliente,                                            ');
    SQL.Add('         agendamentos.pro_id_profissional,                               ');
    SQL.Add('         profissionais.ds_profissional,                                  ');
    SQL.Add('         agendamentos.usu_id_usuarios,                                   ');
    SQL.Add('         usuarios.ds_usuario,                                            ');
    SQL.Add('         agendamentos.dt_data,                                           ');
    SQL.Add('         agendamentos.hr_hora                                            ');
    SQL.Add('FROM     agendamentos agendamentos                                       ');
    SQL.Add('INNER JOIN clientes clientes                                             ');
    SQL.Add('ON       agendamentos.cli_id_cliente      = clientes.id_cliente          ');
    SQL.Add('INNER JOIN profissionais profissionais                                   ');
    SQL.Add('ON       agendamentos.pro_id_profissional = profissionais.id_profissional');
    SQL.Add('INNER JOIN usuarios usuarios                                             ');
    SQL.Add('ON       agendamentos.usu_id_usuarios     = usuarios.id_usuarios         ');
    SQL.Add('WHERE    agendamentos.dt_data BETWEEN :inicio AND :fim                   ');
    SQL.Add('AND      agendamentos.pro_id_profissional = :p_codigo_profissional       ');
    SQL.Add('ORDER BY agendamentos.dt_data, agendamentos.hr_hora                      ');
    ParamByName('inicio').AsDate              := Inicio;
    ParamByName('fim').AsDate                 := Fim;
    ParamByName('p_codigo_profissional').AsInteger := codigo_profissional;
    Open;
  end;
end;

end.
