PGDMP     $    	                z            agendamentos    13.3    14.4 )    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16583    agendamentos    DATABASE     l   CREATE DATABASE agendamentos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE agendamentos;
                postgres    false            �            1259    16602    agendamentos    TABLE       CREATE TABLE public.agendamentos (
    id_agendamento integer NOT NULL,
    cli_id_cliente integer NOT NULL,
    pro_id_profissional integer NOT NULL,
    usu_id_usuarios integer NOT NULL,
    dt_data date,
    hr_hora character varying(5),
    ds_obs character varying(255)
);
     DROP TABLE public.agendamentos;
       public         heap    postgres    false            �            1259    16584    clientes    TABLE     4  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    ds_cliente character varying(255),
    dt_nascimento date,
    nr_cpf character varying(14),
    nr_rg character varying(20),
    nr_cep character varying(10),
    ds_endereco character varying(255),
    nr_numero character varying(16),
    ds_complemento character varying(255),
    ds_bairro character varying(255),
    ds_cidade character varying(255),
    ds_uf character(2),
    nr_telefone character varying(16),
    nr_telefone2 character varying(16),
    ds_obs character varying(255)
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16639    lojas    TABLE     �  CREATE TABLE public.lojas (
    id_loja integer NOT NULL,
    ds_razao_social character varying(150),
    ds_fantasia character(150),
    ds_endereco character(50),
    nr_numero character varying(6),
    ds_bairro character(30),
    ds_complemento character varying(255),
    ds_cidade character varying(255),
    ds_uf character(2),
    nr_ibge_cidade integer NOT NULL,
    nr_cep character(10),
    nr_cnpj character(18),
    nr_inscricao_estadual character(18),
    ds_email character varying(40),
    nr_telefone1 character varying(16),
    nr_telefone2 character varying(16),
    ds_obs character varying(255),
    dt_abertura date
);
    DROP TABLE public.lojas;
       public         heap    postgres    false            �            1259    16592    profissionais    TABLE     �   CREATE TABLE public.profissionais (
    id_profissional integer NOT NULL,
    ds_profissional character(255),
    nr_contato character varying(16),
    ds_especialidade character(255)
);
 !   DROP TABLE public.profissionais;
       public         heap    postgres    false            �            1259    16597    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuarios integer NOT NULL,
    ds_usuario character varying(255),
    ds_login character varying(45),
    ds_senha character varying(255),
    cd_permissao smallint
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16676    usuarios_grupos    TABLE     {   CREATE TABLE public.usuarios_grupos (
    id_grupo_usuario integer NOT NULL,
    ds_grupo_usuario character varying(45)
);
 #   DROP TABLE public.usuarios_grupos;
       public         heap    postgres    false            �            1259    16670    usuarios_modulos    TABLE     n   CREATE TABLE public.usuarios_modulos (
    id_modulo integer NOT NULL,
    ds_modulo character varying(45)
);
 $   DROP TABLE public.usuarios_modulos;
       public         heap    postgres    false            �            1259    16668    usuarios_modulos_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_modulos_id_modulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.usuarios_modulos_id_modulo_seq;
       public          postgres    false    206            �           0    0    usuarios_modulos_id_modulo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.usuarios_modulos_id_modulo_seq OWNED BY public.usuarios_modulos.id_modulo;
          public          postgres    false    205            �            1259    16691    usuarios_permissoes    TABLE     )  CREATE TABLE public.usuarios_permissoes (
    id_permissao integer NOT NULL,
    cod_grupo_usuario integer NOT NULL,
    cod_modulo integer NOT NULL,
    fg_abrir character(5),
    fg_consultar character(5),
    fg_inserir character(5),
    fg_alterar character(5),
    fg_excluir character(5)
);
 '   DROP TABLE public.usuarios_permissoes;
       public         heap    postgres    false            �            1259    16689 $   usuarios_permissoes_id_permissao_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_permissoes_id_permissao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.usuarios_permissoes_id_permissao_seq;
       public          postgres    false    209            �           0    0 $   usuarios_permissoes_id_permissao_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.usuarios_permissoes_id_permissao_seq OWNED BY public.usuarios_permissoes.id_permissao;
          public          postgres    false    208            D           2604    16673    usuarios_modulos id_modulo    DEFAULT     �   ALTER TABLE ONLY public.usuarios_modulos ALTER COLUMN id_modulo SET DEFAULT nextval('public.usuarios_modulos_id_modulo_seq'::regclass);
 I   ALTER TABLE public.usuarios_modulos ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    206    205    206            E           2604    16694     usuarios_permissoes id_permissao    DEFAULT     �   ALTER TABLE ONLY public.usuarios_permissoes ALTER COLUMN id_permissao SET DEFAULT nextval('public.usuarios_permissoes_id_permissao_seq'::regclass);
 O   ALTER TABLE public.usuarios_permissoes ALTER COLUMN id_permissao DROP DEFAULT;
       public          postgres    false    209    208    209            �          0    16602    agendamentos 
   TABLE DATA           �   COPY public.agendamentos (id_agendamento, cli_id_cliente, pro_id_profissional, usu_id_usuarios, dt_data, hr_hora, ds_obs) FROM stdin;
    public          postgres    false    203   �7       �          0    16584    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, ds_cliente, dt_nascimento, nr_cpf, nr_rg, nr_cep, ds_endereco, nr_numero, ds_complemento, ds_bairro, ds_cidade, ds_uf, nr_telefone, nr_telefone2, ds_obs) FROM stdin;
    public          postgres    false    200   �8       �          0    16639    lojas 
   TABLE DATA           �   COPY public.lojas (id_loja, ds_razao_social, ds_fantasia, ds_endereco, nr_numero, ds_bairro, ds_complemento, ds_cidade, ds_uf, nr_ibge_cidade, nr_cep, nr_cnpj, nr_inscricao_estadual, ds_email, nr_telefone1, nr_telefone2, ds_obs, dt_abertura) FROM stdin;
    public          postgres    false    204   �;       �          0    16592    profissionais 
   TABLE DATA           g   COPY public.profissionais (id_profissional, ds_profissional, nr_contato, ds_especialidade) FROM stdin;
    public          postgres    false    201   �<       �          0    16597    usuarios 
   TABLE DATA           ]   COPY public.usuarios (id_usuarios, ds_usuario, ds_login, ds_senha, cd_permissao) FROM stdin;
    public          postgres    false    202   ;=       �          0    16676    usuarios_grupos 
   TABLE DATA           M   COPY public.usuarios_grupos (id_grupo_usuario, ds_grupo_usuario) FROM stdin;
    public          postgres    false    207   �=       �          0    16670    usuarios_modulos 
   TABLE DATA           @   COPY public.usuarios_modulos (id_modulo, ds_modulo) FROM stdin;
    public          postgres    false    206   �=       �          0    16691    usuarios_permissoes 
   TABLE DATA           �   COPY public.usuarios_permissoes (id_permissao, cod_grupo_usuario, cod_modulo, fg_abrir, fg_consultar, fg_inserir, fg_alterar, fg_excluir) FROM stdin;
    public          postgres    false    209   >       �           0    0    usuarios_modulos_id_modulo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.usuarios_modulos_id_modulo_seq', 1, false);
          public          postgres    false    205            �           0    0 $   usuarios_permissoes_id_permissao_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.usuarios_permissoes_id_permissao_seq', 1, false);
          public          postgres    false    208            M           2606    16606    agendamentos agendamento_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT agendamento_pkey PRIMARY KEY (id_agendamento);
 G   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT agendamento_pkey;
       public            postgres    false    203            G           2606    16591    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    200            O           2606    16646    lojas pk_lojas 
   CONSTRAINT     Q   ALTER TABLE ONLY public.lojas
    ADD CONSTRAINT pk_lojas PRIMARY KEY (id_loja);
 8   ALTER TABLE ONLY public.lojas DROP CONSTRAINT pk_lojas;
       public            postgres    false    204            I           2606    16596     profissionais profissionais_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.profissionais
    ADD CONSTRAINT profissionais_pkey PRIMARY KEY (id_profissional);
 J   ALTER TABLE ONLY public.profissionais DROP CONSTRAINT profissionais_pkey;
       public            postgres    false    201            S           2606    16688 $   usuarios_grupos usuarios_grupos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.usuarios_grupos
    ADD CONSTRAINT usuarios_grupos_pkey PRIMARY KEY (id_grupo_usuario);
 N   ALTER TABLE ONLY public.usuarios_grupos DROP CONSTRAINT usuarios_grupos_pkey;
       public            postgres    false    207            Q           2606    16675 &   usuarios_modulos usuarios_modulos_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.usuarios_modulos
    ADD CONSTRAINT usuarios_modulos_pkey PRIMARY KEY (id_modulo);
 P   ALTER TABLE ONLY public.usuarios_modulos DROP CONSTRAINT usuarios_modulos_pkey;
       public            postgres    false    206            U           2606    16696 ,   usuarios_permissoes usuarios_permissoes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.usuarios_permissoes
    ADD CONSTRAINT usuarios_permissoes_pkey PRIMARY KEY (id_permissao);
 V   ALTER TABLE ONLY public.usuarios_permissoes DROP CONSTRAINT usuarios_permissoes_pkey;
       public            postgres    false    209            K           2606    16601    usuarios usuarios_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuarios);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    202            V           2606    16607 $   agendamentos fk_agendamento_clientes    FK CONSTRAINT     �   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT fk_agendamento_clientes FOREIGN KEY (cli_id_cliente) REFERENCES public.clientes(id_cliente);
 N   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT fk_agendamento_clientes;
       public          postgres    false    200    2887    203            W           2606    16612 )   agendamentos fk_agendamento_profissionais    FK CONSTRAINT     �   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT fk_agendamento_profissionais FOREIGN KEY (pro_id_profissional) REFERENCES public.profissionais(id_profissional);
 S   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT fk_agendamento_profissionais;
       public          postgres    false    201    203    2889            X           2606    16617 $   agendamentos fk_agendamento_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT fk_agendamento_usuarios FOREIGN KEY (usu_id_usuarios) REFERENCES public.usuarios(id_usuarios);
 N   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT fk_agendamento_usuarios;
       public          postgres    false    203    2891    202            Y           2606    16697 $   usuarios_permissoes fk_grupo_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_permissoes
    ADD CONSTRAINT fk_grupo_usuario FOREIGN KEY (cod_grupo_usuario) REFERENCES public.usuarios_grupos(id_grupo_usuario) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.usuarios_permissoes DROP CONSTRAINT fk_grupo_usuario;
       public          postgres    false    209    2899    207            Z           2606    16702    usuarios_permissoes fk_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_permissoes
    ADD CONSTRAINT fk_modulo FOREIGN KEY (cod_modulo) REFERENCES public.usuarios_modulos(id_modulo) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.usuarios_permissoes DROP CONSTRAINT fk_modulo;
       public          postgres    false    206    2897    209            �     x�m�Mn�0��3�����P~v(�)���.$�JU"Bz�.z��������7o�{��=RH�ފ� TrsjU��Ws��shk� o��Pܟ&�j1/?d���������D�{k��!{՜�sSRUӱ�ߌ�u`0��:�|����bS��j������D탳��T�����x7�_���:�5ez��vm4m�L�P�ғ�������ZV����>�9�����voR�Y�}w_)E�xga��~�l���!��"fL��p�����y�      �   �  x���͎�0���S��JĲ]'����^�I7Zq	4HA�]�-B��c�<B_�I�m��e+9��a�o���H����Y~\�+"�1>�1 F��q��("A(T(m�4�Z��
