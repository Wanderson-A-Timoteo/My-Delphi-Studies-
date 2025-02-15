PGDMP     ;    &                z            rc_db    12.3    12.3 a   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    56745    rc_db    DATABASE     �   CREATE DATABASE rc_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE rc_db;
                postgres    false            �            1259    56746    carros    TABLE     �   CREATE TABLE public.carros (
    codigo integer NOT NULL,
    codimontadora integer,
    coditipo integer,
    descricao character varying(25)
);
    DROP TABLE public.carros;
       public         heap    postgres    false            �           0    0    TABLE carros    COMMENT     +   COMMENT ON TABLE public.carros IS 'TRIAL';
          public          postgres    false    202            �           0    0    COLUMN carros.codigo    COMMENT     3   COMMENT ON COLUMN public.carros.codigo IS 'TRIAL';
          public          postgres    false    202            �           0    0    COLUMN carros.codimontadora    COMMENT     :   COMMENT ON COLUMN public.carros.codimontadora IS 'TRIAL';
          public          postgres    false    202            �           0    0    COLUMN carros.coditipo    COMMENT     5   COMMENT ON COLUMN public.carros.coditipo IS 'TRIAL';
          public          postgres    false    202            �           0    0    COLUMN carros.descricao    COMMENT     6   COMMENT ON COLUMN public.carros.descricao IS 'TRIAL';
          public          postgres    false    202            �            1259    56751    cidades    TABLE     �   CREATE TABLE public.cidades (
    codigo integer NOT NULL,
    descricao character varying(60),
    uf character varying(2),
    cep character varying(8),
    codiibge bigint,
    atende character(1),
    codiuf integer
);
    DROP TABLE public.cidades;
       public         heap    postgres    false            �           0    0    TABLE cidades    COMMENT     ,   COMMENT ON TABLE public.cidades IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.codigo    COMMENT     4   COMMENT ON COLUMN public.cidades.codigo IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.descricao    COMMENT     7   COMMENT ON COLUMN public.cidades.descricao IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.uf    COMMENT     0   COMMENT ON COLUMN public.cidades.uf IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.cep    COMMENT     1   COMMENT ON COLUMN public.cidades.cep IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.codiibge    COMMENT     6   COMMENT ON COLUMN public.cidades.codiibge IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.atende    COMMENT     4   COMMENT ON COLUMN public.cidades.atende IS 'TRIAL';
          public          postgres    false    203            �           0    0    COLUMN cidades.codiuf    COMMENT     4   COMMENT ON COLUMN public.cidades.codiuf IS 'TRIAL';
          public          postgres    false    203            �            1259    56757    clientes    TABLE     �
  CREATE TABLE public.clientes (
    codigo integer NOT NULL,
    codiemp integer NOT NULL,
    pessoa character(1) DEFAULT 'F'::bpchar,
    nome character varying(100),
    razsoc character varying(100),
    dtcadastro date,
    dtaniversario date,
    cep character varying(20),
    tipoendereco character varying(30),
    endereco character varying(100),
    numero character varying(20),
    bairro character varying(60),
    cidade character varying(60),
    uf character varying(3),
    cnpj_cpf character varying(18),
    cgf_rg character varying(20),
    ddd1 character varying(3),
    fone1 character varying(30),
    descrifone1 character varying(100),
    ddd2 character varying(3),
    fone2 character varying(30),
    descrifone2 character varying(100),
    ddd3 character varying(3),
    fone3 character varying(30),
    descrifone3 character varying(100),
    ddd4 character varying(3),
    fone4 character varying(30),
    descrifone4 character varying(100),
    email character varying(60),
    site character varying(60),
    codicidade integer,
    codiibge bigint,
    codibairro integer,
    coditipoend integer,
    codiendereco integer,
    codiuf integer,
    complemento character varying(100),
    tipo character(1),
    codicidadeentrega integer,
    codibairroentrega integer,
    coditipoendentrega integer,
    codienderecoentrega integer,
    codiufentrega integer,
    cepentrega character varying(20),
    cepcobranca character varying(20),
    codicidadecobranca integer,
    codibairrocobranca integer,
    coditipoendcobranca integer,
    codienderecocobranca integer,
    codiufcobranca integer,
    cidadeentrega character varying(60),
    bairroentrega character varying(60),
    tipoenderecoentrega character varying(60),
    enderecoentrega character varying(60),
    cidadecobranca character varying(60),
    bairrocobranca character varying(60),
    tipoenderecocobranca character varying(60),
    enderecocobranca character varying(60),
    numeroentrega character varying(20),
    numerocobranca character varying(20),
    complementoentrega character varying(100),
    complementocobranca character varying(100),
    ufentrega character varying(2),
    ufcobranca character varying(2),
    codiclipai integer,
    dtini_contrato date,
    dtfim_contrato date,
    dia_cobranca integer,
    valor_contrato numeric(17,2),
    boletos character(1) DEFAULT 'N'::bpchar,
    nfe character(1) DEFAULT 'N'::bpchar,
    licencas integer,
    travado character(1) DEFAULT 'N'::bpchar,
    ativo character(1) DEFAULT 'S'::bpchar,
    inadimplente character(1) DEFAULT 'N'::bpchar,
    especial character(1) DEFAULT 'N'::bpchar,
    bloqueado character(1) DEFAULT 'N'::bpchar,
    codisistema integer
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �           0    0    TABLE clientes    COMMENT     -   COMMENT ON TABLE public.clientes IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codigo    COMMENT     5   COMMENT ON COLUMN public.clientes.codigo IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codiemp    COMMENT     6   COMMENT ON COLUMN public.clientes.codiemp IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.pessoa    COMMENT     5   COMMENT ON COLUMN public.clientes.pessoa IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.nome    COMMENT     3   COMMENT ON COLUMN public.clientes.nome IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.razsoc    COMMENT     5   COMMENT ON COLUMN public.clientes.razsoc IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.dtcadastro    COMMENT     9   COMMENT ON COLUMN public.clientes.dtcadastro IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.dtaniversario    COMMENT     <   COMMENT ON COLUMN public.clientes.dtaniversario IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.cep    COMMENT     2   COMMENT ON COLUMN public.clientes.cep IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.tipoendereco    COMMENT     ;   COMMENT ON COLUMN public.clientes.tipoendereco IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.endereco    COMMENT     7   COMMENT ON COLUMN public.clientes.endereco IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.numero    COMMENT     5   COMMENT ON COLUMN public.clientes.numero IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.bairro    COMMENT     5   COMMENT ON COLUMN public.clientes.bairro IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.cidade    COMMENT     5   COMMENT ON COLUMN public.clientes.cidade IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.uf    COMMENT     1   COMMENT ON COLUMN public.clientes.uf IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.cnpj_cpf    COMMENT     7   COMMENT ON COLUMN public.clientes.cnpj_cpf IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.cgf_rg    COMMENT     5   COMMENT ON COLUMN public.clientes.cgf_rg IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.ddd1    COMMENT     3   COMMENT ON COLUMN public.clientes.ddd1 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.fone1    COMMENT     4   COMMENT ON COLUMN public.clientes.fone1 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.descrifone1    COMMENT     :   COMMENT ON COLUMN public.clientes.descrifone1 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.ddd2    COMMENT     3   COMMENT ON COLUMN public.clientes.ddd2 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.fone2    COMMENT     4   COMMENT ON COLUMN public.clientes.fone2 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.descrifone2    COMMENT     :   COMMENT ON COLUMN public.clientes.descrifone2 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.ddd3    COMMENT     3   COMMENT ON COLUMN public.clientes.ddd3 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.fone3    COMMENT     4   COMMENT ON COLUMN public.clientes.fone3 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.descrifone3    COMMENT     :   COMMENT ON COLUMN public.clientes.descrifone3 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.ddd4    COMMENT     3   COMMENT ON COLUMN public.clientes.ddd4 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.fone4    COMMENT     4   COMMENT ON COLUMN public.clientes.fone4 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.descrifone4    COMMENT     :   COMMENT ON COLUMN public.clientes.descrifone4 IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.email    COMMENT     4   COMMENT ON COLUMN public.clientes.email IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.site    COMMENT     3   COMMENT ON COLUMN public.clientes.site IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codicidade    COMMENT     9   COMMENT ON COLUMN public.clientes.codicidade IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codiibge    COMMENT     7   COMMENT ON COLUMN public.clientes.codiibge IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codibairro    COMMENT     9   COMMENT ON COLUMN public.clientes.codibairro IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.coditipoend    COMMENT     :   COMMENT ON COLUMN public.clientes.coditipoend IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codiendereco    COMMENT     ;   COMMENT ON COLUMN public.clientes.codiendereco IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.codiuf    COMMENT     5   COMMENT ON COLUMN public.clientes.codiuf IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.complemento    COMMENT     :   COMMENT ON COLUMN public.clientes.complemento IS 'TRIAL';
          public          postgres    false    204            �           0    0    COLUMN clientes.tipo    COMMENT     3   COMMENT ON COLUMN public.clientes.tipo IS 'TRIAL';
          public          postgres    false    204            �           0    0 !   COLUMN clientes.codicidadeentrega    COMMENT     @   COMMENT ON COLUMN public.clientes.codicidadeentrega IS 'TRIAL';
          public          postgres    false    204            �           0    0 !   COLUMN clientes.codibairroentrega    COMMENT     @   COMMENT ON COLUMN public.clientes.codibairroentrega IS 'TRIAL';
          public          postgres    false    204                        0    0 "   COLUMN clientes.coditipoendentrega    COMMENT     A   COMMENT ON COLUMN public.clientes.coditipoendentrega IS 'TRIAL';
          public          postgres    false    204                       0    0 #   COLUMN clientes.codienderecoentrega    COMMENT     B   COMMENT ON COLUMN public.clientes.codienderecoentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.codiufentrega    COMMENT     <   COMMENT ON COLUMN public.clientes.codiufentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.cepentrega    COMMENT     9   COMMENT ON COLUMN public.clientes.cepentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.cepcobranca    COMMENT     :   COMMENT ON COLUMN public.clientes.cepcobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 "   COLUMN clientes.codicidadecobranca    COMMENT     A   COMMENT ON COLUMN public.clientes.codicidadecobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 "   COLUMN clientes.codibairrocobranca    COMMENT     A   COMMENT ON COLUMN public.clientes.codibairrocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 #   COLUMN clientes.coditipoendcobranca    COMMENT     B   COMMENT ON COLUMN public.clientes.coditipoendcobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 $   COLUMN clientes.codienderecocobranca    COMMENT     C   COMMENT ON COLUMN public.clientes.codienderecocobranca IS 'TRIAL';
          public          postgres    false    204            	           0    0    COLUMN clientes.codiufcobranca    COMMENT     =   COMMENT ON COLUMN public.clientes.codiufcobranca IS 'TRIAL';
          public          postgres    false    204            
           0    0    COLUMN clientes.cidadeentrega    COMMENT     <   COMMENT ON COLUMN public.clientes.cidadeentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.bairroentrega    COMMENT     <   COMMENT ON COLUMN public.clientes.bairroentrega IS 'TRIAL';
          public          postgres    false    204                       0    0 #   COLUMN clientes.tipoenderecoentrega    COMMENT     B   COMMENT ON COLUMN public.clientes.tipoenderecoentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.enderecoentrega    COMMENT     >   COMMENT ON COLUMN public.clientes.enderecoentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.cidadecobranca    COMMENT     =   COMMENT ON COLUMN public.clientes.cidadecobranca IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.bairrocobranca    COMMENT     =   COMMENT ON COLUMN public.clientes.bairrocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 $   COLUMN clientes.tipoenderecocobranca    COMMENT     C   COMMENT ON COLUMN public.clientes.tipoenderecocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0     COLUMN clientes.enderecocobranca    COMMENT     ?   COMMENT ON COLUMN public.clientes.enderecocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.numeroentrega    COMMENT     <   COMMENT ON COLUMN public.clientes.numeroentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.numerocobranca    COMMENT     =   COMMENT ON COLUMN public.clientes.numerocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0 "   COLUMN clientes.complementoentrega    COMMENT     A   COMMENT ON COLUMN public.clientes.complementoentrega IS 'TRIAL';
          public          postgres    false    204                       0    0 #   COLUMN clientes.complementocobranca    COMMENT     B   COMMENT ON COLUMN public.clientes.complementocobranca IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.ufentrega    COMMENT     8   COMMENT ON COLUMN public.clientes.ufentrega IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.ufcobranca    COMMENT     9   COMMENT ON COLUMN public.clientes.ufcobranca IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.codiclipai    COMMENT     9   COMMENT ON COLUMN public.clientes.codiclipai IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.dtini_contrato    COMMENT     =   COMMENT ON COLUMN public.clientes.dtini_contrato IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.dtfim_contrato    COMMENT     =   COMMENT ON COLUMN public.clientes.dtfim_contrato IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.dia_cobranca    COMMENT     ;   COMMENT ON COLUMN public.clientes.dia_cobranca IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.valor_contrato    COMMENT     =   COMMENT ON COLUMN public.clientes.valor_contrato IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.boletos    COMMENT     6   COMMENT ON COLUMN public.clientes.boletos IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.nfe    COMMENT     2   COMMENT ON COLUMN public.clientes.nfe IS 'TRIAL';
          public          postgres    false    204                       0    0    COLUMN clientes.licencas    COMMENT     7   COMMENT ON COLUMN public.clientes.licencas IS 'TRIAL';
          public          postgres    false    204                        0    0    COLUMN clientes.travado    COMMENT     6   COMMENT ON COLUMN public.clientes.travado IS 'TRIAL';
          public          postgres    false    204            !           0    0    COLUMN clientes.ativo    COMMENT     4   COMMENT ON COLUMN public.clientes.ativo IS 'TRIAL';
          public          postgres    false    204            "           0    0    COLUMN clientes.inadimplente    COMMENT     ;   COMMENT ON COLUMN public.clientes.inadimplente IS 'TRIAL';
          public          postgres    false    204            #           0    0    COLUMN clientes.especial    COMMENT     7   COMMENT ON COLUMN public.clientes.especial IS 'TRIAL';
          public          postgres    false    204            $           0    0    COLUMN clientes.bloqueado    COMMENT     8   COMMENT ON COLUMN public.clientes.bloqueado IS 'TRIAL';
          public          postgres    false    204            %           0    0    COLUMN clientes.codisistema    COMMENT     :   COMMENT ON COLUMN public.clientes.codisistema IS 'TRIAL';
          public          postgres    false    204            �            1259    56776    clientes_revisoes    TABLE     �   CREATE TABLE public.clientes_revisoes (
    codicli integer NOT NULL,
    codiveiculo integer NOT NULL,
    data date,
    km_revisao integer NOT NULL,
    placa character varying(10),
    total numeric(17,2)
);
 %   DROP TABLE public.clientes_revisoes;
       public         heap    postgres    false            &           0    0    TABLE clientes_revisoes    COMMENT     6   COMMENT ON TABLE public.clientes_revisoes IS 'TRIAL';
          public          postgres    false    205            '           0    0     COLUMN clientes_revisoes.codicli    COMMENT     ?   COMMENT ON COLUMN public.clientes_revisoes.codicli IS 'TRIAL';
          public          postgres    false    205            (           0    0 $   COLUMN clientes_revisoes.codiveiculo    COMMENT     C   COMMENT ON COLUMN public.clientes_revisoes.codiveiculo IS 'TRIAL';
          public          postgres    false    205            )           0    0    COLUMN clientes_revisoes.data    COMMENT     <   COMMENT ON COLUMN public.clientes_revisoes.data IS 'TRIAL';
          public          postgres    false    205            *           0    0 #   COLUMN clientes_revisoes.km_revisao    COMMENT     B   COMMENT ON COLUMN public.clientes_revisoes.km_revisao IS 'TRIAL';
          public          postgres    false    205            +           0    0    COLUMN clientes_revisoes.placa    COMMENT     =   COMMENT ON COLUMN public.clientes_revisoes.placa IS 'TRIAL';
          public          postgres    false    205            ,           0    0    COLUMN clientes_revisoes.total    COMMENT     =   COMMENT ON COLUMN public.clientes_revisoes.total IS 'TRIAL';
          public          postgres    false    205            �            1259    56782    clientes_veiculos    TABLE     �   CREATE TABLE public.clientes_veiculos (
    codigo integer NOT NULL,
    codicli integer,
    placa character varying(12),
    codicarro integer,
    codiemp integer
);
 %   DROP TABLE public.clientes_veiculos;
       public         heap    postgres    false            -           0    0    TABLE clientes_veiculos    COMMENT     6   COMMENT ON TABLE public.clientes_veiculos IS 'TRIAL';
          public          postgres    false    206            .           0    0    COLUMN clientes_veiculos.codigo    COMMENT     >   COMMENT ON COLUMN public.clientes_veiculos.codigo IS 'TRIAL';
          public          postgres    false    206            /           0    0     COLUMN clientes_veiculos.codicli    COMMENT     ?   COMMENT ON COLUMN public.clientes_veiculos.codicli IS 'TRIAL';
          public          postgres    false    206            0           0    0    COLUMN clientes_veiculos.placa    COMMENT     =   COMMENT ON COLUMN public.clientes_veiculos.placa IS 'TRIAL';
          public          postgres    false    206            1           0    0 "   COLUMN clientes_veiculos.codicarro    COMMENT     A   COMMENT ON COLUMN public.clientes_veiculos.codicarro IS 'TRIAL';
          public          postgres    false    206            2           0    0     COLUMN clientes_veiculos.codiemp    COMMENT     ?   COMMENT ON COLUMN public.clientes_veiculos.codiemp IS 'TRIAL';
          public          postgres    false    206            �            1259    56789    compras    TABLE     �   CREATE TABLE public.compras (
    codigo integer NOT NULL,
    codiemp integer NOT NULL,
    dtcadastro date,
    codiforn integer,
    totalgeral numeric(17,2)
);
    DROP TABLE public.compras;
       public         heap    postgres    false            3           0    0    TABLE compras    COMMENT     ,   COMMENT ON TABLE public.compras IS 'TRIAL';
          public          postgres    false    207            4           0    0    COLUMN compras.codigo    COMMENT     4   COMMENT ON COLUMN public.compras.codigo IS 'TRIAL';
          public          postgres    false    207            5           0    0    COLUMN compras.codiemp    COMMENT     5   COMMENT ON COLUMN public.compras.codiemp IS 'TRIAL';
          public          postgres    false    207            6           0    0    COLUMN compras.dtcadastro    COMMENT     8   COMMENT ON COLUMN public.compras.dtcadastro IS 'TRIAL';
          public          postgres    false    207            7           0    0    COLUMN compras.codiforn    COMMENT     6   COMMENT ON COLUMN public.compras.codiforn IS 'TRIAL';
          public          postgres    false    207            8           0    0    COLUMN compras.totalgeral    COMMENT     8   COMMENT ON COLUMN public.compras.totalgeral IS 'TRIAL';
          public          postgres    false    207            �            1259    56794    compras_produtos    TABLE     �   CREATE TABLE public.compras_produtos (
    codicompra integer NOT NULL,
    codiprod integer NOT NULL,
    codiemp integer,
    data date,
    qtde numeric(17,2),
    valorunit numeric(19,4),
    totalprod numeric(17,2)
);
 $   DROP TABLE public.compras_produtos;
       public         heap    postgres    false            9           0    0    TABLE compras_produtos    COMMENT     5   COMMENT ON TABLE public.compras_produtos IS 'TRIAL';
          public          postgres    false    208            :           0    0 "   COLUMN compras_produtos.codicompra    COMMENT     A   COMMENT ON COLUMN public.compras_produtos.codicompra IS 'TRIAL';
          public          postgres    false    208            ;           0    0     COLUMN compras_produtos.codiprod    COMMENT     ?   COMMENT ON COLUMN public.compras_produtos.codiprod IS 'TRIAL';
          public          postgres    false    208            <           0    0    COLUMN compras_produtos.codiemp    COMMENT     >   COMMENT ON COLUMN public.compras_produtos.codiemp IS 'TRIAL';
          public          postgres    false    208            =           0    0    COLUMN compras_produtos.data    COMMENT     ;   COMMENT ON COLUMN public.compras_produtos.data IS 'TRIAL';
          public          postgres    false    208            >           0    0    COLUMN compras_produtos.qtde    COMMENT     ;   COMMENT ON COLUMN public.compras_produtos.qtde IS 'TRIAL';
          public          postgres    false    208            ?           0    0 !   COLUMN compras_produtos.valorunit    COMMENT     @   COMMENT ON COLUMN public.compras_produtos.valorunit IS 'TRIAL';
          public          postgres    false    208            @           0    0 !   COLUMN compras_produtos.totalprod    COMMENT     @   COMMENT ON COLUMN public.compras_produtos.totalprod IS 'TRIAL';
          public          postgres    false    208            �            1259    56800    empresas    TABLE     �  CREATE TABLE public.empresas (
    codigo integer NOT NULL,
    descricao character varying(20),
    codiuf integer,
    codicidade integer,
    uf character varying(2),
    cidade character varying(30),
    bairro character varying(30),
    endereco character varying(60),
    tipoendereco character varying(30),
    nome character varying(60),
    razsoc character varying(60),
    cnpj character varying(18),
    cep character varying(20),
    numero character varying(20),
    fone1 character varying(30),
    descrifone1 character varying(20),
    ddd1 character(3),
    email character varying(100),
    site character varying(100),
    complemento character varying(100)
);
    DROP TABLE public.empresas;
       public         heap    postgres    false            A           0    0    TABLE empresas    COMMENT     -   COMMENT ON TABLE public.empresas IS 'TRIAL';
          public          postgres    false    209            B           0    0    COLUMN empresas.codigo    COMMENT     5   COMMENT ON COLUMN public.empresas.codigo IS 'TRIAL';
          public          postgres    false    209            C           0    0    COLUMN empresas.descricao    COMMENT     8   COMMENT ON COLUMN public.empresas.descricao IS 'TRIAL';
          public          postgres    false    209            D           0    0    COLUMN empresas.codiuf    COMMENT     5   COMMENT ON COLUMN public.empresas.codiuf IS 'TRIAL';
          public          postgres    false    209            E           0    0    COLUMN empresas.codicidade    COMMENT     9   COMMENT ON COLUMN public.empresas.codicidade IS 'TRIAL';
          public          postgres    false    209            F           0    0    COLUMN empresas.uf    COMMENT     1   COMMENT ON COLUMN public.empresas.uf IS 'TRIAL';
          public          postgres    false    209            G           0    0    COLUMN empresas.cidade    COMMENT     5   COMMENT ON COLUMN public.empresas.cidade IS 'TRIAL';
          public          postgres    false    209            H           0    0    COLUMN empresas.bairro    COMMENT     5   COMMENT ON COLUMN public.empresas.bairro IS 'TRIAL';
          public          postgres    false    209            I           0    0    COLUMN empresas.endereco    COMMENT     7   COMMENT ON COLUMN public.empresas.endereco IS 'TRIAL';
          public          postgres    false    209            J           0    0    COLUMN empresas.tipoendereco    COMMENT     ;   COMMENT ON COLUMN public.empresas.tipoendereco IS 'TRIAL';
          public          postgres    false    209            K           0    0    COLUMN empresas.nome    COMMENT     3   COMMENT ON COLUMN public.empresas.nome IS 'TRIAL';
          public          postgres    false    209            L           0    0    COLUMN empresas.razsoc    COMMENT     5   COMMENT ON COLUMN public.empresas.razsoc IS 'TRIAL';
          public          postgres    false    209            M           0    0    COLUMN empresas.cnpj    COMMENT     3   COMMENT ON COLUMN public.empresas.cnpj IS 'TRIAL';
          public          postgres    false    209            N           0    0    COLUMN empresas.cep    COMMENT     2   COMMENT ON COLUMN public.empresas.cep IS 'TRIAL';
          public          postgres    false    209            O           0    0    COLUMN empresas.numero    COMMENT     5   COMMENT ON COLUMN public.empresas.numero IS 'TRIAL';
          public          postgres    false    209            P           0    0    COLUMN empresas.fone1    COMMENT     4   COMMENT ON COLUMN public.empresas.fone1 IS 'TRIAL';
          public          postgres    false    209            Q           0    0    COLUMN empresas.descrifone1    COMMENT     :   COMMENT ON COLUMN public.empresas.descrifone1 IS 'TRIAL';
          public          postgres    false    209            R           0    0    COLUMN empresas.ddd1    COMMENT     3   COMMENT ON COLUMN public.empresas.ddd1 IS 'TRIAL';
          public          postgres    false    209            S           0    0    COLUMN empresas.email    COMMENT     4   COMMENT ON COLUMN public.empresas.email IS 'TRIAL';
          public          postgres    false    209            T           0    0    COLUMN empresas.site    COMMENT     3   COMMENT ON COLUMN public.empresas.site IS 'TRIAL';
          public          postgres    false    209            U           0    0    COLUMN empresas.complemento    COMMENT     :   COMMENT ON COLUMN public.empresas.complemento IS 'TRIAL';
          public          postgres    false    209            �            1259    56808    feriados    TABLE       CREATE TABLE public.feriados (
    codigo integer NOT NULL,
    descricao character varying(50),
    data date,
    facultativo character(1),
    municipal integer,
    estadual integer,
    federal integer,
    tipo character(1),
    tipo_do_feriado character(1)
);
    DROP TABLE public.feriados;
       public         heap    postgres    false            V           0    0    TABLE feriados    COMMENT     -   COMMENT ON TABLE public.feriados IS 'TRIAL';
          public          postgres    false    210            W           0    0    COLUMN feriados.codigo    COMMENT     5   COMMENT ON COLUMN public.feriados.codigo IS 'TRIAL';
          public          postgres    false    210            X           0    0    COLUMN feriados.descricao    COMMENT     8   COMMENT ON COLUMN public.feriados.descricao IS 'TRIAL';
          public          postgres    false    210            Y           0    0    COLUMN feriados.data    COMMENT     3   COMMENT ON COLUMN public.feriados.data IS 'TRIAL';
          public          postgres    false    210            Z           0    0    COLUMN feriados.facultativo    COMMENT     :   COMMENT ON COLUMN public.feriados.facultativo IS 'TRIAL';
          public          postgres    false    210            [           0    0    COLUMN feriados.municipal    COMMENT     8   COMMENT ON COLUMN public.feriados.municipal IS 'TRIAL';
          public          postgres    false    210            \           0    0    COLUMN feriados.estadual    COMMENT     7   COMMENT ON COLUMN public.feriados.estadual IS 'TRIAL';
          public          postgres    false    210            ]           0    0    COLUMN feriados.federal    COMMENT     6   COMMENT ON COLUMN public.feriados.federal IS 'TRIAL';
          public          postgres    false    210            ^           0    0    COLUMN feriados.tipo    COMMENT     3   COMMENT ON COLUMN public.feriados.tipo IS 'TRIAL';
          public          postgres    false    210            _           0    0    COLUMN feriados.tipo_do_feriado    COMMENT     >   COMMENT ON COLUMN public.feriados.tipo_do_feriado IS 'TRIAL';
          public          postgres    false    210            �            1259    56813    fornecedores    TABLE     �   CREATE TABLE public.fornecedores (
    codigo integer NOT NULL,
    codiemp integer NOT NULL,
    nome character varying(60),
    tipo character(1),
    ativo character(1) DEFAULT 'S'::bpchar
);
     DROP TABLE public.fornecedores;
       public         heap    postgres    false            `           0    0    TABLE fornecedores    COMMENT     1   COMMENT ON TABLE public.fornecedores IS 'TRIAL';
          public          postgres    false    211            a           0    0    COLUMN fornecedores.codigo    COMMENT     9   COMMENT ON COLUMN public.fornecedores.codigo IS 'TRIAL';
          public          postgres    false    211            b           0    0    COLUMN fornecedores.codiemp    COMMENT     :   COMMENT ON COLUMN public.fornecedores.codiemp IS 'TRIAL';
          public          postgres    false    211            c           0    0    COLUMN fornecedores.nome    COMMENT     7   COMMENT ON COLUMN public.fornecedores.nome IS 'TRIAL';
          public          postgres    false    211            d           0    0    COLUMN fornecedores.tipo    COMMENT     7   COMMENT ON COLUMN public.fornecedores.tipo IS 'TRIAL';
          public          postgres    false    211            e           0    0    COLUMN fornecedores.ativo    COMMENT     8   COMMENT ON COLUMN public.fornecedores.ativo IS 'TRIAL';
          public          postgres    false    211            �            1259    56819    funcionarios    TABLE       CREATE TABLE public.funcionarios (
    codigo integer NOT NULL,
    codiemp integer NOT NULL,
    nome character varying(60),
    tipo character(1),
    ativo character(1) DEFAULT 'S'::bpchar,
    vendedor character(1) DEFAULT 'N'::bpchar,
    codidepartamento integer
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false            f           0    0    TABLE funcionarios    COMMENT     1   COMMENT ON TABLE public.funcionarios IS 'TRIAL';
          public          postgres    false    212            g           0    0    COLUMN funcionarios.codigo    COMMENT     9   COMMENT ON COLUMN public.funcionarios.codigo IS 'TRIAL';
          public          postgres    false    212            h           0    0    COLUMN funcionarios.codiemp    COMMENT     :   COMMENT ON COLUMN public.funcionarios.codiemp IS 'TRIAL';
          public          postgres    false    212            i           0    0    COLUMN funcionarios.nome    COMMENT     7   COMMENT ON COLUMN public.funcionarios.nome IS 'TRIAL';
          public          postgres    false    212            j           0    0    COLUMN funcionarios.tipo    COMMENT     7   COMMENT ON COLUMN public.funcionarios.tipo IS 'TRIAL';
          public          postgres    false    212            k           0    0    COLUMN funcionarios.ativo    COMMENT     8   COMMENT ON COLUMN public.funcionarios.ativo IS 'TRIAL';
          public          postgres    false    212            l           0    0    COLUMN funcionarios.vendedor    COMMENT     ;   COMMENT ON COLUMN public.funcionarios.vendedor IS 'TRIAL';
          public          postgres    false    212            m           0    0 $   COLUMN funcionarios.codidepartamento    COMMENT     C   COMMENT ON COLUMN public.funcionarios.codidepartamento IS 'TRIAL';
          public          postgres    false    212            �            1259    56826    grupos    TABLE     a   CREATE TABLE public.grupos (
    codigo integer NOT NULL,
    descricao character varying(30)
);
    DROP TABLE public.grupos;
       public         heap    postgres    false            n           0    0    TABLE grupos    COMMENT     +   COMMENT ON TABLE public.grupos IS 'TRIAL';
          public          postgres    false    213            o           0    0    COLUMN grupos.codigo    COMMENT     3   COMMENT ON COLUMN public.grupos.codigo IS 'TRIAL';
          public          postgres    false    213            p           0    0    COLUMN grupos.descricao    COMMENT     6   COMMENT ON COLUMN public.grupos.descricao IS 'TRIAL';
          public          postgres    false    213            �            1259    56831    marcas    TABLE     a   CREATE TABLE public.marcas (
    codigo integer NOT NULL,
    descricao character varying(30)
);
    DROP TABLE public.marcas;
       public         heap    postgres    false            q           0    0    TABLE marcas    COMMENT     +   COMMENT ON TABLE public.marcas IS 'TRIAL';
          public          postgres    false    214            r           0    0    COLUMN marcas.codigo    COMMENT     3   COMMENT ON COLUMN public.marcas.codigo IS 'TRIAL';
          public          postgres    false    214            s           0    0    COLUMN marcas.descricao    COMMENT     6   COMMENT ON COLUMN public.marcas.descricao IS 'TRIAL';
          public          postgres    false    214            �            1259    56836    movcaixa    TABLE     �   CREATE TABLE public.movcaixa (
    data timestamp without time zone NOT NULL,
    saldo_ini numeric(17,2),
    caixa_id integer
);
    DROP TABLE public.movcaixa;
       public         heap    postgres    false            t           0    0    TABLE movcaixa    COMMENT     -   COMMENT ON TABLE public.movcaixa IS 'TRIAL';
          public          postgres    false    215            u           0    0    COLUMN movcaixa.data    COMMENT     3   COMMENT ON COLUMN public.movcaixa.data IS 'TRIAL';
          public          postgres    false    215            v           0    0    COLUMN movcaixa.saldo_ini    COMMENT     8   COMMENT ON COLUMN public.movcaixa.saldo_ini IS 'TRIAL';
          public          postgres    false    215            w           0    0    COLUMN movcaixa.caixa_id    COMMENT     7   COMMENT ON COLUMN public.movcaixa.caixa_id IS 'TRIAL';
          public          postgres    false    215            �            1259    56841    produtos    TABLE     �   CREATE TABLE public.produtos (
    codigo integer NOT NULL,
    descricao character varying(60),
    codigrupo integer,
    codisubgrupo integer,
    codimarca integer,
    valor_compra numeric(17,2),
    valor_venda numeric(17,2)
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            x           0    0    TABLE produtos    COMMENT     -   COMMENT ON TABLE public.produtos IS 'TRIAL';
          public          postgres    false    216            y           0    0    COLUMN produtos.codigo    COMMENT     5   COMMENT ON COLUMN public.produtos.codigo IS 'TRIAL';
          public          postgres    false    216            z           0    0    COLUMN produtos.descricao    COMMENT     8   COMMENT ON COLUMN public.produtos.descricao IS 'TRIAL';
          public          postgres    false    216            {           0    0    COLUMN produtos.codigrupo    COMMENT     8   COMMENT ON COLUMN public.produtos.codigrupo IS 'TRIAL';
          public          postgres    false    216            |           0    0    COLUMN produtos.codisubgrupo    COMMENT     ;   COMMENT ON COLUMN public.produtos.codisubgrupo IS 'TRIAL';
          public          postgres    false    216            }           0    0    COLUMN produtos.codimarca    COMMENT     8   COMMENT ON COLUMN public.produtos.codimarca IS 'TRIAL';
          public          postgres    false    216            ~           0    0    COLUMN produtos.valor_compra    COMMENT     ;   COMMENT ON COLUMN public.produtos.valor_compra IS 'TRIAL';
          public          postgres    false    216                       0    0    COLUMN produtos.valor_venda    COMMENT     :   COMMENT ON COLUMN public.produtos.valor_venda IS 'TRIAL';
          public          postgres    false    216            �            1259    56846    recibos    TABLE     c  CREATE TABLE public.recibos (
    codigo integer NOT NULL,
    codiemp integer,
    data date,
    valor numeric(17,2),
    recebi_de character varying(100),
    endereco character varying(100),
    codicli integer,
    codiforn integer,
    codifunc integer,
    codiprestserv integer,
    tipo integer,
    descricao character varying(100),
    descricao2 character varying(100),
    descricao3 character varying(100),
    rodape character varying(100),
    emitente character varying(100),
    emitender character varying(100),
    emitcnpjcpf character varying(30),
    localedata character varying(100)
);
    DROP TABLE public.recibos;
       public         heap    postgres    false            �           0    0    TABLE recibos    COMMENT     ,   COMMENT ON TABLE public.recibos IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codigo    COMMENT     4   COMMENT ON COLUMN public.recibos.codigo IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codiemp    COMMENT     5   COMMENT ON COLUMN public.recibos.codiemp IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.data    COMMENT     2   COMMENT ON COLUMN public.recibos.data IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.valor    COMMENT     3   COMMENT ON COLUMN public.recibos.valor IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.recebi_de    COMMENT     7   COMMENT ON COLUMN public.recibos.recebi_de IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.endereco    COMMENT     6   COMMENT ON COLUMN public.recibos.endereco IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codicli    COMMENT     5   COMMENT ON COLUMN public.recibos.codicli IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codiforn    COMMENT     6   COMMENT ON COLUMN public.recibos.codiforn IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codifunc    COMMENT     6   COMMENT ON COLUMN public.recibos.codifunc IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.codiprestserv    COMMENT     ;   COMMENT ON COLUMN public.recibos.codiprestserv IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.tipo    COMMENT     2   COMMENT ON COLUMN public.recibos.tipo IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.descricao    COMMENT     7   COMMENT ON COLUMN public.recibos.descricao IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.descricao2    COMMENT     8   COMMENT ON COLUMN public.recibos.descricao2 IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.descricao3    COMMENT     8   COMMENT ON COLUMN public.recibos.descricao3 IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.rodape    COMMENT     4   COMMENT ON COLUMN public.recibos.rodape IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.emitente    COMMENT     6   COMMENT ON COLUMN public.recibos.emitente IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.emitender    COMMENT     7   COMMENT ON COLUMN public.recibos.emitender IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.emitcnpjcpf    COMMENT     9   COMMENT ON COLUMN public.recibos.emitcnpjcpf IS 'TRIAL';
          public          postgres    false    217            �           0    0    COLUMN recibos.localedata    COMMENT     8   COMMENT ON COLUMN public.recibos.localedata IS 'TRIAL';
          public          postgres    false    217            �            1259    56854    t040001    TABLE     g   CREATE TABLE public.t040001 (
    codigo character(6) NOT NULL,
    descricao character varying(50)
);
    DROP TABLE public.t040001;
       public         heap    postgres    false            �           0    0    TABLE t040001    COMMENT     ,   COMMENT ON TABLE public.t040001 IS 'TRIAL';
          public          postgres    false    218            �           0    0    COLUMN t040001.codigo    COMMENT     4   COMMENT ON COLUMN public.t040001.codigo IS 'TRIAL';
          public          postgres    false    218            �           0    0    COLUMN t040001.descricao    COMMENT     7   COMMENT ON COLUMN public.t040001.descricao IS 'TRIAL';
          public          postgres    false    218            �            1259    56859    tb_compoundpk    TABLE     �   CREATE TABLE public.tb_compoundpk (
    id integer NOT NULL,
    itemdate date NOT NULL,
    description character varying(30)
);
 !   DROP TABLE public.tb_compoundpk;
       public         heap    postgres    false            �           0    0    TABLE tb_compoundpk    COMMENT     2   COMMENT ON TABLE public.tb_compoundpk IS 'TRIAL';
          public          postgres    false    219            �           0    0    COLUMN tb_compoundpk.id    COMMENT     6   COMMENT ON COLUMN public.tb_compoundpk.id IS 'TRIAL';
          public          postgres    false    219            �           0    0    COLUMN tb_compoundpk.itemdate    COMMENT     <   COMMENT ON COLUMN public.tb_compoundpk.itemdate IS 'TRIAL';
          public          postgres    false    219            �           0    0     COLUMN tb_compoundpk.description    COMMENT     ?   COMMENT ON COLUMN public.tb_compoundpk.description IS 'TRIAL';
          public          postgres    false    219            �            1259    56864 	   tb_graphs    TABLE     �   CREATE TABLE public.tb_graphs (
    serie character varying(30),
    value1 double precision,
    value2 double precision,
    date_ref date
);
    DROP TABLE public.tb_graphs;
       public         heap    postgres    false            �           0    0    TABLE tb_graphs    COMMENT     .   COMMENT ON TABLE public.tb_graphs IS 'TRIAL';
          public          postgres    false    220            �           0    0    COLUMN tb_graphs.serie    COMMENT     5   COMMENT ON COLUMN public.tb_graphs.serie IS 'TRIAL';
          public          postgres    false    220            �           0    0    COLUMN tb_graphs.value1    COMMENT     6   COMMENT ON COLUMN public.tb_graphs.value1 IS 'TRIAL';
          public          postgres    false    220            �           0    0    COLUMN tb_graphs.value2    COMMENT     6   COMMENT ON COLUMN public.tb_graphs.value2 IS 'TRIAL';
          public          postgres    false    220            �           0    0    COLUMN tb_graphs.date_ref    COMMENT     8   COMMENT ON COLUMN public.tb_graphs.date_ref IS 'TRIAL';
          public          postgres    false    220            �            1259    56867 
   tb_reports    TABLE     6  CREATE TABLE public.tb_reports (
    codigo integer NOT NULL,
    seq integer,
    codibasic integer,
    codicli integer,
    codifunc integer,
    opcao_ativo character(1) DEFAULT 'N'::bpchar,
    opcao_bloqueado character(1) DEFAULT 'N'::bpchar,
    data_ini date,
    data_fim date,
    codiemp integer
);
    DROP TABLE public.tb_reports;
       public         heap    postgres    false            �           0    0    TABLE tb_reports    COMMENT     /   COMMENT ON TABLE public.tb_reports IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.codigo    COMMENT     7   COMMENT ON COLUMN public.tb_reports.codigo IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.seq    COMMENT     4   COMMENT ON COLUMN public.tb_reports.seq IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.codibasic    COMMENT     :   COMMENT ON COLUMN public.tb_reports.codibasic IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.codicli    COMMENT     8   COMMENT ON COLUMN public.tb_reports.codicli IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.codifunc    COMMENT     9   COMMENT ON COLUMN public.tb_reports.codifunc IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.opcao_ativo    COMMENT     <   COMMENT ON COLUMN public.tb_reports.opcao_ativo IS 'TRIAL';
          public          postgres    false    221            �           0    0 !   COLUMN tb_reports.opcao_bloqueado    COMMENT     @   COMMENT ON COLUMN public.tb_reports.opcao_bloqueado IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.data_ini    COMMENT     9   COMMENT ON COLUMN public.tb_reports.data_ini IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.data_fim    COMMENT     9   COMMENT ON COLUMN public.tb_reports.data_fim IS 'TRIAL';
          public          postgres    false    221            �           0    0    COLUMN tb_reports.codiemp    COMMENT     8   COMMENT ON COLUMN public.tb_reports.codiemp IS 'TRIAL';
          public          postgres    false    221            �            1259    56874    ufs    TABLE     ^   CREATE TABLE public.ufs (
    codigo integer NOT NULL,
    descricao character varying(60)
);
    DROP TABLE public.ufs;
       public         heap    postgres    false            �           0    0 	   TABLE ufs    COMMENT     (   COMMENT ON TABLE public.ufs IS 'TRIAL';
          public          postgres    false    222            �           0    0    COLUMN ufs.codigo    COMMENT     0   COMMENT ON COLUMN public.ufs.codigo IS 'TRIAL';
          public          postgres    false    222            �           0    0    COLUMN ufs.descricao    COMMENT     3   COMMENT ON COLUMN public.ufs.descricao IS 'TRIAL';
          public          postgres    false    222            �            1259    56880    usuarios    TABLE     J  CREATE TABLE public.usuarios (
    codigo integer NOT NULL,
    nome character varying(30),
    senha character varying(60),
    administrador character varying(60),
    codiemp integer,
    externo character(1) DEFAULT 'N'::bpchar,
    ip_conexao character varying(15),
    email character varying(100),
    master character(1) DEFAULT 'N'::bpchar,
    confsenha character varying(60),
    codifunc integer,
    senha_antiga character varying(60),
    senha_anterior character varying(60),
    id_grupo integer,
    avatar character varying(200),
    dtcadastro date,
    img bytea
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �           0    0    TABLE usuarios    COMMENT     -   COMMENT ON TABLE public.usuarios IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.codigo    COMMENT     5   COMMENT ON COLUMN public.usuarios.codigo IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.nome    COMMENT     3   COMMENT ON COLUMN public.usuarios.nome IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.senha    COMMENT     4   COMMENT ON COLUMN public.usuarios.senha IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.administrador    COMMENT     <   COMMENT ON COLUMN public.usuarios.administrador IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.codiemp    COMMENT     6   COMMENT ON COLUMN public.usuarios.codiemp IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.externo    COMMENT     6   COMMENT ON COLUMN public.usuarios.externo IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.ip_conexao    COMMENT     9   COMMENT ON COLUMN public.usuarios.ip_conexao IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.email    COMMENT     4   COMMENT ON COLUMN public.usuarios.email IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.master    COMMENT     5   COMMENT ON COLUMN public.usuarios.master IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.confsenha    COMMENT     8   COMMENT ON COLUMN public.usuarios.confsenha IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.codifunc    COMMENT     7   COMMENT ON COLUMN public.usuarios.codifunc IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.senha_antiga    COMMENT     ;   COMMENT ON COLUMN public.usuarios.senha_antiga IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.senha_anterior    COMMENT     =   COMMENT ON COLUMN public.usuarios.senha_anterior IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.id_grupo    COMMENT     7   COMMENT ON COLUMN public.usuarios.id_grupo IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.avatar    COMMENT     5   COMMENT ON COLUMN public.usuarios.avatar IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.dtcadastro    COMMENT     9   COMMENT ON COLUMN public.usuarios.dtcadastro IS 'TRIAL';
          public          postgres    false    223            �           0    0    COLUMN usuarios.img    COMMENT     2   COMMENT ON COLUMN public.usuarios.img IS 'TRIAL';
          public          postgres    false    223            �            1259    56890    usuarios_empresa    TABLE     f   CREATE TABLE public.usuarios_empresa (
    codiuser integer NOT NULL,
    codiemp integer NOT NULL
);
 $   DROP TABLE public.usuarios_empresa;
       public         heap    postgres    false            �           0    0    TABLE usuarios_empresa    COMMENT     5   COMMENT ON TABLE public.usuarios_empresa IS 'TRIAL';
          public          postgres    false    224            �           0    0     COLUMN usuarios_empresa.codiuser    COMMENT     ?   COMMENT ON COLUMN public.usuarios_empresa.codiuser IS 'TRIAL';
          public          postgres    false    224            �           0    0    COLUMN usuarios_empresa.codiemp    COMMENT     >   COMMENT ON COLUMN public.usuarios_empresa.codiemp IS 'TRIAL';
          public          postgres    false    224            �            1259    56896    usuarios_restricoes    TABLE     �  CREATE TABLE public.usuarios_restricoes (
    codiuser integer NOT NULL,
    menus character varying(114) DEFAULT '0'::character varying NOT NULL,
    usuarios character varying(114) DEFAULT '         0'::character varying NOT NULL,
    clientes character varying(114) DEFAULT '          0'::character varying NOT NULL,
    funcionarios character varying(114) DEFAULT '0'::character varying NOT NULL,
    produtos character varying(114),
    relatorios character varying(114),
    codiemp integer,
    empresas character varying(114),
    rcracing character varying(114),
    clientes_revisoes character varying(114),
    system_config character varying(114)
);
 '   DROP TABLE public.usuarios_restricoes;
       public         heap    postgres    false            �           0    0    TABLE usuarios_restricoes    COMMENT     8   COMMENT ON TABLE public.usuarios_restricoes IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.codiuser    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.codiuser IS 'TRIAL';
          public          postgres    false    225            �           0    0     COLUMN usuarios_restricoes.menus    COMMENT     ?   COMMENT ON COLUMN public.usuarios_restricoes.menus IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.usuarios    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.usuarios IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.clientes    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.clientes IS 'TRIAL';
          public          postgres    false    225            �           0    0 '   COLUMN usuarios_restricoes.funcionarios    COMMENT     F   COMMENT ON COLUMN public.usuarios_restricoes.funcionarios IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.produtos    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.produtos IS 'TRIAL';
          public          postgres    false    225            �           0    0 %   COLUMN usuarios_restricoes.relatorios    COMMENT     D   COMMENT ON COLUMN public.usuarios_restricoes.relatorios IS 'TRIAL';
          public          postgres    false    225            �           0    0 "   COLUMN usuarios_restricoes.codiemp    COMMENT     A   COMMENT ON COLUMN public.usuarios_restricoes.codiemp IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.empresas    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.empresas IS 'TRIAL';
          public          postgres    false    225            �           0    0 #   COLUMN usuarios_restricoes.rcracing    COMMENT     B   COMMENT ON COLUMN public.usuarios_restricoes.rcracing IS 'TRIAL';
          public          postgres    false    225            �           0    0 ,   COLUMN usuarios_restricoes.clientes_revisoes    COMMENT     K   COMMENT ON COLUMN public.usuarios_restricoes.clientes_revisoes IS 'TRIAL';
          public          postgres    false    225            �           0    0 (   COLUMN usuarios_restricoes.system_config    COMMENT     G   COMMENT ON COLUMN public.usuarios_restricoes.system_config IS 'TRIAL';
          public          postgres    false    225            �          0    56746    carros 
   TABLE DATA           L   COPY public.carros (codigo, codimontadora, coditipo, descricao) FROM stdin;
    public          postgres    false    202   R      �          0    56751    cidades 
   TABLE DATA           W   COPY public.cidades (codigo, descricao, uf, cep, codiibge, atende, codiuf) FROM stdin;
    public          postgres    false    203   �j      �          0    56757    clientes 
   TABLE DATA           �  COPY public.clientes (codigo, codiemp, pessoa, nome, razsoc, dtcadastro, dtaniversario, cep, tipoendereco, endereco, numero, bairro, cidade, uf, cnpj_cpf, cgf_rg, ddd1, fone1, descrifone1, ddd2, fone2, descrifone2, ddd3, fone3, descrifone3, ddd4, fone4, descrifone4, email, site, codicidade, codiibge, codibairro, coditipoend, codiendereco, codiuf, complemento, tipo, codicidadeentrega, codibairroentrega, coditipoendentrega, codienderecoentrega, codiufentrega, cepentrega, cepcobranca, codicidadecobranca, codibairrocobranca, coditipoendcobranca, codienderecocobranca, codiufcobranca, cidadeentrega, bairroentrega, tipoenderecoentrega, enderecoentrega, cidadecobranca, bairrocobranca, tipoenderecocobranca, enderecocobranca, numeroentrega, numerocobranca, complementoentrega, complementocobranca, ufentrega, ufcobranca, codiclipai, dtini_contrato, dtfim_contrato, dia_cobranca, valor_contrato, boletos, nfe, licencas, travado, ativo, inadimplente, especial, bloqueado, codisistema) FROM stdin;
    public          postgres    false    204   Tz      �          0    56776    clientes_revisoes 
   TABLE DATA           a   COPY public.clientes_revisoes (codicli, codiveiculo, data, km_revisao, placa, total) FROM stdin;
    public          postgres    false    205   k)      �          0    56782    clientes_veiculos 
   TABLE DATA           W   COPY public.clientes_veiculos (codigo, codicli, placa, codicarro, codiemp) FROM stdin;
    public          postgres    false    206   �)      �          0    56789    compras 
   TABLE DATA           T   COPY public.compras (codigo, codiemp, dtcadastro, codiforn, totalgeral) FROM stdin;
    public          postgres    false    207   *      �          0    56794    compras_produtos 
   TABLE DATA           k   COPY public.compras_produtos (codicompra, codiprod, codiemp, data, qtde, valorunit, totalprod) FROM stdin;
    public          postgres    false    208   9*      �          0    56800    empresas 
   TABLE DATA           �   COPY public.empresas (codigo, descricao, codiuf, codicidade, uf, cidade, bairro, endereco, tipoendereco, nome, razsoc, cnpj, cep, numero, fone1, descrifone1, ddd1, email, site, complemento) FROM stdin;
    public          postgres    false    209   V*      �          0    56808    feriados 
   TABLE DATA           }   COPY public.feriados (codigo, descricao, data, facultativo, municipal, estadual, federal, tipo, tipo_do_feriado) FROM stdin;
    public          postgres    false    210   �*      �          0    56813    fornecedores 
   TABLE DATA           J   COPY public.fornecedores (codigo, codiemp, nome, tipo, ativo) FROM stdin;
    public          postgres    false    211   w+      �          0    56819    funcionarios 
   TABLE DATA           f   COPY public.funcionarios (codigo, codiemp, nome, tipo, ativo, vendedor, codidepartamento) FROM stdin;
    public          postgres    false    212   �+      �          0    56826    grupos 
   TABLE DATA           3   COPY public.grupos (codigo, descricao) FROM stdin;
    public          postgres    false    213   �+      �          0    56831    marcas 
   TABLE DATA           3   COPY public.marcas (codigo, descricao) FROM stdin;
    public          postgres    false    214   ,      �          0    56836    movcaixa 
   TABLE DATA           =   COPY public.movcaixa (data, saldo_ini, caixa_id) FROM stdin;
    public          postgres    false    215   4,      �          0    56841    produtos 
   TABLE DATA           t   COPY public.produtos (codigo, descricao, codigrupo, codisubgrupo, codimarca, valor_compra, valor_venda) FROM stdin;
    public          postgres    false    216   v,      �          0    56846    recibos 
   TABLE DATA           �   COPY public.recibos (codigo, codiemp, data, valor, recebi_de, endereco, codicli, codiforn, codifunc, codiprestserv, tipo, descricao, descricao2, descricao3, rodape, emitente, emitender, emitcnpjcpf, localedata) FROM stdin;
    public          postgres    false    217   �,      �          0    56854    t040001 
   TABLE DATA           4   COPY public.t040001 (codigo, descricao) FROM stdin;
    public          postgres    false    218   �,      �          0    56859    tb_compoundpk 
   TABLE DATA           B   COPY public.tb_compoundpk (id, itemdate, description) FROM stdin;
    public          postgres    false    219   -      �          0    56864 	   tb_graphs 
   TABLE DATA           D   COPY public.tb_graphs (serie, value1, value2, date_ref) FROM stdin;
    public          postgres    false    220   :-      �          0    56867 
   tb_reports 
   TABLE DATA           �   COPY public.tb_reports (codigo, seq, codibasic, codicli, codifunc, opcao_ativo, opcao_bloqueado, data_ini, data_fim, codiemp) FROM stdin;
    public          postgres    false    221   �-      �          0    56874    ufs 
   TABLE DATA           0   COPY public.ufs (codigo, descricao) FROM stdin;
    public          postgres    false    222   .      �          0    56880    usuarios 
   TABLE DATA           �   COPY public.usuarios (codigo, nome, senha, administrador, codiemp, externo, ip_conexao, email, master, confsenha, codifunc, senha_antiga, senha_anterior, id_grupo, avatar, dtcadastro, img) FROM stdin;
    public          postgres    false    223   �.      �          0    56890    usuarios_empresa 
   TABLE DATA           =   COPY public.usuarios_empresa (codiuser, codiemp) FROM stdin;
    public          postgres    false    224   �/      �          0    56896    usuarios_restricoes 
   TABLE DATA           �   COPY public.usuarios_restricoes (codiuser, menus, usuarios, clientes, funcionarios, produtos, relatorios, codiemp, empresas, rcracing, clientes_revisoes, system_config) FROM stdin;
    public          postgres    false    225   �/      �
           2606    56750    carros pk_carros 
   CONSTRAINT     R   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT pk_carros PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.carros DROP CONSTRAINT pk_carros;
       public            postgres    false    202            �
           2606    56755    cidades pk_cidades 
   CONSTRAINT     T   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT pk_cidades PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.cidades DROP CONSTRAINT pk_cidades;
       public            postgres    false    203            �
           2606    56772    clientes pk_clientes 
   CONSTRAINT     V   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_clientes PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_clientes;
       public            postgres    false    204            �
           2606    56780 &   clientes_revisoes pk_clientes_revisoes 
   CONSTRAINT     �   ALTER TABLE ONLY public.clientes_revisoes
    ADD CONSTRAINT pk_clientes_revisoes PRIMARY KEY (codicli, codiveiculo, km_revisao);
 P   ALTER TABLE ONLY public.clientes_revisoes DROP CONSTRAINT pk_clientes_revisoes;
       public            postgres    false    205    205    205                       2606    56786 &   clientes_veiculos pk_clientes_veiculos 
   CONSTRAINT     h   ALTER TABLE ONLY public.clientes_veiculos
    ADD CONSTRAINT pk_clientes_veiculos PRIMARY KEY (codigo);
 P   ALTER TABLE ONLY public.clientes_veiculos DROP CONSTRAINT pk_clientes_veiculos;
       public            postgres    false    206                       2606    56793    compras pk_compras 
   CONSTRAINT     T   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT pk_compras PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.compras DROP CONSTRAINT pk_compras;
       public            postgres    false    207                       2606    56798 $   compras_produtos pk_compras_produtos 
   CONSTRAINT     t   ALTER TABLE ONLY public.compras_produtos
    ADD CONSTRAINT pk_compras_produtos PRIMARY KEY (codicompra, codiprod);
 N   ALTER TABLE ONLY public.compras_produtos DROP CONSTRAINT pk_compras_produtos;
       public            postgres    false    208    208                       2606    56807    empresas pk_empresas 
   CONSTRAINT     V   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT pk_empresas PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.empresas DROP CONSTRAINT pk_empresas;
       public            postgres    false    209            
           2606    56812    feriados pk_feriados 
   CONSTRAINT     V   ALTER TABLE ONLY public.feriados
    ADD CONSTRAINT pk_feriados PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.feriados DROP CONSTRAINT pk_feriados;
       public            postgres    false    210                       2606    56818    fornecedores pk_fornecedores 
   CONSTRAINT     ^   ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT pk_fornecedores PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.fornecedores DROP CONSTRAINT pk_fornecedores;
       public            postgres    false    211                       2606    56825    funcionarios pk_funcionarios 
   CONSTRAINT     ^   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT pk_funcionarios PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT pk_funcionarios;
       public            postgres    false    212                       2606    56830    grupos pk_grupos 
   CONSTRAINT     R   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT pk_grupos PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.grupos DROP CONSTRAINT pk_grupos;
       public            postgres    false    213                       2606    56835    marcas pk_marcas 
   CONSTRAINT     R   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT pk_marcas PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.marcas DROP CONSTRAINT pk_marcas;
       public            postgres    false    214                       2606    56840    movcaixa pk_movcaixa 
   CONSTRAINT     T   ALTER TABLE ONLY public.movcaixa
    ADD CONSTRAINT pk_movcaixa PRIMARY KEY (data);
 >   ALTER TABLE ONLY public.movcaixa DROP CONSTRAINT pk_movcaixa;
       public            postgres    false    215                       2606    56845    produtos pk_produtos 
   CONSTRAINT     V   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT pk_produtos PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.produtos DROP CONSTRAINT pk_produtos;
       public            postgres    false    216                       2606    56853    recibos pk_recibos 
   CONSTRAINT     T   ALTER TABLE ONLY public.recibos
    ADD CONSTRAINT pk_recibos PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.recibos DROP CONSTRAINT pk_recibos;
       public            postgres    false    217                       2606    56858    t040001 pk_t040001 
   CONSTRAINT     T   ALTER TABLE ONLY public.t040001
    ADD CONSTRAINT pk_t040001 PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.t040001 DROP CONSTRAINT pk_t040001;
       public            postgres    false    218                       2606    56863    tb_compoundpk pk_tb_compoundpk 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_compoundpk
    ADD CONSTRAINT pk_tb_compoundpk PRIMARY KEY (id, itemdate);
 H   ALTER TABLE ONLY public.tb_compoundpk DROP CONSTRAINT pk_tb_compoundpk;
       public            postgres    false    219    219                       2606    56873    tb_reports pk_tb_reports 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_reports
    ADD CONSTRAINT pk_tb_reports PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.tb_reports DROP CONSTRAINT pk_tb_reports;
       public            postgres    false    221                        2606    56878 
   ufs pk_ufs 
   CONSTRAINT     L   ALTER TABLE ONLY public.ufs
    ADD CONSTRAINT pk_ufs PRIMARY KEY (codigo);
 4   ALTER TABLE ONLY public.ufs DROP CONSTRAINT pk_ufs;
       public            postgres    false    222            #           2606    56889    usuarios pk_usuarios 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuarios;
       public            postgres    false    223            &           2606    56894 $   usuarios_empresa pk_usuarios_empresa 
   CONSTRAINT     q   ALTER TABLE ONLY public.usuarios_empresa
    ADD CONSTRAINT pk_usuarios_empresa PRIMARY KEY (codiuser, codiemp);
 N   ALTER TABLE ONLY public.usuarios_empresa DROP CONSTRAINT pk_usuarios_empresa;
       public            postgres    false    224    224            �
           1259    56756    cidades_idx1    INDEX     E   CREATE INDEX cidades_idx1 ON public.cidades USING btree (descricao);
     DROP INDEX public.cidades_idx1;
       public            postgres    false    203            �
           1259    56773    clientes_idx1    INDEX     B   CREATE INDEX clientes_idx1 ON public.clientes USING btree (nome);
 !   DROP INDEX public.clientes_idx1;
       public            postgres    false    204            �
           1259    56774    clientes_idx4    INDEX     F   CREATE INDEX clientes_idx4 ON public.clientes USING btree (cnpj_cpf);
 !   DROP INDEX public.clientes_idx4;
       public            postgres    false    204            �
           1259    56775    clientes_razsoc    INDEX     F   CREATE INDEX clientes_razsoc ON public.clientes USING btree (razsoc);
 #   DROP INDEX public.clientes_razsoc;
       public            postgres    false    204            �
           1259    56787    clientes_veiculos_idx1    INDEX     U   CREATE INDEX clientes_veiculos_idx1 ON public.clientes_veiculos USING btree (placa);
 *   DROP INDEX public.clientes_veiculos_idx1;
       public            postgres    false    206            �
           1259    56781    fk_clientes_revisoes_1    INDEX     W   CREATE INDEX fk_clientes_revisoes_1 ON public.clientes_revisoes USING btree (codicli);
 *   DROP INDEX public.fk_clientes_revisoes_1;
       public            postgres    false    205            �
           1259    56788    fk_clientes_veiculos    INDEX     U   CREATE INDEX fk_clientes_veiculos ON public.clientes_veiculos USING btree (codicli);
 (   DROP INDEX public.fk_clientes_veiculos;
       public            postgres    false    206                       1259    56799    fk_compras_produtos_1    INDEX     X   CREATE INDEX fk_compras_produtos_1 ON public.compras_produtos USING btree (codicompra);
 )   DROP INDEX public.fk_compras_produtos_1;
       public            postgres    false    208            $           1259    56895    fk_usuarios_empresa_1    INDEX     V   CREATE INDEX fk_usuarios_empresa_1 ON public.usuarios_empresa USING btree (codiuser);
 )   DROP INDEX public.fk_usuarios_empresa_1;
       public            postgres    false    224            '           1259    56906    fk_usuarios_restricoes_1    INDEX     \   CREATE INDEX fk_usuarios_restricoes_1 ON public.usuarios_restricoes USING btree (codiuser);
 ,   DROP INDEX public.fk_usuarios_restricoes_1;
       public            postgres    false    225            !           1259    56879    ufs_idx1    INDEX     =   CREATE INDEX ufs_idx1 ON public.ufs USING btree (descricao);
    DROP INDEX public.ufs_idx1;
       public            postgres    false    222            (           1259    56907    usuarios_restricoes_idx1    INDEX     c   CREATE UNIQUE INDEX usuarios_restricoes_idx1 ON public.usuarios_restricoes USING btree (codiuser);
 ,   DROP INDEX public.usuarios_restricoes_idx1;
       public            postgres    false    225            )           2606    56908 (   clientes_revisoes fk_clientes_revisoes_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes_revisoes
    ADD CONSTRAINT fk_clientes_revisoes_1 FOREIGN KEY (codicli) REFERENCES public.clientes(codigo) ON UPDATE RESTRICT ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.clientes_revisoes DROP CONSTRAINT fk_clientes_revisoes_1;
       public          postgres    false    204    205    2810            *           2606    56913 &   clientes_veiculos fk_clientes_veiculos    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes_veiculos
    ADD CONSTRAINT fk_clientes_veiculos FOREIGN KEY (codicli) REFERENCES public.clientes(codigo) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.clientes_veiculos DROP CONSTRAINT fk_clientes_veiculos;
       public          postgres    false    206    2810    204            +           2606    56918 &   compras_produtos fk_compras_produtos_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_produtos
    ADD CONSTRAINT fk_compras_produtos_1 FOREIGN KEY (codicompra) REFERENCES public.compras(codigo) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.compras_produtos DROP CONSTRAINT fk_compras_produtos_1;
       public          postgres    false    208    2819    207            ,           2606    56923 &   usuarios_empresa fk_usuarios_empresa_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_empresa
    ADD CONSTRAINT fk_usuarios_empresa_1 FOREIGN KEY (codiuser) REFERENCES public.usuarios(codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.usuarios_empresa DROP CONSTRAINT fk_usuarios_empresa_1;
       public          postgres    false    224    2851    223            -           2606    56928 ,   usuarios_restricoes fk_usuarios_restricoes_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_restricoes
    ADD CONSTRAINT fk_usuarios_restricoes_1 FOREIGN KEY (codiuser) REFERENCES public.usuarios(codigo) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.usuarios_restricoes DROP CONSTRAINT fk_usuarios_restricoes_1;
       public          postgres    false    223    225    2851            �      x�e[ɚ�<�<�O�in�h�1�7���o��9&"Sظ��3"%�)������T��n�fg -�ao�׵�a���O�~��cVo�e^�v��>HO��}_F���POݴ���v��>��˾�we��?묰a_[��}Qn�l��:��O}bWP57����ñ �q���/bj�ު�3��<���q��ٟ����_|�|V��˼/��w�a��K�/Mz9v�-�V�P#����k�a����6�hR�l�t�@�>��U���2�Ԧ�dpj���q�U���7���*%$�J���7�����Ͽбr��7?��@�������HTD���U�����z &��h�;p�!�q{��(�I�b֧��k|l?aR҅%���f���#3 �6�۶�SC�?�f#��pT�T�|���F=g͸t8�K�1{W��n���gv���ĵ�	b��IEs���S4K��با��)��3��k������pݛe��9��ԍ�y��wA��x�;Lk.��=`�]E��]Z��s�������汞�i�Kq�k/��q�fX�s孈m3�zAu�T�[L�����gƙ6�>�:�w΁׈�]�C.��Å�
�BVp�<'h�aDx1*6ݭk�cZ��a����ώzU�#�pH�{B���i���0�.;ef���+����8!����7e���-�	_l�sV@5������
?��L�kL鰜N����V^/m��:��!�2��QD?��4ڬ�#fl�f�(��=B���36�bn����������-r6�m_1ƛ��p>t{���i�6%P�b�:���`]�Z�%�:�K}�N�<�E��c�ֿ�vY2>�.�>�9�+��Rİ�^ĸ�₦ZEG��I4�`&��9�`�a����v�� �*
.	��������H�X�3L��|� P)зS�Ȅ�+��mP(p�/[�
2���if&��Y�I��FV���r�̫�R�1�܎MW�pRzK�g�}��?�p̂=��r�B|)`��[���L�ϋ��Bm��8 )�ַ`x�gϮ�Y��0FA+;�'����H�}"ygP~|L�K�ŽB�6 �nvUd�����O�;�w�"�������\3��T�-����?�c�屪:����� ����s��'�x.3W�����{��ܐ�����0�JO��O�$=.�x�����Xf$�b�swLњ��SM�a����3:c��2�S}��n.H8��q�9aL@".�N��*�uCE�$T�I�zMC��1�Ś��9�g����󂙔��`+?�m��μQx��k���$r5��fT"��CW�1��0a|R����mH�Fs�u�3ti\�9�Q ����3ۂ�R�`^H��}!F�4�(�=����г_�E$��A���!\��Z�K�V~^�\�gR��a�HQ3�ܞ�\���k��<j1��>�j�:��ϼd��G���#T��5��G!WI^Nl])8�}6��w�Z	_�+�EJ+I��))9������"!$�;r�Q��R��{��@�TT!!����
U+ԃ_���T�$�` .s�&�._��|T�>�F_�Yh�@T�NP��+s�꼠�y��Z�q8�4��(}�\qP}������¥��H�u�S� ��
�qu���?i�J�t��,KY$˭�#پ䒲�l�u}i;V?^[0����J�vl�@|1#V U@z`f����-�O�T*�Є3�dWHa�p��L�6�\�:���P0�n��ȕY��~�jmX��	ޠ4�%�;XX�Β���P��:�� /Mҹ_δ��$��$��$u��s�l�,�}��:�fw8���t:K�N}�����*f��}�1y�Ҟ���R![�6M�ܝ8�6����C_��4�R_��	�\ڤ�Z˗6i|,��m����q��U��NC (0�0��%�Pם����EQCE� �"���+}�j�Hd�pd/%�w�D��WA���D�`��>$#�g��o�R�_�;�ҥ��l4iN
�4��$��Qgh�1�N4�%�O+�C�bТ�F�|� �m�<�a�/�]�[�Z�E��?;��ۆ�R�!�$x�4qh�vM<���&���TNy�8k��"�ǅU8^�+�M��|���)yH�T��׿ȉU#��-�w�x�x�{$2��4�⊛2��S�� �*��I���|� �WÀ��Bj�=�u��͹����x���j�u�!Up��%���-j0�F$�2���r���(	A�Qf����=+�ג���>� �%�5
����D��_���Z�2U@M%E��I�I�m��)oED���������>d�u'�3��A��4wPre���b�����'Q�!_�L�]���P�ѝ5�7�m��:�o ���l�Đ�;2�G�Yq��#H��K-� O{��@D:�khs�"ku�l�#dߠy�����M��J��#��d�I
���1&ѪX�����`�*����	r����E�`��Њ��<�o��V�w}ê|���N6�,��`X�i��U�Z��6O�X���T�æ�9t��V���^��ނ>�1�M�Jx$P*@i�EҳYf�yla߀��p�^�u�oC��á�]�¿�������Y�@�J�x�o8�؝`��L#���m��kX$X�
��|i҂V8	�?�Mb���a	r �ڦ�6���0�mL ��6V����"��,�A�>�<wZ�Y5���" twJ�R1lY�:��c+\Ѳ�}U�(�-��`�e�U,|s�"�mR�Gv�����hZ.�
 � ��9�ڤ٭;���r	�!:����,-��/�eG�y-[V
��b{�3�<wc{��~Ί
X��.,��:�Dk�Ig1�"��Ẽ�T�f5��^eĿ��/�Ӟ�E��2����+�'�p.�ES%a]������ezD�+@w���(uY&��[��]A�^�V�8z|�.�We� �$OX�i9��0*8�`�Y,�w���R��j%7�p�2Җ��O��uF���ؤ�ݱ��o �TC���"I����>��O$ �pr��d7���{6�7@�6a����[�)��G	�P	,��X��T�'�Pd�;���q����E����Z	�Q��ZDMn٨;�B�[�>�p���m��7, �����'e/�pB�g����(�U
I�':��̞��\9k�{�z��c��Ux�ן��{U��,>��T�c!Yyկ�Y�9����-!��*yѾA��BS ��M��֪"�Zq���z��<y��#�a�(�m�F��w_P��Cv9ߖ���࣮H��%�b��O"|y�l���=�.��,�d�<���K��������
��Ig�}g��ͥ��?#B3���ov�9H���}Q须|�����p|�5��I���ǳ[g��MGW�����RڸT#7�:pnC��3��,ײ���į��J5�L�c��OQ��`���I�����JBVlX�g��Ӭ���>#?�N��}�&��阩9q�-�=��u�2�����Y)�G�1x����a~�oa
$^��B|v���P���Ak ��:k�;J��@_�Ϸ,T9�6�;ݩ2\�P���_������y������&���o��H;�:Ψ�����9z�tǺ�U֌��Z*Ja�I�#�O��t�`�"�D�{T%X��>C��ex3�����nȘ� ������]Ul��5\�<��d64/ ��y(�z��	)��ѷ|��LW�0hGBgF��0�r"�a����՛p�Y��;��:��5O����^�s�>O+�p�2�v��^7�n�y|�8p+��j��o��"-ɼ4}y(�49� ������D���|#��աr�1��X5{I�������%)�\�_�$������h��x@��d���%_&��k ��H��8\�Y}�v~��n:i:�g������vw;��o�����A�������j�Ԅߵ��B��M:CE���`T�e��O,p�y?��|����4& �  �Gswd��P��,c�̷lZx��O���.�G�D]��n��B�Y:���ƙ�E�ԏ~�Ě���U���.u3w7>0��2Yu�Po�EZ^�Uᕬ�����.t��Q�[T�,ܽM;h�m?�K&)��'�si/��q�^Y�=,?��@���r�0GY+� G���]&��x����Ia�I8]���u��d����`�N���F�:$�Z��|D������I�o���|������n��?������5�L�F��N#�� ��%���@�1J�D)�:��I�A���&������E�����C�N�Tv�J��o���L��j��pHK|:�b,y�a���DxV��uL3V=�k|�R᫦�)�N���{z�B���"g���󦑗X�^��0Ŵ�|�4���3�# �0������kq���Je�$�0����!��(��U�*��yoǧ30�a�E�j���Llx�	 ��܄� ��	�nm0u����,B.��s�����>� ���,#@�� ;.R��<n��S���m*���݁[��ͼݓn�}˩g`
R*���rd���;<�`�yQ���~K��v�Ƴ��ҡ1��Tt�i��>�):�9X ��_g��ꥍe,. ��y.l)�9����c �=�9a(��kʼ�� x�x��y'wB�4݌%O�n&f$�����P��	�x�� �١_ڹm8F��V�Ӱ=X:��j�J�`�2��Sn ���MFؑMw��k���1b�����!=��X7����歙1o�Z� ��ѷ7�>�;���8s��z�l1Ȏ�?��[^�rA�m|n]r�5���c�"���~?��鹬��Qpp��]�Ux�K�;�����sj��X��D�;�|��ew�}Lڧ�D��G��e������<��i�>�9�O�8���VFb��@b�������P*�>a��
�h�z��k�aCb�((�����b�o��
������� �ʓ��hK!���S�;�I"�n	Q��Jp^Nȕ��'P�t	,D��r1�XZNt�*�Ŋ�5�!�X�|Up��v/��U���tW��-���̡�"Uri�ʚ�1��I����E��=UR��Q
>��Q��|e���Ux$C(B��7p�64����jG@��c�� h'P*��G%��|s��4�����B�@���
�h2�N�EwZ0��{����vr��O9�t��7w ���S_gt�X(q�;e��q>=�Ru֐�d���n�Y�\�	�u����#15�*�&9l߆�n�=�@ �m�敉},s���2]ፏdM�|�����7�u�e*d��[�~{�[���X��FDDM������ک&b�T��g
�H�3׺�IkgJͦ�>��d�`S���o���K �r��7�94���\�}��\������h�.�3���\�S/nm
�w�߲_h4�G���+#m���>_���8�d'�7�G��o�ɓ�	Q	��ѕ�i4}(���l� �s����J4~�1�g�|������y�]��B���o]Y/�ڭ^t��u�pQD﨧���Vʿ�Id��O�o�uG�B� � N��[T�AW���w��+�G��h�)W�C�|��X񟘊��+�m5����S�D�G�����������eY�j�����5uˤW)��]���5�GF�u8A�K�E������O}˻�U���z�Q��d+�ge@�5�c�\��ǖ�[��Ǝ&̓����+y����ɩy�1e�/H�ؿ�Q鮳}�G�¯���U.���Ξ�?���]�b������ar!�:�J���		�O�&>Y.�QIU���5ۧU�-0�^�"�E��HaQ�uP�N��R���2A�E2�ۀ�����ol'�@ܻ[x{U���W�^� ���"8 Z���tY�bW�D�y�_�tYDc2)Ee���<K4�(1-��+�
����V����uMȳ����}ʙ`e�>s3�Bx�$���N
�g��ʁ�w�y�S�s������{Q��_�����T��,�ڱ�!�,��r�W�A#>b�� K[Y�^�r��>>jh�ݱ>Ϊb!8F��?`
w�*�i���������e�B$|2����8�e�i���3W^�S� 39|�m<[�g��v7�m��n>D�&��2�9�'f23�N�W�^����k���?,ި5      �      x�t��v㺎.|����W=��3/GI)m[^�������9~ $ AU��Z�LQ  �i���u��#�yJ��x>�O���t?����q�����o������C��SCL2�w�N������ |i�x������.��ɵa��n�y]�>���Ƴ*g��s�}>M��5^��|����!��s���H2�?w@=}/��Ȉ,$��}8�n���v�o���#��q�������GGFE�N��r�.�����׸��׶~���ġ���W�\����v���Ѯ�Ď�ǲ��7d�e��s��a�3^_��o����S{H���~��޷� ��̧u�X�mz��ן���	=�����s��Ʒuy��ԏm�	��zzN���6~l+0��Н���Xַ�m^����:������q/<b�ӹ��s��#L���$�;g8���Q���b�3����l��L�?��G���tY�[�'�K�>k$�;�=�u�O���y������}���NLK����g��R�S�?��P }�>Zy|�g���4���d����I���}����1�-B) �n*�3fyCYq�~: i��s�)%��i��w�L�)��$ �눛Yv��>��:���#/����,o7d�N�ȧ&�T �:6��BJ(��l��/`���� ���3@�������/���	b�����n��t�:1��ʹ����_}���x��2�=A`L�9;҆H���K�7힧�s��~�@��BҐ!B``����������Hލ���𻙀����m�3a��e��A�^`��;�:mc�cކ��2�l��d6e�6��7<���1<3����� �(��is;��x��4D��o�sLL��1���E4l���G�߈�N_tQ���c��=�zF��Xx�u'�a�/۪�QR�,Ne �r0�'�3s���J��5� �w9��sY�V>��w���6���<�R��I #���e��+�by�o@$<@ٹ,�?!���V����E���s*���~���5~��z)��t?�����;���u'J
����Unp�]�,"��f��%��ȇ�t�>:�)E2kc��'��v�:L��)8��x�W�� |G� &�N�{�X��2�A� @SݗANE8QxE���(J �'@Ň�����
�֝H�	2���Z�����d��0GfM����'n��Y�kR�a�i}Ԯ�#8��i�u���6.K7'.p!�HD�7H�VR�?ۄ��x�ZV�6/XD�o��j
�������3�>�{�Qwl0�B�$��WlPea�(�
2P�g��p�c�gHg��T�:���4t�s����;�*mit(�Q���L�]O�Av"��V��wB�P=���|L��#�=���~)�����IR<�CKz��zJ'�K�U�CTyf��	��<'�����䔭����Š_�c�-�Aa��'����A	G�kS�F�00���jS$��y�"�O�,b�?��0��K���(�
eG?zN�`3�̾N�u)"U2.�d���`��px�H:�s\��ƒk�Ϯ"�r+e��7>�X�Ȭjd�ɰp铨�	v�}����7^<�#�Q5�ʸ͠8�B�Vc�5��|�f�C����r&�^���=�,P��vV�0*@��v
T���C�Y�x���6���b
�״�F5�:];̥(ñW >��ZG8���E)nL:m +�5\�Qx���`�.��=Au�S�B�&|��r����2HG
���:����Jޝ�;�sC�j�n5?w�@�#�F�� �q�70fc��qf��Ju�to�8��]==ސ]�qr:FP@s��!]X�0GW�wA���Q�\.:�N눾~�J�����4Y�Aa�t'�i�Q^&��P�޾���@wЉ�>n�o1T���5�a*:����8��{���Kk������>D��h_�I����'�����Z�y�����ɲ��vf�� ŴE��}����*�,����\,[�O�&+��xvE���yH�L�>W��_�j7��Y�Ȣ�$v.���{��.���d#g��}�N^Z<h@��6��6f������@O_��E���n@;LL�(�UK�h��Mw�W�w��� <`��xf1
<ʷ�ɶ�,:j����T[d^A�B-Z�� &�I$&�s@lP��8��@FL`�O^�"C�u�?M���Jɂ�ҹp���� ����{y-�$�����د���E\:}�z)�p���?d�U]>}md��
����v��Xef^*��Y�$쌼0�������|e�'�p8͏��v�i�
��Ll�����Gd��=8�N�4_FЄ�W5G.���*���_d���wyce�4X3{m�� 0/�]��^T��6�xQ��{[��:�Vc�6]�Q��1������+�"�	�4/?�Π2'�Z���F�r���N�=�`�zG�|T�g�ȋ�3¶�&ɢ�a�A`��d��: ��w��O E�ͷ��܉Rv��M"�e�*b����;��x"�˷EV�[���>�n@-�B��h6'rͯ��>���(�����o�u���v��~�%GR/?���Y�)�ɲ�v%�cd�9�"��xm�6^�Z�0�(���s�� ���;w�j��>�Gt�z�����,/��l�7d	WO����cB����ϼ�/�}k��ʡA<��^�m�+��uP�0~!���釿��LЈ������s|'���ӓ�.g�d��,�U��9,�-�L�$��s�E$s�s��|�d�Aus�$��sEm��k�D�g9��P�Ol�q�}LȂ?�]�"B�WZ�F�'��z�z���S����P���X#w��73k&�j���$��Č�Ѹ�	�`r��u`����iϞA�P�@�Q8i�s(�;,�P�0G�`�����	�E��AAr����E(�/9��v�����Ǽ#B��d���"]���>��ďS*p��쌆˃��Ohp0��R�]�o�H3���<�YyV�RBm�yf�D���W�y�p�q�����>_g0���ٷ%����ss������ӟ'�`���j"z�����S)�aУ��=[hnAA�N?=�`'�	k
lO8���oJe��G�:�͝�Ǫ�`v"ˠ��k�
�8<(>�i�����`��T�z�� #�F8��4�}-��G�
��A��O���:��O��L�����gy���S���c�qj���a�޷NHS�T�-{���a���[L:�,(�wP`�Uy�*�a���$����Wt�|7��甧8|�� 6���s�|G#���a��t��:1�}P{��L�K߳Mt%4�eb���Ư�d>�� �;��t�]@�8-3lX�rE�w��B^y����{����m�,��H:��`�*�x�艶���{C��@���C:��D�)�U?�wu��?޷��.��d��Cs�`w)/�S�I��7or�|z�.B�v��5^��.��TY������L�b��x�Myd��ÉW�ct�;�_�����ct�;j��4q�CųEFȈ��+�Ҙc0L���$P̑�1J�}y_�k'��<�^S���	�|8�x����+�LB�'6$,:��Q^7���0���9�sу�������@ɏ�]���f����A@�?�������	��a�����@�������|,�6����\ym������y�=ۦخ�@�M���q�ɏ�_�d41�<X�#��S �v]��Yl�و�7*7m�:�Hb�a(Y����wg#��}-(�h�h�Fz�t�)���9��ze�#��+:�$��Z�K_�B-Q*�^
3�b2;;�H��}�U��<�����r��?�L�}D}l)�Ah����j[	��L�شm�t�G0x�amm�������:���1A���pG�vIEg&�'h hi~۶ի��X�����T�΃�>����- |�M�[C��6�`&��y$Cb�y0G�xu�lݎb�y���a    `Bϐ.F��p|��㰓��*��`���ݘ=b[]l������1N�\Sn�W��4��81�<�|�7gY�����`����2G,/���C�/��;���h�6��<�w�f��A�ŉ����C��(��}�#3}W��	�n�����}��鵋�zxJ�4�s��`��	J(��#��ь3+l�;hSg���PB,Fh8����{ߣ�ÜD��2h��ܾ�/��]8d��tm��p&�K\�4���z*;:zc�y2���¯���hA�æ�.�^�J;�?z���n��ᳪA^`��]0�lew=t���=�+��Ǿ�=l�hyV��:�u�짴՟��-����s��kh���B/R�M*o�w9�a��d"6�>�*q�@�_o�A���iQ�b�Q+֍b֠�?A�`Ѧ�	\�X��>8�$�a�Q4L?�E�x�3Ž ��q�5_�ΙlT�kH���5�s���VG�rg�E䊬&'�H(���	�*��#ߘ:�gZod����[T[�E�x>��2����c��ŷ�7���0z�A}6�=�9��K3�`��
�uY�l7[9=��:�;ء(�E�ҫ����{� V E�RdL����\�� ����8�����r�J�?�I��.��W_��y\�1�{����~e���{��YiX�`�r��]Oχ��h�`:��T�m�5��BDQ��fE�4�Ѡz����wˇ.X�k{�C/}��M;
x�1�s5�����_��ѪǘA���s{���V��튅S�O;:	�zbp�������hl��q)�31��2��,l���{?R{ h`6F��)��SL��pE�⬋�(�t�+�Q��k�/E�N��R����\)�������
��+\�~�<�����^,a�K�������<p�|q6'B��R�E�$�N�GD�N�;jA.�F�#�g:Ѭ�pd������)��g�{�֬'F��������YWA��\����k~r��%�� ˀv���i��Ț> ����|�_�0���M��U��ư�m�-Ci�����GW�c���aF�kʦYv���0����t�f:�M�\Q��2�X� w���`�׾�)�ÙR0���R���f)&���.���J�0�JF>�[����W���}	:X���@� }mBrD���0�@	�L���xF�,BM��dJ�J�4`�Gc
:��E@��z�>�"M�(k������#c�c����I2O�����Z�Q�A�D��>w���aʔ�1�Ӷ��,����{�@�v`��Z�g��g3�`�)��**"���������B�@v��')Y%,��$!�;�0J�vȁ7&��(A�0A�<�(�:������W6>��Ź���|guĪY��W����:�j��E%�;�����7�gd�Ⓞs�(���[sE�c��W���vU%Ѐ`�S1�c	2�0;W�a��L��xڮ�J. ��	%".Es7���?��J,r�$��	t߈�}�5j��l��,>�$5���(��F������&<Y/l��#�M#�( ��g�Ќ��%A�D�e�%��g%B?�&�o�"�N���P�����\�*4�_��;�Kt:�㵨ɀ�u� ����FE2?�:�h6���9�l?P@X\�J)�7����*2�F�ɥ�l/�^&��uB��.Y�^*'ʝ]Gmw6ν�7 ���uE��&(C5�[�%�J�Yp�M�#Ni;S��eҀ�7_��(�SWMї�%eW�0���F�|ϓ�Bt�~G�ri�@w{�����=�w��R���ܙGY��,���\�/4E�)e3�?�l�w;DM��#��eG��5�h�z�B_	�}96,R���h�E)*1��^�'�R�Ô���6�;�	i���e����n�	�/�q��1֕"�ob�Ȍ#;��Cz�l�/�vv�����B�֞�Tez�cR��z�� �'I"�a�1���	��D!�;���H�&�������ŏ��l��2w�B	�U���B��1�xF����cP�#�5(���bCEvI{+�<�M+��6>����e��:~��9�E좆���Ǔ�t��2(��/�&���ea5��Q\��&X���'\_��X������ְ&�b`�D2��,k�qM0����O\d��Vru���5
V:\��P&3�%�#��c���΃�@��ٶx�F
�*8�X�\��Cߗ�0	��5Y��g����X�úܧ+�8�z�Oc;���-`���kn�_���pV
����w��K�xų�GU��1N�l/&YJ6��g�^\F/�V%)8�1
���%���bt2�0=FFL�FL^f�R����]7��g>8�z�Vѥ9_�7v7��V%78�����{gvWc棤�`���K�;b|gV��I�#ڟ�׷���d�f܆LЏC\�z(
��3���1]?�X	����[㲼�i�0{ZD8�"<A���;XQ3� �wĸ�~>E��������>=��o�q�4,ҏ����}f������A���:E �x�9z�H�*!��`�~,�q��K0T���>0����M�`��0��`�N�vD����Sh�����`�Nw�1���+/N,�X���>c�	P�e�|��-m`sa�t��(���������'g�[o,m����?�� OzA~�:�|���+|a�4ˈbG�k��r�?&rӞ`����`�N��n��@��y8�>a��x��uf�-�ۧ��J�%:�6���0��O.���g�� �x����թɳp���ƺf��Ny�`�"�9=}I�#�V �7�GV-7ri<'� k�w&���u���Q���,�f����\Yn�0Y������ŕY���5��r�	�1�	���SObZ�,�/����9F����^��E���D�iw@���I�9M!�{�`��A�,�/[lg��}��/<lIC�B!�e�gC���i����.ֵcY�A��0�Z�_�b���x0��k��֖�MZ�Ƕ����ve����������;5T�I���׌5��!�!>��{��sԦ�LN�$�u.���Y/��L��4�%��s�z�\��C�oZ�Y�t��i��]�%�xM@�8a�����CM`�~��}�9ڇ�̻�Fa����jO�3��HN`łU=5)��;�����ta�b����<��?VÊ�3�������D�>/'��H�ZqU�j��w���g� F)>���/�zK`��s�E6� �=��a�_��/Bˉ$�E�!<���ˉ�#�a��E&#�Q��;�RDu�xt�>�3$8� �ޙ�r:q�%�@�����.3f\����V�˝8 �'
�G����������ad�w���8�ط�z�UMDk��Ӎz�;�듏�SU�+&}�^#3o�ĉ��a-�-��ҋ��|C}ɝ-بv��!xg�,��c� %Xq�b��@~aH���������F���#R�������O|��g@3r���H'����	�H��,&�,��8�NK�7xq$�)��'�β�Cv'��XR�#�96����6�����~��,��~i`!�jw��3ޗ�.^<��L�w�"=~M�~��D�t������������.��`�+�x���i3ڭ�I�3J�j%0���]�jb
�/899���V�-	=�1��rK`��Ӎ��Lt[}&�|d�w�}{���d��]�vKO|;	�9��#$"R��[��"��"����y�e�D������E�d� �<~���jQ��$0�杒��	�I`��v�(H�3�; ��֍�D�.~�
��g`pDI�������y��)��N�.	l0����ֆ�aE���6G��X_��X�*�V��]��*�$qۀ� �f�� �8�P _fD���xR@�6Џ�ƨ'`t��_��f���L�g��@�������
	ǫ&F�L�yF	��� �r�F	�Ouh���(Q_C��T���v��5�.R    ��`k����܊�jȋ��P0۾uE`f��I�h�-�܊�Jt��� V�IA����w;���10��IG�ttH�C*�)�	0�����[�}Q2rK\� �dGF�4��#�s�������F�����Q��x�3��eT�Pc㼏4��BMn����F�`@�Q��,K�w �@��+:@�RX��m7ѱ�d&���+$�!X���j�A4��i�$� ���5C6��<�� ��T�2I�~R� ra�(A�;I"��{�9��|��� ;�Y.��$q�y J�9��r9��C�5�y�y��內�D�g��j�پ�(�W�b���N��������]l9:U�V8�*��0�/6��ј���:��ƥ�&�ľg4�^3�E%b�P����kY����՝�g��zId\�t2,����V�k{gS,Jz`���AH`P�8��蹌���S�R�kH��.�?�GL�䠣����}&��.z���~�Dhg*nsY���((�g���X�F��q�g�k���Ÿ42�V�xe�+�bX��o<�_��H�5����F��u�sڒZiY�3XY�	G¼Y"��$�a��* aQ����Hg8_�jв;�����!SY!V��+��{��.;�{��6��(��-z.�4Z�gc��W����:��0��y��A�G��6:cM�1��i'6g���F���b��`w��,E!�GH����lG�y+�Ha�P�O��k��xa�|�� �=>��>R��D*cⲩ��-�D��e����P���f����Q4�h�`�}oI-ˇ�L��M7w6�H|
���7��� ��KO�LUWN��s��ⷹ�	�ɥ9�|*'I���`g������dE8&&���:~�3<Ûd��qr�S$;������媞CK0���
�a�PV0��<`���Q�C���S��/��Z��#���X����e�3l��1�2ؽ[�����.����%ž����/R���#3cl�Oy]$��r�>����5�,_*2�*��r��K�J��%0�R�0�۔>���pT�9YC�"�$�@��,+j
�!q�r��9C���{Ҽ�=R��cawh���d�R7��k�̜](�V��L��|����d�|�DR`�o�n`�]1ũ�����gZy���}͓�������
�ȻK��*W���k�%����3TL�gf闽	��` ^�f铭o*�k+�"��Tt)�A��PXM�+oJ@)H�k=�l����*	�J�F��T�.�R3 ���bL|��&l�P����"��^jeEw��.��b	��,E��3�����q�ϳ�K�i A�ޝ�S�n���no�<\�*�`�ɅW"�S������a杅T*(�u��֟���&w�:}1�KkR��YeI)�4M�Ew	�	��*}5��|�!P�BN׌^�"�2�҆x+
����eH��lt2��L��@��>x��3�loXa*A*�J@׀�d���XL˞O�f���������;)�zB!'s����H�'F�u�I�\�	.N)��R�a��E¤LRLqH�E	`��D+�`��6�j�||��V�M�ʩU�f;��I-�v)���
 �������Ԣ��l,':�d$ u�"'�m���/P�0(��|cd֩�]ǌ�C��ǆ1>o��E癨�\�:(�{0�CM���.�)Q?;-{��)��,�&`\Z,U�eG1h�� J�Okp�<�����\��A|70h�1/�hv�4�*XJ��m��h�����;�	��
�Tԗ��50�Z��kY�u���]�C�	r��m�~�B��u(��M�4����лeXq8*���������
U]ז����6��6\�lT��g6A�����^�@7��
s��d��x(�t���70Ծ$&C0�(�0l�H�%=��`�ܶ�G�1�������ԅ�+�ĳ�����q��� }���T@�m�%ܘ�Z5����H�4����ǟs�kP�Zlʶ0d�z�U�9�%,�ɮ��� �u� Ul���}���5!(����	�=��u�d��*�oQ���׻Z]zظ�z�
�R��헸�Yi��ER��h	T���jE_((�D��b{cz�\�|m{�}����N��$�(�T��!ꉐ@���Urh����o����e� +T�\���+r�a,%B��(���wN<e%�5�=%�[�$���*������ёk��2���I.���rn��:o�O�������}�\'l^Du�/�x}km���a�
���m�D��}�O���B�Э����)?M;�o�:~��<{�'�<����8�
�T���q�N�WjI���"jK4�3^�7�w�$-�4���\�Jķ=f
%��Ͽ�ƕHi/��R]����X�h��Z|��mk��xl��a��z/!G/wv-��p؇m�	��VP�凇��	?���jPXI�
Vv��������t��sDw�$�$r�'v��V<�?�'�&���񹺩� ���}<{M1,�Ʒ�b�J�(F<w�穡�^}:mqJa�����0Om|GR'��n���=�/�I��������<��~�8�0����������D��y��F�[��_��4s�9��x�*�b%�y��eI!O�0~�r� �t����,jU��m��Vw�s�.�[�����2i�}�]�@˒c�֞�6�������ŋF@(1��d_Q��ָ���?� �@��J�[�q��fGM��
Sm� �+8��Q�Hj�A<L�'2ٹ�d5q������C/B�a]��H��8ʣ�}�St��Y�P������m��EW1��J{���k�9�x�zƍ⃞qh��/Ai��QURJԹ ��ꑲrm�[&���:A߁����E��h��$��89V�g���-2������Ի �V�]d�Ö��a#�	�D�~���1�Ai���M0�Z��,.J2Až�)���o�E�f�Z<(��\�ݗ!�c���Ǌ�0�ު��E�D�S���0
��l������l�E8:JC�N�˳5_�\�X�1W�&�J�f�5�t���0�գ)�WLO���05�J���lg��������-a�(I[c*�����g?4WS�(9�=f��_�7��'�iC�����f�+`�\^�V��p�N�9�A�Ƽ՛��R�A%3�R[��c&�1��3JT>������^�Xu�=Vc�5�l�p���}0��SR1PIJ�s� ����'_�?B����e�/�C�8��=?�����j)� �
��
�Q���Ib�+X���sl�]�,�K.I��T��h���eL�Sw�mwP�~_�v'�默�%�Im2���KfAM��ꎯ�µ����Ɯ!u{��|Qk:I��d,�w�WV3=I�A��[iu�*��H��X�`���O��R�f�]m0W��	D�94�#Kـ4(�$��ؠڛ��za�$�5'Ƃ�(W�&����P�%��l�\��`|�*�5WBR/���6�����E n,f\0]��Cʉ�3ʒ�P�^]�����w���:��$Ԃ�p��r�my�5��_ �����![����9�)��^��ˡ�Y�`]���.�6�¨,���T��f�%g���+�D07۵�{��~�.ҹH�@�܃�}���|;!̕%^�Vn8D��\���?���Z���&����|���.KD|��ba�k�=��������p�˙/"kM�>�IduE��kͻIM�yrkV*���)��i��'��Mu�Zk����I&G>�xBQ��^"J3Ҋ��"�aߵ�	�$��-Bq�4�.�.�6X��:��:c;6���ɇ�X�kT�%aPAϸ�������Qjz��5������?�
��-Q��9�(�L���á�^mx��v-�-ɡ>���� �he���tEۣ���7�c����i�Rz��_����KU�~� �Gp�u�<x��ʦZvC�ց�_��q��_񝱗L	���}/��dx��[@�    ^_���H��y]���Y{��o�ϧ�7��b�F������9��+��0�(��λ_��`�;��`�V��EF��g~�7 L� �A�ٸ���6��t��m.%��j����`M�ӊ�[ѵ�D�n�G=M{���w'�$��{][��|[^�b��Å|L�bu�֤{���(Jh�Kr�U������mz>��T��W�˵}`�nX�;r xp}G9P�6�?������l_��aڵ��J���i_��F���7Թ�ײ���;{ы��^��ۖS�hv �ڕ��i9�s�3��W�}�����>g�~��a\M%�҆]e�a�6 �BR��� �:v�%@N�~�7(�
���A�wy�\�HH�"'�׮T K;x���/���~���6~7hV��&�
�x�y=м2pW[6'}�X�h�����:�EaH��G>]`�$,]G�e�Mr�� ���L&�e\�`�����<"��D��|�0X�O����-I!�M�<"� 6��*4��w��'�Y�S��|6�
M�H�������zK.Wnl���b$�i ,��0��-G'�̥A��~E�'L���z� N�֤y!�Y�D���3Ai�)�i��R��$���n�׌r1���vٜV��"�dp�]�9�9����8���I�1�e��'6R� [�ȞǞ��uL�i��@�?6�����Htt�MRw7��9v��-�ٜ��d���p�,J}:
w0�_x����}���1�[�@�iCu1��S>�B4RW��SCTa6����Ad͐t�줊�[jn�f�a`��oQZ��0��@}jƹa�<u��EE��n��.�#�JlX�SBD�P��.�q�L�u����K=m��.J�w��g=�%1]�ȼs�Du@{������T��H�9�� ��'�L&۔ ��������k&�v������i��5>�4�4%l��|�|)D���:PYsϒjE.�҂�N�1��I�܉�m��u�
H����7�\���bby�B��C��w�!�I(�3���FpF@�&R�$Ĵg�Ä�b1O����[��w�i�*&'l@�Vq"ӻ'��.��/�;X����"�ڑ�i7, ��9H�}�����%%��Hu�L�%�`1�Ȓ�Z��5�K�]�*���g3����K��(Sr�Р�V�D�OI����I�e�h�ñ����������Y�/��c�0 ���g������&�O�*�`��:�o�/��� ����{��u�� ���:I�u�)�C��8t��)��=�f�L���*#�D�`8��3�߰���I`l�fþ��׷=�y,**6��@��`1�a�q˴�ĸ"#v�R�Ʀ��vD��=��{d6တ���uɜ� �l�;��[������p���<�,߬�w𻆘7X�:`�Q�p��=�]G���m�6'DQ�;��m/�])گ�����	/�kP��1Au���6�*��|�5f�#����=��V�� ��\�d�?&�o�
�\���Ϥ�������&�t�����%�j��`W pL��A�a�Q��B;�QM�J�{����q��t8����}� 6�Kyl6z�v��:��\�kH�9O��;��h���O(���������}%s5~�!jL ���]������c����il:������{�煮��n��������o��,�i�a[��(fT�Θ}gY��қb��_t��I+�P��fI��Y�I�ᝨ��e�Yb8�|��GU$F����"��b� ���*'RԲ:6�
��Ի�$b{�7�;8(��I��
u>�k��b�y'E:L�h��o�A?S���G�f�X��m�D�`�w��F�Ɠ=���At�l}��prQ��QD�k�Bi���5�����z3�!���'���������2.������/ߝ��[tin�N�ç!�����]*څ���+b]>G˲`CR��_dڠ�M��X@�b�;�ؗ��h �v?��&�s���|�+��7��Ƈ�"�f�\9����(�8����a�l�x߱����L��G�rZg�@G�V�}/��QϤv��;�M�Ɩ��P{�K�vV�{��`wC�6*�%?��io2�.9���K��t%��-j��Y�/���h	������ĒS�/�U��U�����Q�G�� A��8lכ�*�y����<t�&��4"3�":�It�}h��0�shs?v�e��DR:j �ڨvb�Q�[NGD7y��3��|��:�Q_v�ӛI��d|������a#Q�Q/I�������0����Έz��۲1�ܛ� Vρ�X(g~	��:b���������W�2��o�����罫�ަ������W?���L�v]����W�i莦�d�l���W�
Q�P��j�3���?Ƅ3�[T���q>�5r'�Ɛ��H�����r���ҷ���d܄rw���A��O����u���FvV�.4��?)��6���V�L�{H��.��G��kj؏�b����$tG`��݊;�7��ju�x�`{��/��t셼�+ a�h�q%۩P��&q��b�F|�=�O#�"q�LE���N�����sYE
�*7 im�:�|�Á:�����0����g��-5�[.�I�s�=�T��G&l'eH���{��Ż���t���[�u������Q���8��G�El��>AJll���D�$K<j�	V@��@^�ϝ�ԝ�Ufb5М��;j�I(�[ΝS)� ��q տA�vX�\pj
뀷���KCu�|,l9[�;~N��X�6��H�����@J�Ӊ��B+1���(8jع��BC+�� LpԲ@b�z'�����Z㷍�-}���Ժ�m/�r�J�߉}����`MG=<���;KX/�2�Q��w6;����}'!T�%o�u�D7�w_a���;Ѝ�����ݭ���k�	�m��0D�
�h��a�S���g�3!Z[�Q��e�I��5�Q��'�$���΅:ub�	1wD!�%�K'6�c��}FM:_�L���==W˾�;���pԟ����t�"ZFB R֨.ݍzs@: �����>CŲ���9������M9�?̑Aw��8���k�U]�s ��0;�T��%���͑)4޿�F�����/�Ճ��]9�ы��q.l)xw4؈s�Y9�>5k;7V�/��`;�ѷ��38�ٚ�ӧ~�p��6h2����kbI��DЈ�@Բg��"���J%8}7>�}�^)�i�-����F�u_b��,P�bP4�^�J�Z��#(c���y�	��4�0����k/C��� �^�1�9�uhx�c��VD�`}�{m��������c��m����<����������U�}}�{��$@:}����w�kH�jƦe7� �Z��IL��+�p�at6����a.��k��a��Q���.�h�㕺�]���,���f�˗���(>l��rl9��H�kK�+��,9��݁���㲙m_���<�&���u�a�4�؂�ڵ+��M
bT�m��Z������U�(��E֌� �K(.�	;,�w�Ae���aL�։]�A,��g;c�4/��q	v�u#8[Q� �'UK�{ �d�d����gPo��T9}�8�����p{�{��C�R
��	lߋH��P�4���5N��ۥ]��^�W}�y��>������z�E�}˘��B���\χ�	[���b��R8H���|�xyĝ�za�ՓN�@��^l+��6C�.��X�cE�nA��p_j�[G5HkzH��.+����a�F�on�J I t_��El���Y<�ш�Ҁ/y��U{2b�IZ���TAC�@v�5�o+@w������}~`v֜3�l��Fi�5�&2�+�B�Tz���� 3�k�@�r����S��ʎ�5E�c�)�.b���}�)h�X&�;�)NC�@2nww=�0_j�6�(�j'U.����fi3����Sn    }�.���*E �=�.xGi/��:��YeG�MѸ�Z[��jQ��2x~5h�ݐߘ�3���A���k��h"�z�|��h�����26�[�]�٧�t;몯|�ӭ
F�/��C8�"���P?Pu/�,�T���[K��T���脍T�G��KϺ��D���ڧ=�t��\z�41�n.zݶŷ�h/��Ԩ���mb���M|���swMk�~M��(s�N����<��<vTy���Q���N^��R�{Gﱕ�#x�J���J����"Ӓ;�\������l�rٙ�>� �~Ll��I���^f��oH�Qն7�bTi��S�{L�V��yP�*�} �Q�sQ�����)�Bj��#�H<6�1ͽ��������>�'6�8|��y��KpNNݘDbX n�"NW5�ä�Ѐ73�vN��(5��'�����(�(H�atD���aM� ��)�<`�ZAƎ�
.]
;F=��x}O���H�-u��  �!n�{$�10��s��G����5R���8�zxz��xZ�ih-TZ]̶�tR�`�	�Ca�0Nn]��{��ɉ�%�*�غ��Fi�S�z�����;�L�^s�uB��
��V���7�1?�:�+`�D�t�Z��A��*����ڧ<�P�:Z��U�,VCrIwP��(A%��P��m�Zi65�IL�?�XW[���u�욇��3a�-C>0����bΕ����\�Y7��&�r����)d�X�,s�T"\�8�r�/��g���N�^�z��uR�b?�?
uA1��>�����K@'_��8�@�A.�m������z��%�e�\�}U�o`��{NU�w�k��$A|�`�* 
ۃ���A�a�J�Ŋy�mX�<���V6���1�<�,<�V ;U�z0�V0�
i���o���3?`�A�4o>�����W0�o�z�L�yeW��Y��:��Dޡ?�� X�ذd�C6�`߃=.�{y[�x���n~���!��!�����o�X����3ݻ�4T�g������
pH���o�}|d��l�����m��?@�
����-D�� Ԯ�}���݊>L���r1i��ga�����+�\d����h؍e�=bg!VяrR!��X@����]�9h
؋EL��e�{�,_袔�u�=r��w9�>(�܄����6C�<�V���sj81�Ϣe��c��12�RË$�X��s�=��v��\�7H��e�F&X�ΡP�����S�x��.~����'��N	i+:�-�OSo��c�E����^�W����d8Ѕ:`;��k"�I Q_�;��(vF���m�+UT���As'�w� �*�4 �F�-�*��X�* �� �6�8� ��*u�x�P���A̕\Uc���=���-g=�k�j�Nϋ�15My�4s8��[�k���f5;it�!���Ex�}�w�>Z�ʣ۴nx$r�H߂û��zN�]�2g�ʽz���g������hki~� B�"�4�o�9����i�$���;Y�r|9�:lM@�߻m�ӑ��C��:��֚@���Q��JDl����]s����O<n5��v�J�Pb��u�.����F�/������{�+�MCŒ�L<+
[�?��������'Hq�Z�\�V'˽�����Ȣil����,O_|��m�KĎ'G��bד��a|��3@�0��������q��̷qɪ���.��CR�I�At�]UI!� I ƍ�hԘ*�:P�mquI��U�Q���2�9z��R����Y��P��w�	�ֳ
l���1�Q8uн��Ov(l��/� e?ġvQ�^'�_u\�m��)f��ٹ�`�������j4�l�6x{��'�⢵���}|^&�IG��x����r��,;��_T��jn>�Ë{s�=�}��S�E��a��[
�����#V臮jP-|����T�B-��+�9d'����U6��M
x�CY���u' !�g��Xqh�^.�ST6g*�����F�?���h�a�z� �\��w�0w�Z< ��cbLԊ�Z'�Υ����a(lRR.k:�W�G��H��� �UQ|W5�KX�{��u�ʉ�",�z�١K�U�%�qY8^'�X�!@X�����V3|jU�'a�{l��$�m���ba91͗��2��a����B?�ւ��z>��Z�^(]e����#��󠈃U8XO~�HG�&8���a�����}�x��N�i,���k��� �2���X�?L=Qo��r��<��|��t&z/s!��W�8���	O�J�o��+�XZK��;H�:����7fP~���=�
�.�1C�v���RZ[��Mk�9�cwq��F!�[ǆM���_�� ?Y�u��;%[�?���R@%oE�Q���]c&���'[jC>|kE��U�����Q�H��P�F��;-\�#S>�8��M��_�V��"v9Bɔ�CSo�����T��V�,���E��C��uDl"�O{߱.�]1��1��O�Fw��CW�)Q�� �Wr�Q��]�Q�^����Ja��:X]�+��H��S��"f���_R��y�|j�ݵ�+�yq��Ǽ����pxv^��6��.=���Mz�����x��}șL�d��=�|xN����k:Lԗ��j˰��O�MaJ�MD Cb	?P_���q(�����Zg��3��zK��r{�3�^�����m�	�֖���f뀩'�%$�;�O��F�I2l�L�W�\Q�Z2z����Ȳ~�X�ԄM�p�5d�)A�2zY����V��De�^�&l2�ǅ��
�aoŰcs.쇣H�{�#��6�|��a�z�lU�r��/��6P����^��x�l.k.§b/��vNؗ��B�������&2y8p���
x����7;�v�/��W�݁�|Id��>�8F���Do���J�`�%	 ���q�1�6��|u'��0�3��c@�V��S�0D�E**����R����
:�G�	�=\��hz��*\�}�s��z���/o��Ԧ|�՟�`�.=Ln��S��
Z:�
z�n݁nD��+�Z�]
-ؖyhy���f=�������zS������<�6S4}� ��u�5�G%��ec$�s����0#*����EB�����r���z�@J���5Ko��:�&�ؽ{	x8�X[@: oZ�o�O\��տo��F�����r#���N/�S�Z�T�^}�f���7ȧ�)��T��V�a�i_�~y%����#'@�{|��^pz��i��5�h]�)U[Z�)l�?���r��锇���:e�/�m�(,y��ި�W?i�������󖎇}n��A�-�����!�<�V��}�O�0��K9۪�ݤ;|U�׻�zӁ<�֣��T��@���)ñH��@�P���⑒�6�-.���㯶�%��J�էG�bAh������w\efZ��Q��7ϞVԯ���H]}T9����=�����~ �=ʋ���y�P����-��p��q���q����*�����`�4>��a�ޞX�_/)}rV�h&�Z$��P�4ն(�oŔ:^�^�J?{����� Q����]���ŻeQ+�C�5+��y���:g/����v 7)�P����pDxe[��Y=�>�+�|�c�pxR�!�V�>Dj?��[��7�]�}��z_'^�p��߱-�BW�y�h�?�G6�32��x��7�m���������^�$�;�<P����ZBi%�^��~k"�=]�αW�OW�>�;@+z����P'�<w�4���=�9�f����>��ճg��������s��&+c��y{�O]�$�7N�2�� ���u9e��$��Ȑ����PUc&�eH춱]�������`c������s\�^���Q��q��u؛~W��O�ƿgOe��"����;j�饊s:0�o5��I�>JtA��ه^s�k9Z�T�V^B�,+����1��^���%�    H�<�~�Z(o8i�bA�Q�Do9��;�����A��.S"!��9(;SpQ_Le=�u�+����ecBs�
蒡r`)0W5��6���X�|d��%�ʽ�Ad�M�P#�R�����)�}a�1���l�׺hd��)�q�x8$��aI^@c��\s����%_����k�l���"bS����]�ؕ�Ox��t^�_�;2X�؜B�t8���le�9r�8�z�:��0ǳLϝN��4�"��I�=i����w�ƒl�]���q�|��&P��9��;�5��"e���k(�'֕�>%���j�/Z�@֩�{*'.N޵�� \���H�]��H�|ޕd���}�Q��]�������u������#�k�*�K��=���L�B5��u�  e���X����HTj����V^�ZԞ�A*�H�v޻��u>݌�հ�9���vFG*�-|	j5�r��'� ��A�n���.�q�r֦�s7��յAN�ّ�TX.�|��4Z��0��A{�I�Jy,�r����^(u֢�Q�� XLy�~R_,��!A��Q T����?~m��M����m$nI�ݶ�v�nJ���3z� 5T�	F%_՚ݽ�c��ˀ��/�f���>��xYR,�5]ѓ0|�˘;�2`��:�7B��2`��y���f�I9���2spƔ��_�j���@U�)��'�o� �2�:�[g�é]�i�)�L�xxC�f<������-X��/
�J�%����IQ��R��#̢9e��S�[�o��~l�32���
'\��y�����*�=+C�Em���Ж���g���J��x����:��L��9N������P��M4�|4��`Eǥ�F�=VƼ���dc�R<��dK���P��7p�>ؿ�S) ����R+y}�ndP�Q+�^K�]�a�"�$�2�%�_������I�|����Ԋ�v4ڥP��O���f��ҏ��?�}�z��J���V(�2���m+�7R�~^S��c����X�Q1�>Nי�q�V}�����G����%�PVo#��T���G]� ��`y�����(Xr���;t�f�!14zݘ�}���QjPN�r��~���T���WM�X�h��T�KG�{��<���籀$����L�w��GRE��a�Ճ��B���οY�Z+��LU�@��C*�2�1�������tg9E�dR`��a-,�ӫ��Cݒ���oC�bǢ_|�&����W�틔g4
�$G��޸7E{����u�֦i�T�Ut����:�>(`|lXY��om�v�tY8������b[�j�^����h���x�]��o�rE�g�9���@�z������NJ
i~Y;
VQ��d�q����F�MC��������C�a����D�te�0f0?���i���W��Y���C�w*�:�>�Z��|�=J3�{�&
�97(`����[1���^��w��iX����t�Sײ>#��o^�v$�p�9���(Tj���\��H��*��f=cP�$��VvpL!gCU���]=</X�����E�
��F<�$��Xsob�8��ǂG�{�u���G��S��,�IV���8���0�'�����^4�J5���t���{P��Bc5Jm�.<�r�N��0c�R�ʺZ{9��"K(c  �=�GT���4,�0�>nE�N� �����p�C55��G�����/!z�ǖC_���S��!�P�)���0t�7���Z��Kj{�bC�z	���{YK��u�� �4Ka[#���Z�j��+��ÿ��-K��/\6 �?t�:p����Qh��{A?ߖ7J��W>����e�Ȇ?d���k%	���,���X�����v{�nB���v����"^��9f�S	2�@�y'�,ʔ�x8q�6�vs��'�;9�5��b��b�&+1+&���#���EJ{�aP]������*^L5l�"@��.�@Q�̞��yh�+>�"zJ��֨�xU�����y�����	d��kdU��+���c��D2Y�Y�`���ٚ�n]����FT���FY�;O�*f���B*�ͪ���c������,���"Ʌw^�C�^��vG�KY���4���Ԣ u>�;r�_2���������w�5`�>��k܊Yf���^Պ/�%-8�t�i���8�̱��>]�k��v�W����~P��k��R������2EK[޴R\���-�HĈ�>�~��Q<�:A�6�I��֯{h�6`a܅y�d#f�P��.��*A�cѳ��Zx�&�I ەZ����rDl�
h�6
��w��܄	j���1��1�g����4s����W��`)�b��6��Պ�aR&�M[�4�m��0.�Ս��0/l�n�M��
zm[1-l��դ�=���s�j{OC�*�a��0�>�)�w����4KUK��ؿ�搑���vM��idp��-�����}���Nue;�ح�L�{���EX��^B��1'���ؽp����u��n	�Z��V2��8���0������A���`v�2����؅Gu��rU]s%����L2|�����`��a�&'�N�Ko�gO�B��� .��>Awx�(}Q��'v\Q?�]����t� ^�C�a-i����o��U/9��+`|�PY�w`c1�{-mLa��E�
�z��Y��?L�r�u8b��a�z�V�G�K�VTK��$jTЛ�Z�����te���d�RIw�^��w�?���9��V
kC� �b�5o�C�Z3G�~-ϝ���ZA�]*Y������v���Y�Ai����5#���o�cٞ�KE��I�������a�����w&*��Y�9q~)^Н�q[��3�ի������f"r�ƬE��+��(���CO=�r��s�	�}�KQ�O}�(6k��t�Ɂ��~���m�d,5��1�~�޸.[Z�i8Ll<�jW�k������9G�O�����%EG�	���ȂN�B?;[��������0:|f>�p�Բt�q�F�ݮv���B���cgA	AO�Fǲ:e�ޙ��h9gK4�,[�t� %�{�x��s����8���qAc8
�${M�XЙH?x� ���ξ��^F�D����i.��������t?Dq��,^\5��`i
��s���z�PĽ�8���o�h�����/}�KlU�>8|�ǀ#*���j�����W���V�tD��nimٴ�޹t[�V�&�-G����m=�毖�������JЖ<�̣���>h��Zy`��/�5�Y�(͕~�E�g,߆��MVӳ�PGo`txʦ��CT�o�8}�xʢ�G�9��С���A��E�|V�((<s ��k���jw[�p$��1��~��	��\��Ehu���gY&l����4���ۈ�S�`�sB#"��E
QR�p/��N����A�&?6��R�k#\�9bt�i�\���JS�,2;������gЅM�X$9�IwGX�q7x�B�*��:��}���{=��A�u���{)G�&�8���C��v@�F�� RE%iT�-�Le3�ˑZY~#���X�>Ն����\��a���H��4��tN�9!.�To��wR��-�.����/`�n�*=�T9��Ǟ��Q`�X��X,�L��#���J M� ,�}���FEy]-l��@����ܚ�Ja�uF0�;�����۰�}�02vdWh�L^�#Mw�ؠ�ǀ�F�Ҏ)�M�͈=���cx}4]0-dlk�0)(C��ڶ���I��,�����v$�#,�i� �=L�1�i��݈z��>�n����*5 [wf�,��YlX9;��F8�k�N��oh��To;��c7���M-���HW\�e
��]�[�ᰣ�������'�� ��`�4�6/w��_����z��J�w�n�Y�N��K���i�,����b¨�a894K S�4���M�' �ց�{bkX;@���_bT��&� ~���;bƠ_�t���:��    ������ �	ڀU��l˂ &����ݏ1og ��XKĞnFh��,��vߛ_6�a���}�4o8�HGG�q�f�T�&G,����,�'H�0�����:���1H�|�1o,�zg�H^N�`�ی�,~�l� ��H)m�����$^t��7۵��-�HY`�'�� Q�D����GH9GS#��}SF[\ST�;�Q�+2�D��Zː�΄K��!��/���8���A�j�R]�A��0�,{2H -�&�ߠ�ֿ�:԰�X��l�j �l��ƹ�=^��P��,
DcU��a���+�úϑ��1������ǎz%OWY�4ԯ�r���[]`pԭ�&7����������o��*�,�E".���0�Hmq�X�N�������-�h7a)Z2����C���˄�Z.u�F�t�[��=�0'���
�Ȼ�HS�"�����Y^�_���LZ�߶2¢1��1�=��V�y?'3�`'tɅ�-�C�[)+��.30i_�T������m���x5T�����Ve�w� �(\T}�nH�@�"���қ�>�>�-�r��e�G��w^��zd`�sGc�>�餉�j�2�����EO��np�?I��X�D	ܺV���?9�
��F�V"j�RX:y_��o�"DT�je{���I����#O���5�@M��[f\�B��v�����/�IYi�(@��5�}SQ�f���3쥅�	��1��J��R���lu��.k�؄�|it`��8cz��.bx���DA�j���E�XZc\4���SDm�N�
��'�76�DvA�b�`"�e_�kV�_���<G�0�?G�b�Us�B$P�86��J��!Ф�v���V�Y�\T�'n(z����\U�����I�4&r9�VI�#� 	�N�AwJjF����/��w�t��-.�+�����A��Phc��i��� ;`t�A��âa(�Q�z�����7=E���-IW�B��r;��T� hB��N����0hU˓����N�`h�P,M�d����2���f��>��sZ\4+~^rU?��q��DUX���������	!<(�
u�\)q��W&T��6�e�&%!^MJ<0���/��Ⱥ֬$,�$S���s��	W��{W6�e�֪;���h�{qT2b�C�	���Zu/�C���������֠ívK�]�����`��v�#�]cXL�G����Ha��hǎ���o�ؓ���w�_�n�֍9�=w${�q���XZ$6�,�$��K�"��y#2�S{��K�בT��MA�έwa#o̥+l���o��V���Z����dv�R5ǵ��M�B�A�G�ڠ�1�uY4��`��s0�d,U^p��G��]#t�b�QNR�T�Q[��7��U_�z^|c���j*��|��qB%��g�@��=�����lr�==��)���v�qC��q�
;��켩I'�ʑ����I�z��o���y�5�7�Ŏ�ܞO���2�Ӆ��{�Vٺ���/O��jl����[��<�ء�����6o��-<��u;�Ɓ6��@�TDW�06����B�1�^.�Su�a�/UY�Xi��C��֮��t�09
�^/��C;� _��_c'lҗ�>�(�����~A���o�܎r��P�þA7}{ȽS�%0V�ŖA��M%�~F�mo�v��;:��~(������*:����"�w���fU�T2g�����ʘ���g��y}�Q^�z����`�|����������"�y�0�1�H?�:��qj�c9�9鬋JǸ��$��A�V]���g�� �K	4���eo�W`�=��k�.� H�0��������c��?�>C��z��H�i�o� Go���m�����+F26���&%�q����&ۍ�:��Xo��?:k9�s(�J��$�GMVV���\�$6:םT�w��`�� ��N&;�2�z��>oW������J��9y��9Y]��[�G���m)p�� ���4�ew�8{Q��2\mo}	�K[�����dX|գ�a���$�8�X�8r>�;@�zDam���3B$~����##�n����~~�K*�,3n��
���E"�mn>E ���zD��SvdZ����pW�G=jИ�^�=�
�y������.������\�'o�<�}�4�y��u��	���w,��y�4� ?b�z�G���-��n�dAu�v�c��CĪD�A�֟D�X]���(�>��4�X�u�ro�|E����ײs�҅Bv�3 �?aM��kn?���MT��y��.A�O�ˎ۩Х[?b�*���i&�$�N��i=�b��K �Y�Ѯl���Oܐ��Y#Ȏ��l��Lg���G�7왼��g�9�cca�g�*;n���0��ѕ��1y��\VV��+=��1��7�5��D�{����z���<������YZ���,��Q���:n�Bw��z0Eá�8ij��5�1X�_����k��^~qҁ�;~��C&��pR,�O��=�8�tto7
���<2�oֻ�<�\����%X�=�5U��sDK�ˤhl���r1�����q�����7�>��5o��V�1�-�7>����4I^w��2}���~�����%0d��5
��V���_m_ &���yV-�޿&�����t<�*)&?��J�˰*ϿJ���#�^~��o(7ϿJ��H���9A��󛤚0��ۮ�'sz�ږA=�]����c��I�	lFo�!s��	��|��U)�~�%�W�µ*�o߲P�a�f�|[�^������%�eP^�]�uTZ��uP��Õ����:�#K��#}����1s>���"�F��#�`�kȲBz�������<���;I�7GJ&?� se��GW����k��_�f�;�K1�n."~|&�,���a���.˰��5�~f�c��?�L8	93X>�wu�F���������ˠ��{�H�o�)@�8)��ޫ���-x1�l���6����Q��t͠��཭M>��VVx^^&���o��=M��?��!E�A��|F�n�^q�z�ȑwa�{���=W�>�Vo%�q�0�D.�m"��*EC΅��ٶꋯ���������gm(�s��]�b�f�j6�%��l��;��͕��w�ME��?5�?����+v��![�W���ڄ���u��iߪӉe�Oȴ�����=��Kb�Ϧ�淚/o�P��`�p����M�7̓��V����!m���\�j�l$X׻�d�償���3&/��S��R����8/<��I���Xm ���������mj�qYѧ�⓵�|⊼g�.�m��-����?�Y�J�	ڵ��{D[�Yj��[���`�ݫʤ�90,���J�s�*O�ȅy��m��>��dr|M�V��S�ЧQs�$Ѓ��/��n�ƺc�j�b+�7$J3������%y���k�8:r�K���ٚ��^Z�:�t!���0E�1����pC�2N�+�i�\ՖTmfՎ*�Ri}�L��ϽT����:D�%>GIA���uT�ܿ6
)d>�u7�A��*�8�Q��)�����!�ki4�3������g��_Ã7���?��|�+��!��L���������������&G��A�0�x&��5L[���Z����?,e�7�tn�����9�d�i?����eV�����I�k�tS�]�Z�Qè�QZN��4>��s6���RZbCsa��6�%@���H��nA�y��g�~��FF9݅L�gT�G��<p*ԙ�/]��9�ɔ�����|��mJ��L�o }NoQځ��jK����7�+c��"���1�(5+�/Ž�D��;-�q���E
��oJ�!��G�YYwl�M�K���̻�@K&e�ל��MD���"�����?tB���:�t�z9O���Fmk�Io��cRN�n)��+�����=W���gz���tp�b|�ǳ����aD��v��c��t%�|�1e8:N#\�=0;&�}?�����H[�l9??�79*8H    Ѱ����0u��3���e�e#8��F�H�wL+�y;�}8\i��A��1��8a��8LƏ���6�0��*�P�Q�[�<8U����)l��rx~=e�=�簯�:�7H�ڴ}���YFu�.���a�3g�מ+�y����bh��_X2���i`18?�m|��p3�qo��vHZs�!y�����
�壂~�F#Cc�Ӂ�;�[�+>�$dI\X���# �������8s���3��9��5���O7Q?`�C��
����7���W�Y`^��{����u��m��#���k�5��OnY*s_0*w`�!�V��b��.�h�I�'(3.� �C�� ��%�< 9GA��ܹЈ�����8�����Z_>�~Q_j��И�-�`�p��F�t6��T���ZU�l�%B7����&MU��W�]`�?_�6�'0������p��f*���uj$�m<G ����q}?5�,TZ~1:�X#��9���N7B��я��W�``b?w�y!����&�I܍J��
�GP�` ͋���p�ݢR��6Qu�0�HړtÑ����R�!��������i��놭%� t�o��ic~���(g5ʠF0�!���֦��ٓG�v�ئg#v��S�W��W.e�c�zxL����	R�J}��n(�\Ƙe<Pi�!1��{���I�uƕ~S�Q{���ZqP*fHn����ϗ��M�(�i�d�u���Vc�Ƥ��3�A��!ْ���]"�r����<�������5�L)�Q�O��Qs�.�OR�*e[||�VY��S
&{`$m0HI���XŽ�qG<Lɤ����祅.Z�Ė�8�LaTO'���N_���r���~b#i<�5"萝���W�1���x��q��0�U$�Yf��N����ta� �q���zkBN�:�.O3�"���5͍[}�?T;�vG�2
M�8�Ť�f�OҘ�u��s9���������W<�a�.����2����h����I���=�
8r$�!�-Cz}/�L���e�0uÕ��ϷƎ���N����<�S����RR�0�(�Q�ٸp�� B�{}i�!X�M���NB������:x�놕��Єx:^JI�=�k����C���7lȚ��k�$}��ql�(��rQi�55��r^k؝���r�W�^�kHs�I2��W-�@�^���ޠ�\KI� �0:� sD3%M��)�\���tI�ߡ�`�2IBev�	a3͵X+�]Zߩ�Su���ր��"r�JV# ��eȢM�ÂsV�L���S{Lh���,o�-7�6�����a�b*�v ��6n�����¶�QY��4;����V
kJ�ưW�r�]=�O�Cz��y�v�8f��U�EJ���h�������2��qc������_��N7��b�[?�䖸!]�Ydf/�OЬ���:�Y�Q</+�����'�����Y�)t=��lƔ�(�%]ڃF{�q?���C���ڑ�V}��8��*MWm���is/��ld[G�������z;xҲ�Q�mU�����Ī����J2�΃�W���P�D�u��H�� ���r������� &+ۄ6ҮZ2�87�)'��p�b�\��Gg]�� h%c��`��F\?e���Ey�$.{��O�~�#]�(o�����"��M6nQ�D��7�d�qE�ѻz�3���+����=�&�rHּ(�t?&��f��AT�p1W���ZQ� ������q��ձ�w��:���}�/(.߈Q�@��W���9���U\�iL`c�~/2�¡(ט�h�u=HY�w]l��tcR�ڋ��G�!�o4?�m3�f��V����#��'�1H�:Ĺ����u�Y7]�f82��i��V���<�r|��C^U��eF�.�<��,a������"��E�UI
���m��
�fuk(2U�
����wh% �\"��~����VK��NG�$�z.�k�S�+���sH��g�|J4NV�
\���[1�.�,��ݽd)��]��DD+�*��_��ȉ�\U��ƺ�G��#��U���	M��y��ǭ���ԬZZ�_S^P�BpV��i~�RH�ލS�!2�p"[��@ʢ��>�aFv��M�Z.;��B�����8�ܐU��o�}S�X�r�� �Z�ۭ�5�1�$n��%��^D�f�&d}~�9�_��/�W/�F9��F+C�t���P?Vmi��d���Ǜ��Jw������x����ߪt���ϔ(T�����ۨe[��P��K�!����N�u�Z���W�'g,���b��朿���t2Ԛ��(S����eK9Qڮ�V�昙z��mT��\��&���OFE�XlU�A4�;�c�J��:��B�M!c)���w&Z�Ɣ�5�O��3!u��`�w.~|2Z�<��M�X���>��|�1Q��9"��
Ǖ��'���c��d�z]��$�?;�1٘u*�~�f:�M�pu:�cv��N���R�c��~^�X�(~�Y���Wo�_�d���ꗡ�{��T�X�n5N髎[��� î���GQ�NH|�d�43mID�n�����d �v����������^Q���W�\��9�2V�:�_����*��sT�)��BpR����7Kŋ��˿?�Ϲ� J���*��7�SJ�t�����lMR~\E�̷SS�MK���;+(L�}��9�G��=�AvW��)�%�,��8/]�e�x�04B���2X	���o���eu�H�+�ZOA��̒�m5���ր�g��d��U@�`F�hO��=oleK����b��jO[�%��L+Vs�9�)��(O[��K���ju�p��-K1��qm:5��&��?�&��C��i����&A�	%o�&K��қ~�lx~�ݘ��M#�b>�����g�@ ���	!��A���?tI>N�3�)���m�����6�H�Ǉ����؀��3i)2I��h��C�Z�"Q�/�L�硩�V�odN}Va7�폲�����"���Ϯ�4����a���|#ub�`����%�twI��7�]�2#����P|c���Q��7���3o�������5�>�M��K��F���i3���B�������a��dth����n_���c:��`c�B,�������r�)���TMҮvt�^e��5�	{-Ъ�h\�n��dR�R`J4Gb$[nR�R`>4_ۧ��Fs��S-)�0pWN���,������ �7D�H'�4��m5����
4w!`��R(��cxZ/j�p&�:��4��L����P�Q�?��18�?�8ʞ��a����/��`o���U$A7��hL�[0H�g�,����
���Yu'�v������x;�"2 Xf��Y�R�
J�x����j�����i_D��j��Z8p]��u�E�W5h�O������ܪ�I�,4*���h_d]/��Wxp?Sv"`�k�6N�e�V`�jl�����Y�����.4k>�%H
U�4K�Ľο���sՇ��R�;��8��I��>
��fՄ���[�{)HӋ���f<'N�@O
#�7l�Y7�l�������s�ƅ�c����X�	"W�R�!q&ƅv�����)�0����M^f��sAgx�>X/��4q8ɂ��i�ǩ��)ά`$���}��*��*Za�/i�� �8������A�m?�zX˜��(�ei��3�R'���QN{���Բ&>�w~/}v69}b��F_�סF�'R���$�����'SL�1сi@��焊m��Id\Z�Ϊ@�q��N�gV��G;����x%ζ ;�S��d�/d��n"���,q3�U�"�C!�:AbJd�7Po*0���h�n�l-���D�6^�K���!�gk�^�[J5�\��	��o<Q���\zĨ��v~k�nix��E�egNz��^J�r��0���y5�F��-�`c����
.~��{�Ʈ��/jЉ�IؿDeA|�p����)/?8b��6͓b��3��<��v����b���{8�=o�N[����jS��<h��5h    ړ-h�/g<H�8�l���'��%(�7��������Ɠ��ޟ��f���y���(��~.A�!ՉA��靓������;M��� �@�U� ��VF�4�����i��tG��JĮ}����h2Y�\|_�Ѫ�"h��v�n�d�ڄK�#�{AWR�-�l�������F�Ȯ�y��l��}bb����<��ӹ���J�eΰ�������ӷ�܇�4l� ' h�';N���`�k��~s���/洮���^�o�4���bj�ق8���.hp.|{lkǹ[��_�ԐwQ��FG��1�H�r�h%0���U��n�;���O�MM��k�7�Ɩ�H-��}P��K�$��l���ڋ{@�Q��6��#n2�$�F:K�G;=[���ISj��puy��]��<�=�l*M��qp��W�60g��b5E/ב̽���m9e�K����w�N�ؽ���	G�F���}�i�p��2�˻��8>���M�_��W�
�"."#�h^ަ;lb~F��L��:�H���wJu���F��a�-��4��m�<R�C�˘dQ 6'�<i'@q	��?ߴٓf�1-�	w���A�O����@�AI�K�������yJ�|�#��"Ɏ����)��xy
�w7�"63�jԾ����R0'^���
S�6�xQ]�b�4-���v�N,iRF�76!�.Y�o�����f&M�d��)�x\*)d2y�N�FZ`�y�紓-8����)7Q�AN�����qm��Y��r�+��������׆y~�����S�����}�ۜ�j�F�>N�}�[�sf��Ϛj��nphZ¬Ydt?��VR��8�R�Z@5I,�Yl���� }/k�"&���2yvMs�p�3~��DNdM˹�ة~#[Q^_��1I�L������W<_��H��#zג��ˑ,��2'[��@�F:�pٿOS�,>��\3�Boc+َZ�����!����.�&���1n0��V���r��+	���jZ4-�<#o/�z��E�������ٿב<=� �t���zj�ŖNP���z��u��XL���U&�ƃ��" .��̅�6 �Ӌ8KGy��8M�\����DL�'�LjBX榃��S�檞�`��p��V=sX�A.�YP��*��c��S�o�D5���A�⫇(/�-����g7pT�&Qq��[3�����Ŧvc�<E�˱��3 *S7K�f�[O��+>>�/B��$g��Ѣp���~�+��6��	xty)N���Z�un\8��w�-��ޓ�������t�����f해�M�ϣ���B�Zæp͂�������z-'_Ι΂V�)\�����v쫃�\��Mi��-�K6�]��Ept�DX����x8�5|�u����kJk'��e��s%۟��wN�G$�����A� G1�C���l�MXNd��]�L�M����KFT�jQ��L�MsG�U�V�)�Z�4�k����,�g��V�`�B����K�V��?_�i���p��)
���J+V0A/l)�>�MR�/-ʶ��J+X����q�.�w��}�i�v��~X��P�N�Z��p������A��ji�(/��t���ZM�p��z� ��lbM�>0iĿVLj�V?E� �3�pY�֓u8���q�
�Dٖ�jq�}�V�]X RI��y�Pv���j��m�/��	�ݍZ����pLB+걿}\ጱb!����+�I�Y�%%���$w �������f[,�Z<�@�P�?��w��R�dL�z^e�}���>#E�~j|�>��0-.�j[��}k!;kWqy���AKB��ў���U/�F�PzҾ��<Oo�>w��@�T7kO$-�#�hP����NC��M�UM�G������*aMV.�����% �H�X���ȠkD?E�{����ݳ�M�����$ZS��j�R|c�x'׀�����/�7Lo�۵Tkg�D�qB�
7{�m�C
l�( ��h�E�[/���
�%���lt�C`�-�w��dmϒj/�Cf�X�,�n�m�[{`�(���{z�ѻ�/vś��^���wmC�@�t�2�8՗H�����^���"f�cTa��:/9��A�y����٤�4do�>�&{a�<����s�%^2�.����#��(0�S�{�4,��8�U�F�i��|����qj��2�7�+�1�k�Ii�����	N�WC��q�6�����,%t���Bܫ�XJ�u�s,�p�q3$�Dᕸ5�ʩ|�W���r8��U,o��V���h�M��I����me�NB����ȁ��G�_Z���+Vӭ��?������I�X��h�N���3�2��>۫g);���l�t lv����V�`���|��d�r5i�� =Ņ'�&k�fE�}VJ��ɨ��6�����6&۪�>���!��E�>p��I���+h%O>J�"��Źj�0�p�����S�h�|�jr!dH���s�+���Tg����،R����;3��������u�n��<�X^��qS��DJ�2sn4*J�M���80�~X�GeQ��@���E궵���lw9Ty%-�P77#_Z���y��	��\h[�<NB,�Z����/�ф� ٫6���!�,��n���I��h��۟�g�?�~m��V�ǆ����ˬl�K2��z�Q�ʽ�l�sLGu���l�K%:����QR%�2���	�C��{���y��"�\���[�@6,[]�Jw�EL Ns%zL!��?%4���xE!�o��V'�R���.@d��[J��[R�ce{|�?�σh@~ �Ffs��.��)��*��?O�HF���+$�AV6��*�$[(������uht�-�ֆ�T�q��Nʡ�lu�t��'Ѽ�,'=�,:��EI�����s�5Z�uUr��㼼�A�U���%�M����~Z�JI���b��x��NY+�7S첰y}m4�se��z���>�II�R�m��YXU�n�!�v5'<�����0���JG�l]�v��W4��dD�p4U>ܿ��7na�����<h�WO���D���)!±�,��m��.���f�΢Oo���K���Y�3g}�p�G8`���FV&ae�܌�
ML9��Yٌ�Msr|9}��&l������ղ�G�����u�W��g�LAX.�X,��E8�<)u
_-�q�~�WJ���Қ^m͙�n��5-7{����׹&g�\���U3j46[V�&W�2þ��?�+���`��]dz��V�;|rDH���͚�Ғ8㖊�s㭔�YS_��M"]σ�!k���jj+���9��-����Ԗ��1�DTV˒�r��u� KB�xS�������(a������S�^M��lZ�n��Qgշ��8_����ٯ� (rO:}��n�}B�0a��Қ�Rݏ�V ����[+���(���l���K$��b�_�1A�+J/��-ם�la3�����Z�z=��Ь�eq��V�t0�Z&���u�xD֣�΁k��poQ"he���y�Mx46�����	Z�I�����ߨ.��$�ʮ����B��S��F-� 7��"K�{�a��[�}'�k@i�$W�c{݇�P�B���X�m@�������j=��娚�X�}0�����h�t�Z��i9�#m�T�H��E�?�ߧ���k��~�x��lXk[�۱�\�):zՄ�Z�bG�U�Q涢�&j��ǯxw��5�C�Ox,��܏���#���Lpj���D��`?�;c,u����3��-��"y�O[z�z�Q4(��E~f�m���-첫ZH��6cy�����D?�߉�����:\��32Y����U��F���N$���YVes6���R0śD�[>�ء�k�ߧh���~6��
�@��x�J�m&�Uc����@8�q|"_��#^�$h8�Z2BV8�hin��iG������	�W����<��O��Mc�4�����1��ٕe��OX���5�h��o�(�e{�[���:��v�ٙ�d����LN�C�(���Wᐮ�ۭ�N��m�&��Fq�8&� �����XD:6WE@���    ���,-lw$ɹ�����Ho� NlC7<��q��P.��G��=�
a���R�E�%��w�o�)�4�ƕc�g��7 ���RvWfh�k����卋��Q�ǡn��P7�WY�����8޺5���Unu��Ԡ���iе��K'6�Q�`����Z:��!ȶ�}�$89�u{���w�������������� �&|x.��~�~�o^�c�Y~4���<��t��]07E�@�ìLF����*���Y��|�{�-� �ι���/5�"�<�% ��;�>�Tޚ����$��)�Ső�-:��(|U%�s�[���ɰ��B��M��u7��Z+��#֟t,��y�0�sAwJ|�șrV%a�9Ԟ$$�۵'X����V]k��v��s�w��OSi}�h>$�H�D��*z�jT��࣓n,�|F�a��*715���gS��E"��0�I�(��'�sY7h��$~s��U�Q|kQyi5����#�vo��s�/�h!���0{�ZM�����M�Zپ���u�U�Vr��Z?��`*�\~�]���/\HT�}�׃ݓ��{�q�%��CШPn89�uԷ���)u���������x���5�c�e�ȵu!nNuI�鏷����5'��� Ϥ�w���))��9E�*6g �v�����]o��9�����o���M�tA�n�v|����ܬޙ����q��__&ZWT]���%|2�n�S�ʜg�'�.��J3� �s��??�#
@��2u@�G�dոB�+�0�RZvc�v�&�qEA�'�@E5��vz�/�H�ѹ-�������]V�Y�(�NY��]N��TK�$�GPqW�I��sXh���mZN�1r#4��' ���|�"����fJ�K�$8=��2���L��^�Wm�r�K���k�s(+INy��k�s��5h�x��Z��G�5���"=#��P���
��y�כ��'�Y�a�����{����������Y��y��Zf�����/R�J��V�\f��趂��3��G��k6e�n����o���錎�F.aD����;��j卯-XK�LkBە5����z��i�EG�m� 	:d$�q�����!:2j��a��~p��2T�:-�0p��!E��+�ݏ��'
��lXϭ7���I�{�ER} �Ѩ[������6`�.��0&]��5��ٚ��"�L��&Qt]?�tj&�6����>`�R��S�ŝ��.����-	bVFcZ&(��¤��n�z~Ly|anG�.4��>��	�ʆ����ъ��t������6��)�R�c�h�Ϥ+�h���vv�� �It-�	p�~�%�Z=�����M
.	t����~\���P�l��{i����/�s�ٛ��� X�^��&�~�f�[U����6i��Ǡ!q5�|��@����C)��OQ�?Y�S=�'��-]D�II7?��
������nK����x�yMY��\b��ZN�}�'mxE��������+���t$��\YC��k/U��d�70����(���w ˿��7>�������B!���X��ܮו���1C�G^"N?�f�Z�_ug�����6r�uD��
�DϞ�;�����y\��R��A.��O�z~$*H��Ʌ�n����-?��6����L�Գ��]�jzm���k�o�-\3��|:kU����z8����4n�3"��x�B�8{8O7��?z�!��EҊ|��@ڎ�%��㼷��
�;W���䆀E�(�ظ���)i��C ��w�N��*�f�Yq����{l���Aw��U)���ot$jdI*vZ�V�z�6�c9��i}�nW�.������|�{��O ����7j�l���-��1 /��%�)�+4]\hJ�X9[�|#��Y���ťV����__.׏�TIЃ�1i�oW�)}�ۋ��nd@ЇT���Z�xA�)��Ǥ���=�ln��T5�ʫm��	�5(��	�8y����` �/�Rq�3� ��;��'"A��[�+6�^��t
t8�JHZ�/�/d��|(�2ed�6�ӽ���;걇N孬)m�[>��.U�$zds�	��?��a(1ۍ\J��������� �7S�j�Rm���)˨�iɺ�*O���*��8����\�I�K1rB����򬟤Lc]�&[��&�� j���U7M�	gE_�"�ی�@V�O�"��W����_�n�`�S���e�ʎ{;���9	�V� T���~^g��8�e;���fEr���U��
���, ������C[Pg��}� C x� ���Y<q���2��u`_�e��w�� OC�a�Ka��"��$���A3�*[K����4d4V$(z��Z��s���Oڑ�zj�9k��� ��#ku�=�߂
^W��(͝�Б9B��ڸ��s�AW��!֌���/̲{ţԎvd�r��^�c��^�gGV��r�m���hd��.ok¤�)D�y���|6�����r��<�K���Ao(o�rd��U~ce_To�[G��e�I)�W����@ZZ��_�� �!;!��n��B�+����c��)J&HK����h>O�'Jd�,�7Z�-p�_�lB�h�|`�ΒW#~Q�TG�,��\�6I!C��u����9j�:2^O_�#ؗ֩��X=}=O8u1Vy�ڨ�6���̕�S��#�5��v�#��{�#<JMH�=��Y�oT�[+1N)�&Q���s��bqE�@Ǥ�ځ7�Q*��L}xm��;7�pd{�_����$��ݛdxv6��O�%�(a����&˗�6���zf�.�3�Ԃr�M���q�r8U�]H��ZZ~y�Ѻ�u�D��� �V�$�X.,!�"�´�.�.�m�/o������T�wq�����cTow�-�\R�Z���2��!�f�,���b�()����Wś+1J�+�RЩ�|��%I��^�ss�a�fｪ�̓��7�6F�^�m{#�����,{U����g�\~VT�`',m����+��ݍc�U�v�u�X3	S듮Pj�u�IU�尥 �0�hg5�Y�%����ޫ��R����̊U)��<MeL�>���*�겵R�x�fŞKA'^un�Ƚ�R�!Z��v�T���%���=塮մ\�M��D�oT��B��(�D�1lӔ,��q�x�#nH���Z�k=��U��N�s��u΋^aR�[���~wB
�Q��d�����qb�X�z aR�ɔ�����|zK�s�K�a/�������x�C���-��b��*�.�Y���	3%�G��Is�^��&���)k�U�`���z�y����ap�W�������G�����<ٟ���{?*_��AF�K	�!*W�lA��8bT����Jc������D���$֧�ܳqWEٖ}@�/�q�����G��>I��Z˥�����]&�R�R�tTb�ދv!�⨴<��v�eE�	+�L:���vPj�3�Nǧ�Y�p�=��P6��]�(Z]�I�t|H�8n�O�"���]ˮ���Lw��\������i8�l��107I�m�/�88��M��KJ[c�{�����u�6��~[s�Q��ju���BGf�9��K�d�2r�w%��D��ALM�8=,c����������B�_;�O�J��hi���H���=���6���I�md>�K*/�����h�Z8B��DLJ�#�q�CΛ)�F���'
>�	yS�F5�Ԥ�6�&M��c��R<ÿ���Mp�R�X	2c�{R��O(�e�6�4��ӭ��M.+��T9�}�m��lf�ܑޱk�/S����!�� [tN'<+/�D����gK!Y�v$��֒i	$\�
;�L܎���w��ee����\0C���c
����;�s<�\�L���ym~a��:���5L(��K�{E)��F�픂����H�e̕���Mtgc��J�/��_B餃�:1Y<��R�U�5�u7�;�s.�f�C�u��l�=4��|/�	��D(9X�5%��|�"@K7��$��%q�f�cB��I�,������C��qԣ����E�F@[���&�pw    f7�+��a)J�"�n��^�IKA	=\#E9Y��1RJ^�C64\��x%�U��^�����%��|}�N1�,�g����B)+�L 77�m�����7���K"qw~��H
���ϙ(�*ܑ%e���7q<\��	01�o/k�����a�o&۶�!,�ʓ�u�"a�|J{�)�Neq�|�B>�2�1�*�ԕ%�s�B0+ʅ#y؁BT��zU�h�����,��}���bѺ͞n�{/��^o���\&����ۚ�F'��v�?���D��#d_��<����)�!��������%y-9��ߗ=��~���j]w�$}� �?�P�0�Q��W�t��g�ϧ�8ICUS�H�w��	e��� /�9�@i��@��ɇ� �-1c:%�|9	=�	��y!)�K��B���!z2/{Ag�Ú�t�4��R��^US��`੷��C�O�t3��nr��Kbu�o(�	�l�gxUˑ��@Mل˦+�A�sb��×��:ZI����Hb�W5Gi�2�Lw8L��wTs��.dv6��e��W�$I8�Z���$]%|}���"b�d���m��/#�:��cKg��Us���:ܺ`^��\K�V]���o&*�v,����Ί�X+X�ɒ��J���nF�!j�#y�ˡaU^�c�ˍ��鞛��Zl�b!c��M�6����R�=Y�G=M*�0-��5�_^W!�75��U{i��t�wB̀�
�'�|T\i<�̿�?��1���z���V�PT+�9b�5y��=ӄnv���p��jcs��W���=e�؃LÊ�h��� 5?�&M�KL�Ġ9&��[�O!jS+��a�F&l��8��A��{ �_H5R5?��1�O���"N�j�iN��?��Y�P�Ż&�ZZ���&3}#ߟ0`v���4�P�=7���©JCl�:K)����1�!�xZ�K7��8�8������f��	�`�����w2�&�����Pj>�n���{�o*>[z����	��G����-�<�e}�r,Rs��[^���:�V�dD_�G������$�/�M�A0j`2�IO�Źg?���ya����Qy� =d2_��M�qO�.s��d4+�t?��n	�
�ݬ���.��2XR��:�k������&>B�~pB�T�H5�/;���<u����W�"�(��Z�d���V�ƫ��6���:�_ׇz5�Cp�=�a�u����=_��6��`����.G��b�\�`�0��W�@I��б��{�n'�4�S��d���*�{ԙ�:B+�W��^	�E^��ǘ��B�A9���^"�#z�8s��חV��&A�\�(�����%R�Ŗ>��i�����
:u����� ��������*s�,nf0��ւ�Ŵ�ǵΥ�=s�O����K����8�m_�d�\�r��F�5G��R.T7���!��?O���O���Ͽ�x�Pp�<�2�?��ӗu�ӌ��ac�%���|J]��Rj�&Pt����&�.���d�7����-�러�O�":��L8Z��Lr	CqZH�)���_����W���r����pR(�'���ad����g+hzDQF[a"��y�Z͊&�~8~]i�/f�Il��a�R�Mh[���w�I9��-ET�'{�HDB��1����M��>Je>�����X:�(>N�X����3m�����`��}��qj�2��D]v��G������m�V��Y��rK!�_��=�'`��>'��ɞ<~�#�>YYu���m������U�\(ceZ��!�4H4Y ��kв9��"��E��H� A���G�ձ��$g��X�]!'f�=Z�Zm+e�%PJH�ldz_��)��
2�i�����.J$͇@Ǐ}���cG��D��������:Y�9&c{F�Mi)큌�+�a�#S�_f��\mm}R0+�]�[�п5�VPi����P	i����.[���'�z����+	��\)p*��{�l��BCM�E�
�%z���I�Ϩ�Hv�4�)l������\�/n;��%)�E|6�kݿ���F��|�6+�m��MM'��~Fx�^��F�i`���x�8�CB{>f�pOUF	��X�l�<M�S���������>.
�y>�Z�6���,�l�h�P-�28#��ZQ�뇔��}:J���z��VkW�'��+o���
%���tD�5�x0�������˾�ͭ�+�CQ&P����0�X�ӱ�]l����bVG�����Vty'n�ڰ�[�ѕ7� U�E���W(G[!��_���CB$)�F����yΗ�
1n�2D��k8��4�b����@|#��3+�4� 8��s��nl�f�Ⱦ_ 8?`�����1v��z�:��$m�����%��׺�uI��7X|򢶮{���`���g�w��ː<�#���+2"~Y���Ͻ��s�oV�+m�}��.J���N�!��8�#�A�;�MtT�۱S'��8���6 ��G憵FuV�j��ԡ��
�&^��R�FV���MEx;��~��Z���[�\5�� ��`�N�M�F�mI�FQ�*��yĥF�b�v�Q��I3�I�a`���%7�C9��hEǖ����=����Z#��_��7C��H�0���	A���������
�KҦue�����6��.��ޡ\�I*���;M��@q�F�ᤈ@YQ2l$Kع>M�TJl$c�;J�9�i��@M<�Pմ3�;q�j���� ]��Z11/_]:茚@�Us�b�rǑl5o��f�|ꦷL�kd[vm�QU�e���SFaFʍ`�T�h��|���r�g?0d��Ѱ5��{	�.�&=�~���ɛg�}�\u�p���6x#N�sZ&=g��j��s�a��G��n62�4J �J��z�h��|M=Y�	e�(�7���>h���J�D�&���+p{?}�����jf],��l���%v��#6�J�bI&�D2�۰��[x�oC�B)3;����v� �L��n�g�nZx�o_�Ǔ��� �j*A���%n"H��(0�}n2$d�E�!�S�'��umF����^�E���u�>�|�l���u:�����s���h\��@Gf��6�s���[��*W$�{Ҽ7Z�3z��ɔ�cI8�����l�5�>��]07�r�~Vut�iM����`�iӨ;�dK�e�ǌA��L���>_��xCd�	�@���&�D���(�\#�9��>>�B?��t�`�Rzv\2�
oe*q�6^2�&��o�ӘX;��s4����b&��[�8������#4D�/�����B_���\�o0H>�b9o��.�=��q��Hl\w�ڒH@a�l2)ZŢ%��9�;���֡�t��R3�&�"65��#�<,��:B���A�)J��DF5o�VoS��ԧ;��e�Z�Nb�zqJ��|OlTB��c&���y�)iJ3����j�I�;/���sC>QC����OlQ��Lb��l�h�q�����:r�S��4�S7��!}7�$��['���|�z,u���������\�d�>Um��F���u��D�[�Pbװa}�l�/�*�����-~-]U�f/�Ħ�[k9��!e�,�b���$�n|��oM��&t,�n0��B�m.'�P���6t?d��7����t�Le���A���Bu^|��#D�)Ť衴�k���i�;�Q'A���2�����osM��E�u��8߂*�-�IlZ3��eOw1Z��dE���UY{i�!���غ�@zӹ����c�u�*JD�nn��uE|J�S�Nb[���_���)�M�*�M=���XN��p�eH�b�=u�p��u)��GM�e�|�̥�!ȝzB�MMW�
�>��f5�ېԿ}�o2�)H�>zue$6�uȯ�������A�ԫ+#���C���vz�?��3$��ϨK#�ͭc$&$�ߢ���v��@7��(Չ-���ْ���<�.U[�4��}��>MEE�DNlvߞ��]U    ��8N^]�L���\��n�w���<�*��-����$ӫͪ�T����՟�� g��I3�[��vL��#��Z��Ln��6	�&�iL���ĪXD4��dt���Ͳ.����h�4�ܕ��%��Y�^���1�W�2��kR~��RGB�	جd\���e��l��t�w���{IKI�D��x Ex�	��̙��&��v|��!.��SY�#<����T�J"���_g&��U"��)C����(<���W�1�����ݍ�ϟ�rYu������n���#Z�"����|?U�=�=X����^�|�i�<�6���"	4��������f����lo0L��ĭȌ,� ��G)vz�snD��D6�@���=Zd�۶���`�Iup$2�{~�]H^WJ]��5��e
���s��T��5�J�&I8�#�.I�������u�<e}sD�fsE�2�㒀�:�N�	Ϸ�\�-�9����/�������}_�4N�����|�	��f���,/�Q9�,��v�Z���a������*�J�hd�ۺ�ŗ�.M�Ag�"�(���ʐq~�l��d}ڙ,s�̌�P-=�YN���u��\I����~�#�:�v�� I(���3儺�>��ۉ�����d�sk@���r���3��t���Ľ��a�����kH�0���A�lt �/ݬo�MA��x5�mN���3��'Y�f�X��F�:��Bj�qc�L����M}ˀ 2��������L�u�(1\�� �	x�"�JV.r&k�Q�odhۂ������x齂�Ce�-g2��$6af�C�ı`��L[p�i����f���X^c�EG5�ӽC���A+9m�ah���}��Ʌ/џ_������W���Iۼ����q����h��f���oZ��#_>���X�������f�Q\C��襐'��V��(5�r��)m���,���� �~�q�8��?.�jh�.�����Tez� K�ceC!���`�� k��un�q���!#v�~���J�ʘ:���A��G�$�^$�B+��ƃ+Y	�L_�P<͍�9Nx6�F���oB�Ln1����TOE9,#����2��X6�Qi	;�(�;��m���*�2y	{0���_=��ȕd���z���ٯ��c^��BOI��ɢ\{̎2�>FD]������g �����+{��	�-إO�ӏ�4֜�:�ˎIK����9�e���g�ˢF���￞)&
(_�ʒ]���Ɋ�:�r_��@-�X5-5�lF�$R��,egs�W$57-�"'Yb.�Ft~(����	����Y�&gY�I\Q�Y�ٜ��~�Y�Mb`82X}���^�k���9Xd+�)5�S֧kF��y�V�)�։�9`�,�E��T�v=�8�}Xm���BIR�kq^�\g(ӟ��_h-y[�u���g���n���G��)��h&E.n��|�G	aK��X4}��n1����x���\_�+�pMB�e�G̤ٸ	� M-���#ٖ��Y��#�%�<k�\̲ҽ�<k2�_�2/콫��ޅ�X�pݒ��9����8oW>�w$��nG$���]��еC��!���n��O2W��^���Mٮ�I��k�Ǩ�d�<oj7"����q�߇���'�ei��k�>�$q�*g7@��G|��)fY�u-���`e���@6�J�Z���j�w ���o�A�o��
�Q����߆iq�,������\Fo��,���@�J��1�b���AS�a�ˏ�c�'�UI�W�c���2O��~�. p�=S��r@��(�(��ODx́:��_G�GA��1&���1���^6Y��L���K�,�u@��@��\6�<��>��J��������"���%�%�^�ߏ�~����lI �6��p�Uuߑ�3������t��Ư4&AD�wzUw^٪�;��'��� 3S8z+���vߝ�U�8g@]���F?6�T�_��IaQ��ˠ�����MY\_���o���: ,����ٰ�_e�l��,.[lWٞ��/��3Y\�>莎[dDv�����ZD=�����_������A0���t�}�[�q�G��x�Y���-������\:qP`��wX|���/�74�BI������M,<}����ͦd%�[E�׻J���y69�Hg���<8"ٰbb�)Z|]�L�S�@	�+�k�͟���I-a[G��_o�M�%���c�	�C�Q���F�)_Q`�u��a�F�V�p��X��2b��~����:��^��ө�����wn�M�`�v9�X�9��Er��'�h�Adi�%T�m�>Ǳ�E�ǃc_�#�l�����5-�B��{%;~̿.mp�Do��,$d��lPq�Y�j���oR=���`L3�L���.KZAIio�!�¾�Rd8�y)��"�坫�Z/Y��4)�ՠ�r�ZF�Ӷy���N:�� TT(əA#�{�R���G�?�͈/u@���TOnIa�O9�p^1g@GL�{������W�Q~ŏ�s��i��	= ��&.�EFWȺ��K*�1aѕR�1M��C���W�C�em�.��#;#ݒ��7��V�j?���x�����Q
̃�BOG~q����%��b��̀��
L��Ķ�]�f �-���I^=݅�r�H	Xn6r]r��ԇ��d�	�%�ixP��z�K�f /�۝�O/���G���j���>Yq��Ŗ�� ��%)yu?��� 3y�~K�.�R�a]�v�K4�_S�AV�g�O��d�Ҟ�M(b����J�� ��&G�)�.쒑�L}]�K2���j��/~�Tj��J�,�T�ma�C�Ծ����v�b�ΒW7d�}Aiꮝ���ʸr�۰��~|�x���}5G�>�����R�j�7S橆m��l�Z�$���6��U�p魯�~�������͔����.:I���v���EZ�Z�������o�ؘ�H��N��̈ޢS���3�lÐ�������󶾦��H>.
�rō
\�F��$.��ނ}�t��S���V����������8¹������~�}s�ز!��m�B�^ᔥ4�(�us�<��Rw�N���\��*I҇����Y�LG1����P�7�3���G�����B�B���^����-d���}[���I�K\�ؔ��}�|ʒ�l�fu�֝N�I�L6c��o�ޓ�J >����꾭8�����U���|[�fw���иlu�X�Y#��L��1��������儹,�5�#�q&��������a�'S�"��c,�,&dٷ��&�� {�ƞ�}�����[�.2R�
����w]J��J�k�f@���� �gGM��w� ���2eZV2=j*^��W�ow���@;� 0jZ^�ߧ��q��w������3�oක>t��iu8�0�Ɠlb^Ϊ	l�%���j�X�+��Sj�H���^����}[�I��y�&�F�Vשͳ�<+k�r���sI�6�~���V2]۾}���]Awr�T��G���!�]�M��h����p��d3��Ct]N�``�f璈�����劐�E?!��|���I�M�'+;���P�B�Qs٠tS�� wr��6jZ#�p��귉�Tv	��~l-��'�p�A���Y�7��`��Vbw��Zq�F4�tϺTt��Rd�� &�����A�c��iQSi��vI�Κ������� ^f�v �![#iRdMq���>r�v�T�!�X��s��9//�+w;��.����Uv��BQT���|�=�/��21Y���c�5�α�)�];m�T��$�G���i��V���%���U�ؗ#��\�$������,;��:��j���ޛ����!!&V��oל8x��{��-i�a�����t�&�E�I�k.�{'�+��e�d�P�.%�k�B�T�:e�e,�`��������������D��&J��JD�_����RT��Y��E��_�3slճ?�S���s��C�q-~0'=q�?lq���7M�ME8Z
N{��9���].�g�    ���W��0���b�
���4���4�H$
N"�ĵp�س�He�E[���7���{VH�4��ޔ�K���i�z�y=�8�Vê�B�"ah���҂�������J�y*���Vg�&��-��m���3�L
z�У�h~���KBVf���G��!Go<��x5�hd�1��/��������c{���T�f�h�����M�EE�5K`�q+��YT����6�ʮ�f.:6WA&f`�W�&�h�ג���2��MJ[�`��b#�{#\�$~z$1i ��McD��J���SH��s��M�Qjˤ���Fs?*bDԷ���6���/��U��L�?^9k���,�Y ���l�)���T�V!M9z�yL֝�h����Qي(3�� ���`�4dG�&����G�6���z���݂�j�i����u.�ȸNh�\�1#�)�*��'���x��Q7�"d�w��׿{�<fS*�P�Qo�z��Y��%d�?H ������m���OMZ����M�m׬�+<��#h��7
{X�9 dS�n7��V�w�p]:䢝��"����n��`?�~�=����Fu^����F\	{6*L����V�MLF���Ň[��!5t���b��y;J˴��Џ���Ҟw[ͺ�ɐ&���|UT�ZT��I��dlGT�dN��n����j�̽k��"��a�ɘ~�?i��vJɀ~�o�u;Y��]Ȁf�~@N������U/�?�1i�taȆf�TV=x{����n��c�֌��+Y2]�/r��l��_S�
�=�3�=��O�_��b���M4Þ�[)<��>���N��2��gd��@��{�m��
�6!����چͶ�
,��r�v^� ���U�;n�D��;Q"��2��A�j�<d,��;Ynd�9�&=d	l�v�7��=&;��A6�xF�X��f���:�rֳ�x%n����,�wBG} ����{P����؊];z�|_�oz�d^��@¶ݾ��B�h̀|6.σcI�0-���=� z�����j����!�Cey�8�2�y�{��L(���3���_�q{��d.cҶM��8�v�J]>��e���2d����5�������m5�d�G�c����h-N4D5~��U���K��*�E�/yzF���JWt�./����H�E�%{�����	�3�=�d�6��G5l�� �w��ф��K��و�6�E��@w�r���%����뙞SUzoI�Y�>�W�fm\?���3Y��Ģ�l�z5�*!췪�d�E���̚�4����������&ƚ�:��T}�g���p��~�dW�l�v��2Y_k�mH���?��y�T�{�����d7��j$Z�L)�Vz����?v2���ycG�}��.g���׀�� �h`�������n��#}Z	s��g��h��E��ԋ2�[��s@W ��D��il��A��G�8�P���&�l�#��\[���Ҧ,(�Gv͟��[�	�;`nc�S��ʀ�	HP���<������9��-��n��h�G�J/��fA�TB���KQ��Cwm��6�x��UW��c����{��!b��N$K��*\��˜�X��}fahs϶�d��Ff�~���f�v��Fޓ�;�,��]PێK�]��H���|�_�/me�����7O]���C����;��o#?����4"���^���ҫ��D���en�2�	(m9���3��e���_T��'����[���δYt_�W`�s�F����M�r��4�q{U}�ӳI6�Z�p�chv�Z6�*a�:��@&�aϛK�A *��#s��#�s��n7[�[m#�k�gvA��A��̀��MA�ʨ���V2����~����i�7�(��"C�@_ô����lߘ�!W�>\��]t"��{���{�S�Sx��vI�NvU�@6�H���Q�m�%��M|�ĸ�nY2����M��V���d_??���y?���Ʉ8\oRҸ�y��n��:p���yJ �L��F7�����.�w���n�HC�?<��R�T����$��*��>�X�q�U�n�@6?��,�?���y~<���	�es��{x~5`�'������'��:��}?^��� ΐɝ�v�����t��3Q����Ŕ�.rc���J����Q�Y�Z�aZ���������z��Sq0Z���ݏ��tٛ͜u��Iش���U�l����H����{�r#ZiM�n��4�V�#��L�����ͅڔ,����W����1�}~~6�C���;�SG�.�}� ��'T}�M70���#|/����kG6/�Kɔ�|�7���.%{���R��wL����
��!�w���aׄ�]FM��,r�^�r��j{�f*j��=}��e+{~��==�?���Pdڶ2v"�V���ɶ=q���{�\�y
Iw,Y����y�0�LY7,Y���oO���r �����߲��F���+�PT-�C��7���D���T�d��]d�(��G��>�tT�k#���O��v��n�5�C���_�������4d�6?��B&Nf��- �]��˯�]?c�3T�6�R�,�KkL�k|ކk']��[��!�ذ1�������L�/�7.W���q
wP��PgQ2�ŵ��t�ʔ���~�,{I߸l r�����ׯ��r�q�y<�ç�չU�u���tkع��W�6q���!:��!�a�������geÎNn�sr9�2Q�(#�`�>��;2���zݶ}k����L�OXX�fl���.B����}��RC�K�� -`�Կ.���k-O�K�Z@F�»h�"�������?Q�t�Ik�oE{o����X�`�5$�\o/����C�o���H0��q�����46�Z/��~8w����Z��g�Cl7��?�������=^�1�W%�;'m�GW���{��IA]��݂�j����'z��y���;H���r�����w��^���������\�v�{Sǝl��Ġ?מ�H�J�N�D�>�v���\5�um��w�b��`�l�@Bp�ݷ^�c��t��M�p����ۍ,��:]�x��/�D�����%݁�ߛ�=ض��D�~�b��]�F]]�%~B��AvY�Ԯם�����[_��k=�i�Rէq�3�Bor�슏��=�iOm	�d��\	[�̹�첸�����R��X6�кW����)9M$�}Z�VD\�����\]�Z�2<�MY�@�����4��;�=0R	ܕ����\�nD���}�~B��|u �īt�Q`���~Ӯ�ɼו�'/����֐�K���O�"&���c��tE����\��FV���m�͢,�E��*���ǄYj��8��sH�U0p+��4�]?���U�e��t]ZX,�.�|�2թG�$���]���e�e7k1:���Oם�ې�?�⤺<v����ؗ�ݛ�fa��I�0�������q6�q'��۟���	��������s����s��e �vO��y@�A� ��8L;7�I�,��,��ب7�y�ω:;NOO�F��͊E9a��֥���|&̧W��L�>\[6�W{g��!-_X�7㗃^�%v�/��7�Po�$�����nn�b�5p��������L�pAx����&�W��`M�M�;���6A6�uY�-P���矬bY�ބ_�^uߒ�<���k�@��;����bٶhzP�]��I�~���M�P���nI���'�p�&�nG��F�� �Es"�2���E�#ۘ��wj����?\�x��4ou�2��0z���~{��@ϻp4�e�:�"�F��o�	�@�9=��e�f��A��ٔV7d���i	-���������sҎ礡�sg%0��v�$6��;2�M�Y`m�2Dx��[�-�Ȁle3Y�B�o[0k(x���=���Ӯ�O�x���?E��������.�#6���:uT���.T[Y�4�(�ɜ�A��%�#[�fbw��x�1>�I��1y�Y�m    ͂"�*#�ב-ׄ+�������%]�/#;k�;�q�4���Ur_s{j�T����\�WU��w뾨6����Ώ��8{��k�� Mc�7&�����g�.�K�{�!����������_�N�+��bo��'h^��g�E�*B1�Pt���<����=ad��]c}<O�G�=����}�d'3àw�[Ғ�<Ȥ�<�媏X=����fK����"��Ӎ���Qi+�T׶�xȮS��!�@0�;�T;�DQ@ \ $�!��"�W\�v>}�w	/~aK�1~�Z���$w���
��;��p�g�Û�����;�l9���M8���o����,� 3����"�J�ֲ+o�wpn]��7�W���֩~�i��G��x��}a�!��f�K�
�djOP
/��r�sSC��5�2z��P������ǻ�r#&t�	�I/I^�����~��w|��>������J����`Y��Ij� h:�{(�m�v�7+.��U��i^uV�jW�z�\e�:a��ߙ�XO ;�`�b�����솆������^��^PaɂG�v�����]o���|�g�1hژ���ۭ&��.�������C9N�v��l��l��-���&"�v�\4-��}u�X�
v�z)o-��B;`�~.�ӯ���I>$�b������̛x�r�|z����:��r`�����`;ox����]�����Fs�U�ɤ����x���uHC�ڃ):|�GK}v`o��b�)�0���P���#H`��k)g*^�>)Z����]x���5��0�ϔ�� � �������^��XK3}/��:���s	o'a\Řж�p�2�����i7O�{��]�e�?˕$c�az��FO^/m#�ཤ|P�54Ё����a}��
x�k_�(qN9��}=N\�Ϋ ��Ɂ�{A��}6Ờ�{Y��� ����`�^^'�h�Z����"�����*�ա���� �Q6N�{&o���G��>P�`���q� �U���Ƨ�0`�b�T�3W_gu5�o��9(o���7��u[(�7�`+]�I�1����X3^HoU�fy���6
4�CP�V��(/�(mF����J)/|{AE��EÁ�}K��z��{�΃����,+�C���,M��P|Qq���.2߳i���E�L!ׅ�k���ʥ�w͸���LīQ~��O$�&H���|{�	��e����z�66gQ���t�J��|u|A;��t�Z0�T�ڮ�1
Ҭ
����y�'�h9��;YC����U����~j3v}=��SE������
30�y�����C��	{a�-��[�^���8L��.mWGa>�������m�TqJw�ǂ��y���|���oK��gW����*���b`���������1�m����ZX���3�Y����w �����b�'��z�otg[�����e�wsRD�8� tZX֑�Q������nsB;q;-Ⳳ�w��P�4�gdT\�Ն���g��@��^efT��Y j��fL֔���;x����
|�[�67�o\��SԳ���Y���<C��D���S�,+&�]��TbB�jnb���@�艤5�޹+�h-Q�aO6(K���X4�7��
{����S��ބ.7�C��a��"��z��K&#��SB�=C��qv9��#z��}���Y}�^�6��R����A�BB�'���/�SG�y0kw�]�k����e���L��Uш�1�ay�h�f,v���81�9����9i����0X����_�]���sT�|��$Eﰍ�.�EaH�?!j�n*�}�z1�#Yߑ���X�똈����d���<l�|2[}\]Uԥ��`_��}m�j�V���:"�N�n;�W(i���N
w�jc�hc�� �٘!�4���r��x*�Ԩz/�_��um'R�:^�LJ�A���[������v�ľ�$�۶O?+�LЯ�sy�[���4��.��g��(1��&�N��';c'q�%��-�zu~W1c��c�1l�G]�*GE_s*G[��V/���I�b�4dϯ2�N��Z��b�s]�u�9��cZ��v� �9����C�NԐO����L���j��6�:����q��⇬�`^l�;����M��x��k���L^Vѥ*PK��Y�{�l�8ç۔�o��M߬ߡ��M�O��<SF��Ư�&i)'���^�_6U�/s�ح�k�!KsYv%�QgĜ&$��kG�p��W�j<��k�߅B�EM���Q03���	7?X�%QʫJ�Z�L1f4er�n��}t�Vh��j�N6EqrUC0�nAL4u_~�u!�[s*`>�g?�֧ ��Q�It��'���m��� �$�Z��xE�ާ���߬p�o�4�(y�l��Y���B��J�f�Q��!�"OR$�T)�Y����wњ,���p��ױ/��]��*��L�qCoKy�fM�����-[^YJ�U��򼠭�
_pC�8�]g,dpP2
8��xQ����կ&%L-��kek8���05VZg����Iۑ�pWG�߉�.,�KOHpՈi��9[�;�Ǟ�VOhYK�u!�-�C�%�$sp�uv^-��Dw9�.Z\zVT��1��[��A��С�m	�d:��G�`k��'��a 9�|�$+D��0#w����H���'.t�2�jS���N�Z��I���Uy}�&�ն�Pݯ��Ҙ(�Nv�Cb��~ޙ�2Pl�C6:�A���8iGS�D�+r��;ֹʟ������smA�-h/N)"{�em������kC���� ��
 �l�<jrkM�HlrPT~�M^'x�/�?�?����]V�0xʶ����#�0��?Iڃ�z�����
�Ӽ5T�t?z$�ݖϵ=&;(>Sm����uT�Q<Rʐ���<���Ǵ��a%���f��!��/V�x̆�BZ����R�B�L\0��@=�ץ��%����|=�"�&ӧ�H Sx���.����B˩����.G��[��$��	�Z[�>�\w��B��̡��e=t)~�������~�U�������ND+d�'�ugj��=J�\Bu�X�m�u�a�t���H�ùb1�G�;������Ȉ���r^S�?/�h�H䃝���.�Q +~'ݩ5�Y�N^|:!bB�����y5/$���\�}l<��r�C,a��U;���/�d��&B}����4�Ϗ��)��JN�1���G�@�	~g0�$�X��RE���UC�A�IQZI��\P��CJ�Z��@]Ɲv �-��O�(�Y��)�q[��j e�n�?I����(���ܴ9L�����w�h�n�9PZ�57�f�s�}�$}P�v<�bOT��ۓ\"��yC��U�x��]����[�6BI@zkr�D $�6Q!Z�rz@w!'����c놨[]6�����A�g]$��22�6m�zeA�o�ˏ���,�+���;�Ůւd�+fp�T�yA��ue��ˠvI�B��&Ȭ]���P/,$�Dq.I���	%����a��c��=�'�:��:�SqTrM���cv��)�`{g�7[��!,jd�U ��d�oQUC�sQ	�v��^����xm}�d-��(�67>�i|к�d�4�9-L�7%ks��u�%d����2ƒ�c�8�R��`�,�f&G�^u�����MGE�CF�n�P�8M��~oa����H�]A':P����'����ޮI�v?��#��녗f,>)2������A΀"� _�����I�~�N�p���^�D��ċބ���F�h���F�m
�����G�icNצ���8gq�Ddf#�5R��,"#���q*mhR�l]�1T��%"-0����=���X��M�(v��%��?�Q\��8#؞��}��Vmw=��������9�[�&��`w~,�(ϲ���"؜���'%�Ƽ[�76�����cd�'st�2��QM���	�_��Iϼ��C�$���e�eU�a"Q���J���Y�^��lS��������X;"Nb���ڎ�aX�`0�5�)2&�H���)Q.�c�9:+��8����+���������    6� ������D�N�Ww�N;�U�O�s����нʙm���#��]	�,ct�	KA�g��t��y�����rR�6�4=A�v�V�8�I�Bk�����^�pYT���d�p�o����)�-��*�3�U֑ �����~~@>���k�nVM�]lp��B'����@)Y��Ǝ� �1�	�c@V*уu�:�7d�^�۟�f��hP�HO����FDF*^���=���Us�T�uZň|TL�}�A�e4����ZE=��m�	#:ưk"rQ��axrP���n�#��c}����T��,����Q��ن���G��]G`�^�OJԙ]�#8��z�w�ڊ"Ǩ�}ٮhHT�{Σ����x$���C�-&䜂	���r��GB���peDB ��������ou��A¤���nP�|G�/�Y�x&Q/�2�"��Ն�1��5�M`�^I羉��%M'���2(���^��(8E��:�Q�����O���/{�|mT)���kQ,%vb�c3�e�#��u�ZGZd�W���@���"�z:���Q#�I |ɯ�'�F^/߬�A�ևЛ��XU�`�'4Se���q��W�o�nw�� �zg[׋�蕥�a����X��6Pq0���P�%�R�"�;h��Y|b	�Ս,Ii�Z�ޞ#Ȳ�����{G��,[���]�ח�,."��-�����~x&'[� �%�/TyYRy�3��|�{k#c��p�L�-� `�_,7��XJ��N�����˽�1�g�5�D��)җ�.��l�eHb�é�e@�����:D�:��K̊����7��������rY4�2M�Z+|�4f�9���/���I��KS#��W8�Ċ��/eB6��tY����}���vٯ+�;��Z5�d:���v晘e��L`�֪p�,�r2��Lp&�5����[����L���\�F��a����G�I;'���F&0FwI�����'$
1�i����޻�Zk9�v󲀂���D��i��k��|�2���"L����Q�͟{-2Н�A�S�5w�g:����ό�E��%&/�{DF"���v���⡷��H���mK�.�����:j��	��X_�����lƃ�|���@FZw�`����N�F�S8F��5��I�H��׾Ut�%�PBb�AQ������t��do&��UZĨ�d�%�hK'KWT���b��J>���F���E�[Dj����K[��̞I8�$���m�����D��;�P.|31�]H�������O��y�@���$mX���¥����Vi��K�n#�]z�
��&�QD&�&\��3|2�WL ���Ό��RJDFN�^��e�T�b��D���Z[����f`f\��l��/V#*#��S��$d�w�p��2��DR���{*'��I�%��n���(j\k�
���]bf1�S�9�XA��x��ķ�\|�ȩ�j}{� g\���	ox{�fx�<�!�I�×���2��	1꒐��)N��"	��Z3�.d���AG>M1	��ʙ[���j,mb�����E��}J�,�55�qOan�dV]�/��'uz�(G���w{�5�7� ��4�95�yԖm�j�������ck9i��Ԉȧ�Ymo�yÜ���LI�W,5j2���u�z��t7�r�ޞ�$JD��d�Q��]]��U~��O��+5*���X�GI��H��,(\)�EW 8��i4��	���:i��h�d���u�$Jd�rۜ�̼H�Q!�࣬���i\ѦP��Vg�O$9Ir����1'�pR�b���jI�b,��y��r(s�6^��0����g�.f/{1w����ʤby����zio�S�t��{l~�T��]^�_��o��m��T�]��x�]wz��4�Z*�>�%;O�I�hÈ����"��o��]�8'tؗ�B딁^S3aC��Z�"w�)���?��lp��������M��m3��k����ΚH��M�0��:%�;�[�\�˫mz�$��"�q,��[}ʒwQ�K�&�e�$q�!!�����ue�J�����
��x��V���z������˙ѥBF�e*�l��(wXKpX;���<��'S��("��9���ϝҖ܀��ɷ�K�=�&�T2���,��V��LœHGkSʳ~�d,�X>y��+K�.�Z8�zHl��p�~�n���&c��d�Y��G��2VM�/T��ɉ,����8��&�� �,������Վ�U����V�j;���($������,�ZU�����a���n�0�%���O˪~��aiF��\�<�qv�0��񤛚 2��r�+E�����-�C~�Aa�7=�ӛ]������X�>W��~_��c�������(g��*2�.:��a7��7- @b Y����0 �#I���'#�a�qs�b�7�RY49�� �"i�����������X��ŇV(q��=:�����z �b��Yszf����f�|��3���XE�)�Av��1�Ƚ��������Z�����g�g��늭���3SH��v�a#�~�X5��Bf�9ɻ[a-�
�����{�
�|�݅�l��"O+�;x��"l��5�V&\�_�UAP�qD_�����وpI��*��ϭ��w�p �)���>2FEpd���Ԓ��M���q�\{n)1F;�*�T)tu����C�̄�39��o��$�L�ty!�#�X�<G4؛N��y�&�S��>��� �*���)��n��]�#%�}U����Zc0#=��"aXղ	�e�hd�_�}��c�Ff�ic�G�E���I9'~�i�dMA�2�kv��M�	�	Y2�:22����VV�^���
g���BV��0T�Vjm����f�2����?�3	��(Ȳ�Rb.>=d��됑ʍ�y�V���/��Y
�������}yV嚦l��a��\	�ߨ �U<	�^���.�n�k�ӕ�$o)���ج�����֏ʼAg�)ddu��)�!C�����h���Ԝ�E�s�JQ��"85��_�����F���3��Ur>�s���Θ�E��J|�(�3��]�t���p��;��-ܜ�4Q"~��g��*u��F�o.�YW�`^�[I�7L�2�W��t���G��+�5���}�6h'��,%���x˘�N��%"��u��!�Z���Nr�3���U��j�o7�4��)���+p�R�u�e�$gL!����T��}����4;x!������њ̺g�RIwjO;��"�ВB�Hݴ!,��٦�JdM� yvXԕb��|��lГ��*!�%�D���ᝈ��YB���LS��aY8u^��2���˃+�گ,��ubJ��x`�8?x�eiR4�Bi�1%�K_�Hd3q�����/��!�P�o��_���P�2�ƴdh��`Vś���J/�_�6��i�R0/5��:���jR�����&L�B锦</�T��,��\�ͼ�s���+Zz���2�I"���}Қ�9�-�u�d�� Ì	����~i� z����e��Uq�-ٻ}�����>&�~�Q�N�Ƞ�Q�S|�d�Z��8:��bj���r���uX��!���O��}̂����߰EAkԳŨw��-X@2��<Is��)�1��5n:�MШ��y�n��Z�"���UyΘ���B=���X�jy��ė:h�(���2p#�iUTeP4D�� ��f
��Z΢�Fy�F�a`A�
�|�ƓAWZ�g�u.ߕS�����iXd�G�+`�`5��*�</���Yl��R��V��5�I��`-�^ B���������a�0�?��ƫ�Z{�v]�*j�V�X�����ծ2Pt���'�"����R3(�w
����_���l����B5`��;�A僖���S%`���o��D�D��B������PD���q%Ľ?��E�h�z�P@@��a�^����W1u8,s��ߦ/�(�'цy^61��(�Q�p0�p�I^��9e�����4�K�F���݀�/�Y�4i�����ϯt�I�?� ӜB�^ܖ�4IoA��J9O��m(iDB�ds�r�b�U��1�r��    �߷�򭚷l�������
�1N+P��~�w�L��h�$$(`��~a(`7�N�I	�����U�ƨA�����)(�%+� O�<X�.�-*�� [�_h�ݿЮ��H��G3+�$,���ֲ8���AI9\V���b�gG"A���ێiK��L��.y��{����]~KT��(qY	ͅ�+r�>_�u�fe��=[ot!���)P�RYʅH� ����Bt�������
1�痢sy��"��u�n��qT4�LA�:^9�%G�� %
� a�J0q���V��(�K� ]9��mW�y�Z�����ɂ�r�S��+��)��� o}yvf�$JBqGX(�ֱl�JL�^
x��lX��D{���Xx���������T5���Ug�t�4M��/P��Ye�-^4�L!����/r���R�J4��x����6�����[�z���l0��^r��L#б��L%oI ���]4ێ���_֙*�Q���7�8�z�!���u:3�/J}�{�4�79� EMGN��Ռ[�l�a.z'�¼���̟�{�M�'�h �aW.u�R����zAg"P������S�LC�}�u̠���c
�Hfx`�`�*]�+�~�qJ�L�8ts�5 ��e�I�-�W"�h��mə͍�3H��Y���,�w��,�Ig�DQ�#�l;�E�j0������
TӜfi,�A���Ɨ�d�C)R�۵o[fR�蚎��9O��tJ�Ҿ�^l���D�Y�,�_�9'�t��ʾ]v6t��1S�L2�D;���aM:[��Н_��&4��%����O��[!戊��D�ءC
�v'�^L�㬢��nSVE��fh�A>4�Í��3�橨,AN�~�by�g����p��rq��J9:�anȵ�������M�g��n������^�0���Tws�jf��:f��Ȏ���4�M�.#��C[���t[V�ya�N��_0�Y�P�y]R`���U�R/�f��<����,b0�`F�n+��*����a����ex�α�|%�V��%�=*��aM�R6m3ʂǊ�k���J_�YF'L��4���H�$s�U��ܒO�abd
X��A��)*(����XD����W���$�^.����z�
���s9w��,*w�ER�|OHDX־�IWV`:�i=m>6-+=C��-��n�����ޟX2��L�.�����^�4)�;�����v��"��sA�kt=���Q>���:���1y����^B�o�u��V�
u�}6|8���@����)lfX O
2�z�f����Q��/��%;�̎�-�!k|�%��ݼ���W\���)sZ䑨�&at�iy��o�N���Rr�Y�"����G'�)�U{Ͳ�]Q	ݒu�S�oQ�C�,+*ŁX�d���k3x(��ny�-]���C&?�Gvy�Md���W鷟;(dAZE=wL��],���M�.nQ��Q��$���k4 E��؂:&�7�ڻ>����-�J��ne��{�u݉�,$9����դ��m��>����z�o��{����N׷p��xG�G�E&�u��)0�z3[�]�B��`򊉑^D��Aw9�G����A�G���b3�����L"T}T�Ql�r �ۣ��b�����⻚(��O�--m�=�ϝ��P�Am	�B�
w�)	:du�`��5]�����D���۾XG�+u��.�;�|v�o���Ũ��ID}2�������濝�B6a�
�=ď�d!ac�1~�ݵS�U
��>����L�$u��{�1�1�9E��
[��lmY�b�aCQ�u����ET� �&��>��B[B˸b�J��0��2FؓK��~fA:�&�ʿ����YPI�t��A'�*�R~k<�N3�VJ��Z`�N��?�8ْ����F������ALo�1c��]�i�Yv�b�N���Kw�j��h��� _����=f�����Q�M:�H���.j��1��"�'%'�]�N-����~g� FE1� m���n��HǄ����N
��a�nh���ù
�#�aw{1�Q�k�-�=3�P�tJ�	O��O��	9E��wd�� �h�k�(�{�k.���%^
� ��{��M�NN^Q�z�@?�E��ל�e�:ɘ�2���F��ֶ�q�rL�����@a�W���X526�H��$x:�Q|��I-{3�c�
*l��в_#�����y�gˡ��U�A�1���:0�6�/��kX%"Y�c�N?�'��o#�P�����Ȭ_�I^L1~�t���y����86Z>��� � �0�8���ۘBQa�����/M?��)�Nl#��'mm�&�Nj#���0� ��B����k{��wM�F����lo�
9�
#�Ţ����dk��~�:�|����8O��kQ�n5O��F�;���3�z����.��M.}NJ�����������`���tF4���	�R���D��Gۇ�u|ݲ�cg���/-��S����8+��TW�=ŢS����{�O�^����[[����L�}o�dM^�f#��,w��CK���+{*L���ؑ��v�p�"�=�::����I��	*�e� ���o��` ͽ��QaT[�� ��!޾12�$"�\�S䴯�&��ё�T$�okFD�p@������ĳM��l��Σ�L��Tt�w�_߯X��Qot�hw�"k�K�^{%�YW��1`���jIv∤^�5�9b���5�z�y�ӵRӍ����f��sw��L�E��$�n�D��^mA���5�&gc"E�H$�c����G�h�t�&�L䥿����p���2�2�cx�*Q�i��w�~�9Ux��E�.q����{��I�u���ޥD��`�����מJ��N���'���n�	"j:�����r��Fㄉ8��!�b�vN�H������;1�i�"��b�u~�~����n�-�U	#��lV)i��PQu�y?m��5]���_h�a&�9fe#��	�6��=�-�Z����_{�uȪs��%~�	T�F��%�~.��BJ����	�	31��wm)�<�F�)��'˾i�M���(o_n}s�7��$�#̕[��}j�Z������o�!Y�E�� �+��^��Y�~��&~��V�����r&Z���$^G^����$�o~�4����E��&$H���mp�Rab��H"��vnc��P�L	�BDx4m����͌����*�g?U�&Y���JGbx�U�V�����rG~���c��[����_�N�MV���Z�U�q�8ۃ&7#�R+`��s�z̡ⱙg;�� �_C��ٙ��p���N�v�a�ݤd}�r������X%��V�����_@ANM/�� B.>�<����i��pm@Q�|0|/���`f@��E�ǑH�����d����"�y5�+WZ�}V��k$��͋�*�PP���'f÷�d>���5{��?��Y�<��������=�.�Bq�;����~��N�������s��+��Z<���(�@ɦ�=���!�9j�(��^ڲs�2Ff_:zՒ�PL���{H�5�[�Dr R�9�'��a0Z�}�~n'�D�+b�/�"�,O��K%(ee������Y �����d�R�H6��*_eL�'/���I߬���U@����0Ƞ��zP-Զ
:J'�᫑�~���=��!*����y����}c�3����1��J� X��ύJ��<��v���6���K�BE��
}�dFe{�`�����J���*m����-�yiм"'؟l���T��:`6:��������3{bN~�@78LY>�aW��-�eqbD%��`|t
K����2�����欥�d�G���U�*��=���$�sH�v���	�g�JK�A"@�*�~���M2�tg����m���w��,�l``6���d��"Z����2���QXʩ-�,�<*�e;s�-��������~����v2���}���<�9L�&���ܾ^�0Ձ��2�E	�U��CLɣNM��b'	�I\M�|�}�`m�g�i�ٹP ެ    ��~Ƥ���Piѵ����n1���]�"�=�kc}�pɓ�k1�� j�	
����EjY��dP�rNf���������m@=�E���u���(1e.��ұ�I������p�$^=f������#���*����<[F�Z�>ל I�"H:��'���uC	�/�yu���^���°��s9�N���
������)�+~�e�$m��:{~���Kd��a(5<h�|�B�t�Dg%a8�9)�m�r�#��rV�#�i��!7&�1��"����́m���*��>X����C��	�?b�a��ߔw�B����p�5ռ4w:+��p�4=yӻ2t%s�Q�F�_�F1M��+�O��##wJ`���l�o�vXP{<+�	þXe���J&q�Sx��G�`��f������#8�5�-��0qaxY	 L�����\���e���Wo�M7�
��[[`0�0�"��F%��!�@4�b�ע�]cK��'mk�h��.q+�p�EeD�0m!�]�01��v��3F7�(c%+vY�QE�=�,C௚밺�kE�6`e"����V.���\�mb�WM��sC���5Sa�t�Jv�b�z�%<�3ݶ�.RӪ��Sœekb�U���%�S����˦���+Lك�<��S���&�)̌:*ng9��H���+�G���=xo۳�c�X�B:
o�iCTrcm���u�E=�,���~n�`(5^�������U0�<�B�i�t(����c��T�`��F?E D�]?�Eƾ�1���uplM( �AO���=v��y<���*V���HAL��ZQ��Bl�.��+��k=b.b �ֶ=�'E����Уg���~�/X�;��iІ�.��#$����A��waz�S4�ȁQ��$j�F�i�B#r��~�M�.�00X��r]ķ��""�VN�C��E���\�z7eE���Qg�C�>��<w'�өF�(��E��l� �"�^��2O c�@e�V�q8)���~S:TI���89�4��_ܖޯ��7`�]F�(�d5{%먶Wy"��:�h:�s�e��6xY�U��|��8ͳt_H.�.<M�?F�ɚ�X�|�\��.#���L�׮�&	>(
`r�n�(��ȁ���5bz)-�Q����KC�+��I*ǃ�SѨ�F�Yl�"�*90	Ck�0��ǁ�H1O�����q�W�fH�E8�*P ���;���0��2�?���+}�
����'�d�S7/,^7����E絑b� �񄔈����gf�z9����\U��۶���9+�^����Z��~�,����>,���H$H��r� c��,-	\j��Ɏ?+�XI!lm��$x�k�ϋ���G���Ob�I��w䧙b��T���0�j%�j���~W�,������Ǌ$���L�>-�E�$@u2���M��:�(�V7��(lj�+u3��#̻H{����p~-򻶢^ ?sx��q�?K�< N��.��7!��K��1��E?0[���>��H���JJ{샪e�eߤ`1���S\��O�N;F����*8����F�#r#F�z�m\-{�7�3GUu�O��P����?�my�@�>d��'���Jw<�����1��nKo��"7����!7�(��x��lq���j�>^lV�Ԫo̻.؊"D#���Է�]��@���dm��� ��!�,��q��"e}�����iQ��E��D�qN�Qp��s�Ο�^H�k�+�v*|m����uo1�1�P6�bn֋v%��aY�ކ۬�rs$������]��a���9�`���i�-5>���o����D��m0�$�w�ν�&Ȅ.���ՐQǌ���DP�G4������exz0tm�
�3��0s��N	eyQ�������g;T��A.�DPM��y�נ�G�Q5�A��XR�@)��է������z���n2,�TWa �_�1����w���c�/(bU��^7�0-R�v^x��q�՝�1��N�E�����5#��F)i��n�+G�
f4�~�P����4�^$ͨu�ur�����4M�oS�G��!W�]V`�8�=X�xA��/$Y�7����R��o�'ګ�-]m�j�r�Qx.jB�U�f*����j�y�`��o,�*7e�6�$�PǞ�)(�dg��!䇨:HP޻�Ҭ�j�"����=�� �\n���c��75�'�E�2�=��Tp�[�Y�@��0�������w��g�0�8l�U;�����*�AÚ<���D�J�@��>cݎ/��|a[��
�;��ޗ�$l���]�6�4���c�ʕ��H�4m&��*ԭa��ՌaO]+!Yǰ����[�\�tx�My=s�}��C�W�#m�vW1��F#
���=BB�#F2�_��������ҿ����J6�%H����Xm��Ts_2��yY�/�e���x��(3È�4>	�P�cTn9
ᮆH�Ʊ�TBtz�7vc��;���%�Xz��������R�-��{���z���Y�[(tv�ӟ�XO���t���}��#�� ��2̜���8Qr!�n���7�P��� �� m�BFA�3L��o�b�%��ۇH (H�CM�\G|R�d��c#�P��@�=Q�#�|T�\���0at�w�^k���ݚ--�^LE���O�p����Z?qm��2|�/��/��Aizl�k���m沠������)r@�[����:���4i���I3�h�W�Oys�E`�sыỜs����|�F*N���D�g�}37���Z$5��@��b����5�R.�j��,1̱"['&���{	R� ;�/,��:�"����xqG�LC�0s�@+����ks�0���Wb�@��d�	n҈+�{d���0B�U��xk8�iu���H`�xC�>;'i1Scw����d�\���v��veM�$��08
��[C�Sw>vN<���4I:����HQF��k�.ǹ�C�����񻒢gA�����2���y�E�5v(u_`J_�Z�k��h�\Q�w�B������Y�sI����ɬ�U��gY>P1�ӿ��t�'T^��Um�h�艤�Q���IQ��`K�Jx�@I�p�e�dG��������4��J:VꕅMm�5�3 z/�mۧ�o��dC���oG@v�<����g.��s����#IvBp���w^w��4F(Fq$-%��sw2���O����4�~fH�}֋��<�G�1��wP]aWR�J��w�����E ��vN%�[�c�f.e1nF�֠R)ָ#�r�үUW2(���������s!�~p����B�9T�#�tr�ʇ�_�Ɋ�0�&���4���`qD�77mO�s�oߋ���{��)�0e;�]�?����'�r	f`����Q�I�f,}\�\��:����Ȫ�tz):Q��C*2њ�+�I�lځ��D��xb��ҍh���S9$W�Ae��RjW=��������p���0�R$0uc%-�j��|�Wϒ�L*�}��?V�>��S{�e������8���z�=z��}i��dct>����O���P5Y��}���3�럯�����æ��'z Ƙl@��e�<$�e���=�j��}�̸t�G�)�A����<�2�Ҳ:��B�BO�g&E��:�x���^��T�W�7��2���Y]���W�HZ���΅�K͊n�y�A>j���Z��7c;r��W�/���\{Q�:7q(s��.'�D����+�/�����E��¡x��l�,2�,������^Q恈��ߩ�+��]�_b��y�C��P��F�*�����k%�w�gY`�J9�z}����+�ˑ�y��O����zyA��cT"����d�q�y�q�s��q=������r�K�&*��`���G'F�%%�q�2�h~@�:eFV^�͍�f?������"�j^�H����K(��<�h��T
��y]�'�Qx��/�1?�$]��JD��z]k�rU���ԯ������^5'i    ��ٽ�&~m��&������0���Pmoe�����b_����IG���5�Ssr��t��05��S�
��@���Ȝ�d0C^j�QW]�\�đ.ߥ2���>�d9�`Ώ�-�S1�S�����,��'�ӕV\d"���8����+�J;߷7L��ǚ���?"���Qf���&�@���K������IԝΫg�s���3�pe��q&>7�7��g���H��q.Tm�89cV����*�	���������M����O��	\����(�v���]�d`;�yt� �<���>�������	��:�#����s�i�ú���N�����d����KP{�n��R�����f1��mGת\�u�;�ZΎ��Z"��-�F�t��s�b[VI��J����x�3�-餏��)z��o������i��b,�A~��U�Du��I&b�]��^߸�F�ڥWI��?�ߏ7vk-Z2r��&��	y�=�
">�S�3�SAP'�/Q{�}�P�n�_��J5��D}f�xNRK�P,z��r�;�,��4�<h��t�QL����~Qr���YH��&����r%јɑ�4]�D&�៓HH��d���RVK�61���E�&M:C�Dn��F�%�.��*������I3�Đ+�BH�vۅ�tNCQ�6��?/сRҙ��Zd\7:I�zb��u�vS��4�M�8Y�/
���||V!ݡ��X��/i�}�]�=7V��xmRq2�+F����5/L�X���D�v2�Yӿ�:�o���	�5�K������`>se�g��1�a�rf��ڞfeA��2�w��Ys�D`@̿%vE(�hg�/?LM'�-k���ۍm�ki8�,&��畯��;;�|��L9
�|���]�V]:�ySb�BE���*"�sV�7%��ެp��Ɣ�����EfMyS!��?��Y̱���c>Zc���J4f��E/	�h�w�(ԧT���嶞��<�1w�x�x܋�!�����?��+��ʆ���ٯ�v�sY����񾳸�=T4�i���U;H^D��<�ۃr]~x�d'���g*�Գq���;Jг��[�td?v����L�-ٺ:I����~\�TF]�-�z���&�E�Ɩv����~'-�2�ۖ{�{�?�u�k��(��)#z�,z*����ܜ��3�b�*]�r�K2������&{�%��r���t+�J鞀��_�Or`Mۍ���X���&'x�t��}�7������S���W��.xu���e���s��QP9&<�,���<c�Q�#x����l�B�׏u����i}�}�`�f�{Q�a����v0}�藗��������k&MG%6���\�>@�&�P�{GU�aV�>a�w��O^v�d�>�,0�up�C/l�;;�b��>W�� ����*��q٤	�f0��M�!a��՗e�u�������}�eH7S��~��WB��-�/�p�:�KL����E)/Gi���7�O4�x���L<旯euz��l2��|x�dM6�'͍B�}�0�G!��#�����e('u+���)�{nX���ԫ����~3	�z�L<��Lf`��?2��q��~�����\��r����
� �T��8,��w?d?��&X�Vo�?s�%�9�܌D���VXP����L\��Iw@b�'~ ��ڡ����r��^1�w��	�4�_f�?��M�csM��.*e/az��/-hcv��J�[�b�4�2%�7����ڟ!x/q�y^%������[y����h6�̄����Z�k�M�҄Y�?_�jg>��͏�߯D�D���1oiRl��D)��?��os�0-�C��.<�0����u����t�j.y���뵅���6�=�'���nU7�ѵ1	S�_�>��1+����Y'f�1���eA�ޥb����}�m&"4�����q�\%k�U	�/�3��ц+%�O�R&�3O��?/2~�Kud�H�*g����qHp	�U�cy�d�fo �!dաř���ű_�-g�,�X'��ޕ�~��K��`O[��(�x����V�TذRES�Hn��H݆Q�h�0��^(p6�嚧�Y,kZ��l+?�T��!���oŴ���-E�Şy�s|&��7�"�aϵ?`F�$*��Ե����$Ф��ܥ�Il�������2�bw��wp�u��&�����m�5/�B�������|�(����m]���<�T�g�Wt��������B���-�]ѵ#����.P��MX)�h&\����B�"�@8�'6eyؤgL�^��R+S!^i��f���~�r��%J�M�W̳M�S���R'ԋ�@=$�Yʱ�nm�*AN��ō��I���'"^,�f�:N-�������)�5�u�!ݎ���Bk��uÞ,S���B��8o',�݆ c]p�k8�:�m?q�r�*��}���դ�io�WR�*��$"ۜ_Ӯ�5J�M`�W��X��;*=g����;�k�l������ݎ��G��8*Jɔ�A���2�X9ld�����7X-S?�&)�c�&�"�m�Wq!�/��KqʣH뎘�f�;j�U=y4I*ˮ�d�A�C����m�/B����kh�b2�1�U�{�V^�C�t���~��� �*�uc�Su�6��0�kq��"d�dj��V�ږ��*�2O\��-l2XE1O��dK��)��%[=�K�T����4��b�ԊۈDo&/~�2P�<I9ݎ�kg��d�@� �P��8C�a2�Mn�8��>@j�XmJ;j֕\(&NVT�����f��i�eo�DtC�]Ƹ��ŴZg�����j45�h��(,d��B���@��}o�*g�Rp�CT
����I���<b*ΔM�]�}����=�������b?*�
V�t�ƕ1���Y/��L>��N�<q�j��%��K�X��gG��)�/o���l��D9訽�2Z�(�c֧��/��j\�Ј�;U��� J/f��ҡ�KR��]�>�@�^{D(b"�6��
�"p]�^ؖf������_�v�k�C�~}{�y9�:�4|WW����!�&z�%��[V�"�׀�orxS$1��}�҉Mg�Q(? C�5J��5����zbc+��XK 8I��EvG�XMl@R����{��V���E>`Q��~�$8_M�)�2V��צ%s&L��O�^�J'�Xl�0��,�h�%�����b3�b3D�D�V��me[Sd_GE�;�
{����
<,F![��ɞ�L� �W��eL���@���7�.��#�~��h��c͉�=T�ҎrʇA�ĵۯ�T��Q�[-�JmG{>Z�����5[��rTc�
���8NγD��P�ф�n�_�6��429�WN�EV��e�s8p�v2�V3vg�c���0��rN�R�'���j�}��>�u�i�B�"a��9�,*X�2�c��,3���l�]6G#�g�T���|����T���.�Н�鐩��uW���o�T�����~�f6��Le�������dȵ���&w�^���_�E���u����������Z�K��ly�r��w��Z�L�FI��S8��!m��|K��6�{��%�q/�Y���B���x�xݟ5�2�m�*�U��.�sXdc�Q��W����f4s?�����%>�r,*9�J0��2�\o��K~q�u�"e�(K���_�Q�!���&"i@����LS�َeĥ��YAzF�0���IR�D��s�Oڌ~���*v;�Ͻ�f�{�v��u�F��7d
�s��K(j3�i-T-���^�%+��\�WV�1�])�D0�Gx��mK�AB6� ����>�@���&��g��b�Vw�m�¤܎�<�F�^V���q��H�.�`�1x�ŧ
`y�����l	G1��d��z]��Y�[���+L� �.�C!���8�Q%<��]:�<�"���H0JQBe)ѴS�>ٝ'J�/���v׎��G�a�W����u|��H/\�T����;�����.�[XƁ' ��
�^/f�k�S��b-��h`S    �8���fmKF7���� �?��Y���](���:�ۣ-X�*�J���?%�m����0�(�1��[4��1�N�D�b����zy}m�M�U��0���6�9��1p�r�Slۑ�ي�����:9�_=�z_Σ��f)`l<&��ăN�R�
��𻆼�un�C�1`���ؔ����v�n��H�!������4�X���%N5��sy�~�}�l�.Ч`����ֈ�M%-��(�~Y���tƕ�S(�}S�z��DR��e��w�(��Pl{5�aٜEn
V`Sh;�����f4�?lMu(�®�.�}���������የ��������7�l�o&�jX���=R�ʀ��i�S�ٚ�����򥶩���t�@臾=�ߞt�jPkZv��R��@�Ӹ�Z%�,�󦤌ɨ�Ig�����F��٥�w�-����|�x��ɧ'��:ܫ��rP����^�u��v2����܏Q�.ح�ٻ�@��lI:MYN� ��L+��;������rp0�¶����۳9S2��]n��@�(�Ȉ�����J��Xߜ(������#_<�]]A�{��B���%G#�������R��+h�_K-��e��ў��u�����E�}�2%�4��>_1���[|59��J�+h"������\�$)j�;zJ��M����v�b�
I\PŴ�a���{����Q4��l1�&�xS �f��+f�ڌjP�6��"տ<��4��p�O� Q��|���ܥD�8�("����&%~D��6M!��#���d�o(Ƣ<j�W׃��E�o���-@��e%�1�;�R��9T��d�=�C��%?�����Y��}��O���J3����O`�#���)���7�(�	���a� ��'�Xʞ�0A@Q���iQ�a�Ͱ`~���T���|����]�`'�џ�w8n
v���=�q#\��_0� b�Jt���}H�.I�F�(�E�^��^.A�4ˌ��{�Ok�������� ��XDIv�u�S桝R1xY11�S���mIiȣ!*��g�恹������.M{����m�&�=��%�_wt�}�]A��:ϯ�~�0 "!���(������l�K�l�pd0%��cc�Lc>؛� ���]��`c�^5s�ND�����a����`w�l�.��&�|�T^A3WɄ��܏<Xʈ�M��9�u���S���@'?��!��f2 �\��8gO��N�}�����X5*���Z���3�s�sL�s�6;� _��Uc9�X�X���4�d�C�͍t'��`���
'H
��A���g*2�ټs�1�>�e�Y��{���L@t��o���N�:�ͪA����9�(�.����1���0ap��o?)��L��;�c٤���_�a�n�Ӵ����: AvX���˃� Fu���?j�k 6��f]�61Wl��\{���ɫl�2kF�]����&�K�c2������;v��ءo��Žp��`i3�7� �E5�,8���ՁU��Z���\���u��;{��܀zH��z��|��z��߱��#�Iw�H#��3׼_���6��"$��|}`oY���F��Xr��=��4�r�-ؾ��o����SO"�� ��m�қ��0 _:���3���%i��`.��_Z2���c}]z��i�ϐ� XaW��5����j�;�'uяej��hm-jC��xfv�(���c	ս+�h�J����� ����m;�s`CkD������W��l�] �� �k%>�5M.�%M�� r;)��u_��l-�*'evz�PZ6Fw'��«t[�Q������Sq�~�6Lխ��]r`z����e�k;�l�D����z�S{0h����t�P�R��O����"���� ��!G�h~���6ģ9 щ�	*O�3D��h~����u�_>A�I���?��Z7�W�q�����aԿ��9#����y�����[�Ⲽ]�Z9���sTIR
�f��∄�ӂ�Bs�J$�63�D��3YR4��~�(�.ImC����O�Ļ?8�0����Y��b�M")*�� ���4�&��e� ,>5�C�W`��b:�R�5��賰0Uf��F�+�����0v���u��}/'`.��"xȱx���<# Y�W	��4V�#��!H~�����W��GJSd`�8��(�4�&�_�[;�GGs``Y�����yh�fz\Z��;��؍:�
�5��g!��W-]\:�g��U�sOX�j�,C� �"M�6w��@O>q�SZ�f��bb*���g>����:s4���8��ڋt,V��J��p�:�g
a�>e�)�_X��� ������O==<Պ)fBf����u(M`
#Jc;��s����	�k;����D?�&���0+�����Pv���Ŧ���4��:l�l4�,��6���lU��-�l �w{�H+�F��`�n�l��z�p����9�$�Vn:l�y��*�(#��&#ڏ&��rMk��T��s0]����[��4�8��[�!�]���D�'�?��	ƅ~�m<;iAT�	&	@:(�${�J�m�X]�&6�xd��V�r�K7��T�m�L5����s*f���
�M9!�6�҇`Q�CK�c�(���A��9�(I�N�ئ�G�i��pPs �F醻�g@���K��!�K�[_k���g��x��(�n�h��Mr�U�	�QF�+˸7&�G���p�6Eh6�6�:KA7$��.���I���tƾ�X�Q7&أ�A��a��ʖt O��yP�`���,t�Q^�t�=��YO�z�}`�n\ϋސ���
�� GQ��pz]YE�0AQ�.����;�`V��ߕf}��(%=&�-k\����.� C�ͣ�&]�`�v Ws�� %}aߩ���f��)J(v�qH���^�O7�aPT�%$�!���U�Ap�������i��fh�_7�����PX��M�;HA�؛C�v��3!�Y?�`J"��# -�M)l}�iwR��'�k^fV/E'0*êR�X�.�	�U~/�x�v�TpPޅBr�k3z��yB*��k�F����"] ������DE��\E�>ԟ�䈢�"_�	��xw!�v�fJ�}z��"��"򈘢��2 �����?�bB� �Kvʓ�&����1#�BYޗM.[��g�Ĝ17��l�I,
�[�3rw^�b����	���H`�m�(��P0`�S ����g�=�<�������7tP˚�p�Q�qV��m��cK�ބ�0�����T(Y���w2�԰�9�K�5Hz��7;�b�{R�z|M�֫�Y=r�q\�H��,�cV�<�~�ht\E���x	�"dQVfu��`<���Zv��p����[��UkVW���T�~{��<��\��_�迳���r��봉�>\����Q�Z��fIK0f��c/9�Ip�E�x,�E�9���S��i�j۹|�������ީ�wC���o0ʬO}�%����:�����y���rǃ۬�$U<��ޕI�3P����JB��*�"��i�_�D)��GNI/�6 ����
Q�d~/���\G��i"��j���~���Xo�O����c�J[;F�b�{���{I5�zݱ���7�1��z�a�c"�ڭ�,z������L*����\=X2^�8��췫5K�7��3K�����@�۹��Za(���l����渰�>��/�`��e�,{�G轭Q�.�+��aAT��9=���p�U����9v��#�ā`��`7��<�7�gr���`�"H���X����BgW,X��&�@rV^��xym�âO����0�}�4*�ҖQ���M<�B�-��p�c��ٜ`"��/�M֧��_������%������.!���,�g�\��p���5������B�G��I�ށ/��.[8c�X"��Kf�q�L�$�X�� 3��w���^    �s�v�b���9VȽs.gY�^=�s�A�}����,X�(2�ߠ��.W�E}�s.\�C��0�w���#�ߐO�X7��~>-�Z�$cf�� �9���:������"�=ùP��ɚy کD�m��8�2b��6j�����_t�V#� 8��� ��{.8���E.���oۥb'���Z/��ڤ1�̢��P
j��̑Hf�Eabj<��X8������q�1������t@���C>y��ε�]4>���@���>.b�$D���BQ��	i�K� ��"�XC�q�ɗI�A&�=�%(H�n���*�����:�y^Lf����j"q�5c��F9=q��x])�2R�ZԪ�r��a;Tlg�,m���M4��4bw��h����l����u}g	)T�2g��j]o��Q�<Q}�t:QA�l��0M�_0����jh�W/���+J�Mg�/u�df��b�3�qd\�(�����r��d7�@��u[���޹`���XZ��5�d~�	��	���8,,�����o�H�%U�`�7�m������P7Տ��Q٤�"Ei����#*���*�M�>i��âI`-r\���(�DŒ~���pix_j%��+����
�"	�+o��!"+N*DZ5�U���"κq� ��X�������Eo�^���p}��UV�*y2e�D�[����\'T[�5�]��o��{*Wʧ��% �8�B���@?�+�*��I?܄�
��9��7Dtq�V���GqQ�D��Q$�R�rP�߾O�hfհ��A]5�P0��Z.�d�bwR+%_�1�#5Kq8��
B]W�v�!�=�״b�Ũb'~�'�d{'�Bl(J��Ꜵ�T&�T��[��R��9r�P�q����Y�=
���(�'1ڮ���� rٛ��p̪��6MW�_R��m���*b䈛l m�3$8���ǢJP�*i����]��6U�癒�d��Q�QlS�9'j�*��Q5�ئ���1�X��ʜX��`��)+�j>֍e$ɋ��"��H&��#x���x���Z�ͭ�9��4,77.�Y�c��_V��]�K��؆Djq���{B/??�M�7����I��+R�D?W�Ǻf%�̥6�������v9��6���Y�#�zP������Of6{+��ʠ��c����q�A[t��,�<Upwe�'��3�ӫ2�L�h��l�2���+�E��>��:��&(��������I�Pc�J�Q�{6D�16zWO/f�r�No3{�g�am�g�w����V:l���4k";��s������`�l���Q�	w u�w�D�oə��V�C��I�v7��W#�ފr��D�m���e��pf<og��L�b��	 ��f��, o� fd�l\3	q�����+�����3x�ݽ�����𥳐AhmX�u����k�d��Pgþ����8#��aR0�.����=�[���t��e h�r �2�t^X��ХAB%ö�#�d��e�S����_�炡^(0�^�8v��:�JT�Ax8��C��4��=�۴��d��r�ب�эߑ�2��,I� S�k����Y�ca枆l����uM�S-;���h��G��	A�ԓ��գ�����Kf`���|�!˿�35��0N���N?G*{�F&9wSa��%V����q�i���hR^��y?oš�@'A�v�mX��JLvl���?N9��s]UN�Z�ۻ�0{-��ݸ=S9�^rX�sy���Ɠ�%�����]��7J���A�l-M8��#r�i��<��������i*×�t��'����g���5s�F's�E��P��SWy��P��@�Be�8lb�r�\�X��>/8��<)�``�����ȁ2���s�5i�m�f��?�Z��4 7m�ǊQMy�Y�eZ�u�ܞ���0�4XG��S6�ӈ�J3��D{��?0��'�2�3,��+F�ʐ;�ߡ���f��&RRoĚwÁ��~��������aWxuB��>P5Y��cl^�e}�n3�"�ϱ����%�v%a_?B�R2T�*
��/�^jE��!,��F���P	�fq`�^PVkҊ�S�vC�}�}�#�aL`Yc�滟tY�q�Xȷ��j ��a����LQ��'v��n4���>�{K�$SS���b��#�fQ,K/�Cg�*�"?Q6'إX6x�=gtJ0D��:�<1O?��F.>|]�f���z��Sj`[�@r��G)�eU�>͐�f�m���i��2��܊(ۄ�2E|�2�6�rښ����S��+ 榾�d���H.�(��Q/�|v��o�^�zaֵ���eC�
L���>�Y�R}�P�mA���<� 6� >�|��5_�g�|��fѐ,Y/<X�_�J���|�\���s O[�zP\������	u�`�~a�F:�[�^�C���Vo�<��������zn��C�C�&�}��<=]ޙ����h������5���_g[��'w>�͙/0?��a$�X���p2��@��Ҕ^��v��{ݽ�jX�faYu/ؙ�(�d���Z�`JÐ�v�~r�G��seL�tҦ^F���Mx�q��h��M<:��=�Ј���^�V����3S���gl&�ɠ��0�1ϥ�s��fm���(��{_���&���L�m[iP�DX�L���6�e����nL��I����3@��/�S�öe!MT�}[v�mb}cN&|Է�-������`��9��cQ�Ϥw�a�S�W�Lv�7�2j\hS��N�:cZ��,E��{��l�8��0�����c̖7�*��������+� ����نzo{@W�^2��ふ�0s���1JqQgp�@R�p�T/�$����2������TDXP��dtR�'V #Y!��	-Z�p� ��}cq?TMc�H2�n�l�A_0�p��4YF�6I��v_�� 2\�h��.6f�T����{GxJPW�|"%�Ʋ�:[=L��\��l�����������_��d��\��-rvG���=�!;�<��ƷN���� H ��I�*�"؀h7̡	mU�8�6�t�sWM�X�Im�/���Ke�s���M��#K�y�h�[��`m�h�1�9ǋ�z���6�Ԅ6�w2y��k,�j=_�12��dk�w�VwC��������Y�q��<��#~����/U�?C�T��@�����AW��h0�o���\���0�H� �(*ǝ:�#\���7�ë����,Y����f5���N�CT�8E`w�O	�d}5u����wj���׺d�Yn��6�wR����=tLu�G���G{�Ɵ�}�67o��8(�� ?���at����N�����W$��o,��Wg8�ߎ�6�7{8�$���;��z���&C���_V�9�}�^��%�~�\�Þ,l�,;3/��Y����P�����T��`Tt�R�ϫkL��$����؂��c�H�"������`Z'�ռz�cNk��z�j�7�÷$v��Q���fo��½,%v�
��Ñ!��!�E��L�W�u�)ꏌ�r$���c�eC;>g���"l���)I
X�in���wo�J�{s�9듌���&�)����;N�%űo?OJB�#f�%I��oW�����.�>����%�����"�����Xy吲�3]�"�PU#��`hm��)͊��˴s+��m������0C��4���2��'C��
i�Rl/�8Tsݽ�8��L����/�JD�Sۺ�*�U��m����2
ɮ4�����D����J�?�b��Xem�����~��`Q���W�0�
4$�u��c��ڟ|f�!�V����C�f�}G�Ҡ"��7����b�9:�xb����P�6`����l�W�4* �?��:�<�#�����C�${���u��� ��:��0���C�:���1V[���tP���{M�i����c��̘�A�ۇ�⊕ ����Y���(,@���,��B1�{�
���A��	���w~��y��    >�6��\�	��.�~@!3�9�.[�"!�I�]r�;\�����\[�wl���q�"6�����f�}[�����eK�,Y����-�\�$~�[NL���|⬵F�i�)�`a�5[�K�hޅ�`Y`'�$0}�V艇"hl	l4�����m��b�W�Y2���>n����gT�PT��������ʆ2S�0؃2L1��W�~G;"���}�{�<L)�9
�E<jQ�MR(���/�,ya�hc��L�%U��ts��M�:.�=�l9,����������+C�!��R��C��VlA|��B�Ϡ#mA X�9�0��F�k�0>�/�W�X_7W��mհ���4�Pb�5]�B�~-�H��즯Hm�ί��6<��� 1M#�`k[S��z]��������r��F*@ŊP@GA��d=�)�i녩S�߉��s'�?"��|�e7C�2}D�Q�[�o�:��^�^*�]T�����`v.�_:cͤ�f�E��7H�^��� �-�OO��uE�u۳��C�j(��,���R��AK[J��a3Sq��[��	A��ǩ(a��eZ�'D���SI���o�В�4�t��q�j��J̮T��ު�:�ʜ�J��q�W�$��(�����HP�}��^�����/�,{�k[���}��L��Q�3"O�@�������Źca3�yc
ӀmQ�X&�ؕ��4�I�����Y��j�X�x�i��Z0����^.�C>:�"W�)��</��h*�R�T���c[����)��똔�*ۚ|�*~a#7N<����k�);{e2�?�'�p	>a�2��ƣ��Te�q�ă��}^2Y�CH�N�P8��֟�K��m0Vb���ё���|��z�����UD0&���`R��?��3�2����1�j�h� �z3��Z-;�.�hcC��nP��0�,b(�2W�I�zG�YI��6�6�E���;=gَ� ]:�q�]e�g�b�������˶\�U����.�s־
c�b@B����, LFgF�w�=����ݝzH�&-��K8ӫ@�Ĥ$gm]�\]��ʸ�v���Z��n�Ӱh���M��eH��ր@:AQcl�*����j��N��H�$L	��!C�4W�4����`��R��d�$��=���;�.��Þ�w�&;��ѐ}>d��v+:K%h'LUd�K7-N_N8t3ا� ��`
Pje3X�Os
3��vI��2���A�24}lkZ�{�wvI/FyR�7P�&?͠HJ����s`.2�]�!Y?P%��w�����Ժ�ח�(üu\���:���#�u�Sf~�~�F��PD��Fn�2���Nq���tسS�H��fd����R���t�$�cc�H��A�wl���A��te;F�ZV�1�oj8i��&.S�N"]��FdKZx������^,P������Y6,X����v�GY��2X��R�0k]6���� �w��`v0c�;��X���_������RXl����i��o���n���z�^�fW);X3���ﯗ���D��H�f/dU�L*Smɖ�U��cP`k�gv9��� �:�*�.h����Z�k���t]�k�'Z�`e�Hٓ����Y��q{���7����Bِ��}f�.�|g5;�t�ɚi���Y7�s[���I�N�
���l^1/<O�bE�ؖ�.��駸H�r�����r6��bOfm�Q��>N����㩝[��J"��v|��3��B)��z�b$�D��霃��<횰D�eh�`B>?��ЀOWQ�5����24�Y�Ϥ�W4�l2�ȳ��l�����y*C�@[��/��l�'7�J�X�2��m��Z%PmL��f�En�l���'�E�����nh9-  n�'[/��fIm�B�0i��u�@)�|��=�������1聱GJ�xQ�}q=u�"݊��V8`�c���ZJ��;��9�E^��k9GC�5G�jr�� P�(�a��S�����t~Rr�g���.`�nl<Fd���$�o����y���%�>�4�LQt�
+`�M�j��(�:F#�.'W'g�'�-=Ni����tݶ]áѧ�qՌ^�)<X\�M�:RG�d���)5i��?T�(v�y�Be��*�jq8�wL.Ӵ������di��x��Z`tp�6��GA�U0���߅A��T�`d�o�I����^:��.�=5v��($�p��Na���IDS;(H:|Uk��:t�/]�rL+k�&vYY��ѩ�=��r&,ի��\��	 �[�nf!�O��-���/��c�(ΨQ�,~�MM�$��iL����p�@�5~�<�m�{w��i�p#i���sr��Zf�� 6q�O�{�j�!T,�A��<O�q	ֳy�T�e�/Z�� C9��{��5���Ͽ{���7= �]���r{o��������D@_����V��`#�_H�ENժ���'x��3�KL�ri�����M� ��}>�ͭ�L:$�Ć?Ϯ����W!ꢗ��������,E��Y	&`Q9��n`�	D�h�2�Xٲ@w��4�]�l���r_J�Ƞ.w���o�&4��v~��^�4�ڑē_0tN�6�ǁi��Z���	Uu��.BDkց�J�}�a����-ڮ��*�W5�\����>��;�x}J����اZi�k_2o�� 
xd~��lgO�u`? ��|�`%��/����h{�᫊����n�G����:j���"�S��.I���j�c+`/R��e�Wq��/�� �%��fh�F0�g�����E������E+h�u�v�����^p�A�v��%�����3��w�[�n)� ���)sY�;��p)8�7x��4��?+6_)8��3ؖ1F�,p�s!����/����Ru���B�]�hȠT\�����l�j��~�Ʈ��^���"�Pc��y��/���O�6�Zw�Ta0$���Pc�$[���m�K���m>_�[�&�Ss��u�5 *>�!�~1͟�����NE�Q��>U��n_kS��b��Ջ̃TԶ������`�Q#2����:?(8Xa�=>Z�����/&⳿S��fLD#�z�.7��00�Oذ�������k��'f�ZC��+���m2±����Ħq�C{[Yk�U0B;͢GT��
���se�]�"ф��T0I_��J��Պ(T�H1�w��B^u��8�0L�~А�d?����HBSu|r{�c��U�?�l���fo�
���|9����o�	�M��/��}_�V�N���f������v��󲟻p	�_[c���[�^D�n����9�	���e�w0n�	���p����^#�5�Et�ˊ�[k��}w�"�r�R�ڝ�����zZ���稣�V��L��r�zj�Z�FE�[�!̷��d,�R�A����x9��M��{�{s�&�����f���N��L^zɌ��S?�Lu�/��'����)����k�FzF�W�@=���Ѹ��@}�^�A[�R�o|o�hq�!��?]�5�����?Q�B
=��sz�Mx���D�����5���p�a|�Jx}��r�;�!�moI(�h]N#g�  |^cQ�p�`;���m�`�x��E"�?`�ũ�Fl#����rl�D����qe�]���%�|<A���:�ƫ���
�]�L�K�>{�l]PM߃]��{�n����.Ė~�U��qw�6&��Fk�=+� p�˧&$��chpc���?�D]Rޱ�4O�W��iܱ&꒲˞�ӧP�JxDS��4][�5:�|�t�Q��[�c;�V0�:���;V|����N f��ՌD���	�M �+�`Ul��|b��e��Zj&>����K�,��	��t�����0O`��V{�/`�#���zy��)����e8�4��:;>ف�렮�؇P���6��ܒ���S�k�܉8<�	�5JU�j�l_��3X    h��ϋ^�qJ��`����ӆ�=�5pU�k�F�x�F�a��Ǩ�E����k=h�[7]�j�ju�I����Z;_��m?=�|k|k���i�U-�z�kEbfj�����bPN�*q �̀T��B�NP���_�jz'��4]�4��o6��I/+�5(.r��:m�E�{���#����z$�|�|$��ۊ��|)�2A<A>���"�����F^�-��_/��|<��%�B�)u�W��4��������mc\R�/�5+}#�#�'��i�$_z�	 ����֍��Y�?#Q'�s�W- fy{�~8��
	@Hv���Ƿ	Cv��v�>/�Ga��vc����F�!��g��i���^��H������=`�$�ҝ's��Gn�6�X�����#J���yyy���U^� ���h�ذ���HL�'A��� �� �}m�/����Ӌ�� �����'�l���L�S���h�zs�R[�j��aa��P����	`��&� �v���<{Yڅ�] �dn����[9��BJ��}v��Uh�o�/��7�X���g�X����۴��KIL�j��c�S�b��T�߁�P�qau+]pA�03
����RJ=�!�fj! _��aW(:Y�N/D~���E�6~!�?���酮�����d'�'�܄-�n��ӵ�4	F�R<?آ���?�.���i�T�$�o�]|���Ǥb��ҳN�:Z~���#a
�c�c� Z���#�8��'�  �\���~AN�g�6�V8�d�dp�׳��Y�X�+52�Cc�X��dGj\�	���.��i����o���p��c�s�7mY�]ӵ��&���Mz}��ԯ�z&??tŒ��g�.|bV�1s-�F�e���9��*�Q.�4��wr����z����w��:�\�r���2���Q�}hM?acS.Xk���E�S�؜H�>wR��P~�+��eU�,��,a]��M�w�_O6�zwqzK/*D���,���앒m	o�4l{w�#���Z��G3f���EPsM$Ub~����aD�UE��F�Sɟ�:��'ž|9���̭�d�m���_���t�?6ݩ�[�����������c�V;����I�R=�`Ţ��SQ����L��E=�TZy#��OwS�����w��ը��
K89[0�J@U�v�2-V�`�$�t*�o��5�c2YS8�|\RA�Œ�כ	h�Ila�$����P��^�bI8l���'�s�
��Ubf�ǌ^%�N�U�0��<��,9]W�r��X�q�7����z����Rg����1����o.�,�����p�f$�y\_��;�j��{5!��t	��;�iF
8�m�S��hz����>V�U�	����[�=	�i�d ���[��1*&�Ï��H�S����Ǹ�ɐ�PK����ry���c�ܻX������E�����0���:]�IS`Ͽ|][!o��g{�*����ػՁ�1k��T���UP.�['�a-d�L]��Q�^��K	?X�A����.���|�~�_����l�(�[����c:�^�X���NvQz--.qz�i���_wM�z�,`�b|��eW�=�Q�9��]�Ŝĝ�I�q��z@N+8d�%�=Īx\��e��It]��˶��W�����U�'�R ,a�*��0����p�Ae���y���p8�`c�w����_���1@�6�2mK���0�����|oԨ���05C�`+�;�rE@W��&�AV{�:�` c��Е�����Z���pY[`��䓓�wp-cn}���ܴ���=]_���E�:2"˵d].�}O��O�?�e�#LN��P;����z�$x�C��l�_-�@Oy��G1z�c�lw�sjO>�pm�R!�T5��_�e�E�W�L��$$$���=%�=)^M���릈����<�����eoNt�c�'�L"\����e�W����i.e]]�����GyD.��L�H��A����;M��q��XNV�'ų �	�z�c�T��xb��mm{)�1��r�	��G]	��A�E����kXY��r�=�3����ֳY�u�H{�k�0�u��`A�\=F�i9�>�"��ݱ�Oo҇\�=�.Dj}��*��<�ۿ��|\���/&]����Z��~aO+^�,+�.X�]u+���lY���wxC��c8���90�Q!i1 �/?\��u<�
��Q�,L|�
�����xb"�����g�3��|`'���փ��İE�,�w�*nA]¥�[076K�k���y$�kV�C�����}�|�(�lM�,cj8į�d)CХk��n"iY·��60����U�������
�Q;qժ�`��+I�� ��uQ���{L����u &���z�-Bу\b�r�'3,J C�0�m��P���U���|Y���� 9``����]r����,"�e.��y���������Nص͢�d^�g��sƭ�in˵�䁤_]�<�
bPj� ��h��K"��0��������;l�("�bս60���h5�b���0a�DO�J<�,����ϳ�MTE��z��f��xyȢ�hm���d��d���7�l'I�R�n2^���6I�Y�1o��<�j`�${&���iI�GDt&�l!��P��ߤ`�p��������-r�%I\ɸ�ϰ�G�ZE?˒���$�T$r�ѯ�B�e��J(��q:���y�.+�7Fp��A����X����̑Buͤ�]�N�({]�S�FCF�1�r,�3��
��k�Z��-�=�/�,=W���su��$�9��Āx{�Y�rdM_pe=9���5s�-sVP;9|�fM( �C�y 7 �"�����A�G಺ѻ����JV�ˊ����5M����>�Z�Ģ�N�z�J�I����){t`�c�Zo�� �'k�֋��r���w�R�?�h��9n�ˋ��X4��\k��Wo�� �F���a�+r�ۋ�7u�B�z�E/=?��&����z��p��� ��΍�m�߷n#��F]u��<汰8�rT������#������	8�H��6�"�k�M��g{k�~+�zԤS(}h��PL�\��#u�}��>2�0�薥ƴ���,.ގ����޴��*��m�H�M{}��+*R�Z6�xP�"@�/\�>�Ԇ�y�]P-���.�=��͹c��#����
��䆨U�@��Q�����'A���8j��j���-N���8j�����K�W@f��#�z� ���Z�V�2��#���A>��;/C.r�D��r����z~��)���V@V�Z�P#V��U�z��E_�I�PA�}Q��Q@�_�����Ʊ�Ae,��V#]�W;�B����,I�"��J�q�u"��P|t�S%IB��7�4*��)�8z�H�EWd�WiH}`�>6вٮ��t��mn�م%o3hc��Wx��p}_�t��|�u�O��..ջ���=o�eP߾Gՙ��`�ˠ�q@�Z��vk���{K�+�Gv2!n���e6���'O���p�"��Cly�eo$��
�����qyz�����*dv&r���F���(?3(~��e�-�r{i�&`��F�ۦ]��;�2�c�_�k�(vzԽW�M;7���]0$�W7�=��$7[��i�&؃�DR������ؙ�+N������yA@N�$ۯO���y?h�\�ϼoWR��=��u��t�I���*;�%05&H5,a8�"��������A�,I87}�$��*~pG�v�ܜ䎗u�+�Z���n'6��Cԝ��E��>!Yp�������WYL\��?��^�7YAM<r�Q���M6۸
���ީ�H|J���@p�Q8)uTd�P~�0Q��aЈk�yE:�n5�`�/�.F����dED,GU�0���0o�Bnз1�O}:z`��9��T�m�@˅o��;2��~is=�b`�|{8%&�w�u/����0����ߵM�e
�£����^6��$�ɂ��h�n7���P����|�{��'K�h    ?a ��d&T�ǉ�B?�V������[��H�+&j��.9�M���������`+���CHE���uP����SD����t�����f�I2�j[~	�P�ƴ��_0��d����6[�*c���'&��o��?�Iq���|��߽�Ps��P~�^V��m�UF�����\q׍od������Q'"��sN��Bi�L�f�QUڼØ�3ӈ�+o;ϳ|�je�at�N��9�Oo�1U]̻�1�����*C��?�u�II����(�!%�ٻF�Km�Ulx/#'�St78
0�Z:��ݛ�@T�}����3X���	}m�d�����_��7�	���Ai�Z�s��@��]T!E����%�M�Ė�֗�� �Q�0T���\�7-�ʚ~W�Z������W�e����ß��I���=�I��^_[��1�X��l^�^�	������~���$��۶��ˋ��I[Twu�J��S�	�,>�����ҝ���o?M�$�/�������p��~_�޾b���M����^��((��y/�"�l6hӿ|H��1oPCB	�ܜ��;c���wh~?��,C�:n+��ڙ������0��$����[�p*X\z��!Q���0#�T��q�N��]:�&�����#���?��w���u�a�}u�bp���+����u�qjo�ET��3`��J*$���[O�x�O�9EF�C�����ri�4�����-.�q}�Y���-{�R������z��Bm֪O�wg ���tc��*����]j�Q��O�u���xqy9kj�z$�^O���Ͱ�:$�n��3Mۡ�!<����v=ݮr�'�j
�����<�lX5�=l]�e_/Í�+��OU�F�j	C�V�.Ğ�!w�]�L���7�k��Nn���Jz�Qմ" �Q�<�n��>4�PU�d�?p=��jJ+��~C<hS�[g�%�J��D���U��ϩ��t��I%L�@�cX�KE��K�S�����JC�j6���c�ٷTT�m����������B�����6��q�yU0Bﯿ�8U�
vX7��!+T�*qp�aE5���؃�U�a&�4�[����S�$���+�C�1�j�.�+^A��^�dR��2g��r^�m+ �sYiD�.u!������+�|�__�g
?&��
��) N�9�<�1u�W4�N��u��YzR DL�}!���:�&�����t�wrl?����d������zAŬ�7�JĮ���n�^�%�6�/�k��b������0�=[��ő��܏IŨ���roD��I�32��#��W��h]L?�����;�/A�W����d�Zu�0Zj P�n��@5�	�.�FԃU�yW҂h\bͮF��)~vk����,u}5���c#ϸn��qC�$��i�����;�	�d�J�^�_o�XuI4�;����G���>��
ђtt�gc��!�M�=�&,}3tW���b"r[�S�y�����AXep�ǰ3�ÂD�/W�3�w[@*A�٩���W���H����k�=1�	�0�|�}G�*Bh�b����Uf$FAgY�4��̴�X�H�-(���\��pA@�]N���E�F10����bw��m�v����٧K_DĢ�K�asg,���l:c�np$7�n�&S�������VU�����5�ͺx.��Ǫ��N9�$\��Ƃ�%<�x5I7�<�
@[}�}S�1��t聎���ףZNV �J�ݾ6�	�ǲ����_��x�+T���ws}5���ٞ,`Xϗm����;��L3i4/�+0k�s��яRZ�.@}����(�!��x�>`�Ͼq��ך��5�m��^ץ�Q_!)3�����p)h�cmCY�H�&�t� TQ�uj�{�4�):rUѭ��߸�+h��8\�Y+Ⱥ����#�Q�=/�ƨ��RӋ����޿�g�1Bl\���j�m=[��1�
�)"���M*��g7^L����H+��	�1�ϰ�'y��oW�sg��H�c�I &��~��mmlHT�#F��H>A?A�AJR�3.�i�����i~U$���Y?��/$���0�d�:��" �쇖(��y���d�����WL%9�Ӏd�8T�ni��O�M��������b�����"(�c�߯k"$ܢ�m��3��?E�)�����j���}�e}�X��iz��E��~y������9U2�H���e�\ҞBF�����U��M��	ĥڇSY��ؐq���z�k�Y�^,Y;�<A��<��M�tC-U(�����XˢC;�Wj�˭:�ϊ�2q���5Z�6��3�8@������)�
NXV�� *�B��h�:�V��������f��������� _��U7TЫ��ܮ�f$��B���������S���|�{�ݓ:,�m}�VE�ְ�� �����QoC��B���ݤ@�e~z>�]��O0���	�ub7��J��9\ǵMQ�VK��=
荊�q�������dI�aPVΆj7L{c(��B7T@��ϧsW��L�P�i�/h�^�~4��J�gQE���=��<�m+��P��JXr��mZ���0��
S޻�Y��un[���fŝz9�b��t+e�����@\Z�X}%ȯ`NC����vIl��xz`��p�T�CC^\�<!U�d�>.�q}8'@���u��/R�C� ������Pz)xO����$G�?�%���\m���!:Ϣ�s���&��5�F�3{�.�l���W=c����W,+$t�丑���"7��2��3�E�#�Ѹ=��Lz~�����}��c�2*��ggI��A��ޯ�ם7���al�WV~�X��9�"$=L��P�}/��V1�l?V �შ�����OGvV���Zwt����2���ٚXQ�j�]��L�<���z��@�����L`g�?��N��<����}`�u����%�����8_;�W�='�P��28L,�{��)#�3�++-�#����o�nUя�~�W��i��H���fȘ�OB3�ن!2�u�ߞ)" ���-�d�z�h>������V�H���Wkx�k�H�$�H�G$MKH���6v�7y �b��{�cM��r��y{lh�bX���oŚ�$C �N��Q�rc��6gJ.�w��Ok�m�������ШoI�m�_]����xA���B8��-�5��m�o�j��+������ƚ���Y�h��|V�br����e��|�&��Ǔ�HE��C�pL��뀙��W�a~%�����^�'�.�̭���Z{:FS=��ȆL�
����f9�%ǄK���we������m�,?�� �:18m�@�jh����⚊�ԁ`pO���p! �𙲒[P�^���Gv
��\Rq�d��}�ʄ��i9s����gľ[D��8�hڜΘ�5c�wR��rR11��6�)��4\�ׁ:��'T��^ccŎ�����K�VC��(�� ��1[�����Z\�,Jx�"d������~��!�DQn��;�p�D��>R�a�f�����
�q�������wl��{G&e�3YqZ������ϙ�MH>O��q��?�ʷ�u�El����켜����ݭ��CDg<CB�/��^����f����á�z`�8�"��ڱS�=�զ�Dl��cE]?��It�m�ٴ�Os��Z������~9�B2M��'6��H���b�Ģ�k�P����hX�����=I��[?�W�-������)�y�AY�wo)��:Qӭ�l���V�l�D�H�=6ǝ��(������ֹ��q�pTk꩙�R�󀻶��\�2�m�H/��;�6�PvQ'�@���]�zw/v�Ж��+�Um��Z"�M�RH�Gt�����(�ʙО�`k�r�h�G}jz��S?����b�4��k��/&^���t'8j�����(Y�FɓN�(��Ȗ��Nz��/�����*�ϝ����ݬnSrt�;
VS��2��    dr�v�J^����1���liL�t�4�o8vK��ј�>�O6�zӱ�R`�
��l�E%~��X�d�M�`�8o��������η�~ߟ|��\�?IB���~�3�((I�Bӭ�LRGo�I`I�Jh?���+�V�Hh8#�6փ�J�@���r@��}c�����u�Ј�$���=����LR�D�\^���Y��4U�%4����Gw�ǉ��a^��rHsL.�2���lMzX��핔�D~� ��{���D�I�����~��h�����nA9�/����v~c�6��������+��-6���^��Vp  ����?E�[Ҵ�����w��	D��.��^�Z����m	Lc��8���؟�I��,J	����k��.�������+ӌ��#���8�ؤI��A^����F�4s�VL��r^	~�>KQ�Q5���A�g/��sY���I�|�����bϨ� ��_�m1Δ<+:�
��!�yY%�]l�xZ̈́A�>w	��jx!��S�a֠0j}��]������To{}�jw��$/&�����Ǌ�SJƢ������K�����Z�a�ł�{�W���-�.sN"������C-i�בs�� W�QFK�X܀يWU7w������,I���˔0Ӝ��^�I��`Ê���-��7�E� U�������<9en��ot��L�`�`�O��6V�k�Ck��9�+~)X����U�\��~l�84�9-!�I��;��M����:�үA%J��t��P	����A�
���9���Ғ�`��Z����rM�d�gJpNn�8�G���&/xA�2	����R��;Z�	�/�=?�x2A ����$0���Hd��ã-�hU`(�?_4D?1������dةQ�+q�	L	X�� ��{;m�S,��#UU��Z���P�04.��hIq�,�l(���5BͲg�q��� ����T+u�䪚h��2!�Yy���d;�r�obP�Qc@eq.K,������>`5#�/u�X̰}�bboήr��o��7�x����תo��N���N�fAo��ؾQ�������)��H8Y���3���7�՚bۆd0�p}~�iUKH�2�o뿰U9��n�fv�{K!~<o���������cHb����]T���/Qп����ɺ���y@�sl�$/IP��"�X�����d0�M�|���d�h=z�A�\�o���ؑ|�&f��u8%���Zx�H\Y?�e�ic�m�}�AM����-P���p��I�i����^�b��/X2=;�j�����}�j>����<����E�?Mu�s"��إNҭ}���J+�>��h��6��\ٓ���W���:`]�:�����\~���� �,��2���kk�B�j{w���O�^��W��Ƨ��2��B*8�}ZOD��*��gsss[K��k��ZO�r��V�`^�<DeC([�`��)�J[�YM�<�(.�r"��֦��;��o�]NU�������w��Mc���`r���f��T0��ϼ[�jKU�3������O_�:��d�����(��.Z���hǝ�|���&�Ǫ�Ё�I�������)Y�ÙK*���E������ܮ|O܋9��	��~%��E�F��Y��8�+�T��-�(-b�`,cr�zٿ��Y���1þ�b����&	V�����J��<�I��P`����~ E���X���^qLS[�&�s�{E�K�ĶgEk�+���5KnIP����^���n�'E������c�ҀajYe�x�ܴ�tD�a⿠<����z�n���+�ҵ�h��CA�u�2��u�+������Wg�!���b>��R6�Ht	j|cW�/��#�%��	W%����ą��2i8?fB`��H�w���$�9���}�Aד�&w1H���x�+�ʘ��zh�k�+����:�\��9�)ˊ�����:����$X�K�?��v��uآC�B|�?<��kd1�Mk̝0��3VRw�qT�� $	��?�\ 5��?��ι�E���'��1����ɖ˅X$ڸ�<F�vύ,�^{�&?}QţS��eVF�#�턓K��
�x�Y�6�I��M�*st�Y-���_�SS�l��f���ڟ�Z���;��6��jQ����	�����j��=����A ��Ms��&�k�0W�g*��ߏ������Y9���q����Z��K�2���4�:��-g����?�	@ZJ�un4�����}0�B��(�P��U�N�}n���@����t%s���@=�I�֋�1m�����e2�Y�O��^�]ǊS�z3����Ib_p:��J�S�?�Kܿ� "˂}����޺�� h��8��)uq�7��HS3��`O�$xD�����q�d�se�+�4���(��Z'�+�_�����*v�oضା���[�Y����,�RN�;���;�p#s���u��L�*Kᤈ�8�j������;MC]����}�� 衙.mt(��5��Fo�ŀ���$�+��3���"	*��8_�x�N40f>��M)���Z�ɕ���?.���qIp�W�����|�7{�����f���x�Gr���y�� ��;�c��y?mX	����I���U��JQf�|�#��.IB0S�tmI�=WZ���}��a������'8����M�|���+�a��7��1[{�H���1��l�@W��Ѷ����~l�j���z@>>{'NBp-%A.�������Le��T�XH9Z]�䕻\aݿv�9�i���C_��w��$�l�q[��s� Teg�#�z��"��@e��ڠT}q�����W����Ul�8��01�(��UOIh�,���ñ�-|)&Y�A��PQ��6��h]�%�:��@�L9[�&������M��[�u��������`�y�9���j�Ͽ�4�u�ѤKZzMq��\Ü7M�.M��|Cb��xir������c�J0?	���ej�QN��`p���rv=l,[���F��N? �zQ�;�!����`�2�����LI���FF�F�q�R&���c���ؙu(�8�������<�V���W�X��Ц�!�7P�gt�D
w�%��'�}!wA�~�Kn��8	���w��4Y\"�9��ؘ��i�ʱ�:_esM�Bi�� O2�q&�� Jo30nuۅ�#M���xE���e@��J �͍�^�%2䯌e���.�4Q?T����|l|w�Q��RpEnO�^��s����5�?�V�},YF��0�Hda{v�*F�p�w�';$��]d�� %ޟ���I�.
Xė������Cr�e��������M�)|�A�Y��;���F����#�����B���H�_�f�-|��q[��%���n�D�}l���^^�]�9&oY���OG2+�	�;+�!٢����1��;�
 .&�u��:V�U�i`�\�55��buQqP��������P\��B����	n	�,���?&ad	.X�+Ϥ�����h�E�w
&v
0w�Z�W�9m�5Rf󹾲��d�`0H���gv�:� �j֥/������K=�C�����T�M͠��h�H��!� EE�K_,��42Nʽ��u���P���I�6�EӬKd��u�h��l�t�^�+��O��a_�SkL'6AY_u�J����k_z�fl� [m���fzUwl�fDp>���>���ni�O�IZ���4�k��ĭ�������Ѿ1C���c�ga����YK��A��U��9~�`�_�_�e���]kM�
�(��s�noo�|.��C��w�fGT���{���45H{�̉du�J]ѐc���%�<�[N��h�ǐi\��1�W�v��ӝ-1_���Ժ�,y}ņh���~����dh�Q�3�D>�JG�7��ۢ!�����<sHW}��ߵZ�gT�[�Q�%�S��[��)�Q(����5�]˪�,JXņhtY*/@    ����Vʂ�u�]%v3'
l��M��~�T�6|�6��T�/NU�5$B'��=g��aT�W�p��"d����aX[*ᓭT�<���ߔ��u��xd (��Zu_O��hM��U��$Y�I�,��R�Ñx��ա9K���de��8�:C��g�-�W�e��J����bC`�A�R|i����W �z��P$7��b�Nގ�|�K�^n�: t�mO�d��q��z� �MZv�9'K��w(H�/�2Z����S�[T��] �`��Ð7��g*6.��6�t������0������0X��	TG7��@�8��?�@K��b�pP�cY`����b�sG�,ܨX)�`@4�V���X�3Q ��g{���F���*�3?a5�th2H��gxV����:�:աú�u�t؅�g��ZiT�`\+��
��
60��I/44�"���ܛ���f����wBr�'�8M����	!�\L0�8X&���SqS��Z�R���!�AV/_0��B =���&߀�a�b���Y���?0��u3����a�;�3���W�#��^ig�N�R�/�z���z,��N����Y��.��:����`�{8>u~�l�"$���޹C�1�\	��t-�"C�T�a���~N��!��u��������9ގ�rFtA����%g��@��Z#x�l�#�8Qq4ƻW�6W�e���O���ܥT�X,�^��,��65)�pZ����o��Oy9-�_�48*Ipy�%u;\�p�R��o�:�܄C��^��X���1,��)>�g!����k0�D�[�0:���(��r��@�o�؅�����CA_�d��-�� KL��
s���Ar�~�X�2� �* 9S ���l}����ƿ�ݾAuF��x`�0H�1O��5m��*�hg
��O�����(7z�i���=�w%R_���u}��_CQ�,o�2�`^ߨ�U)�K0
�tA+�;��j�oXl�|yY���R�^s�ߴ*��خ�';pA3} w�_�T�U�vh[����eK07��(�U�y�Άe3�ȏ�5��v+��H�+���1�Ah�a�v��B��E�O������уa�1{����9�8�y�MEʄ�����}��@�@�H�*y�%Za5���ӓ/�ۀ�{H�����!����I8�ֵ�q=�B��4	c�&�%�6��`ش�=�g!.�#
�u���7lpnsPԮ�B���
�	J$w.��Q����7��*��[8����e4-��ٝ2;c�BP��/iQa��[�y�
�a��~��e�*.��w>'�ƴ^�<��ݸ؇_�ۨ��;��|[)��'�+�Ac'-���6c��w��i�{�/_Q�2��?����4��, v����BT����D򥧵UaD���rP�	8� ���G�h�������QO"u��L>��x�t����֧��{��3C>�U*����|�5ud�bQ�2V��S�G]��䅻��:�ydϰ���Mhf@��Ʀ���ȹ�
^�� �V�P{oV�	�e�R�oz �C"����� �Y_z�K�� �P �ݰ�pӐ��gr9�{��^@�<�$��/�|�E;AM^���z�GJ�q�zi�'.�<]�%��6��S����K���5.ǒCs�~����(�LXU����o6Ըx�䰙�<�r�3>����7�p,�ٔ�JԺ����߀�2��ȅO��U^Ж��*�/���M�VYW�wh�bD(�N��k}u0��uH�&�WYW�zq0+N����<i7����l-Y�S��S�6�Z@�,������C�����͔���jW��̻�e.Y��>@����pb�7E.S�:+���vA݁a���KWk`�wT��4O�'�ĉ��?E̷`�>E�����]�����toJ�⒅`����3������2�${�P��z��?����ľ��d�}��W� "�d�?��4���7`yy�Q��h�Y���x6��/�mrV���5��8�o/,vu��B$=CP&Ng�a�A?mw���l�/�
��(�۲2jе������'�7*�iq�v_�sb�s�����X̴"d�X��!�cq�����T���}=���s������8�6��NnTh�#���R�  �6����:���a ^��3i��i���=�}Lw��7t����r�S���%x��9�n��&�I��.A��X���e��2Mب�_C]4�Uh�s����E�c��X6)M�������vsĺW�p4��c���t&a� g�E�~V���<c���l���Xf��{�'�J�^8��^
%�\q��A��5�&j�C�xx�7`�0��ƲKV9��R����k*LKP�F�P߾�v*����O�Z�t��b�~��$.h��~���䗪*J썤��s㼯��tl����ir-����0�p,[`d�`��O�.*�b2P���{,N�*�9v���Չ��ϞϪ��E������Y�MU���� ����{����-�ữ@G�zz�ou�ƼL�zE�$����dۥ`����0X�j*)�`z�C8霾��E������� ����Ŋ�I/��ħ��ʭ]- ڢMd"�::�|�u�wE^,���bzѿjT��]�y�R�����p���߰-����賧�ښ�L��ZZ~�7h2P�2�/"�s�'&�`��I�偶D_�?3�d�V|�Kn��;���׭UT+$��X�U�ժ��8��z��)�,G�\�[�X�o����i�Y�T�2��Yb�ؔ�M\&1�~����MnNg��-���(���<R��*ɂ��b@�\r?��O1t��]����O���~D�)�Q.��.�ټ��w=,�bz�3d\�Q�;�B-IFn��p�T�_���7ع����룡�dd���p��ݤ����P߂�
-��.���:C�*�U����;�nqtx�=�S�Q	_��=���b�i�E��� Z	d������A"�o�C��(�D�$I�¿�s�ꖏL�U���Gx�[����pT>~���JeW���'�}m����t�k�D�166-�U�v�B��\o��* ��!/����-6}8Xe�'�F}5��;�H���o(�௰8�c��`�6.���@ٚ�"|�Q_	V��ו	3��4f�б�e�c-g=�U@��y&�n�T����XO|+����w8�0�0$�`yG P�U����i����m��Gjd�G�_�8@�2�w�ß?7}��gL���W��'�*/�f%�T��Ehr�:��J9���	���.�JG��J��UF	uk��fx�4���i�/:����8�W����*��~��=JC���)�1Vt`�?��݆��(6�%���K�����~� X���PV+=������@��N�����P�N+G�rI �@
:,Il�T9 f��z�
�\7��� 0�Ľs�A��)���e$'}Z����U���,et`�?Zգ�?O��d�1�����7a`�o�Ф"F�p�U:0��E�l�� ���,1���i]�?��?�u���'�-��9[������
:0�;Go�ɓ�˘�,#젆�.�tz5��eǄ�]�����S��;l�KP�g��~� �">1d� 4�p� �������\2��PCb.��D�7D\�H��4���R��ok���l"*[�z�5��F����%N��P/Bڋ���0����Hy:�`Y?�ܫ��a�]�I�ӅLh�����_�f�Xd���`ɤ-��9�90�;�ˤ8�~n�KYq�a8�2���"�I� [p�^�����搈p�/�5�0� y!�IH6XN�M�P.r�ᢐ�q�o_��F�^;���'���[W(� ���:Y��C�y���R��_�?���B��5*.�
�z�Gt�1�L��������N����w!�TAt��P���/!�\��m�l�j�^d�ะ}��:cWau    Gɵp`�)N[pA�	",.n���\t����t�H� ���_����*N�p�a�1<1�_�.�]ѹ��Þ�&�;�W��e'�U���X�;�
�90��P�s����1\y |ɘl�X�HF����?�קC	],hs�%�A��D���5��*�$�w��P�"�kˁX���~[9��z�j�
��޷�<=�}�'u`F�9�ѻ�7�e������/�t&�=?��EN�����V�Z��j�K�� �� ��5T�	H�͆��(\nZd�"��s��t����:�J1�
�W%!�A���~bJ`)?J��5��U`ߠ5���@)<7֞�3��-ԟ��Uk�V���@�4%���$i䛓^7b��]����ރ9�@o��:���*v�X��J����o_Z���?g������Ñ����\���~y�dKI�}H:����^����_�W
ȍ'w=��D-��r��FP����rt���g,�k��AC���72�س,8�M���#����_��.�z��h��[�4h_��BæE9zT'��#��0��li��7�Rb��]�E�����C��_B�����nȏ��¯�5 �=� �0�I^e�u�ڄ�bs�=����ү��o}��m�?4��)%���6�)�}Ü�I�n��{`84`�$WV~ڌ�0&�r�m<��`��`A���NI`y�`H�D��4�f+ѵ�=F��nWo�k� Ԁ�s�r�ޯ�����*B �����Iڪ�a�y�b�O�Ux�{�Q�"�j؛���rС�|1���j���DZ�i�σq0i<i�v�F�^p� �c��}�w~P�O < ��J�Pv߁Iݬe����K�1*��
���W�"��_	p�s<c���*�p�`�<o�E~S�;H{�����n����t����C(],�L\4���ֿH����q��(����F }v�e���>q� �������OG}.ϑρ���r�uS��C�o��s�N�V��(�}E~\~�ep݋`\+�QH�����(��|��\ˋuM ulI��i���q�2�
TB<��Z�vqa'�>ek��nA!M=i���`�����+�L?�:���T�pM��Z�zk/g�i�Чr`R�����_���]�ь����v��ުm�Ps��>I�ds^1&��'7���b��r��Aν�2Uf8<A�l}ŝl��Dn �Z*"U���r|l�Pђ>���N�$�\$N�HMw:??�ܳ�C#z��ދ��E4���(�A��ݷ翍5�]�Ӧ��)�d�MiD
�j�Η堩��~Տ�/�`������S {y@Bg��!����\eN�a���GW���S0���m_��2j�Ӄ�~�>�hwX�Ɲ<밷[�S��j�W���'F��7x���{Y(�"y��O��x�u�̲C�p�>��X�F��ڴ���i<v�fg0�7P�?X�V{%akoŎi��� ��^���+�������+��~E���R��O��� ����x�X"���
l퍴B/��޵����?�S��#�f�*/��r56�����]�� ����xܪ8�] Wu��$�»B����*���7����9�l�P�7�N�:�Q-�Uk�!�
�Y�TU�ث�����{���\Թ�5�V�;L���{��x{sp��E2l��%�'Vbmfa��p����'V���{lg@�g��ہp���]h��"�s��7%�ɬT�z 0�����݊(2��������m�}�EA�P���H$V�Z��������<Q���a�<��u�l�}f�L�Ӂ�y�h��bu�熾�CηML�������ȶ�>�@��������
<��N�p=Ԋ���Ǎ�������"ױT��;�@_�,���ы��}~��urQu�����{���pź��'�Y�eЈ����7����)vF�/����	�F��N��-���;n\XPETA����W��<^2�5��?m��]_{�<6����k����{@	y�aO!���y�ȍ��i|ob�}|�/��]l�z�R;e��������m�Z�2#b�t�ҍ�4����s�j�L�MQ��w�}��V�~D���w�^��D�������dVd�ĭFщ�G��DB�C�����熔�$�[5z�BB���1�o{�M��?u�J?7ɜ뺽�9p⥊��B� Z����@9l]U-�~b�b�o�(J����]���wk�t�i��b8p|\o��5����&�7��L��kvU���#1ꑄO�����zg�a�Һޮ�S��:��xP�c-8O�X'1�3���ucٮ���\��	��Ǭ��n�=�Xl���^�	[(�?��e�ȌX�Rӛ����p�"���)��=��MG=@���5�����}��c�v2�__?`Yvr��R��G]Қ1/
Z�����Q�q�H��Z����UE�'�cB�86>�~w	p�vr����c�B�{6%]�L����S�݊ ��g� ��������K��
՜0�^�N>�R������6�eoX��x<�U���f'l�c��������|K�6?�g�Z��M��H�&@�����N�.u�`S3��<�^A�nlj�N��eq��]�}���~���"m��=�m��f�#-o���=�4�\+6
�19�q��f�b�+UV|`[���y���5t
Eη}�m�.�h�)��;�]?�d���+If�Q�:�eX��k�m�>a$>�S	c�g��fi������>ū�	5P�9�g���xf�@9�~�Vgpܷ�zz.W�R�]�n��|�7����rF�*�^��o���KMY7���יH��L2�h��B6�m<�Î�~-���o�H�"]U
��UޕߦطI���y��"mP����~��@�v�O���BU}�m�qr$���(��jW�ݫ�	(�# ���]�v��]�������M�`���i�����>�U�N�(}T`�>vr:2K�t[`�3�r.��lz�(A%�.�W��Z%���Hw �ag�[����#�#� �=�hj\�"*E�� �;�{��1�Gף.7��� Z���x�ꢋ�\���]�,��C�"�Gt���)JB��7��H����y5W�l��twPw���(���Q[����Z�Q�7la��9h4��F�a���#��]�����"`=����ْgŧ*�F���3{?��9����t`o����d��0I켝��_�흧3�6�YwO�j�+�$bM-�J�7����zݭ2�j]��� ��f�[��Ķ'l`���+�����G�*�����y#,����̰�1Ev����	������/ޜ|���|mkl�ǹ���f(���lW�S0�8*����c���a�^�`��?�ꅚ�E��U�6RS3�~?��0�V�u7�6$s�:j�E�pv��x�.�j�a�bIGcog����
΁E���:�5��uWg��
��������߿���ʌ�Zt�Ԟ���Z��ڲ�Vl�ˮ'���]� �p�h��)�SD���rQ���(�A-�Hm̨3�U������n6P�6	+UE��ck�%��ź{c:T�*�R"��;f�BK��+b�D�[v}Eқ�ĎAj��D=�^���;�a%���4u�jgk�s�;hQ��.E�Sٚ� �G+Cr5Xc�~M���m�J\*�tzOlm��!Q�׈=�=\EB���S�?v[_�����R���n�
rso"��b��wQOr/�2/���)r�:�c�c6<[�Ts���6��Cs�C�o%��f�����  �]�/�FA�u��������H�P�-�O��}��Ee��Q�읆��翼���j�ǲ�Mh�;I>GM�����e����?��0�-Fj�wz֥��UIˇ�5��#�F�&-���.�� ���vr��	��b�:1�w��s�8<t����]3�H}Y;V�>"#:r7aN;[��N�r���+��
�Ä<�ԥE��=i�a�G�yi�2)��f�&㳓:���+��Y���UaoW��V�k    	���R�v|����r���,671�޺��J�%+m�Y�U�*��n���m���'�O:��p/�&�:8�5����y������z?�}�϶����u�??4���W�'FS0+�t[�DM/v4X	7&�Vd�S'�Ԛ��=7n���F��0n��z��i)�o����\�_�2�Z�i9rKֽ��iY���'��m*���%�'`V�lymZZ����黕���Z9��o6�NX;����M��MLBBa�~���`;Bj�0|`�eVp����¬_ɋ��"-�wH��P�;��&���͐����k���ҟ�l�W9�,�:1�⨷L`���E^C]������b$x�3$z��L�I�O�2`���fS�D��WGVxI{/4v�Z
4�lR��D^�\y���S~����-��?�{ki�W���	��)�?�岽����}lM��H�'ۗ|o�i$lQv�//۝�BvAPF�C ҝ��ў ���my�jud���a(�`����*�q�K�&���u}$$L��2����r�S���oϗ���lכ�I8(k����1��>7x5�X���Ζ�H�E�U�d�&�;�&H�J�u��	��]r�A����Ӥ��?�UR�H�V0M�ک�'5�t¾=�2�؜�Jg�o�}��g�2��'�����.9��EGld���+��r�EH�O�w�Cl'��J-�(χ�&n�V_f�#�ĕ.���A]5)���X{�������z�Ʀ0�-
]SƬ� �����&���Lʗ���&�e��Z7��1}}�.��22TB�z0�U�`�jC"�1�:�+��7Y�*��E	����l5�8	]�\:�c��%�hİ��Ǩ�닥����J�!�`�Q���'j=DJ�i���JĒ�������{�t����tF�pm�v�&6�%	9zc��:��k>`Z^�a6�V��ϕݵ~�d���9X�VD�I~��3J�-j9Ht���۬
:ˆ.tA��Cn�ӷ��X�*������Li©s�#;�ed�*{��p#i�%�@^���m�E�����D��~�!>��WN�1_��l�<��R8jM*�CᎠO��w�
N������o��bJE��I%�|�}�10ieJ*��M����fC�T�2+ң�4�$��8�^���+�v6�b��a!�e�����T��&�MH���.���[��t �m�����F�#M"�����MJ��j2���w��ViY������S-�]t��5�
�0���M̈��h�
��m��*��%̀UbR���M��Mt9�S�䣥�m��oU�|L{�f9�\��|��_��P�'i�A>v������^v)���.	2[��.�ySd��GKnj_CV$kU@>VK�:��w�A�ߑ͗����P;�v��e��D���5��qXgMt��@x
:�Ib6����4�}��E��ԝ���L�Iy�ߟP��dNe;$��?��	r$���ui�_~߮�[��O���z����O_��"L�C����y=�n�]Ԅ�D=��S9�y��a��~�E#_YK+22�������M��_6?R�_����*!IFV��-��.w�L�vg�đ&���E�Ґ2����a�҉,i��Î6�$E[_!X��}����z��Hv\[�9�W��>U�|��
y*=OD�*�]i����X ���moK˴XN�sĸ ��
�DСmE�Ea�m��n��P�WR�t'K��`@#yv��j�i�%UDp���;�=5Y�Bd"4�t�fO�� �זM�^�ڨeĉ)��Ć�4{H�\'f�*� /2�)��*YjA�_+��_cji $i5����k�\�'-LW���ڄ�!Y�����F��j�,�?�L��ҏ��=[YS{�I� Y@������mJ�/&��Co�iUT����8+A�h��V��W��NV/��u���Y ؄��p�>,fD�H6>
�����P���vl�*��1�{0����Ity�W�$Z4�ɳz��1a`f	ل]��#.��7�v5�UK���0Z��H�I��T���!�����a«���/�S�c��+(�x[��2�P}N�����g��a�2�i�`:�G�=5v��e�L�/6��ݥ&�ld$��u��ƃA�w����)��d2D�Lmq/9}�z�}�h�p�|oZ<�*�0�>��`131�d�w�b V� �p��%�	�#@X�L����h/��A1����T�59P�s�q���!�ߠ�8�� ���A��,���k=_F��NnB��^T �\C鹕h ���r�Q.*��c���H�-R=��Rځ:�$W��eF�P�A+�������Nָ�ZĄ�O���U��O�VC%e�)�bB���"������D��O"2k�2X��-� ��/�隶kl�I�?=I^(����x�Q��}�B��'I��|UЯj<�4}$5]� ���j\�1!�9�������ÛvSI�)e�pz �O3'�o�:{:4�8����^W��I����:��-�)�����<��q��w���4�̹ %ư��յ����7"L�ڛ.���n�ݘ9r������4�m�QqŲ�M��l�B�$s��ƥs	�.Q�/����������(�H�9"��i��u5NN���A(�CP�������Pv����x*sV�g=��1�3"#z��ּ̾�pU ���f�5��x2!�]��ߜhg�.�*�m���[�#�[��[�4TN��dTP�Ċ@h�~l|�.r��J"��Ц̷�Ho��
/������j!���Խ\z�Į���/N.��Gn�L�[���̭���E�a���M`��)Q�|̚�i*�f�2���ߞBҋn�k��}%�ks�q���<Wi��1�k"͹��`�fN�����d�N�ە��tԾO��?! �4/����Q:֖wWB0 ��Ȃ��v�C��Ĥ��qL%x��c;
ȜR	~$d��s{Бk<Oi��s��<(�\J	~@������4Úk�B,����Ig��x$������Ο��9��YPy��2�7�|�
��r�zm5v�4M���n�E���=�T��l�U�>=�F]\��;q�3.�Q;�c���?���W�q�I\<\}������S�#�ٺ�$������N�xc4N���,n��2z�û�J�Y�DV��w��AO����j5��e�X��������39��W���b�0���gz�v�>K��
� h��^�*^�}��T뜙Q���`*�I�И�j�� Q�������j�m$�V�"�76���U�Z��X?Z̼lJZE�t�h��N����XE���f
E���*v�h̖�閿�v�y�jƧ��e&�~��d�R�8@�/ ���@��״�J��MK����c����*}�E��	G���18+��lL�5����4x3p���})p<$i���ZgRڇ�bY���3�@3�ԢO�s��Wa 3����2R���M��$�:RK_�$��3�[H� ��$�@�r.�H��ưz��5���ZƮ�%��'���DN��OȬ��B퀞9���A�qi�� ���7��;��p~�[���Y�SdQK��G֫tJfVNq��F	� �Y�S�,�� -�����:��tRne9�߇R?4�������S]O�ˢkt0K5-B�k�#���LФt-����8�g����"<�]%ʆ�:���i�tz��O�m`]�S��C)�Q��\�uM�Zf��&�*��a��@@�+f�>�D)eF�.���t*�<( Ъ#nk�LѴt�����i�|S��A�1�������4��8%йm�FG�I���(;��<�.���h�fd@�-�5��F3��L�~��^���tG3��<���o�Pf'M��7J��E��,��t{���$:��T�������ד+�H���M��u�u�o��ܗ4�X�˭��P#���n�t-�����1�5��0W��0�yt}��Q��<o�����7��itp�䥂�B    ���U�NM��*хd�ǰ� �o��TW87���h������
�-�gEl;��ׯ�z@M�l��ǟk�1E�͖���
�R�WL���
R@�`�Xx����4Zh����~���4�o��h�e+O�i��zd.]���LɣK�X���ku�M��ep����R�a1�.�(�ګ��R��2Hҋ���,��f��c��p`g������u%�vͷ�R���~c~�f�M��B/E#��+!z�Z�4�\��ie6=1���s�g9}���9�K��/�i�t�8�9�K gP�?��*�k1	c63����!�9���Ay��IbR�*��Φ�e�����6=2���k-t�~�&�6N��!�HK��'�ڶ�	W�#OH�y�I�4G�������'pWv[�^ݻ��ݔ����%��A|~ۮ��A�ٔ�<���Lj|=�C�~�g�1_q-׭e�e�i�����_MS��g�/���q<�rr�����R��x�z<J����������}Vgfk~��n���}�f�l�8�R{��5���bvolG%�f^ȧ�C��5�"/��k  4���X��Q�ϒ�s�nȥ�f_e��������ػ�b1�{^��o��q6t1Kzfz��s-���=3���!
^��4�yf�xE!yU�Y�3S�?Lf�G=3S9G[�<=V�}nHf�����v:��=��|}[�K^l�1�z�'��~r�E���e�&y�_����_��	�e���	Q�,�}>��\C{���*f�� /'w�?Jg[�a�,����|<���*x��g�o��yfc� /�JF�I{��]s����;�0����MA�5��愕�Uft� 1ߍ�i5������g���t���x!�G���`��̔㗗_��v����8�m˔���}G��^���N�h��2����(SGF4�^����keC�eU饚��V��_��x��?� �����є�AdfU��У
d�b!2��i]�5xn��-"3�mU�̺o|������k���^ �xs<,yq���r����Od��O{���2�y=�{SH&͓~����m��5s�I��"�����;Y��Y��>>�V@�u�JuV��"-2i�%(�5�T�{�jTMΈ��������V�j�t�������W�
w�H;2�o��+���^is���y˼=Հ�ߐ4 $�c����L#@8(�a��*�̦�'�`N��$���4�Y?%i�G~eNq�U��&����Wf��W7�I#?�+��7\���[�����urz,&ɯL4�vD��!��Y����&,z'�� �䕁�F�
K���3�?�e����&��y��ip�`2���F-��|1����Ѭ7[l��(~�]��h�BqB<Dݳf�:�@�?{=����f4�G9�ٮ�<�|̩�f��0�����@nǇX4����X(�I
�����@���s9��ܑ�n2������e�/Yt̀l�<u�3��w,M��f�[wc��^��t6�`�o�B���)���L��[��~�*լRR�������U6�*';{&+;^���=9��"��U�A��]����7n���yj�SIN$�D]�ӬP:�!�U�bQ�	D`�b'.z@��7ч~�J������E��k!3
���h�~J5��x#�ȋ�9٪��3�k�W϶��E`��A�X>�_�o�1�1������8~��l��*�1�͇�<@@[73�����M3�u���p�4�[�~z�e5W���:!�@�35B�~�0�-r���W}]��v�H��۷�Q>�lr������D�
Ylw'u],M��vȆ����%&��z�/j��'�jXf.Dqo�8,��.�'n�v�s�����$]��d�pa�B�����A��0ۄ���h���H,6�$�s[ bFI�z�&�A�� �����7|}��Ͽ?�Z�wO���HX�2h[�&�_~U�0�2����	G��}��R#V���'�%/6LS~��6i���zY��T��+pm��8ƾT�8�5]E�p]!qь˛��Q'sl2C>h�~�O����<�v���-;�%��Ѧ=U����8٤Ǒq4?hQ�_�<�I'��͋�<����8k����I�Q쒹g/�`�2��]�&�~M��%�R��]�y!�a��L��{+r�Df<$�A]�`H��G\�~��#2�2���
�ʚ`=��ܠD�=ƣs���]�3�8nO�.����S�n ��D��I�J��y�0nP��t�߿�7	s<or�[S�FBZ,]>�J�"���"U���tЦFq@��g)����1I�}?�ź�s�ЯS�Ar�����KF���Y|ޫ����h�;o�
�o�6=�&�#`(�o�9�T#���U���$��ɛYZ���F�Ȩq��_��W/��T�5���ԅ_,j6IϢЁ���X��dF�b� ���i���"6�l�2ER����E��j6	qP�O�u���5�\��}~��q%�����Y��j�����!�ı�����_8���|���L���(E6�s��H|8`�/���{�6'u�=&)t ��il)��
n�a%�u��2�D1��j5�,�>�������7i/��\@��ܔN��Y�q�)6V�B�z��Rk*��:��һO&�`/�2���bO��˦ACxH���r�{�UZ3-�K�oY?.�Ӯ�{v��]C�1	7�(	j4��Uy>��G�~��w����QP�0�^]P�;�^�3�⧲��� m 9]oo޷D��&ە��B�gE����^��k�p�%�G��e�J�e}����ʁ�����#�뚝��D��.��/�y#������|�hd�ƃ�P�����9��}�h�b����їFR���oRl�UreB���z�.V�.'�7gt�ssY��!���F��;H��������y���y�|oH�4|�ZIG�N�`�QLv�����'�P4�|-z�̥N��~��a�}�%�޽��N��jwi����}�-6R��J)_F[
�r0��o�� L6�s(Pvz���������n�G)�W	Њ�����W�"�o5Z5h�(;����4i(��!ؤ,�L�`tلhS�p����c�\,��D��|m�tp��L$��Tk��8�v�g�ܜ�I�j���$�i
 7m�v��\HEE�o�(�p�8o'���zx@O��pѦ��D��~�����P��n`�bӦV�8�\��V�����H�rM'A2J%�8�|��d��z��&<p�����|?�e��4�c����CX*LN��`�&ű�F6��vu���3/�U�&5�Z�J"oL���6x)���V"�(*��.��jݫ�]�R"뺹�,�� ���>�jJ�MN��ՍǴ��P�b�r��l�UJc�8����f�J�MsXՓd�t�l*c� P><��z=���2�IXŧ��*-6S�L���^X)�D�2[�-���WR���m<�p�(�ƺG��T둝�WW�@"���Bc��5jHZ��p����Lzw�lGF*%ɞmvбʯ6?)~�����"9�������w
+u�0�G�=�V6�T*fO�����y���RYǓØ5m@�,���_�1vn�V���ٮ�F^DJ���ڶ��i?y�or�-f8ȳ�'� ���l�R^lA �M�M�,`�`k�ǀ��	=9�ӐsA��t�]�5p �]��ɗ~�������d$��t�ǘ}��Nd8' �l<�2v�	��OI�o��
�$�m�f�y������|�U�JU�-g���ZB\ܰ��x�Q�@���C$��9ܼL�)�"Y�^֪l�
2�aD�,d�����M��!�VC��رf�o5ea�^!Q*��~~�5q��57[�J½F����"�
[j5<6��m"���A�rA:G*���!����H�5P�3�SPj�X�
��>��C��U���|�q�&���!o��QSC�6�&���%o��M���`��8�ߪ�s���L�G�3�K�0àž�V�SߚJ�\jAa�_Y�aP���#龥�ޱ����L�G��W�m��m��\*    ����2�`O˲���>�Gē:�W�{[�u��m0�~��<�|2�+�C?O\���6<&Џ���Ը��ա߹��E $����J�*'�̏&���H��_O�AM��h��81��.f���y�(����IJ]*�l��$�q.5�V�?�Q����\*���ro��R�o��0}����:����<K}�a��8/����o�d�ը��(
X(54�N�Ex�捺bt�&��3���Su�&��s������ڧW�����O��f˟~���`zc�Z���29۸�44Q��F&�!� ��v�M&C#ԆP���ˤg�2B�̎���gT@��q���lS�I��+NN	�uh���.��u�:��$�q���V��PcP�EE��G�5vغ0C�G�����"W	*� �M������Lе6�,:���Cņ-�X����Rt��^��Tg�Xi�3�A�9���MW��%1M���X���l�����SP{bB�2C�⍹W�P�� r���q��[%rP9�C�9��u��O�h)�����I��mF#F��޻Onш������0��7�T�jjA�RݸcK�؟h�[�1�ڝ�	����J�,�������C|T�m!~�
��_��cS�+*�B������	�~#������bAƄ�n&'�&x��I�����_Z��!�L����?{��u�";F�?�Vv0����,�c$5�r*�������NG��#ڮ����΃�JU^o�QO��b?F�B�<�fR=�iayb��rY��+�N�dg��M��"�Bi(%g�����E������=��~���ߖY���kI��D�H�`�k�4�?�?%�O9 �`Q"XjB2�s)Acb� �I��C�����%��^q�"��f��!��g�Y��V׍�$&�'8���F"X��:����éB��1��L�q�+8X�8=ޟ��|�+�<2�-�����u;��`A2�00^�n\ǆ�����&�pp��0P�}��#$�ȥ��Ǿn�	�i�M�ؙ��S=��=X��D*��.ZD��2�bz�.�;�E��u{�y>���"Y&RI	��G�XHx;���]��~lHe�����Y&�>�"�O����$�ԗej���N?*5?O�1c��	E�Q�=��������z���.�ӄ'̠�6
8?��v:M{�����i��䬍&IF�c�P����m�[5���URt��mXp
�S�b��p�F-Yt�4q�`D*T'�	�S�	%k�e�$��dQ)ӄʵ��I������&p�}�	M�tU۸O����G�"?|=h�P��)�٪g=���iJ'�_T-V��Ȕk��O$	.��� n�0���,�e��� ����y������C���)���j����lj|���3�@�(gx�������I�F9����e����R�yki7�M���L�0�v���c����fv�N:�ϧR�Y�g9�{~*��$5Z~ݔ��\#������~�9UdPcWH�P��5?�{���>q��g?���H���`��+�&�0v�2af�e��g���,�K������A�ՊЦ�f��F�#��Iںj��S���U�o2_���
;�m�
}F���>�r3JP�0p]5G�}�T�m��Jf$i�l�ts�N�/�wЧLA�P��E����*�L��
L��\a��j��H�MWr>�]�	cͰ��G�!��S�γ�2τ� �~-ǡ�����4����Hg�͔	�S��٧]�i�.q~�8E���q��y�8�����a����H-"eʃ����1���(�D�)&����}�2����0fA�|�bs�kd�����n5�g�	�_��x]xC#��b/�&e���D7R�*��-]L��%|���ABY^Hr;
��h���	�u��	K��g������V#o&)q�e��]�3������ћH{:8c#�&�}�M��'u<e��C�����Ԍ����ɷ1����&�v-��6��4L*�Ւ#r�͏rZ
��e�����$�
D�1R!Qz |�yuTg2؋t�2|=���e{��I�t�������e��4�0��L��U�ֵ86�0i�W��:Ӆ0��θ��#8��/Hω{#���8��-��p�3��	k�YWޠdV�v�+W��$p�%3�p��%�W��<�ji����n��|u�4�[�`���i]��"�O̓>��&y�=����Z�~%�V��m�Mq��ׂ����/"�vy*��:'E��1�1u������l�3���ԉy�3V�+j��m:u�`Vl��'k�ԋy����$|���!���P'����r��y����^�r��̑dI4\��źēb�6g$�h%�&
�����x�F�)6��RO�9���
9���Iߏw�)q���#��	Q�TfҼ��d*
15e&�{GޮL�>���'�Ś>�ցzr}��Î��ư��@�T��D��j>���Y,]c�l�x�2�Q��H��UCJ7�Y�5
eQ?�u�fH��o�8��L
�������** �j0�½��<}#��U̬s� ̤u��/���(�8���@Gρ�;]d�j��gҿ�l�z����`��l��(��3i� �}�	�,3��zy/�����#���w�ih>~��̤��y\���bq�rtwܦ1	�Bf:x�/��b/�ͤ�ШnK��o}]J�V���Uw�I3'EŒעz��3G��gI?>=���V�b�3��x`{��h���A���â�nj;iyT���K��2��U=���W m�7�,E]Z��B��*�Mê�^fAHh�f-"%J���0NAM�g&2AanM�����"����o�Ip��r`Q� �{u`*2iƶ+������	<���k�����m�\ICo�����m?�zק �!������pn1�j���d�\p����T�^�r�7�Wɴ1��*20�K~oz�؛-��n�TK�FJ��r����!��, c&M�H�����^��#F�5���(�)�3i��,`�V��m̱iXAr]U,;ѢEn�bZ�ƣ��&Z���b�H�����K��K���RvK�Tw��� y@��L ��1��N`cI�b0E��#f��*:�d`�ŝ��Nj���� {n5�P�-�c&]���j�
Sb���?�¹Ec�>C
��B�����n�!3i�۹�֋���*��}̉�h�I��}TUY�X�؏9F6iϚ�3%���I9/m>f�&A��1)�@���S8�&aۯ����T�O>%Z&+KΔ,Bd�C�Ջv4Y*Y��1\.�$9��ݡ�4�<�v��e�s�T����a�y� �&5��X�X^����-w�x(�%����-�wΉQ�L��9���rG)��>e���X���������b�?٬��>�8�)[�/�O�xk���t���]�	%� ���-���3hGeӛp�-�JY/��%���\��p*<f;��V[�:|�o��m�Jl���boI��K4�nRR�?�˧^�z�A���!��6WY�AA&�.�D�ŵ��`-Y��B*tm�^R
Ps3R�$��9�Ո�؛Ml��&��-��ҙm33�����!�֜I�ːju�_�y�[�Y�&�.CV䭹��1�uA-%C��>���?j�ʨR5�
��2J�����_
�$�u��ǳ'��w�,���h���'5����(1�XO�k��0*(����wԻ2��ػ�����RoQ�3��
K. �t-6�ë��O�X���Kr�l��.����W*�S�#�K����'����l/1yu!M�y���|U_?Ԥօ��>��~>Vv�ٺdR,i���v9~I�7���٘0]�e#=��P�u�W����B���p4�ƾ�x����`�0�8dL�@���L��#�P����@y"pP�ACZ7��	7&	�S�ڸSi˦}4)����G��BJ�����0b��@�&�.�`C����@�+xM�\H���J�Z��DҪASse:�޾n�5Yt!���p^����(�$х4k�v>�&s�A��n��q��FQE��61�    i��<�8�,����w�~�2��au��oM])/�ѵ!�R�&�.t�s��ң}�L(]H�V4���)s�|�L8�����͝�uPҝ���M��['d-�ɞ�QC����R�:��tkGC6�I=7�h.
�8�%R���u<׬c�&��������
�q�H��r�*�͓��K��]OGI	��4�x	��nk�<�T��M�/�2O&����/��y�k�f|��\f�۠F�9ύT03��]3����11t\��e7�dz�?RP֛H�.Al!�E��?�h-��㷫���c�p]>݉�����I�F���i��}��o�jR��_�ZR��P�ń����I�&ոb���{o�ܿ$��ޛ�����J�JB���uh=
j$�z5~���M#g��`^�mP�&�̍�����l�uXP:���~a�>΋�2,	���#U��]��RdX�)�`XR*���E�j���Ԍ^���_,.��n�
n���s,�aɘ����uT�=kX �Kt��X�4�5�r�� �%O��i�	�"^,�`ɳ��k�{K��Е�k���j�A��)�P�d)V�������dl/JX�U�،ovO��쳍u��W���)��B��^��}�z"������>Z>��?I�E���=u9�B��JNF�3�ZX]ߌm�`�X@�|��QWB�}�2���H�E��pL�����9�ɢ�O�(�V�ݑTh\l,V ε�R��UY�{�42��\o_[4��L(5�q�F��-�0��\��h�t4~���T&�0��a�I��y�ʄQ��s4odA��7�k7tP�=�@y���KD�r�!�[�vHѽ������MB�����.��H
���0V����c�>��]�<����N7�8�C�!%��lD��L�z�{�c�
�,um�`R�X�r�Uы�߻�Hs4�}��8_��y�tM~���c��X�6���w=y�ZH.�0�4�6×�C��oTW^��dC���K�Yy�Z��da a�?�=��/QBO�?<er����B	�4����Ɵd��H�e-�,� Lu�Y�4Ac�@'��`�K�Sv�� ��L��z���X�X� �c��s������ς�6���S��GSq��;��qi���;,�!��&�'w��Zؙˁ][�T��؇PK;���;i��s��|O���P�;'Z��+)i�i7��������%�t,Cրc�-]�!Z��w�x�0�OK�ɴ� ��w|�P��<��T�j�R������k�ģ-����a���إ�e���課ү�O �5��h/�T�.����q)��J���òhQo�kI(���C#��>D�羙����46_��	��-�9�#�T8�V�-Q4,��3���-���o*U)�b�C(�����R���4k�Q�M�{����.��E*����8���!����)x�<He���j�0�VV`-�.�*����u"���A-x�#�Փ�n�feN��$`L���aW�[�2��d2�yz�Y0�1�2}��fo��Meq4�%�R��L�}E�M��u�-��]�8�X4����I�!�	��'.�j�jw��2w��E畧10p�����F븅·X��k;9�T�X6�|�R�(�������r��Q��Գm���Ѽ3�����:S��j��j`�dD���>�5:K�m��f	S�$eJ,�!�� �Щ�C��Й���n����u ����(��5�EsI�Iz��d�~�7���q��l�7�jh%���`��4R�EW�بh��lɾ	.�-�C?_����wЈﰱ�u�74��.;) b�Iٿ�Fy?��2@l,�mwQHe��me޿�(��h$��O^�ϓpyL��F����]��9u��5��/��I4� Ī1'}yȌ�p����/j+Màȩ ��4�Z�3�A��GiF���3 ���=�{�R�����8��)SJ�?�*!�7+2�J��b�7��Yª�ު�ߓ9%��3�Jas��d2u)C�H��?���1��Aq�t�Z��3���	��3������.��C������S�������p�iAqH���&�cU�<b�����31�VX#�,j�C�A�j�zu�`GE�����i��Kjz�#F��uÌ6����sp{��k���W�V��ZDn�$���0X*�8����)��N��#���GLWIZ8�u�G�u�ҝ�̣�G4��=���h��ۥDqwĘ��%Np���
ҳ��Bx��
���Ȳ�'�_�BH���J�ӗ�$����)�h47-6>�TD���Ŋ)j>�庂H�o"<c�k�DR�p�g�]�s�EF:=��b��lZ��Ã��V#�feχ=P�i�d�	q��ll�Q��]�$i�ϋ��3�׭$Lj=@fSL")�6��?�H�����G�ffSU"i�j��S�r�)ۺ�e��@��?5��u��b���H	ܨ�݆��}�~$�(�!�-�X�J��b.�%J�
�]R�5Cy�~��0�Ϸ�
y�I�HSPT JO�!X�,�	'O�d�����J]#t?O�%�����v"����vt��:rP�M��\����EFj��Jr/vi,�C�� ���4��"p")���#�f

Im%��dKv�	���Gǹh?��P�"��fg!���t�e6	ԭ,�'�6���>	�":c����?	&.�ϡ}I���ԩ��H�����Q�,G;D¤��H�gi�A��޼٢}"i��#��KB��^'m����a�I�_��? Fyk�&du�p$��1i��MkR�4Zs	aIˬf)~�:��I�,�.*$8�H$u�kC�Z��
���u���_��+��4�0�)��`�P��ȯq��P;�Z�Y�S$%��6ց�M�֭E<E�(������e�GI�%��q�XV�!��ɯ�� �G7q9G��I�M�T�EJER)��� ����8�
'���� ��*%����j!*��K���M���� k�*t��ʦ ��D�#ՇϏ�a���2�*��c�-�t���k�2[��Ka.I���s�:�BёQb��S�Zj��#����?�򱋂���M�3'�������,+�u�?�Ǭ�4�{00 }����6�`d�~��f�E^�~U!�	�.Y 0"�%c��n��&`�N�k�p����w����7&���H-������ h�B˘�H� ��7�Pna��tM��k�d�Ñ䪻Z��A���Dj+��n?-�iԏ��=�&{�g�����n�DZ�	y�nV5�s��N���R)�5�^Qj��4u0��˖,�M��z}	2;�5E�����,M�E������{wp��uҏ�s��s�fuI4����a�Z����j�춧��T���`ͷ�R�`~jz���M�HCF��b|__
�Fy`��P�&ҔK����?�+��I\���`P%�O�66�k��%=g5�`g�9b�;��(��?C�06��<�u!��s�%�I��Fz�q U[�(��I��ˇ%�����u�o���M�q��"��9G�q�/��8�&6��+W�+���qBu��tj�s�;����0�&T�8�)��R�5��P�&Tɦ!��d�?��e�W�GH��7�.��76M\���_��dքb٨r{�1�|�b���1���n��z#6|�	�����r�O��B���Y/t͝�lo=��*�NN�c��b�[�f��ڂf��bքr�7:�e����j���O�"�z
��d���o'w����&R�߷^6�	.�뺘I�/�Gէ��hx8Qڔ��n�j�?>f����I�$�p{׵��a����c�{=���0k����+{JO����C����Ѱ���UlВ�0D����}=���׳�a�L�p�FZ����32\M%x�	Z4��r+����Q*�&�hAu��S��U���4�	��lX�A��B�v��;d����n��4"W��B-�R}���e�-��5�N��cC���H����vmh�R���g@3����&nz    dnF.I����=�o��L.1���ǋL��.�;�޲�����%p�?�w�u�l�Xy�K���]VΜ�=�ަ8	�����-R[�U� "��0����S�
�"�ʸ6�c)��y���ڜ�CC�"(l����uR��X�=��g�v؜�	�z�GI/�O���K��#����lYWO�ؕRa����S�t=4�R)�=wd݊��
e��6�l|a�+!ftՏ��whX�RZ*�E:9(zA!	�U���,�װ1%�������_0�v����K�6hV�8�^��YT�^�̯�4�%����Iӡ�IJ���%-���֊ +Sg�t����P��<&�#I,����ҟ���dːM�"�A��\"�uBP�VcM��CV�b��)'c�bޓ�r�,?:�@�)���4^&����*!n�r���Vd'�LK~�IW��?�Q�؆� ��⯒vd�?n��w[���Dr�g�&>w�%9�گwiH'�!�A�Z������Z�g�7-��d�G�����z�`�Oy �?���W�QkL��2������@���, B��.Z��p���a �4�d44-� (]Z�$m�l�Y`2uuqˢi�N2S�O�N/����L�_���n � @�|���!�`�^?\zb4D*YI��e���VV���D������hxT2(8�X�pÂ��.'���u}��HE�W�'��"�]Oۧ���!�����lg٣���RH�}z���5)�R%�K�q3��p��8���&c�*C
z�18i4o��W�~�e���z߯r�OS�-s�~��WÄ��������}�,�>G�)R�gJR�{�R]呠�̤94�q������C<��4�7���	�<��5���}����P��I�j�M4$/��sUM�R�?<�D ���kև�{�E.��a6�5�t ��x����5¿���Q�2~�\���୦�����E���<������Y�sM
�+�n�or�=7ی#A�Cۋ{I
-���=���S�f}�L2���$��Z���Q��P��UO�=�@d�,�����U�Ƣ�O ��H�&��,�oBE�Ĉb ��M���l��2j��)�ޗ�ȌA������A�y\��>Ad� {�K�*!8"�6���L�켴����H�����b�+L<qv�Ш�2��J����^�vw�`x=�/��[�K���n�0��9�vA�:5���P�
��Ѳ]�r]�ȡ8b�l9DD��);J!8�s?|P�a*��W�H��.��{��xy"@���:���> K��JZu�M�LMF����
M��ta��;(
��g�Ǫe���<VɌ˳��3�����Ԣ����A���-%��k�hOU�㪱�d/��7�����?�-���Y[k<��?z�����gH�vi`]F���Pw|n$���Sz|e�/}�/&k��H���H��ɠ��5�O�:��4��� V�4�'-2��4W܈�\���;��z���@��EQDC�vǼt�<@K�m����^����B'��<�e������`^d���7*SV���ٳ�������M����L�s.���ܲ�2(�X�,����u�.+�7'�\wx�u{�(�
wC7H^��cլ.��S���e����v�����/R������ވ�_��>���3��ƐT�'�ԟ9%s�^�� &ye� |��P�L����6�m���,=d� Q��r��b���/a��D=������������:���(l~�M������#�����s��V�y��+�0�~����o:4�X.o��r#t� ����?uJC?p����\Q�R�S%��۟o����3�?�����x al�w*�?�����i(��A�Vyrm .��J|�>�*��,�*$4�h[�|et+�K�Ԯ�2KBt
�F��1����ɥ�%���P�B������ݙ�yx0�n�n񄅏���݃y`�&we����[vne
n\fvx#������y.ok�_TP�<p�|H9"�Z=x]g�r+$9>�D�'�hu/��Km��QB~{�*��Np0��y�Ok�.�
������g�[��tbЂ�W6h,�;������b��{�9
z����m��ZS��v���1�+�*s?��N������1de��5��{e�4/��Cdu���o`n��yݎ��,m�$]�����R\�S��:������
7��t�O��@@7]���U~w�Ì�W�\������Wl�<��ag�*?���la1�
����2u��|{ Ǒ.�ss���뾞�Hc>��L��������\ߪ�*7)�k	>pt#ƛ���p#WS.�09��"��.ʘ]�SP�����D{��;9���b��H��ok:������S"���l�6s��SVG�߈t����-E',��P�4Q)����Q�D.����"qRx���B�-��@	������'����1�P �ߑ(˩"�~>���
!R�m�C�J<Rq�r?��+���r��~{� Pev�v$��q���xVDt��W"W:�6�Hj.��T,�f�H�����x3��`�-4&���������Ѓ��"}���.��t���� ����T�VY�f7|�ce%;%$7�y5%��j�B�����<o�rÄ�#�����(�����L�����e��FpMT�T,3��P�@j���fI��SI���Yc��ZR�Z(oضD+.ۆ��]�a�� gQ)�^A�XC�L���yC�o�4��z@���&3v��홃�'���̮��`���k݄������e�ܟ���Nϭ�l�cQqb��DD� ��e0B��.�5�����`���2�>�����c�Z��4�
 �<��E�S�{U���N���ǁ�$�r��SlC�ha�4E7�#�>����E�%�v�c���˘St?K�L�.���8���R�}��܏*H:\#ǯ�p�R�3.��z�0Q�����߫`y<��w�d\�ѯ`�ҥ6�����Џ��B�&���T!�fR��.�5�4��_#qG0��v-�ma���bA�-���]��L���+gP�,�a�z�S`�Do�߃�=�A -cLv���祦�V�ۜ(*ԅ��VQź^-�\�2 L��"|\���YGlqK�W������b0? ��y-ukA�Nb9dp�J�p�h��ZG��VZ�|M��eXX/c5��U��a�qA���:o���U3[��'�&Qϴ�&m��y�\zd�F��Wl'pv�ߏO�A,��]Ԣ��4^-��.�+�Ƴx�ؠ'��y�
u{S���{��<:R4���Xy4�t;���CϸD�Rٵ�f'��V����2,V�EK���P�ВB1(��zU�k�������� ��$M�K��ϰ(�8Uw�:�0L�54��&�B���Xn�"��j	G�6�8<�$E������7����vY��<�2⬯���j�V��Jn�qŸ%��$c6��:	�n68�~�Km��A(IL}�yq�
?�������> <7��
qC@z�o�<^7E���2ݻ�ï�?�����#��pE�V������b[>�x�����j͡��s�m���K��l���YiA�������3��m��&7ˉ�����55r�g͎�UKeO3��> С�&>����Q5:	��'Gf��I0Ӷ2ߎ�����.����p��I3 -�f�:���S�0��׽ ��F�F� �ف�C����?'�3iw�<�驹B��#��7X�!��I�N�;�D�+�}E��ҙ�K}�#MM�����K�¯,b7R�G�:t���[�S<�������RY�G�~.kR�T�T�y �/hH�`S���V8��t���E
����)��9�ܟw���i�TJ|�KK�xo��+x.`$�4=�����������U���É� ��4	�k�D��f��QrkA�����Fq���C�����p@�.g�z��Y�8
M�2׵���w��jx������)�Ku�7��2Ѫ���X��    ������7NN������W�c�&�2	�����AKŝ��ܞ'�Z��g}��H�{Q +č��j�%/�؛���q��D���so�_�B���J�2�Ng�`L�@P>r�/�9x?����r� ����߁A�e���Ej������~���]I� gN��r�'��5����<f|=���x���y�FT��ק��j�N�-(w@��JN��P��� ��/\��]��[G�x����g �T�u}����&)�V)�
�Y�@J64 ^��>%�B�E��z���B@T-v�����w�p,B������N��sJ��෋F��D��I�qr���A�mۻ>�&e� ]ޞ(U7O��	*)R纣(�c����Fi�r=
�r:<�hU\v��Ӗ�BRT;�^3�[��6���V�Mu/��#�r��JR�o�I"���8�(�?�ӱ�|��\r'�<j�()!�Es;/����=�w�X�p���ˮFw�w����6�	U�Ҙ��cѷ�����Ft��M���^��ҡ����w-��?Wx�A���%��8�`;��}r�D!毀ɿ(�f��n�wq�U�&\ZY=X�� 9{Nkmh���P������~-blX���ـ�lu{.�8+#�a�t�"V�<�}���������y�-��/�uP��6�m�-��>�Hۥ����O-jF��P2.%�|}������������+�7�ݯ:ԑ@��c�xD�4z�\��ۣ"�X�G�W��+���8���~mF�5�HB�}l����.r�m	Ľ.P���_[Qxp�U��L\>��d"h� �7`�kkݟ��,]C��ï#�~|~((u�����ӈ�Ӗ"2�rD���8�uPTn[�
���o�|f7���ߑu������W�ٔs[ṃ�
��3����IazpI{�p��Bn�����t�$~��߃e�l'�`��;�H��w�P�X�枸��g���rTh^׮,�j�2@� ������b�׆g������kW�DqU���;�F\�JT[N�u��t���	ѹ��YV��S����$rn�����xY �&����)h��4���I�ɭFp(���7;�ب��N,/t�4���V^��������8����km����y��k���
<�F�p���������w$�3U�]�s	�՟��%a���q��{=����B������WRVA�3;���/���v �y�V-L�r�i��YU��i� +�g;�BJ��$���np��q����0=ѷH��?���
�-��z�A��B0U�_�
��}|�>O���Yâ��nhQ\�F;O�V���D�A���&�o1S��/4|oOA�V��ԍ���09?xr�Q��sQ!��./<��s�l��x����p����$����F�����K)�p����-6�ڦ��1<�3����p���$!ly`�����\���f����X%.���w&��%�^�!��;��w�Doia:x�qn ȮTFh���/�χ��6���u�&jt�o)�6X�����=�A����k�p��2k�M�4��j�ć�-I��09�y�eCP`��p�l�8�<\ՎM��A-�W��kS���>�a^ǿ���ϋy�1H_��h�m?$u��F�ab��k	z�o�]�%t�A�K|��px�t���WPNLC����Q!��T�vp��t{/���*+i�s�(��I��Ƃ��z����m�O�x(�ɻ�6; ��nb.�>�g|������<�So�"�x����F�����*i�ޓ�����ˡ��ޣȱG�|ڥs��^)OM�S�'9��U���CK9��L��@8�F��Kp���6�ə�� �>�?��<��3�e�V�lW��bR�>�uD��2 ���*�Џ+{�o�}�[�-��t%���i =u��$��kv��F�/{�R�\9��s^g�G8X�ą:���iNp{˂��P�hR3c����82&!=|�=quuM�}G�f	��M�P;~��6m�zp��'��}�#'g >��뺥a(i�/��{����p4
���<5qn:x��mB-7v�p(��h�9��gbAho�"=�D"ͯ��Zp*l ���[Ru�Q�yj@rX��)ĴbHI��7y��F�!����E�e&����mGc�N͉���ۂp��V>ᗽ�jLJ�B:.V��u�M��7�:��Dz��������{����8���	��=�oD~m���iA? ��m}����� ٤3���D��8_f3�)ȟ����91��y,��|�T�0{:�y����a6a�C�n�#{+�M� ����%[���u�p\��(y�1�����I#,��������N��I����މܔ&��ID#�r��W���`o��x��w��I�uD
�����qn�-��i���4@g��2�]K����i����D{W(��ܠ��4��/��!X*i�%�<�}������:�Գ�k����7�W�\9�-�%�}k��� ��/���+Z���R���i�ݩ#���5�e��0&��V�=�r�+��/��m�=��ÁV�{��|���.[����~o�U~N�gl�T����<"�S~u�s��ϧ�ġϦ�߇��(C�r��g�>���횰�j��V�}�������f6tu�Q�0v�(��C��EL��,���X��fǨ��!sA�J��;�GѸjJ��:Y���JE	�Đ��ئ���6���:Nl��qf2_����k_�TP�F�bf���-�����/E��t	�c+J@���=1�y9�/$��X37=�\}%�9}�aR5��Ix��,���U1T�a��-��-0��eKEIc�M�`��!	���N��W���͞�7!��&�Å�7EB?�oj����p.h�2�\�������f:��.9K�ls@�)��'�ҥw*�(·<�O�c��-Gf�C��ҫ���j����W���^>���ū*9T�J�{� �E���m$�/�I��n�S2H;��Z�����uZ���>���11�h�YB7�����rj3*ƿu��U���&��Rel��	��yڇ� ۼ�՝���Ѫn�g=��q�"��v���Ì�O�`.���Δg��\�i��h=������ԥ�T��0�İW������Tntى�x�k��w7i���YY�6YqN��'>ך�j��+�w�]��+�fj��2��v�F�b�~U[4��/�PI���?�/{ʺ��1Q���p��"t�,�_�n�-N��_iRh+�p�=/b*u�*ʭ�"2�T�wq9ytoOZ���@f7s:Դr�)]��U�o�C��>�����C6�ҧ�ȩ+�J�,��"�;bk�*Э�e`���xj�p�ع��Q��v1�..55��ms��"�/�B�SR�ݔ.���K\T��]*��s��8恭�OF�T�L�CUP`�� ��~3"�k�*�+y�F�4��i�WZ������0>HB��Uϥ菸0W�ߊpk���3���U�⻅zOE�+�j~�hƱ�VZ`�.K@��=��������չ�߹���}�y�F[ ~���jI�0�Bg~��\DR�2ų�B�ĮWhr��V��{rs���((7c��b��_�Y�?���Y*Mp��,�<�N]���GE��&A�|�_z~x3��`v�b��'" 7�i:�C��E~vC��Q����Ά=��_]uj�K {�5�R�������(G{�����k��|��_ͩMl�������c�0Q1��jf洪_��4�T�ťV^�˄��&ot漹��@2�n��ٿ��㌹��I7U\cu�ø��Cq�$����/��ʯ�b͹ꞧ�Ǉ6�<�e�~4�$@�_hH�jr���DIcٿm*���_A��/�Z���� �Զ�%*��9��pH.{V�[z(���o�C��u,�F&[�<t��~Tշ�DH���`G�~]Y��?����.,J)��
�lP����V��c)^RB$��;�|8$�� �  �ry���
�c���e>���2��
�_[u�~���逄�㻞����!�"��n�W�`�<���,����H��<?gE�1VYb?1��0�d��K�r_1n��<iו߿���q��6�ٛG�c�q���{���9Th�SX��e��;�_V�o���?��6��⨴���z����uY�?a���̐o��JFtI��B^���<{����J+��(�(S\m��	eD���f�6K�6A����].y��H5-����`��+�I�d3'�\*�|Mn�&s>׮���Rh�^,��Ua���>����Y����9sx�V�dg�>����H���Ќ6��S�ybVzCJ��U�v�5�>����%DJ1����U+G'��=.E���&-�}��@���y�����bر��_��?nϺ%��N���PԼ^�i���2[��@|�z����q��z�7��u�,=�����&i���R]kl�1�>��F0���$��7����	�X|�+Z�C+%�*�}6��t��S��� >���P�r(@����#5��V�i��	e���'(�+��IK��K���7i,�OJ��"�^j����VF��8B�B��� �{���M�J.����M�&��6� Q�XNXº>�bK��
�-b#���-X1�U"y�w!��C5�ϳ[a(O����Nb�%�����MH�]1��"zA�i<�K 7]1wCʼ�
��K�]p$�F����'���U�8h���7��)U��hLxOc?�v�x�}!ͷBI�d�$�S=�ps�A۫m�/�~M�"H�`x�����>�����H�O$L�D>N�)�54<E�ɃS
A��ŋ铉U*hr�tp��yp�#S����∜c<(�3�ѿ�ke�̎b`
�K=-
�_8r�8�vH�x�٭Vn��Y%�_�Q��Ł0�8���";�Ca��'w�����K������T�i�-��m���H��o���=P<j��!�+�V��;s�[߲�LU�D�[�>(.����"'*η� ��2�Ʉ��lKʧf�i����mtG !ܺE(ntB��%udGŵ����D��'.tJU	!�鷿*%-)��hM�Q'���uM�]˞���Z�qۡ�Ў7`P�E�8m'�:��c�-�*��?�]�z4��K�<�NMى�yv�\ � ����_A���e��p��R�
�U��@x�Vr�G�\�Cī��e��6���,!'L�Fm�wsQ{��1*����|(���B�3_�m��m(9�P�5��o���`o��欔�:�No�ԂB�HpS�(J�:����I.7,��ǌ��q����?ͱ��.
'� Q�N�Ɏ�C߂&��2��'�G�N%�D��. ��H'���h�\}$�����ʭ��鼶ӱI�wf@����H�
sS��{��+�U#\I�;��s{9~m8�J���	8���0d�8�iKW�/�S�����$�\���\��;Rh�<���I�������֧=Ј{$6����#�诣���%���JS8T�7h4!��8�J��F���.I�%~�،�)Q(��Ǝ2�����`�Rg������ ��Ps�-�Hy��vÂ���DN������MQ�G�T�%��-vPH��t���L��{}�e�D�y��gX�O���e���c,|sȺ�ՙ  3���~��p�m}۔ ��������l�����J"�0�L����0W}�pS0F��p����{1�� ��k�	�L�rc>��Y1A�sa/޽���t,�}�z�9�f-!`���[cKW�KP�[�)�����lЅi�*p
�7��
�@|��`�����hJ��;E9���[�q���#Rq����̜�(�kɈ��g�{Pn�Uﾂ����6�2w�J5Kѷ�V����}�ӛ"�ѷ�y��M�!@���A��׬)�����&\��Pc�]?�C�)4R@.i J��i={|r�"p���U�*���	K}:��+2��oՀ����I��#�A�o���I�Z���@B�P�g� wO�><y�V�LҌ����D۔�����4U�����ǭ��f��6��̬P�]�<r+�4���8U�JZ�m�]�0�{�{]B�N�����P]P��D�٭��1�|唉��w����KBGƩ��12a�8�O��Sq�}Tv�Ƴ@�UR�Q
F�߾�4n}\MPl1�������&��N��ܦ&Ɉ	'M\�E,���v�$'6�Rh�(���᥼�&���������`v�Bi�/��t���s��I��I����}�oZ�˽?��*��l�x�Nz�3�0x�L�R��i˨���B|��[�R/���C�� /eB���/*e!%˷?A����Vo�<AqP;+��ԕ[2��{�-ŷ��+?5&��Ak�cv����㶟�k=5�t���i$��Z��
]
���L"IΣ&�����"	���7�J�}�|)@$9b�{��`�lC>��&P�yx�Z^~|����_�?�V�� 	{��������^z��cw�>�p�E�*���L�����5��5�v�n�)�\x�DY���L�-���YZ�6T�؜sQ��E��]
C�Fr�Nw�>1o�����Ӯ��_��X:bN9$�l�aSsz���U_R���h%�m��oѷ�8o5^�Z��V�w���j�\�
�rP�NS\�w�#h�r��:&Q�S~Y���n4�@�d��c���2�JOXc�_0L���_��%�nj�-�x�:z����a������*	�T),�8O X�I�,İ�T$�|��k�n*��%F��B����(Ta�"���m�V��|=����y��m��25ﳒ�-%W�nP�Ud<��J�N�bJL�-�?�;�a��xi�Y�ǘ�Q.���9�.�X����|����YI!2��"򪠯ʢ_���u
1��A�Fy�d�[�t�����Z)*\�6�yd�H�Y�0�r�v�+\� $
Ш�B {�Ƀf-ߌ�9�I�~��$U#H\~_QW�˰}��ͳN�=�.�I�iP��d.t9h� C9؎Pqsw����Z�A���W`��F�H�'r����^�U@R4�2��6�����2��I-k�ZGjI"���n��Y�D_Ԋ}�[���A�b�#����~�b��V�����}O��"���S��/��F�.X�н;��M�L
�Z?��w$l���UG�\�^H��2�~�Ȱr=�R�Yk)�Z��X�r�M>���t♑���ß��}���3��/tѓ�JG܅V�E�Z��H�_3��9Ǽv]ߕe��UO��I�DDE�;��h&>�e��VN��V�$:�� S���Η��^����;e�R_��jK��ꀯ)��a�V6|�B0/�?OŴ2�k�H��MS[~��R�Aa�!����r�k�1r�MCG��
I��-��Q�~�UK��h0TO	�f_�>�ZQS���~{��+�l)]ht�*.P�b#�f>�jIU��Ҹ|l�QdU�f���DRy�
��D�缯�ur���i��a���uӆ8=����n���;�Ѽ��Lߡc�QD7>��ç�|��A�l(iVV���ZA����)���[�}]32�$�h��P<+�2���ux6���oF�
ɞ�x��C�%�<@��,��-�i�K�+:orsd��*X贤���s���S$�g�|folH=��IN��f���f,�g���WF	��{1e7p/���*���W����������7<��      �      x��͒뺖&6����ꪈ�Y@��މ�37��D]J�:gǝ88���	<���3�^��[ A%J:���s��$�R ��o���|n~t�S{��Iw����n�ؽd�����--�D�eU�	���M�
�E�n����Y}�tǶK���9o�*����]�Cr�����|v=���W��6���>_�i*R��l�1+��~6������������������������F��ؤ�P��6Y�	�e�l�~����ɵ���}�.��w�͑���ds�K��?)��=4��XS'&�$�n�6�z�$ۮ;5}}i��~���G���%D�n;7�R�_��Tg��H����Q��}�m���;�����}��EOL��ɂ�0Ms�ή�BJ1������G�{�'�Gn�Q����H�듟]O�>7�mw>���{���S*��&�g��f�ҝ3ݻt}O7'OiZ�s�K���*V�.?�n@���7�eZI�9o�ǯ�� ?�������5ɡ�4=Dz��4�urn�?hӸ�������͹=_�?���J����9^�cM����>7�5yK����q\j2K�����'4�ۮ�U��2��ɾ��niq�ͬ�W��\V��(�U�Rw�K�%Y�U*��g
�ݑ�q�<v��)��a�_����v0��GO��MS�B����}��O��t���6��M�&^�h�=f��&��t��z�<�D�Ӈd�v�����
���JU�9ڂǖ��Q9���X�S��x%��|�0��pr��.�_y�ԇ�|�!���ϼl�[zZxn����u���w�f,�
g�0S��7���v��&�.ԧ���E�@��Ҧqؤ�e��I��+gKҞ������.d�Q�3V��g���qo,��v$o=�i��\���wK�Ǒ�ήKp��Sr�#:Óv�����s��z����	]�%mX��%`�ꊎ��D��w>L��"ʥ�ƾ���{�yho�̖L�'�����?�==�n�>�c��GB��a[�}��l�]J<�t�_j�}��;oJ���;��<�
]��M�Ng�@��z������T��Փ�^t&�ͥO&��x� �v1�w2���S����՞�w	�H�u��A����r�h�F�OZg�@���Hee��Q:]�[S�f)�QY�2��ǝ��Q��Y~þ�%����ç���.�i�����D��g�|�lE�C��0g8p(�*���l銞L�Nt�͙:��y��u�菒�9� ����~^Г,��3:?Wk��r����a�[�$�Vhr�yke�a�*�8N9oM��s#_'�9�qEÊ��g�ۦ�����qCuψ��>��L M��C�vp#�XZŸ�x��<�a/V���x�&��8�ۆ4��dT:��Z��9tg�L�7��"%iD�c��w��+:�TBR�����.�5M��M)���Iࣧ�~5��B���:<�2_}~�x�� ��Ę$�n_'I*�V�FǬ���X��k����0x9��
��������{��^?Ǔ��I�!�ʳ,�����:��i+��X�"Qw�����T�*�l��7R��FfO��-Z�����gMz�_�������~�s}�� �II���4���Z\G���0l�_� ~��OK�r���,~}[Q�v�S}�w	M֩=u�����.)�!�V����'����?���ÿ�ģ'����w��֛��N:�VN"3j��؂��Ǜ7��z���gC����&�+�@}��"i����=�};L�a�� 4��|vy���$L�LQ���f�K>�d��.*�$)��g-�Go��[��]xd9���Q�!�jI]zn�3Rĵf��Y��͎��Ϲ_�d�3���y�Х7�Z�VD�7��(4W�U%�7YU�݌x�J�[.�p�)�"�~�.�"A,�9���y��77���/�n�]}a:�p:��lD2�ѢӒ,
m"���6�S��]�C}���v�]�]n�'��xL����6]U��F�~z�1U#�nq�2z���K1���v�	���S�G���/�����.�J�z<'���f��H;�/Ȳ%I6���X��69t��`rh�I�B-ϒ�Ѫ����2Oݧ��}Ǧo�eF�n���7���Aa,b�m������N[�>vka9(Q��eӶ���7�5Z���L����A�~����QT�*��o�Q��w�̆ub�����]�W�cF��1C�|�_��BJ9�1GZe�-76���Np�Q��`�Zä��������,�����]��Љ���oW���78�nn0�󃛽4ڪ0�����!�cK�I���7g,�mל���ѿ%�鄉(��87&A��2���� �&9�p�ѽ�@�$��5tғ�\�R�����T�s�"B��IWV��߶���)��Y����C�gs��1�'�{�m�ko\�4G����G�h�N������+j�-�:d6ϯ�=s��)T���:~��L[�Il)�������i���&��$ˤ�q]A#��N�y��+���������w�wZ"��|��t���B���}�C��ǖ�:�rU3��tn���z�ё��m>�=�3a��y&�۩�h�H	�4�urp���B����e*��9i��j2}a���]D�<����b'�ŀ����L�3��B{K�{KR�W�nt������`6�+%��P�<d��/6�����ך��H�>HQ��LJ�C�K�7�P%ϧTo�Z�ʺ��2ʒԈ^�z_�9I���'[�t)�b4-fĮ��1��d���ݍ���2R�W}�ﵦ�s�C�5���h�K��G|k�d�TXЄ��N�_-�L$��d}����V
:\t�'�j���%uZ����hF�}���*T��݀G����1J�1���-� wJ�~]�3��Im!�ƙuJ�����X:��,�*�]�B�}�ni�+%�nQTe��
S�C��*���
�G��~+�,c�@���j�w]� ��.�$�%x�vǿ��Q-�&�]Iƃ�o�;w�sM�������Ӷ��6�#�4� �\{�`�q�w����/�S�ۦ>{HcE.#2��H���x4@&e[>u-���#I���a6}��$�ś��z�K�z1~��+��H��E���#��?��cs%щ������׮=�'a��c�μ�yqEj���;J[ks����i:���g��k�Ҧ{��8�D�PNI/(g+���7�����[^��M�@��:U8�
�|x�fQ�*�k�3GΦ�&'��[{�](w茛�7m��9��f`o�IIR\�B=2�Q���/����}�hTF���Vxѡ��|5}�w=�{����˕�K�E�����CN�	��]�\Ӌ3���������n{�֨�L7Ȥ?a�cY�q.)74A$�WJ�m��iIt\H��B5�op�F�hdq�#,��3/��Ta��Hy�¼n��鯡�AO��i��6��>���}_�4����+�B�iNO��xf�m��lN$T2�KX0S����R�b������wʌ�l��~��O41ɬ�ua���YF������`����9c�2���x���l�w-� -�kk/�v�	A���jl�۾=���:�3���U,z����
rEOA*����!��ب������(%�F/����"�� F �\͡��_�8��U���u�������7-�]��������h����+��4�I�cm>��#o�f�L<D>w�E��ӏ�ο�fߞ��������_uw�`�<�R�Q����89��7<̕�l��GG����m�#�~]�iQE^f�P�ZG���	H]�@d��w�Fϣ%��r��^�P� �Ѻ��A�D8w}��ͱ�^*ikv!è�!��d�bh�;OΊJZ�e��&R���8��*T��2ip����ߎb��QGO^�	��w���1��f�
):��c� ɣ��7˻���D��B�&�xr	�Q+�΂h��Yt�W1��Ì�4���h�C [ҝ�z͵u?��	4���u��ƿ��3vc�F�,-s,cu�6�h�2;7������[�*ls�ycoغ����i��ӳ@5�Jm�7fX���5��o    n6Br֧�K�qe�ݶ���[:�!�ғ��Ȅ���U�G]��_�\�MB��op������]]x�a��a?�܈� :�a����,s�t�-���xJ��9,���b����t�Vłۙ���=�*���9�R�l\"Xr�Cf�-��Z,k�"B���wdw��6/�Y2�����7��$8;��b¨��$���Z?���^�l�S��Q�<��t=�a��ڜ�S���
Vz�n���Q�(�O����8
����D�1�б��#e.���N��t3��u�����-�i���c�1Yw�6slb [6s��s`o��B�7������1��B䁮�J���|��+�JIן��[��/N֕�n=��Pvb�y*�1�Lz=�-m��n���᷀����W�6+�9�:���0rW���9Y��L�x��.J�o�7�}h"�qߝ>����<Z'2��a��Z�v�����R�'z��V�3�,؏-�c��)xs�������/U�)�۵޷��?bKqs��|�y<4��g>�t�D�\�μ���7�4�N����l���
�<Z$��s�: N��e%g�HY�i��4���&e��2ᗥ@����=��j/H���-$�n�@��mo^w�J|��i���ѵ�����L%��B�N-�g��� &Z��!��h��:^�و14���:�s#^�c�9\��v@c���}{U!���|]k$HIФ՞��VB�~�锯��Y!�4C/�*��Ht�ip�-HAtՄ�䯅d�t��`��������υ�?�x�(R�YT���F��mX�E�~譳��Jї��2fe�j*4���� `�f׌r�^t�h;� �0��!�4v/{[cJ0A��Ss�kq�/���>�T�+�[��v��, 1?^Zh=�S��w�Qs'��d/NAn�[Ļ'?���$N�DݝV7�z:��2�Z���լ��
)�؏6,� �`#�yr�1� 
f�4�8�笖6e�D Vo�����^pf�2�:�hS�׫����<� c�}����|��Y��r�hf�O����(�>g�iUj�j�~�78��E��cʲ��.����s�հ=���}&�e��o�"e!�ۜL�Щ�ץ!��I*��� ����  �4�t^���Q�$=ͺc8���)�g�a�f�x%�c��=��F���(��&č���[�nt󓇫'���M�C����EC��۵I��6�NVf����0%%F�N!��X���&�n�%���H:sg��`��Ʃ�+H֬ )�R��v�5��@V[�pU�L*�]J�f��L��T���H**�mix�*�zxf�TR�u8�Pzt�W�(�C���_�P�1��JSxJH.��mѭ���"��b,-�.���)i2A�C�J���)��g6��v?�v�@0�oc��\<���ҭL�����#�ٻq�Ys�e݊�S��p�}M��(��� g���n�:�@���ԍ�M)��l�:�m�B�����)ƾ9z^Crҩ�
�qV[�c�˲w��}��W�aV`�������rSm�]�
�M�X��bV�����}��jM�Fo�_�E�f�:�׾�2
������F�SM��?�(�\��gE,D�J�B��<�9+�7UT&��ٛ(��ś�8"nƅ�A⼋�1�:�N18�xz��t�*�tx�l��rò���k~���S�/w&�]&�Fq��!e�(Ϧ^Ұ��?��m�g?�<���N���8I ��� ��}Oɒ��!���?�`�TI��- �L������w��?�˔����>�#��s�Qw6������=�[�!6�S][����}�-K����q`WWx(T�LgB�y�?�[��+����"3wK}��3^�[)�H�9�����iF�_�w���0Db�w�$[�de*�(#Z+"ۮ��V�������D��db�2�Y%�>�o���+�W�o8hv|F�%d1�^!8���z��+�Dd|7��m�VB]Aⶭ�-U4Aa&��3�n!�$�0$�@3(謴y�)R��(Y&|lv2�Q����a�A168�E�*�Sti	���^��̭��vV�A���Z� ���,~^�������R��OR;�fGQ8=�B���<d������a�����.��9�����������&���H���zq��8͑ZԍުqاH�H���`S�^;d�7�FOU.%+X)��v�����?k��o�Y� *�~ΉǦ���8X���6��?��Ϧ?w�d���ۍ�'x��rt{ K���-i�Je���MGw�p|��9��PJk*b��7;��E�*r�Ǻ���{�osÿ�`��(�q�/���Doz�o5s�܍��U<f�&�L��f��q��I,��������Ǒ��� ����+)�AS~0�p;~,�
zs�Y6-�ODD��Ǔ�(�&;3�vk�C]!�4���`n1�aUJڇ���8Ɩː7���a`�{��:�].�Q�� �����p�Z:ECܐbs��b���^��Ŕ�4]�� s�;��,͐�S���C}������v.� B=���Cr<g	&��0Ge�*#-3q&����?2��;f���?|��������_68�\N0
Go.͆(��s�b�xPz�P� �*�'����)*�X�[��������͸gUB�����w/�l/`o?C];ھ0F�Y6��Y��j�2R.��&�| Ha���9Ա �c7�$����:�y~���O��vh{�iF�D��ۮ�O����G�Tz	}/�)ԅT�3}����BH��IX��ɝpߴ~:�����������zmi&����ܧX�Y��G��=� ˎ&P��whʢ���WE����g���c�yu�.�y�z��YV�C��"����F���y�� ���l���2��uh�8��o?�Q�zfe.���0�z��1w!��|�=�KPHԱ2z��	�L�G�Rz?g��7��PY�4�����:s��v�0�	=?j�:E�MP^��j^_��Zު�*���lH�w[&�����OR�If�o�m�gy�皘������׾�SEPF�Z�w��Ve$�,�w�3�;�� u����7*d�t�N��A$��!��ʀ�-U�f��i/������q{o��_�c�)�L[웑�X�T��ai�&Z��R��,�F"�vx� ��f�R9�n���Ҡb��w�o�oz�+v�HĴ��z����U�$�9}E	/�(�x��u�%!�[nX�kS'}�m�- P��G(��ܑ*�Byh=�����e����c+:�^���<�E���[3G���Nz��/2��h|���&u\j;+�v���`��h(-�� hዴ������up9M�41�%;�4zNSI_�	�w�D;�u���{����,�z��iU%�ĞN��0QN���T@��+�W��M�� m+A���
�Cf/ �r�k�	jB�9mVt򮷇`���S��nWƲ�o;6�I��}~��b�>Z9p:�Q����Vp���#���	�)�km����s���?X'Z��\9��J��
�.)Y�oYF"���G�@�wl�PՀ����jO��C��8����.�w�|!�� 2uś�-<8���]K�0M���<��/l]a���j3����pQ�;YJ�]�9�F��G��V��S��T�ɾe��[��n��ռ2Q,��&w}�/0"Pܑ�"�TV����]�['!�[��r�L%/�իE��8Ee��cj���&��c�l�L��X�6u `���	G�Z��	���/����t���b�Pnq�i.�Po �rQ�(�@Ɔ=�f�$(�9FG��,��O�"B�0��`���8���H�	!��t����.�Ys,�9t��DN�8�Z��B-U�e�1}��� � O	��I��2�0eo�'���7/)�X����«�a�^CxBP�4��д���B �&�3&M�SA203��dA�-=�oE1�U��t��F�=�O�*�VYX���w�<�u�mo��] �/    ����%��3�GHZ����1�<,2��xE�g���<����?��kK"@���|O~[aTt��;Ӯj�l���4)��\&�sT�:K�RT%
��G2���w1#���&��%@��z��u�|5�f��σ�'e��caMՖ\�wW`Au��X
�Md�����A,3)B-D��\y?2!��	�o2~�'��
�o�+sPX���=\Q`1��w�﷍v?�����w��Wv�ʪ�$W3K�vm8����L��b3<`j�b���R+�8�A�KO�N�&��vU�t���C ���7]�p3�J(b��K�: ��SN��A�����v?���SGw��Ƽ��yl��=��~6H)��g��A���pFͥX�{��O���q'����-�+�t�<܅�pE'}0�s�a ���MoV�~��D!���n�����-]o��U�nY�3Q�v��*U��d�;�V,����^]J�D�v���	���ҽ�Ah����1E�:�/����HY��>p�q��jM3��3�N�,�Z( A;��aK4����N{�qN�<{U�7.��N8:����'�N))��y}`�*���Ȇe9x�QW�����΋,/8"N��e��K��| 7O|��Xr1� J�pl�}�۟��$m�O�c���?�lq�t洟�b���������	�v����&Gv��-֋��<6 [X {̅�E���b˪��X��x���9w!Z�;�u�R��7���9�/b�=K�=v�:9$�[�E�&f8��Qj&r-�����I��Rg�ơ>"�l�-P�i�y֊����j=.e��Z��Ɣ$� %˨���M0�&<{F�xG_�(���#��J�,�o�X��Gs�g�����~F_�n��{���cᴯI��ſ�Ŝm�gez���:互��KT:�Y^<������u�o��8��E�l΢��#]������rF�u��q�'���0���%��jV��3�g�k?�M^n��WcQ�L�$�4��YF:����ٖ���T�wЦ�����Ȧ�n���,svI��Ǆ���]D�F�ow2�G>�'�x���w�J�NX�ث!����*�m?@�b�3�('E��4v�R��B�\-v�@�A�,3���Q~>�˂~k+h�� ���p]
@� =�r�Q�J�`��g�%cN�l�,,W���BX'�����8��6Z/�_�a���}����_�`q<=�y���@�]qQR���(;�������no76:N�E�j1�xޯHy�Ͱh�_XdROYP���zU��!vT���h[��Kۮ�L�1<(���E�+" �������E!s6�����UU�ْ�)��Z�̰I{�k���:��Eꤷ)Kn�z�����J��Tx��S�<�N�uǻ�$�r����7�RQ�Y��"�����+��u�R�v�Ǭ=fb��Q�󡭣��ۋS�����I��r��)I�=ީ���=͎(x���}@�L/W�H�-mt���zl�Y��P����l����cV�5��4�͑��t;�[�}��/9�P�*0�m���?O �����>�83�r"y�!�~�*A�z<Z�MIU>^!U�fBj�S�Y0���>�f66"Og#����z���D �z�r �b��Z��S�|b��x���""���QK�|�4o@��#lr��:iv<��Ղ�mҧ54�i�k`j��y�,�a�[�j��&t}�%��<2�PL������`���Osm� �<ϳBg��*�ќB,Υ��/+� �)�渜{p�i��^��������E�~���!0�.���u��#���0�rK���x;ң(Ӳ0%P֣��B3\ Q��:�M.
���zHd�1�9N�E�j1$ڿǨi4���^��*��n�<�C�v�������������;��G����6cd����'H��J�|5�h�L���Jc�6�xG#GwVZ�,~��k�m`}���4����$��H�A�/<����k\���
=L��o�~ [{���4]��,Lq.-%�l�	1�i���2�4ׯ����p�M��b3E�&���!SH��j��\�ez���]�i϶w;������ ��������s����;��[��[���8�F�R��ؕ�+I�RI�2Y.�|&���8�R�B��.s-<EvtIX�w�ֲc��R�	~%s^�S�Wx����-�&1+�In-@dH!M�����ܚ��0g�Q��$,�Y>�L�e�t�Pa�\*9�y��]��1�@̰O3�A�6����q����G������z��?g���u�����D\lYa�9*vq/�s�%�ߛ~#�<�#I�bi$����[^(}O��#�ȧ��}ǜ��-řx�YA��0�'���T����=-m�<��+h�reh���� 9��U�L�UOb�*MT�6�)����4j��,�ЊC=á���-Fۛ������G��^��b0 r�q}>���q�RS��Fӝ��R��M�� ��[�ҹ��վb��\��g�U�sW�v�ު��NΰM-�6����"Fu�6v�Z^��j���T6�{�ۏ墯{����:apE��j~��5��T�/B3 ���r�lܽW2{��ޫ�}���,��"Kp�I�K�!�g�+�p����G�KA�_el&�j�-H�4�ަ�N!�!�F�<��.bT�S.���'0�x�.�ſ|E���3z����N�hh �-7��fR�bt�X3���!�E��RAēT*�Y�7DK�h%���$^��%*�,�̀�r���ya�̵����ZI���)���^:bmy-��+�RH�K����,�<+�����E��*�!���]^`�lKk�R��	R�A,%I3�me�B:���-���
��������ԔUT��g5!:���I����+��ݴ��Z�}#�Hec@ÿ����T�!�N�tl��$\:�g-���9�8T�)m�$���"F�M���ڼ{O}�Ǆ�^��J#!}�w�������v�R����h�}�7��M���mPF�v���
���y�|���F$|~lr���8ݽZ��>>�	�
^��]>]��]�ivga�D�*�}_� 6���<�^Qnf����j�&Gr��Zӎ�JS0,�R��#������A{�]qI����4�)�끻�Q����,��Z㿈���ʎ��Z�E�ٱu�}˂fn�����z:dh�t�A� L�Q����:W�L-��.�1a��Xr1�(~ۤ�)��"׏�3�iXL���q�^hE��������4����'A�,�	����&�[tΰ�9�������$����������C�
&Qȹd5t�f���Y~<M�ׁ$�#^�HO�w�-�|pc�&��Ԙ<8�[M�Er�d����2� � ��78�c �b7l�V��&nUX��jD}���c�]D�3w���0�!C��$iӘeN[�{�[��p��>���u�δ��ߋ�$����]�A��6Y�o�5g�5)`�ug���2)d�e����������X��I�eқGh�s�>�����v_�l�IJ@�?'�-�o��9S�r���6���Ya���d�>X.8�w���s�>п'�K>���]��n�z��fD	X�}a�T9�շĂ���׿�
df�^��ܑ���$i��O������q�)H2���*A�gYT�ЌO���Rs�����]D��ΦyO�ҡ�x=�gN�L�gߠ�����~�l�"{�N{:��#��ą$��Q���]�C� `^q�h�ڎ��9��G�4G�wQ�;x6�Wk��{�^�$e��^��!�~l���8d~?p���hsq,��f��#�ɭsk֣���S���k
�uj��Ww\���Q��t{ɤ0f�-��z`� ���;j(�J>Bo��
!�|~�UU.��JTˁ��+��.a隔���;�E�j�Yk��h%:^p�^9�*�5Z�V���L�9���7_5"@�T��n�tS\�ř`n-�.jV���֧ �2�*K5�POT�����*г'��    �"F5�a8޽'>�#�o��♱L�~@7��� �9@)�o�,I�����L^�%M��<jZZ�Y% T�?Xg��ͮ�,ͣ+0�h �+w�Z\Z�n��BŊ���I���z����s�}i��,���l]���y�%q����ә��0�B��P0�?6a�F�@��7e�ǥ����2���{����T��&�e�L~i���-�C�Y-�=�9��N@zX
��1���J�i��6�9��_kJ�q��K�9���Ii>rڼJY��9�W�i��(m���i!�7X�7����b�0�x���k��54�/�<��L0��1m��H���T��Dj��n�[��� �Zo{_Dsn��,[�"F����J2�.�9���+�g&�ݕ�X~�_�K��$�=@���Zg�3����}��B[v{A
�_	W�Z�\U�ֶH��̀X������B��Ҝ�Մ�^잁I��l7(p��;����K��VӢ1L3P� ZM�*�Dܖ�W��(4�ٸ^S?5�(�mǗ��-�)M{���{�o/�+�����kʅ.�7��%eG�_Y�I X�G�ق�g�(����U=��o�}Ǘ��Qݪ���b%w�ߞ^9�9���u{v���(�i\Pp!#KY�������/�,���i�}��-J���Fn^״@�&R�
���]=mp��U�Qm��K�	�w�^KȌ?��5���>��t""�v��W��+3�YoF���P���G<\ ��D�&[M��ʼ��Gw��������g���p�?cL��!I��!���rq���e�	8�r<KGI�ޤ$�g�c�=6�+�⭒��Y`&6���\���p&���+,�.bT�K�-H���o��X��qK��~�\���6�[m�7/��YT�#�*(��X�dI�ʞ>���U�n��t^�ɦ)\�3�.bT;�kh�Q���[�c8��q]s���T��OE1M�q��L�����M0x�Fو_�	�y>Aї2��A	��@����	!�!�-��4r7���H�GV<�nt�Qz�._��0��ؒ���#.C,zsiaA��&n��(�cB(4l!^xs��J��#eD&���6Y�JgO���mǚ����LR��x�].҇���wj�h&ar�w�W���s,6vf� m�Df��w{4"�N�桱��땭M9�ě{Ǐ�T�9�(���Z8{&���A
����r��d�������o���`�V��?��xo-��Gs�l-J���g��ת8�*���Ғ�<�F:�N��	=|SCL�&�@]��)��F��P�4���$!�sIV�#U�F�^s�;�2�����.���]�l�y�lÚ����4�rgO��{j�Z���ȹ��eFj�TIC�J�L�Y���y31-��c)�c�c�]D���.�ά$C��zQ����f��~����mH%��[aK@l���X8�Z_"��B��@~|�s<���߼I�/ơ��5=�E�ݢ���Ǡw��<�Z�c����6��dw2[e���P_�=��Gn9.t�U�-�'���6D��G^n���kPɅ��$����I+!��b/Fz1F���{_�[e�q۷���WC[�?rm��=Y�g�8�B�"��g��Z&�&�5����8�ߟ���Qy�<���A�<lO-��-�!�ػN�!A���|{5�i4���ݠ93V�RǚV͈i<=3i�J�*F0�"��b��Ǚ��Q-�faOV�q���ŭ��X����4!��3ߋ�*�@�b �ޝ��W��Y,�=RMr0��L�g�2�Lӣab��KR�ފ,���ߦ��NQË�o69�!���0��.bTKP&a'���`�[�f��R;���d�·m}�l���=9]?�G_1Զv�w���ݶ=�1��1Q�MN��2�|:�n�g��\:ة���L�w�VҜ�������wp��PxM�0�	��\�C�/���6ǣ�X Yup���F��ת�]Y��GO����x�4�o�څ�u�S�������䎈���6?�M���`jp���\�^�X��Y���؃W���ӝ�2y$4��|d�]Ĩb�m��!K�nO���B�E���Wt����Q^d�6�ٍ5�q��U��S�ss��q�Ƹ��\晔fc^/>M��3 ���b�)*|��)ٽ�ްk���P�۫��<�k�����Iر�6�y�ņ��={;�g���B��6nuN�l�S NA�ٻ���[���"F�h��G�y4���)���t�C�0R�������N��ɩN��o5͚b���zj�Ι�\��6��i8n�$ҵ��3EVv5ڐ��x߱�.bTS��5�y���������"�˅���Z�ۮ9?t�z���Gl<�<-��T&��|<�yrZn��ö�C��_Y}�n��+G�q��~ۏ�؍n<w'�Y��<+b!nn�:K��X�N�q3<	h���?�!�g�Cŏ�C�����N�|1����Ow����� -WSF�w̽��Y�m����0|����<�0�f��(������Gم HBd��E�x:h3M�kQ<
�(�VϦ,T.�ɝ�8��E���O�����~�<`�)��pφ�ҁ��_�ҡ���zgF�R�=-����+��|ֈ�����g:$�K�/L_�l�3TU%�{Y����]#�7Ң*��Mw����x��][Iƹ-��1i����8���ѹ�%���'������$e�P��bP)��)�U�3d���8ZB�[V�R���pO�@T���op|����V��X'����/Oj���$�S�m��[�6eэcqf�q>N����nD��U&Un�3�o�+�NK�M?��n��M�����͚��"N����zJ�	^�Nn���!O��ן�r��,jh����+���������m�i�α�0l���!3�u�6�_ˇ���*��̘~����@��"����r�:I��r/>�R�ԒG�£�F����d�3�������p�����A����]���r�س����t���\��lߓ�k����3X�a#fQ���3j'R�i ����X
	���0�X��X4$��U�I��:�68��E���4�sޗuT�1^/ˤ������ɲ�,��T����Y�9��.Nڴ��႖4���q��˽�!#i#y���j�d�K���v����F�s��z�������)gL� �?�Kg��=��4��m U���**W'��A�ҕ2�2aJ�WO�����\��lh�a�]Ĩn՟��_I���W�Xa��f��")�����*��9�L�S/��@�C�l, �O�ӿ�>{�	a ��jc��>{�F�pZxݴ8��E�lMY��޾�Q(~{m�*[�Ũ��/t��N�l�o���fi1�,N�# ��PU��G�m�q��o�Xw�=6>�!lSe��DL���"B�'w�ܢ�Qැ����e:���v$`]k�-'�ߧX0ه��r��ĉ _[J.��i.���,�YA	%Q�%+�U
�<$d��48^�E�**��z��P�����G�KA���
������H�)�!if�]�����=j�َzߊ�����TcN�L�r��]�m�7�܋�>@���?��i��&Q�6�-���n8��%=�N3O�Hߤv�nc��/�fENG���p�^�v^�J]�䚫'�{r�B��)z��1�.bT���������+�ic���n_s���x�q����,���
����Z���|nI�X'���pb\;aqk�_'Fư@�S��=�ֲ�T:����1ulp�����0:�z���}���^�,ee|?��Ϧ�+�T4�!%m�ň7�-���| �����ﰂ�����.��dP�T��|8_���LE e7mp���(����әǨ���|�d�&'�z&��-v�Zs�ZD��`����c{�I��M�?��)i	8�*� �8[���(�9I��(���^�c�]Ĩ���x'VQO��˥TS�����F��i�Yj!�kMWE�*�$��)C7jM�⿳B��^%��rS�Z��wl�    rC���6y3'+R����i�ZФH��k�3~����o/��Y{u}�R����������޳�U1�c�V*�Z���k5m�(�Y8l���gL.�zk�3���KzS#��G�۟��/�0Ow?�����p4�{���F�B��<�|� ����[x3�K>Z:���y�)㘲��v�f?��缐>Y��1j�z��o ?�#u��'��,��E�#�q��CtT1��>��j)�cֻՄ��}����,e�Y�=�1w���9a����!�#��4Ff(/AOP��tj�7aK��R�	�Slx��GR}�t�ȼD�i�c��	��'�o*�S�~3^��_��'rVr&�xz]Ҡ�m��qk&�<�J Do�Ȍ�㶡��m�.nK3e�*���Uʧ+�,�t��΢4}�w��8�]���*�!iee(�8j�{��bnB�O��H��pp��3i�/8��K"��������ML�A�m���M�18E�����ќj����[XZ�]�ׇE˸[�����z�,�h �
kZ�,��48��E�j濊�f��׋�l5���w}s���$��K�����<f-�pÓ��z@������=�%{�|q�XU�[<4s�͛��i�j��tQ�����jB�9���Y��֟��ջ�;��_�椱�f���?ը\�XB��WI�4%8���t��E�gq5�48��E����:�h%:���:K�
˦�QQ�C8������;$^|�`�Im����ml�}���Z��.dAb�)�:,Ň� f��m+�-�gk1og��m~{�l�(�⡐����i�HX_���p��V�w�����n޿��M���.櫔�zR���Sc��A�2ӂU�]������|��(��s��l���{��ye�H[a}ݵ��4@������m����K�{e��c�����az���߮�o�Τ�dJ�,��x��%�V-NN��Q�Ya�T%M(OZ�M�Ew�@8����G+H�-ӵ'�c�E�����-������mn�p�'���E��~3����VQV-AiJ�
׋�,��2Fd�q�z�	S ���J>`YD�Bm~v��m@c �rj7(G\�_Z＂j#���"c,���$�"+����y�c����]������έ��0����]Ҁ����'2�D{e���c$Wc'�v�m��K�C�mŅF�h�+Cl���'����������WK��$u��`�W�
���['H!᭓�h^�Б�6$����� F�93u?Q��v}pI{�4���^t>��#�
]\Q9��U�llǈ� U>��c�BF��y��%-�*�gpu;��b"%�:g�$-�7����b�б7�Ч�t軲�p�<+�بǏ���>������?�e�K� ��Sҙ��ٮ��̴H�~��� ���u�.���a��HRk���Ƌv̙�߳��;�)Z������s]��D�=�q��c�i#%�}�Ox���^zT��x!��Q�x �m�-����J�e|O�{>i)�^���"��?���������wo�+`���m��}�6��6���q;�3�6)�F�tAg��pfvWZ>�1`��O���EQV�1+>�x@j�� ��4���=���у�5T�Q9��E�ld������-S~'���k����f_�����Y��{�����f�҉ �N��J�7��w{D�j�	j�e9�ݢx<�� R��7������]Ĩn�Y�}z����8�5�Ms��k�_i���]�aO��>(�J2��z��nh��ݾ�<��~6�R�����Uk��4�L�W�JDȼ��I�[gM���"JgYY��2^OV�`�ϔ���DY�b�&=�9���Э�!Z���U�H*+�<���"�`r�p�'����w�����xYu��@��!��e4"�� ������F�O�A�?���g�mP�Ƶ�|�;H���]�5O V����
��x�]��g�?�:ZW.ŋ��31�
��Yj��V��Z��"T:�^��?z%˦msܺ�}�F���P��b֜M>��˨�<�vGaƊ��4�b4�1�F��5����]�_��T�l�Q�}��w��ߋÆa�EX�ϸ�*�0��N zlx�A��q�]��,k>����ԇ0(Zd�I�j��_���ڐ����`��I{$�>�;�JgV�����o�'_p�wt��; �9$�E}�x2��F+�v4���x�*
,:69��E��6|ټ���c|�3^�@T,���:>:V�Cq?l��ԃ�l�(��ßu>�j��mP+��UYT�U>T.�J�&�WQ�5x�"����=w�����L9�,ԳՄ�j�HW�D���Y�Gs8���Gsl>[ScHh&5}�o�p����.�m�t��W{Ks]���Z3JV �o33�x]������>�t��"F)��zeu7�-�e�^]�e��Jo �5�z�X��4v��A�7��[v@�/�:�+U�|00(����.����ē���y�����bp)3�;�K���:$t.�,��K)
H}�~����B���PۏkhS�2�6i2T�ګwZ���6������si�|�/lp���(YG6���C��^0�[l�#�6QZ��V0Z��sCҒ��^Ev{u"sq� ����-雏�����mV�tc���Ls�̍B��M����*�H%ѐ��r��@$Ua�l������GΆ�+�d������ehq?��(���$��ǑK�m�q?<����Xzh�k��k{�,~ʴ����,�)��%'�U�SKO_�&ˬ4�S��o�.e�F 5;ҭtN���u��w�ˣ����ޔ�������g�E5���ݧpf�Iַ�P��T���}�@��cl���=@������+��i��h���I���:�ϩ�Y���,؇M��]��}�6ǡ�X 4,z<��:~��Р�xa����s!M&@��1�������
���2����d����B-Iz(�JC)U��QQC���榔0dW��9~�?F�M"iX"e��c<B�����n� �E���z.'K
�ů���@r!��]%����p=�Մ�����bu�(�Ű�L˼��Di�NJ�;��[�|�Pi���o���"B��;��wI1x��[�)����Mۘ���錑����H܅X�����Yo����`�8D� R������o �v;���D�䯇%8`�O��,؆��]m,��sIڔD�6)������Q'L�H�R^�:Z�����()N���9tl�)��c�E�$JNgL@u�I��.��k �0������'��Yn�N_z ��/���B��u����T�Qr��ߔ]֨~7���;��E�j!{u҉54��^ѽ�q�z6�S[_��h�>hcL������\�~e01l�n_w�G�����\8���%��uc����QXσ	�e�^:vsԖ/Fn�E��q4A?���O�=�7�*<��V���t�6Ǧ>'���v��o�,&�*�J�'���h!Dl��.�4�g����<���`	��J8�r��&���"F5�2�ף�cA�\��iLU�\m����4J3��:� �9Ɋ�$L��p���K?n�]������YV��t}̨��R#ևfǳo��W��3sDh�֎%JǨa{ڡ���[~s��gEO��Q5���V�������H����O�=A���:��~��Ci���7֫�����2�E�kc�ʦɮ�@|�F�(���8`VU���g�����߇K���Է8Һ�x�}��+w��W���`��QG��V�n��⃲yS��	j����P} �e7Ȳ�{6�w��r�	���_ar��LU��fX/UNq�:��v��Ĕ��Chc=��������os����Ȣ;pg}ZCc�m���_�/a�~��d�G�� �ݰ),�܉<ZX�4�O&��~��*������]�hd�QQ��®\�bW:h���r��O����?Z��,a��{j��y��G��~9�:u����7��#�c7��"�    J=_�Uʕ�)F W~K�K��ӂ��<f����"B���[T�m~{�JQ�|6d��3K�#�aIo�/��dZ��2��>)TZ��I{�1�.bT����}��p�~YNf�hj�"�������D�XXdT��UT�UE� V�\��Z�{8G4�&|/ /�UQ,c�"JvA����
�.����4l;1t"	�C���}�-K>s�HB���jP�|]�p��])��f!�J*�&�M<���DfD��}Ǭ��Q͒��][I�#�o�Ϛ6Vn�$��5��'���i[MH�yTo�`ܞI��+�s� �ḿ��\gZ�r�D�"�٬�5�	�T�PS��8s����)����3�:�[)h�H4?�[ �]������Ǻ���7��n�MNqRo�0�08����΄�ѿ���@E��NR�Y](�LV	|4=e.�%B����b��E	s��d˥���&�gw%�X���?H<��xH��q�.^�<�K����iOK�NT�þ�'�ٿ��t���>��k��tr��J���4���w�䳯���L�*�b���,S)�z�y/9f}�۱VX�� ^=����x߱�."D�`^��b/��F��5��+����x�%�o�W."��.��i(}�ק��K��
 ��+n�,�ݼ�>���TA@_��Q��2�� �sh�4)�7�"C^�R2�m#�i���D�!�]T2ȨZ��"Nw�ȵ<Ck��ʫ�G� n�.z�yE�e��n~�`q*s�=��{��ڞ�ע�9���<(##q�M�Z��U1D��8�E�.���:���;�o/�Z6l~ol�6��F��p����"�$E�psDi�以#y96�W��R���P湴偸vp�^Ҥ�4�L�M�IhMV!J�	�,�`�]Ĩn�B/t����|�xE���l;cs� m��b�!���7>U��?�A�	��ߴ[oJ���ƃ�p��8�FU�FIQ� R���S���O<��g��tr^��[e˽[6�E��������x0�m`w���'�s����� �vto-�M��
���@�d`C�j���!$dgAq��Ѯ��J��Y%��Z�W��(�-����*�b)�}Ǚ��Ej�D;������ *���u}�'�.$�fm/��Z7��%�@�G����`Z��;����uu@�?��X��?��=U��������ҹs>#�^��m�A���۶Im��0�4���"�u�봐l�6�m���\��!����-R-ayC~�����S�YE����I�D|rf3 ���л�O0X��w���Y�]���kG��
(�84�Ȼ�;5�������� w���nO'44��\�j�:��$Kca��F*p������
�ư�A��J�6���	������M	��L?��wQ��ي<��t<(����b�+:�1��I]Kz������k�����K�V��`�4h(h�^�֡=�#U.+�.<u�ƅ��C���c�]Ĩ�)�0;t�.�)g���d+b��?X$���K�~\[.���zzo�6�B���&�<�Rɴ��o>��ɿ��}򉄆_�?~�oJ���0��YŃ9	�t�%��!c[TY�i%W��bG�
�UrًI@f��z�0;���>�O���"��:���i(��4�]ڽw����Y'�ƭ��N�2-ˍK}�7�� u�e?%5$���P�-����NT@�T�"n�D�y�7�4�0�o��K�$"�H�򛕕���l��k����b����zcKF��5	��ZKG�L�?�X5k��42/z��]i�Y�J�̶�o~5��B��>ԏ��Lb��8���V{�'���Ƕ��|q�����H���X�i��O4�^�ǥ��q�(˽�Y���΋�CĂ�DC2��3v4�ʕ��l�H�K8�4*�y
�W
�Ӏ��u?�6]g��!���]��������C��sx����i&�X?d~��0K�
�����4*��Fb ��El�Z
v���5s�x�0��<���49F�E�._��zJ~{8� pv�I,�M28��N�?��q�q)*�RVMdSu}E���j�heI�oݼ���s��b�IY��,��=d�c��T3X�J�h�퇎Q�^�!�̣��y~{~��U�>��o|�ɡf��-���f�o��N�t�^�W>��"�	�6��F�����F$&�6��}2Ǿ�ͼfJj� �E��4�7T)�ҡeX�!����]ĨF���/v��i��ϱ6sLOT��i��L19��BuA��p����3�D�Φ�����Ά3"T��o9| S^��!�w�E�e��Fo��.��R��nV��	:#e{Du��=��٤E�<t��5M�!��.�t�V��ot�^�(5��!�����W��P��H
	���H��~k �ͥ���r|C�l)����;�کƑ�I�[���9��"U�!�Gj Z��S�9��x�1�.bT�QZ�}|�3<.��������t޶� )��� ){T�����4Gڹ~p%�&�DN�$5-�:�0��m��������PHS������9��8�篇d�@��}<k��g�?̵���$fOב���z��T�ף��o����y�/6�A̪����= �П����'���������9�-Ϡ����l�ZD��IS��sQ2+~�rإ�t���v��N�=��_�����?�Pthy5�]���@ϳy���ML���^�KY߭T�����(�[��� ��H�v�JW��@��g#Z��"N�k���p%�`kz^F�M0�I��гs�4܅ۃ��7"�PW��.F���lEjoN��$�)[)Vyf�0�W����U�Ou��d�h�b�y����w�_J.+�a�)[��w�C>N٭�A��L��x�!�-*#�p!6(%1*���O���rG�����Gw!Z������W3rsM��&�X$��l"6د��210�t�M�PQ�����.`�x��$�[�X�S.dRm.�J�s�O��6g��t�.�	��x����@�������^���m��3��hO�&	6n~���d�ĲDo��U���yH�� �EH��	�>_����< U�ɂ�=ģ���~�������I�/	��L�f��;��E�,�����C�G`���/-�b>��ML�@XO��|i_�j5'�����|�6�����t�� ��LA4R�\�����U�*=�#ez�q�.bT�7��[�z��u�_al��~��	��F4�������T�l!~ɰoҼ��_�ߏ�㰭MXJ�TU�B�O��p�0]�E?���+w��@�d����J?$�O�~l�(sV�7����c^�s��9�T�#�[����Q�����[Y�l����x�^���2c�����,�j$E��b��
�k�"N���r����o/�h)�G��e�B���|���j��U��\N4W=U�V�0�r�C��K����b
����}4��Si�@��G�m��ƱBÙ����'���;-���PW셰� &n��%�]l�@���N�� Ե�����E,�iUh��a���"��ͪ�I&-�4*��S�޼��9��K�y��Ѿ��C�u�Ʌf1 ��������
aC	��mfb���Q(�+��Q�	ws���C�N��#���s�Fs�mg�lZ�k}j��XV�M��+��⨮��Z)9-�D�l���yw�y�0���������z�.�}"lj���I��$�볯�l �}��n������\��H��U�還���I�9ʿ�����W�vw�ԒBC������]w�ZJ'�wo=%�g�fe��?돖�~m���Ε�W�(� �{��#��x�Q߳��i"�s���t�h[%��$��R�yQ���Uo�p��WVC��d�kw��b��bG"�Q᷁���g���,Cf;mml�i3�9N�	A��Ҿ���8ݐ��-�<�; �d�*��×J:�<5*.8�T��)O�@b��s��/W�pT1H@O�x"Դ�1�.�ds^}    ���C��^5�U�%q�P��z���a���f��
�I$g 8x�ǻx4$:��4�Bk���Z�i�w���q:�B8 ����]Ĩ�����>��!#�y�@iQI����{+��<P/��c� qrn�?��j#uU�3m���Î[���7Pџ�R�J��g�#�.�PϜ69�E��17ayޱ�tv �?�8�8{���C����q,������)�j�ޟ�����щ]�0үk�E�i#�L���T�
	�J2�ru��sGwa3�9ip<��U�
��:*aJW��w��Dk^=5�����8�2^
2���9�����2�s�|6���,G��K�[�����Q8:*M«P�G۵L-�ێgOI�12�ٯ�~�5�ԍg�NeOE�O~�.����雩*JCɮ�7��#6�[����;q��D/�q��C��V�ڄ�3^���]D�n�)={���ߞ?m�Kw2ތ������I�s���9H�i���l@+�MNϦ1`�eJW��OUI�*7�R�nQ��
�M�B3���c�]D���}{�Q�WA��)�ʾ�sV�H �($�t��;�4eV@<7������."|��%3��&?���c�h�2U޵��X�mޔI��b�68��E��"���#�����/��H����M�c�� ȊtR���t��o�&��r+׹!�ED?�W�=�Gܐ�\s�{�8T(Z����}ǟ��Q�MV`ؓUDĺ��)�O���ݑVߡ9�8�抹���H��Y�䏡�ϥ>�?I_ҹ��; ��5E�(I}��*�Z�VsL��{A�*+7���s�&w'�bNc��< ��-��_9��̺~�c��eC
�)-�E&��|���'s$si-��֕��K�`^���t� ̐��%�� ��}�68��E�,�=8��J2tX>�v7$?2�u�j!4n�.<��7��r�!X� ���$��!`ʊ�7���a��98�r��\�'�1��Q�'�m����]Ĩ<ӧ�s։$�'^��j������oI�}R(���+(�-M�#�QQ���#򣂭��'G�d�W���?R&��c�|Y�e1)_6kq칋8��r_�nD���ؓ�(=^<�_�4��&�;��✃���Scc�|�z�ӓ���sd30�(�x��dNzXVpz<�n�E2La=2C�sq�Xr�ؙۭ�U~��}v�l"j{��߭�x`;�Ÿ�ԡ�V<I[rUΊ�|�-e!@���:e�"��-0���}>��gg�#���6�8�c���8�(9����P`4����b�p��D�����?�C�o�%�()��S����ϰ��apM>��J�43:D2y�H��(�(#kӈB�[����N=�4�|K���8t1���C��]�8�?03����g+B4���۵j�A ����f�3�H�q��d���zb�#j�,ȌȴS��ō22_��J�%����]D��b�k鸷���H�@����n����_W�t��iu!4a��g�i�0�|�
��V��3@)�Ǵ\1a*Cf��C�k�=6o$�hh�E��z�<kq̺�8��Y���^>�9��/(p*O].��Y��)B'ޤ�G_��'�(ȳk�B�v�P�������c�r+��Jns;Ǯ����'B������%�|n�!ys�_�:w�9���c���i��R������QC� e�T��|�~�����򭪵�Ru���l#7���#g�,n�59��E��pf�\��
�/�c�xV�Q7�u�!:䩼��LM�*�H0��Ժ ߔ��S��V�i����� ����xTj,�$.��d`�L	t��$-Mގ	��8��E�j��؇��}��)��.�W/D�ĲO�����F���X�4��[�Ҁ�j��H���]
	ɮ��vh��4Hh�����J������|8���A���]Ĩֆ�]�s2�B�g���1Y%ɠ�o��a�U�w^U�IfIJX�|�Pd`��S�p�?�TU�q��t�Q_q�=�*55� `��Ͱb�x�q�.bT�Rl���"B��c�-8�k�>�����#L�6��b��>KR�������ۡ�YERi�(M4�7�baU�b[�|���uE��<&rr�1�.bT#W��n=D�c�o�O��
S�k��������-����ݑJ�z����mY ��Z� و.�?M<�~��F9!D�ʿL�H�t1��z�a�V2Ű2�W/�Ę f6TW�� ��뤯�<7g��I��,J/�n(Xtn�@@����e���������֚>P炥`����F[q����]�iF��]1ޏH�e�X>~UWY�P��g�ȓ_�� �����u;���#){b����3駛�NeR�en�'��d�iT4���c
J��񇳺��Ă� Vx^����"J�EYqWL��wY%_�d���-4�Y#��E*y���{����/<�m=��8śL]p��bU>%�4��"f�V��p��DJ�e�g�8��E��v�6�c�	1�c�:�.j�@v��E�@�a(�p���8o7.%��-z�4����iZ	����W��l��#�5O�՜�s�f���{Ŕ�y�-�j)�Uu�l��Y�³�gֳ�����gp��� A %���{<�*uq��2� ��@�Y�ܣ*s�r������4�D^��|v�����'���M4��zèHʼ	*4�&l�bME��$E����(Xb�Τ���F���_jb���g�E�#Q���^�GN�䅸�EE�-)�2/5���� 8R?��>o���������YF�t�H�N��pF��b¡����4��y��AVLO�Ա|��we��e�#Zh%�����������-]5Q�z�6��~5��QOԏ8�S	�
�`tUIp5LӸ�˜�+׼��|��U���.}]��F�*�օDZL��z�յ��H+�����♻�"K&ut�ɊZ�9P�����Q� ��ݚ�q�6IR"|��ؘl���La)�i��]�O赪i�8}o����SÖU�{�gi��]A<I��yv�{��-�]��z��&r�
�'#�ԞU1����5�km�h4ܥ�@���̷s���iT�\�K�L�VIC�o� ��*DP�	��������i�0,��)���⮼O�x,��;Wv��;��o��}��>^8�\2�G 2H���q���׽��z����_�2��: ��{�Jm��3$��-�㴭��
˼����rp&L3��'<�&��"6&��u�p$�NeZFE����SS^)�㐒���$�ݴ��Su)�T��	�)�{��rO�Y��e˄�ׅ���.W��"����9�m��)Tc��)1����<� ��nN�1�2�{R��G�%��n� i�T�P�ԙz1b��{�H,}�w6�2+�2�*b|QY�#�v�0Ҙ!4����Y<��4�c��RxaS�Y����M�=����6��jE���Ƨ]=�������=D3����[�����{c�tv��BK�p6՘7X,߯�G��G0�л�"�v�u�bB���Ŀy4�d6�fu*��<�J�FDm�R̺�d�Z��Cw�ӌ�|N/�Is_�}�vN5ӄ��g�=��Y�.A	�y+�3���©4D�(�{r�����z$���9�U0�[��4�~�4�>����L���"֠����$��"ⓛg�I�gE�(T�E�d�ٷ���p(�ԙ��H�&�0,���1tḢ��������m�N����T6,�]�Vz���6'�V���g; E��E�;���ǉJ�q�@�����÷>���ݾ,�I#@�]�>�!a �`��3q�����r��y���Pr"��.����<l��#t԰��d����Q�dĴ۞����0�_[��	�PAP�(�Udy�7�����T+�T�z.��	�Ҙ!F��>@�g��'e4������m���^(o������1ʭ>�$e�+�U��M�hx�ua#eY��Z�u�M!�� ��z��X`    �X�MT��*Z�צ��\�9t���c?�6�f��#������o>MH�ch�8-�L]�k�:l�P����VMR��$��]��=!�:�$����{~|d��x#���T��f��/Ђ{���.����Xp��C�ۻ������ܗ����k����h��t����P�@�]xJ���z��{UG��\%����*���Y��W����i��,�Bf-��q�߉��'WW]��v�Cw���}��B���B�B���Xzć���q���m����Ӱ5���
�T�1N�4���ķfu�0bjh�#6"�v	�Ҙ!�����Ht����yS��b��0p��ci,4T��q���L���s7�*�;�#�X����_�y,��s�t{S���b.�2��bw{�/=���h��.����!�I#D<k
��b��=13������3��Xu���T|*������M��:��N��n=_M�44�&�FS���f�0�#�1�ǰ٤N2Z⎻�#��޽�_���?Dr��ȉ�u�E��F���Rd��>����q�d����G��E�>y�3/��1���@���V_��o ���p���N������B~{	������47�Dy���[��;��1C8r7����,����3�|E�OuQ�H��yI��C泎{���)Ƴ���!� H�(%�E��;���9�FEє�r|]PI������i���ܔPx����D��Թ]類�/�)o{���db��gG�N㊔����e#��hժ�M鋟�C�>ڣ��|l���������zR�V�C�`Y^���� ��m�Y��{��g�F�;a�����3�)q�<�)��ҏ�<�ð����%zE�z/4���<�i0��pw��I�
cNK�͌
��3a�n�p(�0�Ȟ��D��t�?�?������߄L�5m� ��kgU�;�	
�c}��S���ݢ����m���������	��>��ǆI�
X�!�#Rtd��6e��b�V̴kƊ��lZ����5�HR?�N�X�ֱh�~�i����@�W���v�������(��Ə��ǚB��y�]���P�d�<��R���h����7����s�(n�-�\���M��
�f�~��J���=@*��+�pX6�;���0����Z����C���')���8x)�u�K!*ptF�%4%'5=�L(t���1$�v+E:^�����,%4ʥ���(�$I��9t�w�����tI���3�Px�\��?���l����L!o�;�I.�eREc-�R��F�l��<����/0y�SѦW��|u&�r����9 ��f+7�o��¿���Hբ�͑`e�Np[�g�����Y��|/=�h�Z�Ƈ��m�
J��e�'ZIj�]���cx$ Z��ph�:�&o���$Es�^����1<`c�E�GxA:͙��D�%4Xe=�]�+�۩�9���X�n���준�OѶ�t�g�=z�saxY��fY��"�?!~�����jE���Κ���k�<�_o�U��6u� �A�QR�;��)J#D����;j)������QNt@P�#R5���r�\��2ٚBw����<)c�%�cw��Sѫz��k{�`�N�f
��|z��5�q� ����&Mkw�t���QY�>.׎X˨Xx�X�hz��𑜆�_.�ɷĵDr84��s�0
*}�����\T�F�����+h/^A?��@M��I���=ª4�t�[�󐜏��O�?�d-��{|1�o�_{��e��{n{�)��c���\�Ӵg�s�������\�WZ���I�&e���3kR,��Lg\f�x�)��p&����fqF��+�޽�1��8֡U�Ƥ��n��a�n0�d-j3���NZ�r���
���W`����e9�PߢB��sRR�� �(�A)��"1��v	sҘ!�cf�ܧ`i�c���ҙ&x?"��e�p�L�M�����1:�[�ރ��Y�B���B+�z�o�z�d#D�8��,���Q5�k!�r�%	�K�^���&�&'�I���yd	{�Q	���ے��q�q��̹C�nn�L��L��q'=f���#Nc�h���D7����S
k ��p�%Y��`��[]\������;��6U�����~�o���������������p��?����>Fߝd^���#I#L'�-x���'��籆vEP���y�/��/*������iyD��5�AU��Y���#�UQ%��>��iED�2��'�\_/d��K <J#L�>K�����Ü�����(�4P�����d����J�t�Dc��tm�<�`b2��~%k+ݘo�D��pF!�Q=M��ɦI��[���vO������!�@՛g��,A^�J�"	��� w�D�ƔF6x�����q�q����!�l���w�_~� mȚ�c�9v:8���m0��I4E�ꨜ���$�v���"R��7o�'-���Q!�R���W�����1Mm�E�Ovh�׵��z=ª4�tc1Z�yH�%4,=�]Bs�پ���վ!����c	�+b�}i�&jw��\�|P~��*�Tڃ�o�۔���p���c��o61��$uB�HMp,�"��{����K�j�!2A��"Ëk��~�0*� �/�����1j��Mכ)y��`[6`��Z��f��yl�>��G��8sI�z�xd��U��p\i�:_�ޔ9�4Դ Vd�`Z�� ِG@1����yT\O$Z@�B����qm���j�o��E���͛a- Q�6������0�q�q@J�&S0�(mq|�$U"�l���`X3�
z��H��S
���$����A�����Z5��q�A���?�h��<d���1.�oQ7cD�S�/�G����0��o�9YU �O��������s*�ݫ4�4;v���/{b�^޿]a�� �v�(%��a��C-��m����:דn��5D�SA�*Y��8J���
��b��c�w���& ��7�C�g�s]����T�%�8#B���.�M;DH�(�L[=����
��q���A��pAM���
��U�#���u���̋W-�	i��K��_�۾.|J#De㿺\��{���7�u�+i ���oh?[��e���0ߧ[�lA�[\ZYhghQMۙla�����Z�c�߬�dJٸl�.�n������&l�����7��yz�d��V#H� CO�~�O�yƪЅ�/�n�&IC6��;��"z��Ƅ��{�#� ��$|wF�朵s��Op�g��p}�dq���&\��)�d�qfr���F���EA��	�ccB#�Yk�T�eT�ؖ� U���5�Y`�OZ*�_�zV��}m���$7�I�ƣ�m�:�h�:O�!�A���U�
�ҷ�Hv�2-�p�������:�[i���Hd�{V��x
�yףQ�UJ	�eUM~�%;��L|N'�(b��u qO���]7y��L��ƮR��lw+ܩ�m0PMD]����	뫥XBI��j|{�.ݞP5�I����3P`ݚT��;~3Z�H>m��_�1�yؿ�ζ�X�����FPCU>Ȣ���J�/�u�O�2�G�j4�}i_~�1!����,�{���E�s���|���Tm�K+����N���-<�g�[!T��-�SKj�U��LYKYn���> ��#\J#Lg�t:�O�[L�������{�G:K�֫��\w�Y� �E���_6�����@�\h���~#9�*A���\U�H�dy]�Nؠ$p�&ܪ����u[�Q�l��Z�, ��Y�t}�F�)e=N]U6z��߇{�2H~��J��*���}��=�\!4�$��[�$t�H�,��F��)�,Y
\��E��	}|�[=B�av=9�<�1�Og�� �q.Yd��~�����&NS���^}ퟮP�Ij�h߾��ݶݨ�u>Z��y��0�x��Ѭ ����a�J+�$�� �(�yH+��w	�Ҙ!T|Z��ɷ��ɞ��t�I��ɮ�I��n������W���E��.��kw|��o�J�g��O�[變1�*kɸ�#    XRmK#��(->���=�d�䱿�۫
��87��	�p[%4�(�������^Ꮟ���X���`%���8;_"��I���2�Rk=���hG��p{?��=��r���ImnazmJ��/��V%���<o����Ei�G��B-����3^�\�(��ǡ-���� �}�3�o���p/Pz���PɪA�d��*�,AU�U���Ug��w-���p~C�ZL�sw|b�+j�� �1ƈ^�69���dm�M�}��\��(����z���KZô�nLY]e����,=.��8�8��˸������	���XЧn�S����g�`�e?w������.�]�����-t���(F�յeh5�~�
O5A���d��"-R�^w$�"����@YZ�dd�*@.iRaS���1ii�%���<q�C�C��F�l�SX��Z<�*y&ޡ61fdL���m��8d\pn0�f��l�fᅮ�YWec��/�>|��#�Ɵl>�<���Ge��׎�y���)��d!A��:�A��q,���9���V�A)��z.ŤGx�F�n��pn�1"��6��v�ce�K ����}2f��Z$��՚���e֑V���5	i�SG]d�c�Ǩ�p˪l��̝{�5��2o<Pͬ�;�Si�l|a��yW܂���� OqŢ��]h��t�_���	<ʡ]T�2d,Tz;���k�n�r��y}m���_��dGxVeAK!M�2ۨp	��W�MiLi�)��]����G��v�ש�v�AZ��w��@/�Hᜌ�_�N�T� ��°��9-#��'(%WԪ0=o������UR�k2r�~�Cx�F���x�	��O.�E��@�c����u:��T�s�>�\��
��V�5�_������~S+8?����Ec]��۔��$[�鄟�)�|2�n���#�J#L�Gq:��ɺ�&~@�3%4�D��ܹ�ŷ�+��`SS��$����)cI����	�����/�4G��r0d�D��hs1�2�m��@a:�ai��B��0�����<��>�E�-����8`����l���PcN�,�-h-@��fU���<�ˢxg(S32�P��*�Z�d�I�h{Y�zx'8���ӡy�G�F-"H��q�������K�H����)�3`�f�/;<�d���Ӿ(�IcBb��2,������yb|-˷2�W�,�_���o/�.����d-�wP�6�qcՓ~c�V������=���r��X�X���C9̈́ʜ���j"��P=��#K#L7r8r}W�U7��d��,�\��ʮM�X�%����Q(�qJ����LY�9�?�C-<���i7qЧ�$U��X����3>5 n�}j�Gx�F�.��������c�q�h]D��q�J�:Ħ�i��R:t�
'5���^TI$_wg?���i�屪mAz~�0�z�U^p@P]�C��Ge�h;�q`��,������.�J��9�_�u���s��7ժ9��=��4�l�`���L�N�����1�pμ�η���Κ,Qi������h�U��k�6���E�M�-�X�(�	u=���/�*����͉�h�E�M�}��/a��:ȋԼ*�I	��G/K��jU�O���?�#Ï���L� c�S�a<p���O�Ld�3��ø�����I}��$��v�Ț��Jy�v�,KKRͰL���3-������̱{D��t	��Ӆ��Q�۽,2��y�h&)��H	v��m��9램	�z����8��$��aSW6QӸ�9�pR�}�e*5v���� cä4�d7+�8�-��S��'���V�^�j��O}{�#K�kǾC�k�ܣ3�9��Nf�> nx����mᵰg�X���+t�y|ę�
��#|I#Lg1�8���~,<�D�O��h*�v�ٿ�����T��\�]���ϭ�`�ք�w���������ĩ�N7iÙ���i�k'<zݫ°4�4���펌�������y��P�3}籋��_���ԩ�һ3:B���rpM�z.#�J�r�F�~6�6B�0-XiY��:����a �\��\�q^M�㼘Gi���q^��y��z�^7��G��}^Q���}�����y���b��ޙ����	����9����WV�jQ�^��Ǡ�Y�R�k���R@��9�/�~>F��G$�.aZ3�.�Nx�9��IO��׏t�B�F0�c�v}]-�3N���me)�E��ndQ�c]�/��X��9��N�`�|,j#���4��ǺO�t������y�V���-z����E�tl�Ĺqdʚ�w�Zw�E�̹�)����<p=���;�sף�$�V�*cM��l��-�AJm8v�nI�*Wg+�pB�����L�T$���$��dZH����9��P�%K&j6oѻT� �op�^\Z��l�]^hn��e`_ >1K1����������L*~Ǫ�nʩ�U]va�&M~��#e9�R�c�4H�]"�4f���%_'�YZ<�ΐyQ(@�e�2x��4��֦��q���ā� ��}�'�M��^����/�`4p>���z��:=������3?+��F���Wc��BI|�j�����^@"�j�d	��tLU�vW>�%%���N��փ��h~�����
4i,�}�4E)A*d�X����%w����r�r�� � ���_Eͻ:P�6e[�'-J�t��s8�?8 �? �15���a�����Fj�
Po8����u���}����B0-�#�4�1���u�
�Ҙ���h�q[�翁l�l��Uo@��.�6:\�ʘ��Na�`gqB�g{��÷ #����׏n��I޹Q�<�~vM���Qb\�0��d,��7���*˳��Cd��S�Gd�4�y[N\���(�)M�CǊ�%{��Z����W������n>~�Nh�W������ɸ��&�jo��d�QbLÖV
/�^�r] a���Oݸ^�C��F��Ή�-���O���8���ݢ
7�X�o�V��,�`��=�-؏YejC�����N�ŰaOϜՓge�|l�.����ɲx��I�ׅAi��fL_��d�Õ>yS���W$��#�<�W8w�����cU{�%"�s}��;�{��P� *��d���1|�?fE]���$�� {v���Y����?����i�S���O�/�Hz�"�4�t^�'OX�G����>x�|�¼	������� �~�yJo	�x�K�7cK��2(���VM8˭N�,/x�"� �j�>~��k�G������B|�p�r��rr���G����ow����I��z-��8���80�����;��y�de��]�9Se�B=�u�P!�	��y���i�gX�XbWs����[��o�κ�-�/v8"�x���A��JN��m��>�/Y��������������а�L?�)����Ë��mQnTE��E{-|ǒ���r�`�-�m�)����.L���a�.�i^�<6��*K�E�c�˨�)�)?�^��{i���:�?F͏�?��/���:j稧ϫ��F�U'h�
��t�C��M����H�Ȳ�e��PP�vN�R�,9�uy���-�L���Ge\D-}���54¬4BT3�r"�R:S������Z��LgS�wX_�H�(0�~��%D�ż" L+E�����=B���1��a��I}��]�����8[����=�&��R纰(��5`�a��T�3p*.�2���T�?]Q?q���E����$����`7vѿ��s���r�H3V ���a��_�=�\�M���M�ѡ�EB��p#���A��{�ͤ�#>eeBa\2�q�����w;�Ci��<�m��S����đ�o4��mp!�.xH(~�e^�hB���������>@��9�S����UzN�u�V= Uj'Up�'�Kc�pʭ'�M�����<y�V�MYAG����/�N^�?)k�>���R?8K�z<>EA��&5E�%��[Ks5y��{VV�7�3a�aQA2���<��L�)Yz�X�    �K�{���e����`�m$�TA�͚J1���7�ѡ>�]��C-E�,ITY�t�,��8]�㑦�m0�p�l������Y��1=��+���,��Y���y�/��0},az	�s�To�*p�@j��Y�-&�e� �g�I��R��8���;.�8 ����߯��`z�'�����б��jN�ו%�ep�Qb��.�!� ٔ�Q��⯿.kf��L.<�.��Y���d�|�\9ܒ٢��u�����h�'V|Ę�ɪ��*U�`E�0VE���?]�_��e�i�M�'Y2U�-.��9����d��K�p��Y����d�%�Hc��p:#Ȃ���7���
�.X�_޿G��e�/���UD���.B5���O�|��<��@���(���~���u���M�.�nh��hm�m��Q��a��=�TA��S��T�%4����Ś�~fR7:v��Z��JK
R�a�G��*Eq�E?�B�����ھ�7vZ�p��É�:��8^|������,8�m~�0)�0�$�&,�B2Ȏ�'�!
/4����!P�#g%�/V�*-�G7)PSb���^���#WŜ��Oެ4ܙ)P�"�K�e�s�F�3rh�(�cR.u��1iLHF��- �2*²�u�8Qݺ�;��m���_���֯ZO�J����@�d�0��\2l\x�,!S��_��.�)���4b�o�"��"���-%�&���
V����0��Y��еgV�ڍ��a���#*-���&��\���6�Y��d� �z#��c�_�~�m.[+�0��>+�[�MN&��\�t�<%]�,s^Y�f�'쎍0�ȥ0~C�Ǩ�y��Zz
��:�H��w\���l�/}���{���7�?S��8;̨C��<j�G��j4�Qb�-'�-OLf�Aƥ;��~�H�G��
~���v��uR�T����hᨓx�]�B<j��Z�A�y�+^�0,�0���]��ϊ�-?
�x
��T��o-}�NKS��//7z探��17�����`�����"�sl@]5y/Ϛݦa=��b�5�[��MA��7��D�$,.��J�S|\/�Vb44���{��-��է�r�հp~���Gڗ6UVlhB�_o�ʤI޺:���i�=�Z纰'���5���YL���S�O	�ZC�G����6���ǾiT*5fX#�rB�X��0p��=��7�-������Q���Pz� Z�))q��u�,�K��3�U�7ir��Ռh����	�V����a�H ���0,y���3��@W�3�8����!Xt��)��
NIc��x鎴���}=��뙰��J�&��t�q���(%�=�8���[lV3)���1�/�B2Ȏ�Mk���ߑV)O|�־_�:~o��{ZB����ߑ^�y��W~��/��Z�;�r!�c7�S7��w=vHs����.��f(�7B ��Ui���8|!Y���ZIyʸjO:)�9��{f�T\&(����ª4BTS&]!�r>~=��Y�V�ϨP~Z����w���D�8�5�X��=Γ"6�Gδf�y�<��&Uu0V�`4�<Y�ݙh�4�5��&�U0�v"�2*ț>nT�1�iK#�c������x'&IJ��8'��S�Ck�$@��*Nb��րI��\�zy�_�(L6����k'�qٌ��Ŀ.<J#D�����5����q+�Z�����_�-D�$ű�ze�
O�����ثd�/�����X����b#���# ����B�+���(p�8�D2�>����d��0(ߐ�ڂ������"�2��f/x��0B��N�\@J�en��=�/ڱ{L^��3�})�>�mA���O���'���.�������ZJ��#�Ic�(j@Y�k
Y���K�rdr(4��NC�K���5g;D(�v|6Y�lv�x�WgEY���k�����,����aLA2+K�y��q� rf���+��r޷�t�{��micf/w�g昽X��~ 7U-��N���z�H����V!����M�r�5�@N�۩$��!i��Y}�\L�E4H?�0D����>���	���=(Y0�L!缤{E ��H���1��� �*�H�\���M	=��2-�d���9c�еɶ�W}�#���^�v�'��K�O�1��c4���G�V�H��*����b$�b�_#���DJ"I�(z��4&$K���b,�cq����p}߻}��Uwyt��_qp�[�Y5uC5i\�:�{w悼WZ�w'�l��_�������2��q�?�gF���J�@X�F��R�Ay��\�JkÝb�?xN}t���DQ��x���TZB��.ʕ�ȿ�T�BWA6>_�P�|�C _��E)�~p�j*��w�f��z�"��-nu��T�J��p��BO��P�|v:�[iɄ�)�7Ĝ��$C��Y�x@,���_�T��󋔕�x��9)�jֹ�8
}�r���0�`��i3A�MӜ���4�'�i��3Z�gc��aL!�)֬#Ýn���'=�u�5�����	^����ib:T�nt�� �>�E�Y\�f� e�I�_Q������O�0��ƊEڍ:�m�#u��~�. ��>�����q�R�,MƑs:�
A�*��::@�`��K��F�.�1�r��%�'�;���|�h.Gc�Ӳ(2�e΂�h�<��4}o?��=1ԛ�@�%`�f���r���Ǎ����b7��	�c#L8ri��D�K ���dlX�Ϡ�m����t�#��F`���r�'T��ujA�ؓ�c>t�K��xG+$���Ū^�a�Xu�����A�t����NC���$�s��q`5J�4�V�U�:�$�/!����3�)R]�� b�/�م�Ҟp���c�i���u��s����u�j�n��'� �`#�ZH��~�Զv��Q�G�//�?ܭ*P����;xG�c�[R뾡�^ޔCe,�X3uߪ,���c��Ci��B;�'���?�۹�����8�4�`O4Y����&�]��1a�[tq5��ֽ�����H�i�׼%�@!s&SӔ�h+�c�C�F���M1�����r%��+re	u��፾�ԟ��s�:�u���s�\\d>�B@Y=f�wGVC��p�nm�Ĳ,6������;�J F����l�˜Vj��ؕJ@ؒB�D̍�t��Q�\���t�=�p���<Sn�й��ʩAA�]%8�{]��b�d���0�y�	�j��E��q��@���T�Q����R#j�1^��Ӛ�0�����N�bLh|�v<����3����	S���/d�uG�!~v���W�����#�=0Bi\'��+z��T�ԯ���wT����HI#D�p������^u0�MGF���f_�7"&)I��D�/'�F8�ZO;��)�=�ʖ����+���ww�:�x�[X�F�jv<B�=D�O�?���.��:S��6�a����[t��&�E��O��7�D�)S��h*�a��q�PG�
g�OZR��r��:P�.`T�GcE��1C8��,$�O�2�ǓGc�b��~J�g�^Լ�@䪾ڵ������0�L�T&ߖ=6\E6ih�1�a���lZ���j�+p�/�S��
�i��*�Bš�8/��x	�a�0]��l�n��Ȅ	���ƶG���~�i���C��iV��?�p�0y�P�7��,����#����8�fӔu�����aVA�y 簐���C�'��Tf�ǐ�?�ny�x�Ψ����H�H�؛�����PU�W��e�^q�*E8���f��T��=&n�������Pr�sY��M���;b�
ѐ�B2��L�g\We����Vd3���il:/���� �R����]����u{=�'��L���h�ϓ��Sf��I�C�țJYn��v&۩h�
��QY�	�S��Q����9����R[V\��G4�P�F-=�-�g`���ur��!��T�{8���Ǖ�L�/�"N
���� _(�T�P���]¡4�t�˩HKh�����ё0���Q��j�#IlǑq*�t���k��Z�Λu��~.ML �  C�
����ib���;i���*�c;�w�b���jÝ�u�;�K�u������+팈0��H��*���ʭ
�F��������Q(�ȫBץw:�\����x��~N��w����>�T-��V�6Q��I���*&d��i��3�߭�Vk;l����)ށ��yt�4[�Ssi��`�	������:7��Q��u�-x:��[k]ۥ�sR�kwf�J{Gd��v��Ɵψ=.��FN��N����(#�e��~g��H{t�7�������Wtdn$%��Сp8G���o�ט���1u���Wi�O�L���><�"yb'�@%P]~��%tM���_��ʙ���m�H�a/���He�_�>>l]�M�dE��ނ�U�\71���K�.��<!֥��jsyܖy�}xV�E[k}s����mI6�o�Ĝ��;�o`�&���Ơvo�I]N���^�&����^��!J#Db�Dj�v� ��ϳ�	��q׿1���޷a۵GD����i������}K�)���6ٓ�JCN�h
W�2z����Y��{�B9vi��!;�t��Q���<��>J�'��g}�Jo�s�]߽먶Kkb8U&�}9�J~cݪH���k A�/��8mP����*Z����(��{�n�IXh�m�Y��ֹHu�S��ˬ�_�3�b���9��S� 4���PL5Z�I�#22W�(\��3�`^'�7ݝ�O!� �/�""�?�]�����g�
m�^{죓�=ԇ&r��U�B�4\���b޽��4sc���鈰�F�9<���m��k�<��t��n�n���󢮾Q���Cx��c��J� +8ُ1��.�}�ۘK^��>SyHk�����J�>�GO�iLZ���Y�h@=�N[�=���QA?&-����Τ�6�$֞��p��[{>�q�w��U���{moE~_^�@�P��1��R�}��� �������g2�KtB����읖y��7����U�4�6�Mڤ�h6��\o�y���¬4�4��]��Wކ�h�y\+uburQ0*��9��09�^�޽������z�n�J:�n�LM�'Bė�n�|]�̗�ӑ�Q\��;�n�S6����(����ߴv�eIx��ؔ㢾s/L!�����K���	R	3�RB�oP���c�k/(`�38V����g�i/N�0'���8P�NeYBC�ųzKfʱu{�N@e�j�83,)�u�fobґ_ Ol�V�_��2�8����
�ҋ�������4BT�+����fg�/�A��$iL������s�������r�M�j�O^Vֵ����U��qx��uh�Y?�i�,����%P~��7S�,E��_ G�"Q���.�J����/i!�[�,��vma[t�u�/��U�%e���x:Ys_�G��14b8���� �V|ɉ᪽I�5y�YƎ]���!qM�F�=¥nd.Y]�i�:�G�g{������n�,�]��Go��F�����s��αD��e� ��H�q�T��+S��Fz�r7ש���e.�	��(p��k���,Z}�bJ�ʂ:"B���W��>7K�8o`"ʩ��
�ǨPB�.�~;i�m��X�4]���p�9&�&e�'�y]¤4�t¡�8(�I��ŗH����L�G;k���6S���D����"�c�"���Tx;�jM��\>ɶ�u�'N*٪��n{4��y�*��e�s�D����\ ,2�豝���ޣ�����TĥK}Q%��%���X7���C��h_�1�	2(���=D�ی|Z�k
)*4��5ל�r U p۞T���J����s��Pt[%�e+��.-
Ԍ&��.aNa�P��(��^��?��LW0l_�c���T�φ�G5Ƕg�\�1��/�D���(/ 1<����U&տ
T4��TG`��(�i����O,����'�C��F�*x�I���%�g�0K�)3y�Vsf�<�:P #'��d�y�v��[�*��zj��V��mGK-��h��a�d�]g��q��J���T��҈�L��=
1B��8H��	ֽ�X^�;�@,��s�M*�7V��L��Qi��\��O\L�1���灙>����;��p+�
�(��w.籩�Ԟ?�gRG�g7���H�H��(WC��㜦���W�0&�U��c	$M�'<me�G��(��2gL2A�␅|��p�����^���)��߁0��*�I���#�J#H�$n�����ǳ	Uj�]��q\��X�.��{R�F�Bx�ex�hє�B�&�УLw��^�r8vy��p��*�S���]�m��[ҜFŽӊTRǫ2��m��^�����IVȠiQ&σo�� �Kc��0�d���."2���3��F֨3�cw=&#X��?�-���}��	���>ZZ���������J�U!�?Nie-�n���}L��f6��m��
�Pi�@��F�.���2��g��ðd�~�"ȫ97�G�:�([�����ߩ����)�G�y�}u�~�N��=^�͞��Yn�+� ����d-�qQ�	)Y�9���X�#z���J��yݹ�<�A�9�E(6��W�����O�?�ķ4�ٜ֪B��Ԗk�}(E�G1#Ά�CcRd��#�o{�yY��r<���Y����!$��h��1 $�.aZa:��}I�Wކ���g�<_̈�8�t�2��9��4(I�����Z���r_�Sǜ����������]4�t����(��NH��g�b͈�ȅ�u��䂘��p�7��\F�;��s��p���3Ew������5�ҨJE+��q�a���kQ>a4�"j\ҦQT՚�i4�~�h�(.�."��oD��q���,_}.�F
�'���JP�/@��A�t���N,��A���=��{�]_�ADx���c`(�g���C�{���}G+�'���X9�ln��ﲱ~Hs�B좿��"���q��{:�����[�7sY��])$5��𲆴�:�vA\�5j#��Kr��z��.aWa��W9 �R:<�������3�p���=,��uǑ̢�l,��z���x�v�nj�F��|��=��g�N��7������^��"߃��6|��ز��Uؐ}�^�8B��;��$·4D�� �7�]u~Ν�c���-�j�i?�"}�cX�����?��ڹO����j������/����OA_H����l^/�W'��<�G6�Gh�A�a������QO��ƴW��aK����cJ]"��utD��4�	43�,y����0
~�tQ�N���*q_�F)��R���Q2���¿4DS ���K������sן�ʪA��Ƅ���(�H�B��p0qY�����ٓ�:����~� m)������CdO����$MT呄^�"�ihVfK���ѫBsz�3��͡�9�n��~�D7�����p�?���N�h��j�e\s�v�����2�ׅ�I��$���)�f�Y���ۜ��z�\�,!5>7h
��9���&�nJ.���m8�5�L1�v-�Y�d8�ʢy�,-�Z�D�O�*|F�?l$N~��{����#������z�=�HW��1�3gS���ʑZ��X27�~YO�C��F�ld�e~)��#w�3J$����ԙ��p'�PIl��,���w�n����lAD	RU��iC��Kp��H�e��5=�[Xi���<�-��Pפ�6!0��$�����-����y����������?#TY]      �   q   x�U�;� @g��L8�N���9����MO!�Ēā)��;P�2��:e��cX �~9����i���K4�q���y��$`�tvG���j�
Ak� �V��/fF�	%      �       x�3�45��tww7N3K3�?�=... B(�      �      x������ � �      �      x������ � �      �   �   x�3�t�rvTpt	:���i�ihlb�㇂�U��,,͍L��L89�8---̌ML�F�ff����;��&f��%��r����!$�B1~\F���~��
!��!�
~@+B�q��ZWM���f(W� Q(J�      �   n   x�=�A� E��cl �>�οB#I:�f\���������>5t���l�$�@� -��������r�?���?o���-QM&��Wԡ~^�(��e�}eZb��8羪��      �   !   x�3�4�t��suvu��������� G      �   5   x�3�4�t�sVqq�t������2B�9�zyF9��s���c���� ���      �      x�3�qq����� �r      �      x�3������� 	��      �   2   x�3202�50�5�T0��22�26�33315��4440�30�4����� �0q      �   +   x�3��wQqq�4���z��� �+F��� �jC      �      x������ � �      �   ?   x�30 N�А .����%�5�� Dڈ��-���E�7"`����������� ���      �      x������ � �      �   �   x�=�M� ���.�ᯅe�hl��v�x�s8C	�/�73�a�0}!y�vXK�M��gZ�8�{�
O�&BSw�_��æ����󸜌N}�w���6?������ �M+/�����e[����k�e�vR36�W��-c#5�w��J�?��1�      �      x������ � �      �   y   x��;�0E���Š��_�`"&�8%�_�OqLiÕ>�J�A�2Ꞙ�ef=�,ʍU��u*	3�s���*'6�flT�c��ef����*�x���8pW�+>�]�Q-�Z�g���t��      �     x����k�0�����_P����=�\D��=F�N�l#����7֧=M��w|�0���Um��F:ŅЦb�k�$-h���%X\ �D-o%��.�fv�B{�w�����g�۾N�����b��^�~<c؟��y���.|�!�7�����HF�[���
1Z	\p)�V�FqSPB�`�Y>�u�G�����Cx�L|-�BFiJ���`�	'�:�4� �+)1�{ۇ~״)�~�7b�M��,'�m�z����5P��B%��*�YJ+ ��R�М�??����Y�}�Ʈ�      �      x�3�4�2b ����� 1      �   �  x���I���ǧ�#)Րì����d ���lK��Q�糝^��F�rm��s�a��'v[}��^7['�hU�jQ{Y�����Y�wm|X�DoRN��M���1e�m�Z{m!՗����s��bzc�9V�e�=��1��_/խ�fY�3�3�+ܟ�������c�����>���,�7K��Z��(̏�E�.g����}Y)���i��ܻ�^�������n]x
 �SW��%�tzs��Z�����s璦�B�V:�<��^��;��k?�ckrC�f�j��U;`ɶ���8��2i���%,�w,��{�}��z}�Ȓם�m�U~�E@am޽�֛v/e�>t@�'�ƚzv`l%��������v��"�YT>H�����F+ŦV(w��HxSe�W[-��pk�m]{�`%ɶs�\�?Z �Vbl�K���_)��=h.޵�7�^�Z�ru�j.m����:�E*���I�Ze���:���9�r|��������cV�@l"��ѩ��u�n��$ ��w��Gj��H�3tH鲝2�����:�����M����m�ţ���U�m��5�N�qe��Xx�E��CW�h̏�E̯��)mt	K�����m�i���{�0�޾�r�7�&'+>#ʘ(�߽��]���1�V����݇?E��Y�!˳�6�28�������AѺ�,���ʿ�r��ڣ����J�'��((�ct)�WP�[ǲ-=�Y�F��r���mV�V���;���ɮ��ᙋg��-��rR�zo�PU|4�~��E�//o�gU�sJ�N8zb*{� �'��ц��;�Uj{�&`�h��2 DS�+E]���p�D;�O�)���u�"^����v����X~��g�`X�W���+;�)�U�K�iS��z�u6��4@���2�5��sn�Ur�SdQɧ!�b�P��K�ڞ�J�L�aw�� щ���Uf�(��R/8J���Ý�t��k�����N��d��0�De�\FY
��+^���Ə|\���̓si�O���锤�$gRv���=��,�g�e��we��K�E|�3(s�1�BI���CꇗΨ�4�B&2~�B��ȗc 8[�9��8umT@�rTH;��Ƀ�(���EB5SZ�(�[{��w�#��Y����̉:\�M�|�!Kԍ�r���,�רӒ	��� ɡy8�p�S�s�U��!k��ғ� ԇ_��pO�d��=~�^RPeb�a�L
�A�5gG�!������k�e�$;��8�[�}� �k������ �t{�Q�RHދ��ٗ���������4Y�x�e���l�W��O������_L��hz�b��{ �7qo�z?f~��Q�|�'�/'��e�W�o����K持�y��01FC}%�P�>����Aki1D��p�r14(
�����-��G��E�<r����7_��ϟ?�e�     