USE [rc_db]
GO
/****** Object:  Table [dbo].[CARROS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARROS](
	[CODIGO] [int] NOT NULL,
	[CODIMONTADORA] [int] NULL,
	[CODITIPO] [int] NULL,
	[DESCRICAO] [varchar](25) NULL,
 CONSTRAINT [PK_CARROS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CIDADES]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CIDADES](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](60) NULL,
	[UF] [varchar](2) NULL,
	[CEP] [varchar](8) NULL,
	[CODIIBGE] [bigint] NULL,
	[ATENDE] [char](1) NULL,
	[CODIUF] [int] NULL,
 CONSTRAINT [PK_CIDADES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[CODIGO] [int] NOT NULL,
	[CODIEMP] [int] NOT NULL,
	[PESSOA] [char](1) NULL,
	[NOME] [varchar](100) NULL,
	[RAZSOC] [varchar](100) NULL,
	[DTCADASTRO] [date] NULL,
	[DTANIVERSARIO] [date] NULL,
	[CEP] [varchar](20) NULL,
	[TIPOENDERECO] [varchar](30) NULL,
	[ENDERECO] [varchar](100) NULL,
	[NUMERO] [varchar](20) NULL,
	[BAIRRO] [varchar](60) NULL,
	[CIDADE] [varchar](60) NULL,
	[UF] [varchar](3) NULL,
	[CNPJ_CPF] [varchar](18) NULL,
	[CGF_RG] [varchar](20) NULL,
	[DDD1] [varchar](3) NULL,
	[FONE1] [varchar](30) NULL,
	[DESCRIFONE1] [varchar](100) NULL,
	[DDD2] [varchar](3) NULL,
	[FONE2] [varchar](30) NULL,
	[DESCRIFONE2] [varchar](100) NULL,
	[DDD3] [varchar](3) NULL,
	[FONE3] [varchar](30) NULL,
	[DESCRIFONE3] [varchar](100) NULL,
	[DDD4] [varchar](3) NULL,
	[FONE4] [varchar](30) NULL,
	[DESCRIFONE4] [varchar](100) NULL,
	[EMAIL] [varchar](60) NULL,
	[SITE] [varchar](60) NULL,
	[CODICIDADE] [int] NULL,
	[CODIIBGE] [bigint] NULL,
	[CODIBAIRRO] [int] NULL,
	[CODITIPOEND] [int] NULL,
	[CODIENDERECO] [int] NULL,
	[CODIUF] [int] NULL,
	[COMPLEMENTO] [varchar](100) NULL,
	[TIPO] [char](1) NULL,
	[CODICIDADEENTREGA] [int] NULL,
	[CODIBAIRROENTREGA] [int] NULL,
	[CODITIPOENDENTREGA] [int] NULL,
	[CODIENDERECOENTREGA] [int] NULL,
	[CODIUFENTREGA] [int] NULL,
	[CEPENTREGA] [varchar](20) NULL,
	[CEPCOBRANCA] [varchar](20) NULL,
	[CODICIDADECOBRANCA] [int] NULL,
	[CODIBAIRROCOBRANCA] [int] NULL,
	[CODITIPOENDCOBRANCA] [int] NULL,
	[CODIENDERECOCOBRANCA] [int] NULL,
	[CODIUFCOBRANCA] [int] NULL,
	[CIDADEENTREGA] [varchar](60) NULL,
	[BAIRROENTREGA] [varchar](60) NULL,
	[TIPOENDERECOENTREGA] [varchar](60) NULL,
	[ENDERECOENTREGA] [varchar](60) NULL,
	[CIDADECOBRANCA] [varchar](60) NULL,
	[BAIRROCOBRANCA] [varchar](60) NULL,
	[TIPOENDERECOCOBRANCA] [varchar](60) NULL,
	[ENDERECOCOBRANCA] [varchar](60) NULL,
	[NUMEROENTREGA] [varchar](20) NULL,
	[NUMEROCOBRANCA] [varchar](20) NULL,
	[COMPLEMENTOENTREGA] [varchar](100) NULL,
	[COMPLEMENTOCOBRANCA] [varchar](100) NULL,
	[UFENTREGA] [varchar](2) NULL,
	[UFCOBRANCA] [varchar](2) NULL,
	[CODICLIPAI] [int] NULL,
	[DTINI_CONTRATO] [date] NULL,
	[DTFIM_CONTRATO] [date] NULL,
	[DIA_COBRANCA] [int] NULL,
	[VALOR_CONTRATO] [numeric](17, 2) NULL,
	[BOLETOS] [char](1) NULL,
	[NFE] [char](1) NULL,
	[LICENCAS] [int] NULL,
	[TRAVADO] [char](1) NULL,
	[ATIVO] [char](1) NULL,
	[INADIMPLENTE] [char](1) NULL,
	[ESPECIAL] [char](1) NULL,
	[BLOQUEADO] [char](1) NULL,
	[CODISISTEMA] [int] NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES_REVISOES]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES_REVISOES](
	[CODICLI] [int] NOT NULL,
	[CODIVEICULO] [int] NOT NULL,
	[DATA] [date] NULL,
	[KM_REVISAO] [int] NOT NULL,
	[PLACA] [varchar](10) NULL,
	[TOTAL] [numeric](17, 2) NULL,
 CONSTRAINT [PK_CLIENTES_REVISOES] PRIMARY KEY CLUSTERED 
(
	[CODICLI] ASC,
	[CODIVEICULO] ASC,
	[KM_REVISAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES_VEICULOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES_VEICULOS](
	[CODIGO] [int] NOT NULL,
	[CODICLI] [int] NULL,
	[PLACA] [varchar](12) NULL,
	[CODICARRO] [int] NULL,
	[CODIEMP] [int] NULL,
 CONSTRAINT [PK_CLIENTES_VEICULOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRAS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRAS](
	[CODIGO] [int] NOT NULL,
	[CODIEMP] [int] NOT NULL,
	[DTCADASTRO] [date] NULL,
	[CODIFORN] [int] NULL,
	[TOTALGERAL] [numeric](17, 2) NULL,
 CONSTRAINT [PK_COMPRAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRAS_PRODUTOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRAS_PRODUTOS](
	[CODDETAIL] [int] NOT NULL,
	[CODICOMPRA] [int] NOT NULL,
	[CODIPROD] [int] NOT NULL,
	[CODIEMP] [int] NULL,
	[DATA] [date] NULL,
	[QTDE] [numeric](17, 2) NULL,
	[VALORUNIT] [numeric](19, 4) NULL,
	[TOTALPROD] [numeric](17, 2) NULL,
 CONSTRAINT [PK_COMPRAS_PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODDETAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPRESAS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESAS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](20) NULL,
	[CODIUF] [int] NULL,
	[CODICIDADE] [int] NULL,
	[UF] [varchar](2) NULL,
	[CIDADE] [varchar](30) NULL,
	[BAIRRO] [varchar](30) NULL,
	[ENDERECO] [varchar](60) NULL,
	[TIPOENDERECO] [varchar](30) NULL,
	[NOME] [varchar](60) NULL,
	[RAZSOC] [varchar](60) NULL,
	[CNPJ] [varchar](18) NULL,
	[CEP] [varchar](20) NULL,
	[NUMERO] [varchar](20) NULL,
	[FONE1] [varchar](30) NULL,
	[DESCRIFONE1] [varchar](20) NULL,
	[DDD1] [char](3) NULL,
	[EMAIL] [varchar](100) NULL,
	[SITE] [varchar](100) NULL,
	[COMPLEMENTO] [varchar](100) NULL,
 CONSTRAINT [PK_EMPRESAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FERIADOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FERIADOS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](50) NULL,
	[DATA] [date] NULL,
	[FACULTATIVO] [char](1) NULL,
	[MUNICIPAL] [int] NULL,
	[ESTADUAL] [int] NULL,
	[FEDERAL] [int] NULL,
	[TIPO] [char](1) NULL,
	[TIPO_DO_FERIADO] [char](1) NULL,
 CONSTRAINT [PK_FERIADOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORNECEDORES]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORNECEDORES](
	[CODIGO] [int] NOT NULL,
	[CODIEMP] [int] NOT NULL,
	[NOME] [varchar](60) NULL,
	[TIPO] [char](1) NULL,
	[ATIVO] [char](1) NULL,
 CONSTRAINT [PK_FORNECEDORES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONARIOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONARIOS](
	[CODIGO] [int] NOT NULL,
	[CODIEMP] [int] NOT NULL,
	[NOME] [varchar](60) NULL,
	[TIPO] [char](1) NULL,
	[ATIVO] [char](1) NULL,
	[VENDEDOR] [char](1) NULL,
	[CODIDEPARTAMENTO] [int] NULL,
 CONSTRAINT [PK_FUNCIONARIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRUPOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRUPOS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](30) NULL,
 CONSTRAINT [PK_GRUPOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MARCAS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARCAS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](30) NULL,
 CONSTRAINT [PK_MARCAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVCAIXA]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVCAIXA](
	[DATA] [datetime] NOT NULL,
	[SALDO_INI] [numeric](17, 2) NULL,
	[CAIXA_ID] [int] NULL,
 CONSTRAINT [PK_MOVCAIXA] PRIMARY KEY CLUSTERED 
(
	[DATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUTOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUTOS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](60) NULL,
	[CODIGRUPO] [int] NULL,
	[CODISUBGRUPO] [int] NULL,
	[CODIMARCA] [int] NULL,
	[VALOR_COMPRA] [numeric](17, 2) NULL,
	[VALOR_VENDA] [numeric](17, 2) NULL,
 CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECIBOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECIBOS](
	[CODIGO] [int] NOT NULL,
	[CODIEMP] [int] NULL,
	[DATA] [date] NULL,
	[VALOR] [numeric](17, 2) NULL,
	[RECEBI_DE] [varchar](100) NULL,
	[ENDERECO] [varchar](100) NULL,
	[CODICLI] [int] NULL,
	[CODIFORN] [int] NULL,
	[CODIFUNC] [int] NULL,
	[CODIPRESTSERV] [int] NULL,
	[TIPO] [int] NULL,
	[DESCRICAO] [varchar](100) NULL,
	[DESCRICAO2] [varchar](100) NULL,
	[DESCRICAO3] [varchar](100) NULL,
	[RODAPE] [varchar](100) NULL,
	[EMITENTE] [varchar](100) NULL,
	[EMITENDER] [varchar](100) NULL,
	[EMITCNPJCPF] [varchar](30) NULL,
	[LOCALEDATA] [varchar](100) NULL,
 CONSTRAINT [PK_RECIBOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T040001]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T040001](
	[CODIGO] [char](6) NOT NULL,
	[DESCRICAO] [varchar](50) NULL,
 CONSTRAINT [PK_T040001] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_GRAPHS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_GRAPHS](
	[SERIE] [varchar](30) NULL,
	[VALUE1] [float] NULL,
	[VALUE2] [float] NULL,
	[DATE_REF] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_REPORTS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_REPORTS](
	[CODIGO] [int] NOT NULL,
	[SEQ] [int] NULL,
	[CODIBASIC] [int] NULL,
	[CODICLI] [int] NULL,
	[CODIFUNC] [int] NULL,
	[OPCAO_ATIVO] [char](1) NULL,
	[OPCAO_BLOQUEADO] [char](1) NULL,
	[DATA_INI] [date] NULL,
	[DATA_FIM] [date] NULL,
	[CODIEMP] [int] NULL,
 CONSTRAINT [PK_TB_REPORTS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UFS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UFS](
	[CODIGO] [int] NOT NULL,
	[DESCRICAO] [varchar](60) NULL,
 CONSTRAINT [PK_UFS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[CODIGO] [int] NOT NULL,
	[NOME] [varchar](30) NULL,
	[SENHA] [varchar](60) NULL,
	[ADMINISTRADOR] [varchar](60) NULL,
	[CODIEMP] [int] NULL,
	[EXTERNO] [char](1) NULL,
	[IP_CONEXAO] [varchar](15) NULL,
	[EMAIL] [varchar](100) NULL,
	[MASTER] [char](1) NULL,
	[CONFSENHA] [varchar](60) NULL,
	[CODIFUNC] [int] NULL,
	[SENHA_ANTIGA] [varchar](60) NULL,
	[SENHA_ANTERIOR] [varchar](60) NULL,
	[ID_GRUPO] [int] NULL,
	[AVATAR] [varchar](200) NULL,
	[DTCADASTRO] [date] NULL,
	[IMG] [image] NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS_EMPRESA]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS_EMPRESA](
	[CODIUSER] [int] NOT NULL,
	[CODIEMP] [int] NOT NULL,
 CONSTRAINT [PK_USUARIOS_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[CODIUSER] ASC,
	[CODIEMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS_RESTRICOES]    Script Date: 31/08/2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS_RESTRICOES](
	[CODIUSER] [int] NOT NULL,
	[MENUS] [varchar](114) NOT NULL,
	[USUARIOS] [varchar](114) NOT NULL,
	[CLIENTES] [varchar](114) NOT NULL,
	[FUNCIONARIOS] [varchar](114) NOT NULL,
	[PRODUTOS] [varchar](114) NULL,
	[RELATORIOS] [varchar](114) NULL,
	[CODIEMP] [int] NULL,
	[EMPRESAS] [varchar](114) NULL,
	[RCRACING] [varchar](114) NULL,
	[CLIENTES_REVISOES] [varchar](114) NULL,
	[SYSTEM_CONFIG] [varchar](114) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('F') FOR [PESSOA]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [BOLETOS]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [NFE]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [TRAVADO]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('S') FOR [ATIVO]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [INADIMPLENTE]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [ESPECIAL]
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT ('N') FOR [BLOQUEADO]
GO
ALTER TABLE [dbo].[FORNECEDORES] ADD  DEFAULT ('S') FOR [ATIVO]
GO
ALTER TABLE [dbo].[FUNCIONARIOS] ADD  DEFAULT ('S') FOR [ATIVO]
GO
ALTER TABLE [dbo].[FUNCIONARIOS] ADD  DEFAULT ('N') FOR [VENDEDOR]
GO
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT ('N') FOR [OPCAO_ATIVO]
GO
ALTER TABLE [dbo].[TB_REPORTS] ADD  DEFAULT ('N') FOR [OPCAO_BLOQUEADO]
GO
ALTER TABLE [dbo].[USUARIOS] ADD  DEFAULT ('N') FOR [EXTERNO]
GO
ALTER TABLE [dbo].[USUARIOS] ADD  DEFAULT ('N') FOR [MASTER]
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES] ADD  DEFAULT ('0') FOR [MENUS]
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES] ADD  DEFAULT ('         0') FOR [USUARIOS]
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES] ADD  DEFAULT ('          0') FOR [CLIENTES]
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES] ADD  DEFAULT ('0') FOR [FUNCIONARIOS]
GO
ALTER TABLE [dbo].[CLIENTES_REVISOES]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTES_REVISOES_1] FOREIGN KEY([CODICLI])
REFERENCES [dbo].[CLIENTES] ([CODIGO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLIENTES_REVISOES] CHECK CONSTRAINT [FK_CLIENTES_REVISOES_1]
GO
ALTER TABLE [dbo].[CLIENTES_VEICULOS]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTES_VEICULOS] FOREIGN KEY([CODICLI])
REFERENCES [dbo].[CLIENTES] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLIENTES_VEICULOS] CHECK CONSTRAINT [FK_CLIENTES_VEICULOS]
GO
ALTER TABLE [dbo].[COMPRAS_PRODUTOS]  WITH CHECK ADD  CONSTRAINT [FK_COMPRAS_PRODUTOS_1] FOREIGN KEY([CODICOMPRA])
REFERENCES [dbo].[COMPRAS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[COMPRAS_PRODUTOS] CHECK CONSTRAINT [FK_COMPRAS_PRODUTOS_1]
GO
ALTER TABLE [dbo].[USUARIOS_EMPRESA]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_EMPRESA_1] FOREIGN KEY([CODIUSER])
REFERENCES [dbo].[USUARIOS] ([CODIGO])
GO
ALTER TABLE [dbo].[USUARIOS_EMPRESA] CHECK CONSTRAINT [FK_USUARIOS_EMPRESA_1]
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_RESTRICOES_1] FOREIGN KEY([CODIUSER])
REFERENCES [dbo].[USUARIOS] ([CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USUARIOS_RESTRICOES] CHECK CONSTRAINT [FK_USUARIOS_RESTRICOES_1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CARROS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CARROS', @level2type=N'COLUMN',@level2name=N'CODIMONTADORA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CARROS', @level2type=N'COLUMN',@level2name=N'CODITIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CARROS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CARROS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'CEP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'CODIIBGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'ATENDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES', @level2type=N'COLUMN',@level2name=N'CODIUF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIDADES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'PESSOA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'RAZSOC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DTCADASTRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DTANIVERSARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CEP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'TIPOENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'NUMERO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'BAIRRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CNPJ_CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CGF_RG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DDD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'FONE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DESCRIFONE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DDD2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'FONE2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DESCRIFONE2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DDD3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'FONE3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DESCRIFONE3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DDD4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'FONE4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DESCRIFONE4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'SITE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODICIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIIBGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIBAIRRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODITIPOEND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIUF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'COMPLEMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODICIDADEENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIBAIRROENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODITIPOENDENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIENDERECOENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIUFENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CEPENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CEPCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODICIDADECOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIBAIRROCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODITIPOENDCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIENDERECOCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODIUFCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CIDADEENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'BAIRROENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'TIPOENDERECOENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'ENDERECOENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CIDADECOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'BAIRROCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'TIPOENDERECOCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'ENDERECOCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'NUMEROENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'NUMEROCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'COMPLEMENTOENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'COMPLEMENTOCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'UFENTREGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'UFCOBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODICLIPAI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DTINI_CONTRATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DTFIM_CONTRATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'DIA_COBRANCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'VALOR_CONTRATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'BOLETOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'NFE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'LICENCAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'TRAVADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'ATIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'INADIMPLENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'ESPECIAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'BLOQUEADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES', @level2type=N'COLUMN',@level2name=N'CODISISTEMA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'CODICLI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'CODIVEICULO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'KM_REVISAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'PLACA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES', @level2type=N'COLUMN',@level2name=N'TOTAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_REVISOES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS', @level2type=N'COLUMN',@level2name=N'CODICLI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS', @level2type=N'COLUMN',@level2name=N'PLACA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS', @level2type=N'COLUMN',@level2name=N'CODICARRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTES_VEICULOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS', @level2type=N'COLUMN',@level2name=N'DTCADASTRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS', @level2type=N'COLUMN',@level2name=N'CODIFORN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS', @level2type=N'COLUMN',@level2name=N'TOTALGERAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODDETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODICOMPRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODIPROD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'QTDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'VALORUNIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS', @level2type=N'COLUMN',@level2name=N'TOTALPROD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPRAS_PRODUTOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CODIUF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CODICIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'BAIRRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'TIPOENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'RAZSOC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CNPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'CEP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'NUMERO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'FONE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'DESCRIFONE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'DDD1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'SITE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS', @level2type=N'COLUMN',@level2name=N'COMPLEMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPRESAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'FACULTATIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'MUNICIPAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'ESTADUAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'FEDERAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS', @level2type=N'COLUMN',@level2name=N'TIPO_DO_FERIADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FERIADOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES', @level2type=N'COLUMN',@level2name=N'NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES', @level2type=N'COLUMN',@level2name=N'ATIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FORNECEDORES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'ATIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'VENDEDOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS', @level2type=N'COLUMN',@level2name=N'CODIDEPARTAMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FUNCIONARIOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GRUPOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GRUPOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GRUPOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MARCAS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MARCAS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MARCAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MOVCAIXA', @level2type=N'COLUMN',@level2name=N'DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MOVCAIXA', @level2type=N'COLUMN',@level2name=N'SALDO_INI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MOVCAIXA', @level2type=N'COLUMN',@level2name=N'CAIXA_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MOVCAIXA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODIGRUPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODISUBGRUPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'CODIMARCA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'VALOR_COMPRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS', @level2type=N'COLUMN',@level2name=N'VALOR_VENDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRODUTOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'DATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'VALOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'RECEBI_DE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODICLI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODIFORN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODIFUNC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'CODIPRESTSERV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'DESCRICAO3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'RODAPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'EMITENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'EMITENDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'EMITCNPJCPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS', @level2type=N'COLUMN',@level2name=N'LOCALEDATA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECIBOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T040001', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T040001', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T040001'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_GRAPHS', @level2type=N'COLUMN',@level2name=N'SERIE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_GRAPHS', @level2type=N'COLUMN',@level2name=N'VALUE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_GRAPHS', @level2type=N'COLUMN',@level2name=N'VALUE2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_GRAPHS', @level2type=N'COLUMN',@level2name=N'DATE_REF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_GRAPHS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'SEQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'CODIBASIC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'CODICLI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'CODIFUNC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'OPCAO_ATIVO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'OPCAO_BLOQUEADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'DATA_INI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'DATA_FIM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_REPORTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UFS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UFS', @level2type=N'COLUMN',@level2name=N'DESCRICAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'CODIGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'NOME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'SENHA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'ADMINISTRADOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'EXTERNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'IP_CONEXAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'MASTER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'CONFSENHA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'CODIFUNC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'SENHA_ANTIGA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'SENHA_ANTERIOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'ID_GRUPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'AVATAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'DTCADASTRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS', @level2type=N'COLUMN',@level2name=N'IMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_EMPRESA', @level2type=N'COLUMN',@level2name=N'CODIUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_EMPRESA', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_EMPRESA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'CODIUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'MENUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'USUARIOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'CLIENTES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'FUNCIONARIOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'PRODUTOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'RELATORIOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'CODIEMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'EMPRESAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'RCRACING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'CLIENTES_REVISOES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES', @level2type=N'COLUMN',@level2name=N'SYSTEM_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TRIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIOS_RESTRICOES'
GO