H�nh�~!�sN���t��0$0�[��tA����v���y��IFyf�5}��v�Ȏ/�Y���Z���o@��k(�>�ݴ!��\� &��@	?�����ǁO��Т�vͬ[�5�NW�9M��5��f�D'vڽ��b�lW�)��Q��T����fv��T���Zi��ꂆ,PJ�:P�}��z���>�n!4�Z�1eD�ڊ�T���8�+�����2�C(�y	��[�đ�2� �5���\t\��%6�,�ݮk7�P���*��5��
���ږ-dw�h��<u��}V�K��0'q�`����\R�;qc/$��� KrZ�t��"��Q���\��h�c.��K��������t'��xc���P�9u�,���p�EX��^�b`
�uű�%%������ ���8�kN���Rѱ�|��%�`�.$Py��y]��q7?p��0��3� d�\�� �w�P�M򒾂I�{Idp�g� n��3dW���A-{�- }�.�ÞƄ��7�h�S��ϵ*v���)d��w���q���i�a߆O��=f�����&e�Ѵv�ɖ��U^�N��UC�䪿f������Z      �   �   x��P�n�0����V)�bme,!`![��ҟ)�i��*��"C��@�H�xw^y�.��!c�5d�g˸:X�l�0�ùx�h.E���� ��M���V�Kʌ���"	�!���yMY^���/��r�(���k�QS?P�Y�<�TE�Q�Hj��R��	�0��O��{�{����%�����G4�m�T�.NK<��#@G]��w��7�4�'��U      �   �   x�3�O�KI-*��S��=��$5_aDNKKMK=K ��ΉE)��9���%��<�.#Π��<������}lI" 5�(3��hd���1��c������������@;�� 3I���y:{��y����P������ (��3      �   �   x���=!�k8'0��I��dw��6�x!�����c��7S|3H.>Oa^Jfk<�5�OC,���Qm5���BV���7+�i(�<��L9�K����i�]90jG��p�W�؇%��}.l������ہR�l@$      �      x������ � �      �      x������ � �      �      x������ � �     