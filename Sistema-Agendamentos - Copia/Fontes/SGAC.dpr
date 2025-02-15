program SGAC;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_dados in 'unit_dados.pas' {DataModule1: TDataModule},
  unit_login in 'unit_login.pas' {form_login},
  unit_clientes in 'unit_clientes.pas' {form_clientes},
  unit_mensagens in 'unit_mensagens.pas' {form_mensagens},
  unit_funcoes in 'unit_funcoes.pas',
  classe_conexao in 'classe_conexao.pas',
  System.SysUtils,
  unit_configurar_servidor in 'unit_configurar_servidor.pas' {form_configurar_servidor},
  classe.profissionais in 'classe.profissionais.pas',
  unit_cliente_consulta in 'unit_cliente_consulta.pas' {form_cliente_consulta},
  unit_agendamento in 'unit_agendamento.pas' {form_agendamento},
  unit_agendamento_consulta in 'unit_agendamento_consulta.pas' {form_agendamento_consulta},
  classe.cliente in 'classe.cliente.pas',
  classe.agendamento in 'classe.agendamento.pas',
  unit_profissionais in 'unit_profissionais.pas' {form_profissionais},
  unit_agenda in 'unit_agenda.pas' {form_agenda},
  unit_usuarios_cadastro in 'unit_usuarios_cadastro.pas' {form_usuarios_cadastro},
  unit_usuarios_consulta in 'unit_usuarios_consulta.pas' {form_usuario_consulta},
  classe.usuarios in 'classe.usuarios.pas',
  unit_relatorios in 'unit_relatorios.pas' {form_relatorios},
  unit_relatorio_agendamento_periodo in 'unit_relatorio_agendamento_periodo.pas' {form_relatorio_agendamento_periodo},
  classe.relatorios in 'classe.relatorios.pas',
  unit_relatorio_agendamento_cliente in 'unit_relatorio_agendamento_cliente.pas' {form_relatorio_agendamento_cliente},
  unit_relatorio_agendamento_profissional in 'unit_relatorio_agendamento_profissional.pas' {form_relatorio_agendamento_profissional},
  unit_lojas in 'unit_lojas.pas' {form_lojas};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TDataModule1, DataModule1);

  if DataModule1.Conexao.fnc_conectar_banco_dados then
  begin
    form_login := Tform_login.Create(nil);
    form_login.ShowModal;

    Application.CreateForm(Tform_principal, form_principal);

    form_login.Hide;
    form_login.Free;

    Application.Run;
  end else
  begin
    fnc_criar_mensagem('CONEX�O AO BANCO DE DADOS',
                       'Erro ao conectar ao Banco de Dados',
                       'N�o foi poss�vel conectar ao Banco de Dados, poss�vel causa: ' +
                        DataModule1.Conexao.MsgErro,
                        ExtractFilePath(Application.ExeName) + 'imagens\erro.png','OK');

    Application.CreateForm(Tform_configurar_servidor, form_configurar_servidor);

    form_configurar_servidor.ShowModal;

  end;

end.
