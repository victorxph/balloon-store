--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Ubuntu 16.0-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.0 (Ubuntu 16.0-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
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


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: endereco_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco_cliente (
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


ALTER TABLE public.endereco_cliente OWNER TO postgres;

--
-- Name: endereco_cliente_cod_end_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_cliente_cod_end_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_cliente_cod_end_cliente_seq OWNER TO postgres;

--
-- Name: endereco_cliente_cod_end_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_cliente_cod_end_cliente_seq OWNED BY public.endereco_cliente.cod_end_cliente;


--
-- Name: endereco_forn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco_forn (
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


ALTER TABLE public.endereco_forn OWNER TO postgres;

--
-- Name: endereco_forn_cod_end_forn_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_forn_cod_end_forn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_forn_cod_end_forn_seq OWNER TO postgres;

--
-- Name: endereco_forn_cod_end_forn_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_forn_cod_end_forn_seq OWNED BY public.endereco_forn.cod_end_forn;


--
-- Name: endereco_func; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco_func (
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


ALTER TABLE public.endereco_func OWNER TO postgres;

--
-- Name: endereco_func_cod_end_func_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_func_cod_end_func_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_func_cod_end_func_seq OWNER TO postgres;

--
-- Name: endereco_func_cod_end_func_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_func_cod_end_func_seq OWNED BY public.endereco_func.cod_end_func;


--
-- Name: forn_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forn_produto (
    id_fornecedor integer NOT NULL,
    id_produto integer NOT NULL
);


ALTER TABLE public.forn_produto OWNER TO postgres;

--
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    celular_fornecedor character varying(20) NOT NULL,
    cnpj character(14) NOT NULL,
    email_fornecedor character varying(100) NOT NULL,
    nome_fornecedor character varying(50) NOT NULL,
    telefone_fornecedor character varying(15) NOT NULL
);


ALTER TABLE public.fornecedor OWNER TO postgres;

--
-- Name: fornecedor_id_fornecedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fornecedor_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fornecedor_id_fornecedor_seq OWNER TO postgres;

--
-- Name: fornecedor_id_fornecedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fornecedor_id_fornecedor_seq OWNED BY public.fornecedor.id_fornecedor;


--
-- Name: func_pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.func_pedido (
    id_funcionario integer NOT NULL,
    id_pedido integer NOT NULL
);


ALTER TABLE public.func_pedido OWNER TO postgres;

--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
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


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNER TO postgres;

--
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;


--
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    data_entrega timestamp without time zone NOT NULL,
    data_pedido timestamp without time zone NOT NULL,
    metodo_pagamento character varying(20),
    qtde_itens integer NOT NULL,
    status_pedido character varying(20) NOT NULL,
    id_cliente integer NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedido_id_pedido_seq OWNER TO postgres;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_id_pedido_seq OWNED BY public.pedido.id_pedido;


--
-- Name: pedido_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido_produto (
    id_pedido integer NOT NULL,
    id_produto integer NOT NULL
);


ALTER TABLE public.pedido_produto OWNER TO postgres;

--
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    categoria character varying(50) NOT NULL,
    descricao character varying(255),
    fabricante character varying(50),
    nome_produto character varying(50) NOT NULL,
    qtde_estoque integer NOT NULL,
    valor numeric(8,2) NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produto_id_produto_seq OWNER TO postgres;

--
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: endereco_cliente cod_end_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_cliente ALTER COLUMN cod_end_cliente SET DEFAULT nextval('public.endereco_cliente_cod_end_cliente_seq'::regclass);


--
-- Name: endereco_forn cod_end_forn; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_forn ALTER COLUMN cod_end_forn SET DEFAULT nextval('public.endereco_forn_cod_end_forn_seq'::regclass);


--
-- Name: endereco_func cod_end_func; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_func ALTER COLUMN cod_end_func SET DEFAULT nextval('public.endereco_func_cod_end_func_seq'::regclass);


--
-- Name: fornecedor id_fornecedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedor_id_fornecedor_seq'::regclass);


--
-- Name: funcionario id_funcionario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);


--
-- Name: pedido id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedido_id_pedido_seq'::regclass);


--
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, cpf, celular_cliente, email_cliente, telefone_cliente, nome_cliente, sobrenome_cliente, sexo) FROM stdin;
1	12345678900	(11) 98765-4321	maria.silva@email.com	(11) 1234-5678	Maria	Silva	F
2	23456789011	(22) 98765-4321	joao.santos@email.com	(22) 1234-5678	João	Santos	M
3	34567890122	(33) 98765-4321	ana.pereira@email.com	(33) 1234-5678	Ana	Pereira	F
4	45678901233	(44) 98765-4321	pedro.oliveira@email.com	(44) 1234-5678	Pedro	Oliveira	M
5	56789012344	(55) 98765-4321	lucia.rodrigues@email.com	(55) 1234-5678	Lúcia	Rodrigues	F
6	67890123455	(66) 98765-4321	marcos.costa@email.com	(66) 1234-5678	Marcos	Costa	M
7	78901234566	(77) 98765-4321	carla.sousa@email.com	(77) 1234-5678	Carla	Sousa	F
8	98012345766	(88) 98765-4321	ricardo.ferreira@email.com	(88) 1234-5678	Ricardo	Ferreira	M
9	90123456788	(99) 98765-4321	catarina.mendes@email.com	(99) 1234-5678	Catarina	Mendes	F
10	16283567899	(10) 98765-4321	antonio.gomes@email.com	(10) 1234-5678	Antônio	Gomes	M
11	11234567800	(11) 98765-4321	beatriz.almeida@email.com	(11) 1234-5678	Beatriz	Almeida	F
12	22345678911	(22) 98765-4321	hugo.ribeiro@email.com	(22) 1234-5678	Hugo	Ribeiro	M
13	33456789022	(33) 98765-4321	isabel.carvalho@email.com	(33) 1234-5678	Isabel	Carvalho	F
14	44567890133	(44) 98765-4321	luis.machado@email.com	(44) 1234-5678	Luís	Machado	M
15	55678901244	(55) 98765-4321	sofia.fonseca@email.com	(55) 1234-5678	Sofia	Fonseca	F
16	66789012355	(66) 98765-4321	tiago.barbosa@email.com	(66) 1234-5678	Tiago	Barbosa	M
17	77890123466	(77) 98765-4321	marta.santana@email.com	(77) 1234-5678	Marta	Santana	F
18	89012345766	(88) 98765-4321	rui.goncalves@email.com	(88) 1234-5678	Rui	Gonçalves	M
19	40125126788	(99) 98765-4321	lara.ferreira@email.com	(99) 1234-5678	Lara	Ferreira	F
20	01234567899	(10) 98765-4321	andre.rocha@email.com	(10) 1234-5678	André	Rocha	M
\.


--
-- Data for Name: endereco_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco_cliente (cod_end_cliente, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_cliente) FROM stdin;
1	Centro	12345-678 	São Paulo	Apt 101	SP	Rua A	123	1
2	Vila Maria	23456-789 	Rio de Janeiro	Casa 1	RJ	Avenida B	456	2
3	Jardim Botânico	34567-890 	Curitiba	Sala 3	PR	Travessa C	789	3
4	Boa Vista	45678-901 	Recife	Loja 42	PE	Praça D	987	4
5	Centro	56789-012 	Belo Horizonte	Bloco A	MG	Avenida E	654	5
6	Jardim São Paulo	67890-123 	Fortaleza	Casa 5	CE	Rua F	321	6
7	Centro	78901-234 	Salvador	Apt 202	BA	Praça G	654	7
8	Boa Vista	89012-345 	Recife	Casa 3	PE	Rua H	123	8
9	Copacabana	90123-456 	Rio de Janeiro	Sala 1	RJ	Avenida I	789	9
10	Barra Funda	01234-567 	São Paulo	Loja 2	SP	Rua J	456	10
11	Centro	11234-567 	São Paulo	Apt 303	SP	Avenida K	987	11
12	Vila Maria	22345-678 	Rio de Janeiro	Casa 2	RJ	Travessa L	321	12
13	Jardim Botânico	33456-789 	Curitiba	Sala 2	PR	Rua M	123	13
14	Boa Vista	44567-890 	Recife	Loja 12	PE	Avenida N	789	14
15	Centro	55678-901 	Belo Horizonte	Bloco B	MG	Rua O	456	15
16	Jardim São Paulo	66789-012 	Fortaleza	Casa 7	CE	Travessa P	321	16
17	Centro	77890-123 	Salvador	Apt 404	BA	Praça Q	654	17
18	Boa Vista	89012-345 	Recife	Casa 4	PE	Rua R	123	18
19	Copacabana	90123-456 	Rio de Janeiro	Sala 6	RJ	Avenida S	789	19
20	Barra Funda	01234-567 	São Paulo	Loja 3	SP	Rua T	456	20
\.


--
-- Data for Name: endereco_forn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco_forn (cod_end_forn, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_fornecedor) FROM stdin;
1	Centro	12345-678 	São Paulo	Apt 101	SP	Rua A	123	1
2	Vila Maria	23456-789 	Rio de Janeiro	Casa 1	RJ	Avenida B	456	2
3	Jardim Botânico	34567-890 	Curitiba	Sala 3	PR	Travessa C	789	3
4	Boa Vista	45678-901 	Recife	Loja 42	PE	Praça D	987	4
5	Centro	56789-012 	Belo Horizonte	Bloco A	MG	Avenida E	654	5
6	Jardim São Paulo	67890-123 	Fortaleza	Casa 5	CE	Rua F	321	6
7	Centro	78901-234 	Salvador	Apt 202	BA	Praça G	654	7
8	Boa Vista	89012-345 	Recife	Casa 3	PE	Rua H	123	8
9	Copacabana	90123-456 	Rio de Janeiro	Sala 1	RJ	Avenida I	789	9
10	Barra Funda	01234-567 	São Paulo	Loja 2	SP	Rua J	456	10
\.


--
-- Data for Name: endereco_func; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco_func (cod_end_func, bairro, cep, cidade, complemento, estado, nome_rua, num_rua, id_funcionario) FROM stdin;
21	Centro	12345-678 	São Paulo	Apt 101	SP	Rua A	123	76
22	Vila Maria	23456-789 	Rio de Janeiro	Casa 1	RJ	Avenida B	456	77
23	Jardim Botânico	34567-890 	Curitiba	Sala 3	PR	Travessa C	789	78
24	Boa Vista	45678-901 	Recife	Loja 42	PE	Praça D	987	79
25	Centro	56789-012 	Belo Horizonte	Bloco A	MG	Avenida E	654	80
26	Jardim São Paulo	67890-123 	Fortaleza	Casa 5	CE	Rua F	321	81
27	Centro	78901-234 	Salvador	Apt 202	BA	Praça G	654	82
28	Boa Vista	89012-345 	Recife	Casa 3	PE	Rua H	123	83
29	Copacabana	90123-456 	Rio de Janeiro	Sala 1	RJ	Avenida I	789	84
30	Barra Funda	01234-567 	São Paulo	Loja 2	SP	Rua J	456	85
31	Centro	11234-567 	São Paulo	Apt 303	SP	Avenida K	987	86
32	Vila Maria	22345-678 	Rio de Janeiro	Casa 2	RJ	Travessa L	321	87
33	Jardim Botânico	33456-789 	Curitiba	Sala 2	PR	Rua M	123	88
34	Boa Vista	44567-890 	Recife	Loja 12	PE	Avenida N	789	89
35	Centro	55678-901 	Belo Horizonte	Bloco B	MG	Rua O	456	90
36	Jardim São Paulo	66789-012 	Fortaleza	Casa 7	CE	Travessa P	321	91
37	Centro	77890-123 	Salvador	Apt 404	BA	Praça Q	654	92
38	Boa Vista	89012-345 	Recife	Casa 4	PE	Rua R	123	93
39	Copacabana	90123-456 	Rio de Janeiro	Sala 6	RJ	Avenida S	789	94
40	Barra Funda	01234-567 	São Paulo	Loja 3	SP	Rua T	456	95
\.


--
-- Data for Name: forn_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forn_produto (id_fornecedor, id_produto) FROM stdin;
\.


--
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fornecedor (id_fornecedor, celular_fornecedor, cnpj, email_fornecedor, nome_fornecedor, telefone_fornecedor) FROM stdin;
1	(11) 9876-5432	12345678900000	fornecedor1@email.com	Fornecedor ABC	(11) 1234-5678
2	(22) 9876-5432	23456789011111	fornecedor2@email.com	Fornecedor XYZ	(22) 1234-5678
3	(33) 9876-5432	34567890122222	fornecedor3@email.com	Fornecedor 123	(33) 1234-5678
4	(44) 9876-5432	45678901233333	fornecedor4@email.com	Fornecedor Ltda	(44) 1234-5678
5	(55) 9876-5432	56789012344444	fornecedor5@email.com	Fornecedor S.A.	(55) 1234-5678
6	(66) 9876-5432	67890123455555	fornecedor6@email.com	Fornecedor Global	(66) 1234-5678
7	(77) 9876-5432	78901234566666	fornecedor7@email.com	Fornecedor Nacional	(77) 1234-5678
8	(88) 9876-5432	89012345677777	fornecedor8@email.com	Fornecedor Regional	(88) 1234-5678
9	(99) 9876-5432	90123456788888	fornecedor9@email.com	Fornecedor Internacional	(99) 1234-5678
10	(10) 9876-5432	01234567899999	fornecedor10@email.com	Fornecedor Importação	(10) 1234-5678
\.


--
-- Data for Name: func_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.func_pedido (id_funcionario, id_pedido) FROM stdin;
\.


--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionario (id_funcionario, cargo_funcionario, celular_funcionario, cpf, data_contratacao, data_desligamento, email_funcionario, nome_funcionario, sobrenome_funcionario, salario, sexo, status_funcionario, telefone_funcionario) FROM stdin;
76	Gerente de Vendas	(11) 9876-5432	12345678900	2022-01-15	\N	gerente@email.com	Carlos	Silva	5500.00	M	t	(11) 1234-5678
77	Atendente de Vendas	(22) 9876-5432	23456789011	2022-03-20	\N	atendente1@email.com	Mariana	Santos	2200.00	F	t	(22) 1234-5678
78	Atendente de Vendas	(33) 9876-5432	34567890122	2022-04-05	\N	atendente2@email.com	Pedro	Pereira	2200.00	M	t	(33) 1234-5678
79	Estoquista	(44) 9876-5432	45678901233	2022-05-10	\N	estoquista1@email.com	Ana	Oliveira	2000.00	F	t	(44) 1234-5678
80	Estoquista	(55) 9876-5432	56789012344	2022-06-15	\N	estoquista2@email.com	Luis	Rodrigues	2000.00	M	t	(55) 1234-5678
81	Gerente de RH	(66) 9876-5432	67890123455	2022-07-20	\N	rh@email.com	Carla	Costa	6000.00	F	t	(66) 1234-5678
82	Recrutador	(77) 9876-5432	78901234566	2022-08-25	\N	recrutador1@email.com	Ricardo	Sousa	2800.00	M	t	(77) 1234-5678
83	Recrutador	(88) 9876-5432	90022345677	2022-09-30	\N	recrutador2@email.com	Catarina	Ferreira	2800.00	F	t	(88) 1234-5678
84	Analista de Marketing	(99) 9876-5432	91313456788	2022-10-15	\N	marketing@email.com	Antonio	Gomes	3000.00	M	t	(99) 1234-5678
85	Analista de Marketing	(10) 9876-5432	10204567899	2022-11-20	\N	marketing2@email.com	Beatriz	Almeida	3000.00	F	t	(10) 1234-5678
86	Atendente de Vendas	(11) 9876-5432	11234567800	2022-12-01	\N	atendente3@email.com	Hugo	Ribeiro	2200.00	M	t	(11) 1234-5678
87	Estoquista	(22) 9876-5432	22345678911	2022-12-15	\N	estoquista3@email.com	Isabel	Carvalho	2000.00	F	t	(22) 1234-5678
88	Gerente de RH	(33) 9876-5432	33456789022	2023-01-10	\N	rh2@email.com	Luis	Machado	6000.00	M	t	(33) 1234-5678
89	Recrutador	(44) 9876-5432	44567890133	2023-01-25	\N	recrutador3@email.com	Sofia	Fonseca	2800.00	F	t	(44) 1234-5678
90	Analista de Marketing	(55) 9876-5432	55678901244	2023-02-10	\N	marketing3@email.com	Tiago	Barbosa	3000.00	M	t	(55) 1234-5678
91	Analista de Marketing	(66) 9876-5432	66789012355	2023-02-25	\N	marketing4@email.com	Marta	Santana	3000.00	F	t	(66) 1234-5678
92	Analista de RH	(77) 9876-5432	77890123466	2023-03-10	\N	rh3@email.com	Rui	Gonçalves	3200.00	M	t	(77) 1234-5678
93	Atendente de Vendas	(88) 9876-5432	89012345677	2023-03-25	\N	atendente4@email.com	Lara	Ferreira	2200.00	F	t	(88) 1234-5678
94	Estoquista	(99) 9876-5432	90123456788	2023-04-10	\N	estoquista4@email.com	Andre	Rocha	2000.00	M	t	(99) 1234-5678
95	Gerente de Vendas	(10) 9876-5432	01234567899	2023-04-25	\N	gerente2@email.com	Lucas	Santos	5500.00	M	t	(10) 1234-5678
\.


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido (id_pedido, data_entrega, data_pedido, metodo_pagamento, qtde_itens, status_pedido, id_cliente) FROM stdin;
1	2023-10-31 15:00:00	2023-10-29 10:00:00	Cartão de Crédito	3	Em Processamento	1
2	2023-10-30 14:30:00	2023-10-28 09:30:00	Cartão de Débito	2	Entregue	2
3	2023-10-29 13:45:00	2023-10-27 11:15:00	Boleto Bancário	4	Em Processamento	3
4	2023-10-28 12:30:00	2023-10-26 08:45:00	Cartão de Crédito	1	Entregue	4
5	2023-10-27 11:15:00	2023-10-25 10:30:00	Pix	2	Entregue	5
6	2023-10-26 10:00:00	2023-10-24 09:00:00	Boleto Bancário	3	Em Processamento	6
7	2023-10-25 09:30:00	2023-10-23 14:30:00	Cartão de Débito	2	Entregue	7
8	2023-10-24 08:45:00	2023-10-22 13:00:00	Pix	1	Entregue	8
9	2023-10-23 11:00:00	2023-10-21 11:30:00	Cartão de Crédito	5	Em Processamento	9
10	2023-10-22 10:15:00	2023-10-20 10:00:00	Boleto Bancário	2	Entregue	10
11	2023-10-21 09:30:00	2023-10-19 08:45:00	Cartão de Débito	3	Entregue	11
12	2023-10-20 08:00:00	2023-10-18 11:15:00	Boleto Bancário	1	Em Processamento	12
13	2023-10-19 07:15:00	2023-10-17 09:30:00	Pix	4	Entregue	13
14	2023-10-18 06:30:00	2023-10-16 08:45:00	Cartão de Crédito	2	Entregue	14
15	2023-10-17 05:45:00	2023-10-15 07:00:00	Boleto Bancário	3	Em Processamento	15
16	2023-10-16 05:00:00	2023-10-14 06:15:00	Pix	2	Entregue	16
17	2023-10-15 04:15:00	2023-10-13 05:30:00	Cartão de Crédito	4	Entregue	17
18	2023-10-14 03:30:00	2023-10-12 04:45:00	Boleto Bancário	1	Em Processamento	18
19	2023-10-13 02:45:00	2023-10-11 04:00:00	Cartão de Débito	2	Entregue	19
20	2023-10-12 02:00:00	2023-10-10 03:15:00	Pix	3	Em Processamento	20
\.


--
-- Data for Name: pedido_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido_produto (id_pedido, id_produto) FROM stdin;
\.


--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id_produto, categoria, descricao, fabricante, nome_produto, qtde_estoque, valor) FROM stdin;
1	Eletrônicos	Smartphone avançado	Samsung	Samsung Galaxy S21	50	899.99
2	Eletrônicos	Fones de ouvido sem fio	Sony	Sony WH-1000XM4	100	299.99
3	Moda	Jaqueta de couro	Zara	Jaqueta de Couro Masculina	30	199.99
4	Moda	Vestido de verão	H&M	Vestido Floral de Verão	40	49.99
5	Eletrodomésticos	Máquina de lavar	LG	LG Máquina de Lavar 7kg	25	599.99
6	Eletrodomésticos	Aspirador de pó	Dyson	Dyson V11 Aspirador de Pó	35	399.99
7	Livros	Romance	HarperCollins	Orgulho e Preconceito	60	14.99
8	Livros	Ficção Científica	Penguin	O Guia do Mochileiro das Galáxias	80	9.99
9	Alimentos	Bebidas	Coca-Cola	Coca-Cola Lata 350ml	150	1.99
10	Alimentos	Snacks	Lay's	Lay's Batata Chips	200	2.49
11	Eletrônicos	Tablet	Apple	iPad Pro 12.9 polegadas	30	1099.99
12	Moda	Sapatos	Nike	Nike Air Max 270	45	129.99
13	Eletrodomésticos	Geladeira	Whirlpool	Whirlpool Geladeira Duplex	20	899.99
14	Livros	Fantasia	J.K. Rowling	Harry Potter e a Pedra Filosofal	70	12.99
15	Alimentos	Laticínios	Danone	Danone Iogurte Natural	100	1.49
16	Eletrônicos	Smartwatch	Fitbit	Fitbit Versa 3	40	169.99
17	Moda	Bolsa	Coach	Bolsa Feminina Coach	15	249.99
18	Eletrodomésticos	Liquidificador	Philips	Philips Walita Liquidificador	25	59.99
19	Livros	Suspense	Stephen King	It - A Coisa	90	11.99
20	Alimentos	Cereais	Kellogg's	Kellogg's Corn Flakes	120	3.99
21	Eletrônicos	Notebook	Dell	Dell XPS 13	30	1199.99
\.


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 20, true);


