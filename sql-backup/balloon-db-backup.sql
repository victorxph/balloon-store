PGDMP                  
    {            balloon_database     16.0 (Ubuntu 16.0-1.pgdg22.04+1)     16.0 (Ubuntu 16.0-1.pgdg22.04+1) L    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16578    balloon_database    DATABASE     |   CREATE DATABASE balloon_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
     DROP DATABASE balloon_database;
                postgres    false            �            1259    16580    cliente    TABLE     �  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    cpf character(11) NOT NULL,
    celular_cliente character varying(20) NOT NULL,
    email_cliente character varying(100) NOT NULL,
    telefone_cliente character varying(15),
    nome_cliente character varying(50) NOT NULL,
    sobrenome_cliente character varying(50) NOT NULL,
    sexo character(1),
    CONSTRAINT cliente_sexo_check CHECK ((upper((sexo)::text) = ANY (ARRAY['M'::text, 'F'::text])))
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16579    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    216            �           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    215            �            1259    16590    endereco_cliente    TABLE     �  CREATE TABLE public.endereco_cliente (
    cod_end_cliente integer NOT NULL,
    bairro character varying(30),
    cep character(10) NOT NULL,
    cidade character varying(30) NOT NULL,
    complemento character varying(50),
    estado character varying(15) NOT NULL,
    nome_rua character varying(80) NOT NULL,
    num_rua character varying(5) NOT NULL,
    id_cliente integer NOT NULL
);
 $   DROP TABLE public.endereco_cliente;
       public         heap    postgres    false            �            1259    16589 $   endereco_cliente_cod_end_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_cliente_cod_end_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.endereco_cliente_cod_end_cliente_seq;
       public          postgres    false    218            �           0    0 $   endereco_cliente_cod_end_cliente_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.endereco_cliente_cod_end_cliente_seq OWNED BY public.endereco_cliente.cod_end_cliente;
          public          postgres    false    217            �            1259    16667    endereco_forn    TABLE     �  CREATE TABLE public.endereco_forn (
    cod_end_forn integer NOT NULL,
    bairro character varying(30),
    cep character(10) NOT NULL,
    cidade character varying(30) NOT NULL,
    complemento character varying(50),
    estado character varying(15) NOT NULL,
    nome_rua character varying(80) NOT NULL,
    num_rua character varying(5) NOT NULL,
    id_fornecedor integer NOT NULL
);
 !   DROP TABLE public.endereco_forn;
       public         heap    postgres    false            �            1259    16666    endereco_forn_cod_end_forn_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_forn_cod_end_forn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.endereco_forn_cod_end_forn_seq;
       public          postgres    false    233            �           0    0    endereco_forn_cod_end_forn_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.endereco_forn_cod_end_forn_seq OWNED BY public.endereco_forn.cod_end_forn;
          public          postgres    false    232            �            1259    16629    endereco_func    TABLE     �  CREATE TABLE public.endereco_func (
    cod_end_func integer NOT NULL,
    bairro character varying(30),
    cep character(10) NOT NULL,
    cidade character varying(30) NOT NULL,
    complemento character varying(50),
    estado character varying(15) NOT NULL,
    nome_rua character varying(80) NOT NULL,
    num_rua character varying(5) NOT NULL,
    id_funcionario integer NOT NULL
);
 !   DROP TABLE public.endereco_func;
       public         heap    postgres    false            �            1259    16628    endereco_func_cod_end_func_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_func_cod_end_func_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.endereco_func_cod_end_func_seq;
       public          postgres    false    225            �           0    0    endereco_func_cod_end_func_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.endereco_func_cod_end_func_seq OWNED BY public.endereco_func.cod_end_func;
          public          postgres    false    224            �            1259    16652    forn_produto    TABLE     j   CREATE TABLE public.forn_produto (
    id_fornecedor integer NOT NULL,
    id_produto integer NOT NULL
);
     DROP TABLE public.forn_produto;
       public         heap    postgres    false            �            1259    16658 
   fornecedor    TABLE     A  CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    celular_fornecedor character varying(20) NOT NULL,
    cnpj character(14) NOT NULL,
    email_fornecedor character varying(100) NOT NULL,
    nome_fornecedor character varying(50) NOT NULL,
    telefone_fornecedor character varying(15) NOT NULL
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false            �            1259    16657    fornecedor_id_fornecedor_seq    SEQUENCE     �   CREATE SEQUENCE public.fornecedor_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.fornecedor_id_fornecedor_seq;
       public          postgres    false    231            �           0    0    fornecedor_id_fornecedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.fornecedor_id_fornecedor_seq OWNED BY public.fornecedor.id_fornecedor;
          public          postgres    false    230            �            1259    16613    func_pedido    TABLE     i   CREATE TABLE public.func_pedido (
    id_funcionario integer NOT NULL,
    id_pedido integer NOT NULL
);
    DROP TABLE public.func_pedido;
       public         heap    postgres    false            �            1259    16619    funcionario    TABLE     �  CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    cargo_funcionario character varying(50) NOT NULL,
    celular_funcionario character varying(20) NOT NULL,
    cpf character(11) NOT NULL,
    data_contratacao date NOT NULL,
    data_desligamento date,
    email_funcionario character varying(100) NOT NULL,
    nome_funcionario character varying(50) NOT NULL,
    sobrenome_funcionario character varying(50) NOT NULL,
    salario numeric(10,2) NOT NULL,
    sexo character(1),
    status_funcionario boolean NOT NULL,
    telefone_funcionario character varying(15) NOT NULL,
    CONSTRAINT funcionario_sexo_check CHECK ((upper((sexo)::text) = ANY (ARRAY['M'::text, 'F'::text])))
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    16618    funcionario_id_funcionario_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_id_funcionario_seq;
       public          postgres    false    223            �           0    0    funcionario_id_funcionario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;
          public          postgres    false    222            �            1259    16602    pedido    TABLE     L  CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    data_entrega timestamp without time zone NOT NULL,
    data_pedido timestamp without time zone NOT NULL,
    metodo_pagamento character varying(20),
    qtde_itens integer NOT NULL,
    status_pedido character varying(20) NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.pedido;
       public         heap    postgres    false            �            1259    16601    pedido_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedido_id_pedido_seq;
       public          postgres    false    220            �           0    0    pedido_id_pedido_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pedido_id_pedido_seq OWNED BY public.pedido.id_pedido;
          public          postgres    false    219            �            1259    16640    pedido_produto    TABLE     h   CREATE TABLE public.pedido_produto (
    id_pedido integer NOT NULL,
    id_produto integer NOT NULL
);
 "   DROP TABLE public.pedido_produto;
       public         heap    postgres    false            �            1259    16646    produto    TABLE     0  CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    categoria character varying(50) NOT NULL,
    descricao character varying(255),
    fabricante character varying(50),
    nome_produto character varying(50) NOT NULL,
    qtde_estoque integer NOT NULL,
    valor numeric(8,2) NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    16645    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_id_produto_seq;
       public          postgres    false    228            �           0    0    produto_id_produto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;
          public          postgres    false    227            �           2604    16583    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16593     endereco_cliente cod_end_cliente    DEFAULT     �   ALTER TABLE ONLY public.endereco_cliente ALTER COLUMN cod_end_cliente SET DEFAULT nextval('public.endereco_cliente_cod_end_cliente_seq'::regclass);
 O   ALTER TABLE public.endereco_cliente ALTER COLUMN cod_end_cliente DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16670    endereco_forn cod_end_forn    DEFAULT     �   ALTER TABLE ONLY public.endereco_forn ALTER COLUMN cod_end_forn SET DEFAULT nextval('public.endereco_forn_cod_end_forn_seq'::regclass);
 I   ALTER TABLE public.endereco_forn ALTER COLUMN cod_end_forn DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16632    endereco_func cod_end_func    DEFAULT     �   ALTER TABLE ONLY public.endereco_func ALTER COLUMN cod_end_func SET DEFAULT nextval('public.endereco_func_cod_end_func_seq'::regclass);
 I   ALTER TABLE public.endereco_func ALTER COLUMN cod_end_func DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16661    fornecedor id_fornecedor    DEFAULT     �   ALTER TABLE ONLY public.fornecedor ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedor_id_fornecedor_seq'::regclass);
 G   ALTER TABLE public.fornecedor ALTER COLUMN id_fornecedor DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16622    funcionario id_funcionario    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN id_funcionario DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16605    pedido id_pedido    DEFAULT     t   ALTER TABLE ONLY public.pedido ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedido_id_pedido_seq'::regclass);
 ?   ALTER TABLE public.pedido ALTER COLUMN id_pedido DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16649    produto id_produto    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN id_produto DROP DEFAULT;
       public          postgres    false    228    227    228            }          0    16580    cliente 
   TABLE DATA           �   COPY public.cliente (id_cliente, cpf, celular_cliente, email_cliente, telefone_cliente, nome_cliente, sobrenome_cliente, sexo) FROM stdin;
    public          postgres    false    216   _c                 0    16590    endereco_cliente 
   TABLE DATA           �   COPY public.endereco_cliente (cod_end_cliente, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_cliente) FROM stdin;
    public          postgres    false    218   �e       �          0    16667    endereco_forn 
   TABLE DATA           �   COPY public.endereco_forn (cod_end_forn, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_fornecedor) FROM stdin;
    public          postgres    false    233   h       �          0    16629    endereco_func 
   TABLE DATA           �   COPY public.endereco_func (cod_end_func, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_funcionario) FROM stdin;
    public          postgres    false    225   �i       �          0    16652    forn_produto 
   TABLE DATA           A   COPY public.forn_produto (id_fornecedor, id_produto) FROM stdin;
    public          postgres    false    229   �k       �          0    16658 
   fornecedor 
   TABLE DATA           �   COPY public.fornecedor (id_fornecedor, celular_fornecedor, cnpj, email_fornecedor, nome_fornecedor, telefone_fornecedor) FROM stdin;
    public          postgres    false    231   l       �          0    16613    func_pedido 
   TABLE DATA           @   COPY public.func_pedido (id_funcionario, id_pedido) FROM stdin;
    public          postgres    false    221   :m       �          0    16619    funcionario 
   TABLE DATA           �   COPY public.funcionario (id_funcionario, cargo_funcionario, celular_funcionario, cpf, data_contratacao, data_desligamento, email_funcionario, nome_funcionario, sobrenome_funcionario, salario, sexo, status_funcionario, telefone_funcionario) FROM stdin;
    public          postgres    false    223   �m       �          0    16602    pedido 
   TABLE DATA              COPY public.pedido (id_pedido, data_entrega, data_pedido, metodo_pagamento, qtde_itens, status_pedido, id_cliente) FROM stdin;
    public          postgres    false    220   �p       �          0    16640    pedido_produto 
   TABLE DATA           ?   COPY public.pedido_produto (id_pedido, id_produto) FROM stdin;
    public          postgres    false    226   Zr       �          0    16646    produto 
   TABLE DATA           r   COPY public.produto (id_produto, categoria, descricao, fabricante, nome_produto, qtde_estoque, valor) FROM stdin;
    public          postgres    false    228   �r       �           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 20, true);
          public          postgres    false    215            �           0    0 $   endereco_cliente_cod_end_cliente_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.endereco_cliente_cod_end_cliente_seq', 20, true);
          public          postgres    false    217            �           0    0    endereco_forn_cod_end_forn_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.endereco_forn_cod_end_forn_seq', 10, true);
          public          postgres    false    232            �           0    0    endereco_func_cod_end_func_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.endereco_func_cod_end_func_seq', 40, true);
          public          postgres    false    224            �           0    0    fornecedor_id_fornecedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.fornecedor_id_fornecedor_seq', 10, true);
          public          postgres    false    230            �           0    0    funcionario_id_funcionario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 95, true);
          public          postgres    false    222            �           0    0    pedido_id_pedido_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pedido_id_pedido_seq', 20, true);
          public          postgres    false    219            �           0    0    produto_id_produto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_id_produto_seq', 21, true);
          public          postgres    false    227            �           2606    16588    cliente cliente_cpf_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpf_key UNIQUE (cpf);
 A   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cpf_key;
       public            postgres    false    216            �           2606    16586    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    216            �           2606    16595 &   endereco_cliente endereco_cliente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_pkey PRIMARY KEY (cod_end_cliente);
 P   ALTER TABLE ONLY public.endereco_cliente DROP CONSTRAINT endereco_cliente_pkey;
       public            postgres    false    218            �           2606    16672     endereco_forn endereco_forn_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.endereco_forn
    ADD CONSTRAINT endereco_forn_pkey PRIMARY KEY (cod_end_forn);
 J   ALTER TABLE ONLY public.endereco_forn DROP CONSTRAINT endereco_forn_pkey;
       public            postgres    false    233            �           2606    16634     endereco_func endereco_func_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.endereco_func
    ADD CONSTRAINT endereco_func_pkey PRIMARY KEY (cod_end_func);
 J   ALTER TABLE ONLY public.endereco_func DROP CONSTRAINT endereco_func_pkey;
       public            postgres    false    225            �           2606    16656    forn_produto forn_produto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.forn_produto
    ADD CONSTRAINT forn_produto_pkey PRIMARY KEY (id_fornecedor, id_produto);
 H   ALTER TABLE ONLY public.forn_produto DROP CONSTRAINT forn_produto_pkey;
       public            postgres    false    229    229            �           2606    16665    fornecedor fornecedor_cnpj_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_cnpj_key UNIQUE (cnpj);
 H   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_cnpj_key;
       public            postgres    false    231            �           2606    16663    fornecedor fornecedor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public            postgres    false    231            �           2606    16617    func_pedido func_pedido_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.func_pedido
    ADD CONSTRAINT func_pedido_pkey PRIMARY KEY (id_funcionario, id_pedido);
 F   ALTER TABLE ONLY public.func_pedido DROP CONSTRAINT func_pedido_pkey;
       public            postgres    false    221    221            �           2606    16627    funcionario funcionario_cpf_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_cpf_key UNIQUE (cpf);
 I   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_cpf_key;
       public            postgres    false    223            �           2606    16625    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    223            �           2606    16607    pedido pedido_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public            postgres    false    220            �           2606    16644 "   pedido_produto pedido_produto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.pedido_produto
    ADD CONSTRAINT pedido_produto_pkey PRIMARY KEY (id_pedido, id_produto);
 L   ALTER TABLE ONLY public.pedido_produto DROP CONSTRAINT pedido_produto_pkey;
       public            postgres    false    226    226            �           2606    16651    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    228            �           2606    16596 1   endereco_cliente endereco_cliente_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 [   ALTER TABLE ONLY public.endereco_cliente DROP CONSTRAINT endereco_cliente_id_cliente_fkey;
       public          postgres    false    216    3280    218            �           2606    16673 .   endereco_forn endereco_forn_id_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco_forn
    ADD CONSTRAINT endereco_forn_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);
 X   ALTER TABLE ONLY public.endereco_forn DROP CONSTRAINT endereco_forn_id_fornecedor_fkey;
       public          postgres    false    231    233    3302            �           2606    16635 /   endereco_func endereco_func_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco_func
    ADD CONSTRAINT endereco_func_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 Y   ALTER TABLE ONLY public.endereco_func DROP CONSTRAINT endereco_func_id_funcionario_fkey;
       public          postgres    false    223    225    3290            �           2606    16608    pedido pedido_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_cliente_fkey;
       public          postgres    false    3280    220    216            }   y  x�}�=��@���HI�C��ܝ�|�VN�iư�7������Q�t����2x������y�8��a'�%X���MGap�{�j�v%����NU�S���`��.�y�����*�²V�y SS�'��P��(�,<],�3�D�Eh!�Q��)�Dx�!��Ø�y`���"2�l���e&�S�s��������V�y��(�ʴ<4���LN���/��<�T8�18�
��GJUEQUm�e�x%"��)*���`E������US�LM����!�C�yƱ�%Ef����S1:�>�$�^I���4�c���kMH[P�23��y��MRgg	N��^�n	���b�jUJeTa�2w�\u��8x����w��3R��Z~�1/��n��Ѓp߃\����������榮���(sGq[�kl�/Y�NP��Guݱ��[сܖDL�-ode�1S�5[7�oj�q]�l�lF�J�I��*+��uɶ���Ǹ*)686�X-�&�C�S�Ǿ0=�]ɲA��H��kHG�gƺsHw�aPwV�F�Ɩ)�'sk/<k$-l���8.��O����j���Y}M���'vp���0�;�X�]Ez�[�e��E�(*��^,� n��#           x����r�0�ϻO�pG+1!Iih]����u���C�=�Ax�J��Cz���c#�Yݴ� �8�Di�X�~Q�ag`��
��
VS�<��%[���(�+mĶnj�v�xς`���n��E	�-(�a�v��Ҵ�����[�(/�����V�0�٩�P����޻u3pJc�a��-��Y���z����`��HTs�,�~���"� �I���$%��wF���L��P��Ƹ�˻��9��&���/:�{d�pkl˻����Nkz��X����~�"ל���56t���r�{���Y���\Y�A*�Q��}8Q���+o��?G��N��c(�@�P������2�I�J�zV=�p]�Ht��꘏�������}���pX^�Ky�g6Bͤ���5`:�Ky���eGw�4�k��.
p��?��(A����W���_��&HW�0�����u�^u�S���d�L. � ���%=f����@K/A[w���MZܓ���#�? ��GD      �   y  x�e��N�0�׿�⼀G���lB��@��+6��HF��i<ΰ�鋍�Q����w�Йi�J��J�UM�_��|֯3�La�cwbZ�gPB���L��-#
KY�ag��<<;>2)�X��d��-�ȱe?��Ժ��g���Rɺ�����>1�Rr�;��|6�`�!$!Z��`�3GϪ�M�Bs��w��7�=_�2]��+b���FfJZ3:�u޾�i6hGwpa���G��U��(�ޟE�L0�k�g����6��5r�P�j	�%9��<8�X�L�]/�oRj%�O[�P� �ck����u�NT��{�?�Ĉ�\L�N�9���*C�އ�i`D�Bh_�G⬗�M�U�x�!������      �      x���=r�0F��S�� E �(�v+a$�+7k��AF!<���I�D E1Q��?��'8̪�mp!�I�+�`}��XI����k�x�a]��@l���Qx�;bKj,A(����ul[�Օ�]g�'�a��鱪�X�/(��т����
מ~�v� �Q�6)�١��}!X��#�\�cC�j�����E�#�d�-��J'&�~�jc�U����s(:�&vF+PŤ�L�r���v�ݻƾ����ع��w���O2�)�����V�&�[״��ިC��#�[����(T�@(�g�B�#m]��T@1�7��&�"s(��v���9�������{��PM�d��s�H{t����P�PP���zKZd��7&"�/�xl=A9xv�,䕩u��O�T:G9vm���k"�~塣�P^�m�v,�����=�r�� �g<z�o���fP�~^����_"5���*���_�� �9{��r0m�sdZ�f�}�����e�i���H��cZ~i�:23f�6M��=v�&��� @�Kb      �   A   x�˹�0��[�G<����:l怛�Uq��,M�C��C�b��_�:���v����T�}�t��      �     x�uӽN�0������(��7
	1��%�UJb��x��=�o0������N���b�w[k����·�a��e�}Z��8����7���]]g�8�(Jq�H�1S����LS�К�D*���n��LӀ0��Dj���n��}6
jAX�Q2�P[G��]���:�q�L�1����)��SV
�Ax�YR�X_g����)p ����C~?�`t
A��ar��X���.�mĊ.��*w�'=b����+����s�N+�[�4�/p�      �   P   x�˹@��[��{D���밑��L���6=:d��R����!W^�_LZ.y�����X~L��l9̑������ �V�      �     x�u��n�0�g�)2����wk4I��-�S�b���R���P�/VR��;�^<�}<��w�J��Guժ��o�@֌��j�̊\p¸ȋ��J	��g�e� ϟ�>}�Rw�;s w�vf [ݝ$)
J�ݡ'2��>R�C���܌��$s�	�X$��SO��a�O�j�K����.�y��{���y���G|���9�U�5��*me�O����ސ�h~�0J��sML!"��ؔ�Jg`�7.�/�>()��oК"hQ@hb�y����oP��'�٘���Q	;��#,��y$버�.�H�b��뢯$�3��%L�G4N6jg��l�%몂�D*ˈ�3>%i������5dk��{����@Ժ�T75<�q�M&(�r������^��I5����׿������u�'�A�`��n��%��=�GPK��׆<��+����a���g�r���x����	n���Mn��ҭL7��G7(���`��f�1/14���{���^��9��+4Rw����ˑ�Џ�|Q�o���^el/W��L-�5�+xKL3��?�ݫ��4Ug|U7�����|5��S�ܚ�5���[�6VC/5��]�����x�65���U�V�3H���\��_lVX0���x�r��ư����]�p��e^�lZ���q.3�xs�n���dw���/���	-i4m�r�a��2�e��h����`����Z̑�Z�܊r͍�6XS���A�J�`�	��������@����j���NlU      �   �  x���An�0EיS�T�c;q���� �P�*�B��^��s�bŅ:��R$V#1��g;�X��A�L%���g\
��l�n����Z,����uM���^��fS��}}��@<���R�J+dy�+�������е�۩ΘT�*m�M� ��l޼�]#��æ�lwM��d�tHN�r!�-c�,4Mf�ό�v]��}���a���g����F�&|�T��ޭ�����.�F6����/��TF�HK��F^��*	q�L�A�HTP���d�����*R�.8$��/n
{�Rb�0AE$E��@�� Gt-��?w:��	&J5��qt�_MB���h�|훼�"�֩��}�BQ�F�*�.@?~n�PF(�ڂ�8�vN<<��1	���#<M�fI/OD�*gv�      �   I   x�˹�0İxY�G<����:l��������3G6��\46���X���q��d�ň���j����      �     x�mT�n�8=O�bN�SI����8u��N�z���L$F&LsT�J��)z(������v(9�S0H���4��R�hTp�V��a�!�[��H��IÒ6�����d�i��,�a'�Qo4:��M��c���G]0z��-\l�킷�i�$w��YGӇ9��k�E��k���7��x�s�ym�%�'�v���F�_,���5?.����N;2��M�p�����:��M��b������%�����\~�?��x�.!°K������U]UͿp��l�o��,$�?�~�w3���o��
.�U�M؈�]Y�����Yt`8e}���)E�D+�_:'X([J-p�絖�D\�W�(-:�cכ�O�<�$Ц3�����Su�%
&�ӡ$D�'�Fz�&�&��4�/-�k3�~حx*AMV��E��Jߺ�O���0�*�@/���Ӭ7�*)���t�Yg�%U_|�ת]p����	�c1�Ҭ����se�YnWڙ�ټ���)�ՒՓ$�<"��dy-��]�������n�A9i"�B�3Ն=?��-�&L�=�D^i�/��|FVo��'.k^Q���휥��G��7
�J��u�mq:��.�Gz�q�Ix���&�`�3N�F�8ݥ�u#�����L��:zO��Zl�n�[2Z��[T;Z-��Y�e�+e��eP�JY��R~
x�c�DK�#I�5]�o��r���Ke�函����o�������w�A�3��Lp�w�%�g��v_��{��N��     