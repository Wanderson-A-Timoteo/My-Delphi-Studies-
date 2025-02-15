PGDMP                         z            Estoque_Farmacia    13.3    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16469    Estoque_Farmacia    DATABASE     r   CREATE DATABASE "Estoque_Farmacia" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 "   DROP DATABASE "Estoque_Farmacia";
                postgres    false            �            1259    16480    movimentacoes    TABLE     �   CREATE TABLE public.movimentacoes (
    id integer NOT NULL,
    tipo character varying(20) NOT NULL,
    data_hora date NOT NULL,
    responsavel character varying(30) NOT NULL,
    observacao text NOT NULL
);
 !   DROP TABLE public.movimentacoes;
       public         heap    postgres    false            �            1259    16478    movimentacoes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movimentacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.movimentacoes_id_seq;
       public          postgres    false    203            �           0    0    movimentacoes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.movimentacoes_id_seq OWNED BY public.movimentacoes.id;
          public          postgres    false    202            �            1259    16491    movimentacoes_produtos    TABLE     �   CREATE TABLE public.movimentacoes_produtos (
    id integer NOT NULL,
    id_produtos integer NOT NULL,
    id_movimentacoes integer NOT NULL,
    quantidade integer NOT NULL
);
 *   DROP TABLE public.movimentacoes_produtos;
       public         heap    postgres    false            �            1259    16489    movimentacoes_produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movimentacoes_produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.movimentacoes_produtos_id_seq;
       public          postgres    false    205            �           0    0    movimentacoes_produtos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.movimentacoes_produtos_id_seq OWNED BY public.movimentacoes_produtos.id;
          public          postgres    false    204            �            1259    16472    produtos    TABLE     �   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    fabricante character varying(30) NOT NULL,
    validade date NOT NULL,
    estoque_atual integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    16470    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    201            �           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    200            1           2604    16483    movimentacoes id    DEFAULT     t   ALTER TABLE ONLY public.movimentacoes ALTER COLUMN id SET DEFAULT nextval('public.movimentacoes_id_seq'::regclass);
 ?   ALTER TABLE public.movimentacoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            2           2604    16494    movimentacoes_produtos id    DEFAULT     �   ALTER TABLE ONLY public.movimentacoes_produtos ALTER COLUMN id SET DEFAULT nextval('public.movimentacoes_produtos_id_seq'::regclass);
 H   ALTER TABLE public.movimentacoes_produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            /           2604    16475    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    16480    movimentacoes 
   TABLE DATA           U   COPY public.movimentacoes (id, tipo, data_hora, responsavel, observacao) FROM stdin;
    public          postgres    false    203   �       �          0    16491    movimentacoes_produtos 
   TABLE DATA           _   COPY public.movimentacoes_produtos (id, id_produtos, id_movimentacoes, quantidade) FROM stdin;
    public          postgres    false    205   �        �          0    16472    produtos 
   TABLE DATA           Q   COPY public.produtos (id, nome, fabricante, validade, estoque_atual) FROM stdin;
    public          postgres    false    201   �        �           0    0    movimentacoes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.movimentacoes_id_seq', 28, true);
          public          postgres    false    202            �           0    0    movimentacoes_produtos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.movimentacoes_produtos_id_seq', 64, true);
          public          postgres    false    204            �           0    0    produtos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.produtos_id_seq', 27, true);
          public          postgres    false    200            6           2606    16488     movimentacoes movimentacoes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.movimentacoes
    ADD CONSTRAINT movimentacoes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.movimentacoes DROP CONSTRAINT movimentacoes_pkey;
       public            postgres    false    203            8           2606    16496 2   movimentacoes_produtos movimentacoes_produtos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.movimentacoes_produtos
    ADD CONSTRAINT movimentacoes_produtos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.movimentacoes_produtos DROP CONSTRAINT movimentacoes_produtos_pkey;
       public            postgres    false    205            4           2606    16477    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    201            :           2606    16502 C   movimentacoes_produtos movimentacoes_produtos_id_movimentacoes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movimentacoes_produtos
    ADD CONSTRAINT movimentacoes_produtos_id_movimentacoes_fkey FOREIGN KEY (id_movimentacoes) REFERENCES public.movimentacoes(id);
 m   ALTER TABLE ONLY public.movimentacoes_produtos DROP CONSTRAINT movimentacoes_produtos_id_movimentacoes_fkey;
       public          postgres    false    2870    203    205            9           2606    16497 >   movimentacoes_produtos movimentacoes_produtos_id_produtos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movimentacoes_produtos
    ADD CONSTRAINT movimentacoes_produtos_id_produtos_fkey FOREIGN KEY (id_produtos) REFERENCES public.produtos(id);
 h   ALTER TABLE ONLY public.movimentacoes_produtos DROP CONSTRAINT movimentacoes_produtos_id_produtos_fkey;
       public          postgres    false    2868    201    205            �   �   x���=�0F��� N�J+G���3���)��
�a`�.�۷��,��G��:�f��\����� a;��|�l��K��yQ����@9�݉�nn�T˥���->�/�ӵ"�T �J��&�ׯ8���jq8������`�B�
=B����6����4"	u�_�,���P�cZ�K�O8�O��?      �   S   x�-���0�x�*@L�]��%N%?N��sY��c>����yr��͵�a���)���JR|�iލ��o&jH�P��n�^ >
�      �   D   x�32�H,JLN-I����tL�H�4202�54�56�46�22�t�KL�/�t�I��ɚ�d-�b���� �?�     