--
-- Name: endereco_cliente_cod_end_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_cliente_cod_end_cliente_seq', 20, true);


--
-- Name: endereco_forn_cod_end_forn_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_forn_cod_end_forn_seq', 10, true);


--
-- Name: endereco_func_cod_end_func_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_func_cod_end_func_seq', 40, true);


--
-- Name: fornecedor_id_fornecedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fornecedor_id_fornecedor_seq', 10, true);


--
-- Name: funcionario_id_funcionario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 95, true);


--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_id_pedido_seq', 20, true);


--
-- Name: produto_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_produto_seq', 21, true);


--
-- Name: cliente cliente_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpf_key UNIQUE (cpf);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: endereco_cliente endereco_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_pkey PRIMARY KEY (cod_end_cliente);


--
-- Name: endereco_forn endereco_forn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_forn
    ADD CONSTRAINT endereco_forn_pkey PRIMARY KEY (cod_end_forn);


--
-- Name: endereco_func endereco_func_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_func
    ADD CONSTRAINT endereco_func_pkey PRIMARY KEY (cod_end_func);


--
-- Name: forn_produto forn_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forn_produto
    ADD CONSTRAINT forn_produto_pkey PRIMARY KEY (id_fornecedor, id_produto);


--
-- Name: fornecedor fornecedor_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_cnpj_key UNIQUE (cnpj);


--
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);


--
-- Name: func_pedido func_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.func_pedido
    ADD CONSTRAINT func_pedido_pkey PRIMARY KEY (id_funcionario, id_pedido);


--
-- Name: funcionario funcionario_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_cpf_key UNIQUE (cpf);


--
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);


--
-- Name: pedido pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);


--
-- Name: pedido_produto pedido_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_produto
    ADD CONSTRAINT pedido_produto_pkey PRIMARY KEY (id_pedido, id_produto);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


--
-- Name: endereco_cliente endereco_cliente_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: endereco_forn endereco_forn_id_fornecedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_forn
    ADD CONSTRAINT endereco_forn_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);


--
-- Name: endereco_func endereco_func_id_funcionario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_func
    ADD CONSTRAINT endereco_func_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);


--
-- Name: pedido pedido_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- PostgreSQL database dump complete
--

