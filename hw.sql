--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: country; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.country (
    cname character varying(50) NOT NULL,
    population bigint NOT NULL
);


ALTER TABLE public.country OWNER TO dlwprzunbbzgbc;

--
-- Name: discover; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.discover (
    cname character varying(50) NOT NULL,
    disease_code character varying(50) NOT NULL,
    first_enc_date date NOT NULL
);


ALTER TABLE public.discover OWNER TO dlwprzunbbzgbc;

--
-- Name: disease; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.disease (
    disease_code character varying(50) NOT NULL,
    pathogen character varying(20) NOT NULL,
    description character varying(140),
    id integer NOT NULL
);


ALTER TABLE public.disease OWNER TO dlwprzunbbzgbc;

--
-- Name: diseasetype; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.diseasetype (
    id integer NOT NULL,
    description character varying(140)
);


ALTER TABLE public.diseasetype OWNER TO dlwprzunbbzgbc;

--
-- Name: doctor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.doctor (
    email character varying(60) NOT NULL,
    degree character varying(20) NOT NULL
);


ALTER TABLE public.doctor OWNER TO dlwprzunbbzgbc;

--
-- Name: publicservant; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.publicservant (
    email character varying(60) NOT NULL,
    department character varying(50) NOT NULL
);


ALTER TABLE public.publicservant OWNER TO dlwprzunbbzgbc;

--
-- Name: record; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record (
    email character varying(60) NOT NULL,
    cname character varying(50) NOT NULL,
    disease_code character varying(50) NOT NULL,
    total_deaths integer NOT NULL,
    total_patients integer NOT NULL
);


ALTER TABLE public.record OWNER TO dlwprzunbbzgbc;

--
-- Name: specialize; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.specialize (
    id integer NOT NULL,
    email character varying(60) NOT NULL
);


ALTER TABLE public.specialize OWNER TO dlwprzunbbzgbc;

--
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    email character varying(60) NOT NULL,
    name character varying(30) NOT NULL,
    surname character varying(40) NOT NULL,
    salary integer,
    phone character varying(20) NOT NULL,
    cname character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO dlwprzunbbzgbc;

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin (email, password) FROM stdin;
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.country (cname, population) FROM stdin;
Jersey	475519162
Burundi	150901872
Estonia	303215509
Portugal	750759168
Pakistan	705135299
Gibraltar	368190220
Mozambique	636113937
Azerbaijan	67050908
Seychelles	799249822
North Korea	688994104
Bahrain	74039277
France	329421687
American Samoa	14642309
Bhutan	105837038
India	433451193
Tanzania	928703446
Algeria	8822476
Macedonia	552827922
Mongolia	618704268
Georgia	353973564
Vatican City	560918589
Malawi	587423017
Mauritania	667861811
Nicaragua	565905892
Malaysia	785424433
Saudi Arabia	78279310
Bangladesh	372499839
Greece	831834229
South Africa	597596233
Mayotte	880005748
St. Pierre & Miquelon	385562267
Guadeloupe	938352349
Timor-Leste	13924072
Vietnam	418846571
Honduras	965545115
Gambia	466193000
Turkey	310163809
Jamaica	346669532
Ethiopia	236592342
Gabon	26646576
Croatia	365584430
Anguilla	641957155
Namibia	54432030
Ascension Island	784520908
Germany	781336385
San Marino	424796021
Comoros	961086877
Hungary	887540769
Tunisia	842214923
Sudan	213875581
South Korea	797764355
Colombia	585784758
Martinique	428006719
Iceland	215136268
Denmark	547050622
Macau SAR China	999875810
Paraguay	399599178
United Arab Emirates	365460195
Guinea	388843864
Guam	134629468
Wallis & Futuna	743573891
Moldova	163751938
Brunei	512673835
Poland	861000735
Canary Islands	330152190
Latvia	236559728
St. Helena	688027380
Zimbabwe	750598636
Ceuta & Melilla	800489703
Burkina Faso	323753806
Yemen	162849976
Finland	382009993
Canada	504437217
Nigeria	604132002
Trinidad & Tobago	294023097
Kyrgyzstan	981094926
Guinea-Bissau	671731729
Micronesia	157933765
Equatorial Guinea	227989090
Monaco	611400679
Tuvalu	718506648
Niger	192543541
Cameroon	204475289
Cook Islands	36477555
Vanuatu	221213748
Panama	677031208
Chad	975597828
Christmas Island	33084050
Antigua & Barbuda	113846511
Congo - Brazzaville	888446695
Western Sahara	5889666
Cuba	115638124
Turks & Caicos Islands	590323747
Antarctica	89555748
Bosnia & Herzegovina	926452265
Albania	704500659
Myanmar	368589407
Belgium	735517298
Tajikistan	544130615
El Salvador	505938598
Oman	531486340
Falkland Islands	420043229
St. Barthélemy	919417496
Philippines	360408122
Luxembourg	563750567
Libya	638015610
Hong Kong SAR China	618672444
Taiwan	271489182
Norfolk Island	218078856
\.


--
-- Data for Name: discover; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.discover (cname, disease_code, first_enc_date) FROM stdin;
Honduras	5de74332-bf74-402e-bac8-55b0a378954d	1853-03-10
Ascension Island	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1751-10-02
Vanuatu	5a00b0a4-db1a-4555-b66c-e47023575e85	1470-05-01
Guinea-Bissau	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1500-07-28
Guadeloupe	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1408-09-19
Guadeloupe	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1737-09-18
Sudan	69798bb6-1716-47ee-90ff-0938314cce0c	1939-12-03
Malawi	9a270672-9e02-44bf-ba2e-2b6baf568829	1755-09-27
Comoros	69817e8b-5270-4081-b06b-5f94d1a99c72	1767-01-13
Gabon	62f3d028-08e0-4986-806a-254f0d812c5b	1733-07-10
Tuvalu	80a97543-fd97-40a3-b8dc-f58e50101abc	1730-04-01
Poland	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1748-10-12
Norfolk Island	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1451-06-24
Norfolk Island	9848ad52-bed1-4791-9352-c779584dcbe7	1606-07-29
India	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1603-12-18
Wallis & Futuna	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1752-07-08
Ethiopia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1605-09-22
Portugal	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1781-06-12
El Salvador	c5c41565-02cb-462f-83e5-150521ebde9c	1980-03-23
Portugal	8ec60513-990a-4ce2-a516-8972fdcf9919	1556-08-26
Malawi	68739ab8-38f9-45e5-9e67-fb0fc6139879	1714-04-21
Falkland Islands	ea8636de-62ee-4739-8be2-2028afe303c9	1689-03-12
Bahrain	ce85ec8a-a207-4929-ba56-2e8376b239ea	1502-12-23
Tanzania	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1538-06-03
Bahrain	5ed75d07-f129-4210-8934-b5282ab6bf39	1855-05-05
Mozambique	c82545f7-d728-4444-aded-9648e5d8c22c	1764-08-13
Burundi	b207278e-f452-43f3-8e6d-1d55a32497dc	1976-05-19
San Marino	e6920268-aba1-48db-8739-415368d962ec	1550-04-19
Falkland Islands	6feb9519-7623-422d-848c-0b9a5723da19	1583-04-02
Cameroon	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1610-10-08
St. Helena	7408db66-1b96-458c-b4f6-4234b2625afd	1431-02-27
Jamaica	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1408-01-04
Moldova	0b57e8c3-3a12-44b9-8236-ace791387ba3	2011-09-03
Belgium	33828361-6656-438a-aeb6-15a2e5ffcf27	1677-10-21
Portugal	ccde439b-b989-4cd2-aec9-f142c8d948d0	1696-06-26
Gibraltar	57309776-d0f5-43a2-b94e-38372ee07cc6	1918-08-21
Bosnia & Herzegovina	436386c2-345f-4570-ba73-582b3437d53e	1906-07-01
American Samoa	dccda210-9223-4604-b148-a0a248fb714e	1743-09-13
Bhutan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1779-10-19
Gibraltar	495303f4-a868-4fa4-acba-c08667d7bcc8	1691-05-18
Colombia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1797-08-07
Gibraltar	c94fd88f-86c3-433a-9d81-b19695d48328	1553-01-02
Croatia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1450-03-19
Tunisia	e88d9503-9bde-473f-9276-3651878e2863	1691-08-30
Guadeloupe	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1442-12-02
Comoros	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1530-06-23
United Arab Emirates	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1720-09-05
Greece	28778fb1-1671-4bad-8284-6a731564a45e	1793-04-11
Kyrgyzstan	e5a762f6-3052-4384-a92b-b5401e965d25	1811-03-01
Hungary	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1803-08-31
North Korea	642d495a-e016-412f-a53b-dc046cc492a0	1478-03-02
\.


--
-- Data for Name: disease; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.disease (disease_code, pathogen, description, id) FROM stdin;
5de74332-bf74-402e-bac8-55b0a378954d	bacteria	normal	2
4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	bacteria	connector	0
5a00b0a4-db1a-4555-b66c-e47023575e85	parasite	getting	2
ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	bacteria	vice	7
000efc5f-1b50-44ef-92c9-7cd412ba4fca	virus	than	0
4cd143a9-2d88-42b6-8fa9-976cd836f3b3	parasite	ip	5
69798bb6-1716-47ee-90ff-0938314cce0c	virus	sexo	8
9a270672-9e02-44bf-ba2e-2b6baf568829	virus	bears	6
69817e8b-5270-4081-b06b-5f94d1a99c72	fungi	surface	5
62f3d028-08e0-4986-806a-254f0d812c5b	bacteria	bibliography	2
80a97543-fd97-40a3-b8dc-f58e50101abc	fungi	highest	6
d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	virus	affect	1
275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	bacteria	carpet	0
9848ad52-bed1-4791-9352-c779584dcbe7	fungi	meals	0
9f33d46c-9e1f-4369-a22d-0b00e2fc9074	virus	added	5
7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	bacteria	processing	1
baf8329f-efc1-45b6-b0e4-6c2211bfc38c	fungi	savings	8
ec1b5b65-67e0-4da3-aa55-2e106b59ebff	parasite	indoor	8
c5c41565-02cb-462f-83e5-150521ebde9c	parasite	provides	9
8ec60513-990a-4ce2-a516-8972fdcf9919	fungi	released	4
68739ab8-38f9-45e5-9e67-fb0fc6139879	parasite	stadium	6
ea8636de-62ee-4739-8be2-2028afe303c9	bacteria	pussy	9
ce85ec8a-a207-4929-ba56-2e8376b239ea	virus	zip	8
e715b6c8-8feb-41b7-a9cb-5e5b785da13b	parasite	blackjack	2
5ed75d07-f129-4210-8934-b5282ab6bf39	fungi	jackson	8
c82545f7-d728-4444-aded-9648e5d8c22c	fungi	respectively	1
b207278e-f452-43f3-8e6d-1d55a32497dc	fungi	kids	8
e6920268-aba1-48db-8739-415368d962ec	parasite	advisor	8
6feb9519-7623-422d-848c-0b9a5723da19	fungi	ltd	6
6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	virus	in	5
7408db66-1b96-458c-b4f6-4234b2625afd	virus	navy	5
aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	parasite	grace	1
0b57e8c3-3a12-44b9-8236-ace791387ba3	virus	img	7
33828361-6656-438a-aeb6-15a2e5ffcf27	parasite	end	6
ccde439b-b989-4cd2-aec9-f142c8d948d0	fungi	amber	4
57309776-d0f5-43a2-b94e-38372ee07cc6	fungi	introduce	3
436386c2-345f-4570-ba73-582b3437d53e	virus	shot	5
dccda210-9223-4604-b148-a0a248fb714e	virus	kevin	5
8acf71b1-5cd5-4010-8a5c-b1265d537e02	fungi	australia	1
495303f4-a868-4fa4-acba-c08667d7bcc8	parasite	institute	4
41363c1b-83e6-4718-bd56-7bd2b8fd87a0	bacteria	yourself	7
c94fd88f-86c3-433a-9d81-b19695d48328	fungi	xml	1
d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	fungi	download	0
e88d9503-9bde-473f-9276-3651878e2863	virus	managing	5
5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	bacteria	domains	9
1ef2eabc-18f9-4869-973e-fa0d7a60446c	parasite	regulations	2
d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	parasite	islam	6
28778fb1-1671-4bad-8284-6a731564a45e	parasite	markets	4
e5a762f6-3052-4384-a92b-b5401e965d25	fungi	extremely	8
6fdad170-1506-47ec-bfe9-6bd97e8c47a4	parasite	doors	3
642d495a-e016-412f-a53b-dc046cc492a0	virus	COVID-19	0
\.


--
-- Data for Name: diseasetype; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.diseasetype (id, description) FROM stdin;
0	virus
1	infectious
2	cancer
3	intestinal
4	genetic disorder
5	communication disorder
6	neurological disorder
7	voice disorder
8	circulatory
9	liver
\.


--
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.doctor (email, degree) FROM stdin;
provinces1951@yahoo.com	D.C.
digital1872@yahoo.com	D.M.Sc
only2081@protonmail.com	D.A.O.M
insertion1843@live.com	DNSc
mrna1870@live.com	D.C.
moral1928@protonmail.com	DPH
racks1819@outlook.com	D.A.O.M
refers1897@outlook.com	DNSc
pda1876@outlook.com	DPH
officials1972@protonmail.com	Dr.AP
navy1800@outlook.com	D.C.
mature1894@yahoo.com	D.M.Sc
facilitate2066@gmail.com	D.A.O.M
hospital2060@yahoo.com	D.A.O.M
indiana1822@gmail.com	D.M.Sc
tells2011@live.com	DNSc
mistakes1848@gmail.com	DNSc
steven1929@outlook.com	DNSc
trans1965@protonmail.com	D.M.Sc
bookings1998@protonmail.com	Dr.AP
dont2100@protonmail.com	DPH
entrepreneurs1808@yahoo.com	D.C.
stops2049@yahoo.com	DPH
absence1941@live.com	DPH
subscriptions2003@gmail.com	DPH
bind1902@yahoo.com	D.A.O.M
nbc2041@yahoo.com	DNSc
delight1975@live.com	Dr.AP
davidson2081@outlook.com	D.M.Sc
abc2058@yandex.com	D.C.
throwing1896@protonmail.com	Dr.AP
grant1955@protonmail.com	DPH
tcp1842@gmail.com	D.A.O.M
ambient1985@live.com	D.A.O.M
restoration1945@yahoo.com	DPH
even2096@protonmail.com	D.C.
program2002@yandex.com	DNSc
webpage2008@yahoo.com	D.C.
passive1985@protonmail.com	Dr.AP
mesa1949@yandex.com	Dr.AP
part2084@yahoo.com	DNSc
owns2077@yandex.com	D.M.Sc
types2092@yahoo.com	DNSc
occupation1849@yahoo.com	DNSc
duncan1820@gmail.com	D.C.
horses1845@yahoo.com	D.M.Sc
fill2080@protonmail.com	DNSc
\.


--
-- Data for Name: publicservant; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.publicservant (email, department) FROM stdin;
webpage2008@yahoo.com	YIAMC
mature1894@yahoo.com	YIAMC
lifetime1925@gmail.com	YIAMC
only2081@protonmail.com	YIAMC
davidson2081@outlook.com	DOC
local1830@gmail.com	YIAMC
fred1901@live.com	DOIaCD
bind1902@yahoo.com	DOC
journey2091@outlook.com	DOC
navy1800@outlook.com	MFK
hormone1827@gmail.com	DOG
peoples2042@protonmail.com	DOC
chance1827@gmail.com	DOIaCD
facilitate2066@gmail.com	DOC
hospital2060@yahoo.com	MFK
required1923@outlook.com	DOC
nbc2041@yahoo.com	YIAMC
officials1972@protonmail.com	YIAMC
pda1876@outlook.com	DOC
dont2100@protonmail.com	DOC
throwing1896@protonmail.com	DOC
overall2026@outlook.com	DOIaCD
delight1975@live.com	DOC
absence1941@live.com	DOG
sauce2013@yandex.com	DOG
vocal2080@protonmail.com	MFK
cruise1800@yahoo.com	DOG
bookings1998@protonmail.com	DOG
nelson2015@protonmail.com	MFK
building2058@yandex.com	DOC
boost1833@gmail.com	MFK
program2002@yandex.com	DOIaCD
florence2033@protonmail.com	DOG
duncan1820@gmail.com	DOC
restoration1945@yahoo.com	DOG
despite1900@live.com	YIAMC
\.


--
-- Data for Name: record; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.record (email, cname, disease_code, total_deaths, total_patients) FROM stdin;
building2058@yandex.com	Jersey	5de74332-bf74-402e-bac8-55b0a378954d	1941755	1970433
delight1975@live.com	Jersey	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2393506	2606285
program2002@yandex.com	Jersey	5a00b0a4-db1a-4555-b66c-e47023575e85	2297048	1856101
hormone1827@gmail.com	Jersey	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4533542	4396382
bookings1998@protonmail.com	Jersey	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1155315	3090535
navy1800@outlook.com	Jersey	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	875748	663833
duncan1820@gmail.com	Jersey	69798bb6-1716-47ee-90ff-0938314cce0c	4184219	874396
navy1800@outlook.com	Jersey	9a270672-9e02-44bf-ba2e-2b6baf568829	3575745	4408891
navy1800@outlook.com	Jersey	69817e8b-5270-4081-b06b-5f94d1a99c72	3749176	450147
program2002@yandex.com	Jersey	62f3d028-08e0-4986-806a-254f0d812c5b	27827	1321386
delight1975@live.com	Jersey	80a97543-fd97-40a3-b8dc-f58e50101abc	2880304	1851363
vocal2080@protonmail.com	Jersey	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2640720	2864109
vocal2080@protonmail.com	Jersey	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2824035	4642917
peoples2042@protonmail.com	Jersey	9848ad52-bed1-4791-9352-c779584dcbe7	56360	2108975
overall2026@outlook.com	Jersey	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4464723	3511694
webpage2008@yahoo.com	Jersey	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1636529	2317141
peoples2042@protonmail.com	Jersey	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3363820	1187400
dont2100@protonmail.com	Jersey	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1434501	2049339
bind1902@yahoo.com	Jersey	c5c41565-02cb-462f-83e5-150521ebde9c	848341	602835
navy1800@outlook.com	Jersey	8ec60513-990a-4ce2-a516-8972fdcf9919	218680	4519608
vocal2080@protonmail.com	Jersey	68739ab8-38f9-45e5-9e67-fb0fc6139879	3364824	4485682
program2002@yandex.com	Jersey	ea8636de-62ee-4739-8be2-2028afe303c9	3239752	2125059
hospital2060@yahoo.com	Jersey	ce85ec8a-a207-4929-ba56-2e8376b239ea	2343402	3615716
vocal2080@protonmail.com	Jersey	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3600462	4287281
nbc2041@yahoo.com	Jersey	5ed75d07-f129-4210-8934-b5282ab6bf39	4182840	4564661
restoration1945@yahoo.com	Jersey	c82545f7-d728-4444-aded-9648e5d8c22c	3445365	2168285
peoples2042@protonmail.com	Jersey	b207278e-f452-43f3-8e6d-1d55a32497dc	47878	569620
chance1827@gmail.com	Jersey	e6920268-aba1-48db-8739-415368d962ec	2300923	3888398
lifetime1925@gmail.com	Jersey	6feb9519-7623-422d-848c-0b9a5723da19	767682	2653966
delight1975@live.com	Jersey	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1388861	2246001
mature1894@yahoo.com	Jersey	7408db66-1b96-458c-b4f6-4234b2625afd	673273	3654343
davidson2081@outlook.com	Jersey	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2256151	2402779
throwing1896@protonmail.com	Jersey	0b57e8c3-3a12-44b9-8236-ace791387ba3	4569272	4268828
officials1972@protonmail.com	Jersey	33828361-6656-438a-aeb6-15a2e5ffcf27	1923267	4270949
local1830@gmail.com	Jersey	ccde439b-b989-4cd2-aec9-f142c8d948d0	2332754	4371352
absence1941@live.com	Jersey	57309776-d0f5-43a2-b94e-38372ee07cc6	3479812	2689322
chance1827@gmail.com	Jersey	436386c2-345f-4570-ba73-582b3437d53e	2270736	3182192
duncan1820@gmail.com	Jersey	dccda210-9223-4604-b148-a0a248fb714e	4435611	1941016
nelson2015@protonmail.com	Jersey	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1602761	988341
florence2033@protonmail.com	Jersey	495303f4-a868-4fa4-acba-c08667d7bcc8	4529857	1119029
throwing1896@protonmail.com	Jersey	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	47966	3922955
only2081@protonmail.com	Jersey	c94fd88f-86c3-433a-9d81-b19695d48328	2247844	4332201
peoples2042@protonmail.com	Jersey	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2782666	4713271
mature1894@yahoo.com	Jersey	e88d9503-9bde-473f-9276-3651878e2863	2473229	266180
peoples2042@protonmail.com	Jersey	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2917617	2450297
local1830@gmail.com	Jersey	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1329706	1068442
florence2033@protonmail.com	Jersey	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1793686	4649982
hospital2060@yahoo.com	Jersey	28778fb1-1671-4bad-8284-6a731564a45e	4117096	3141855
webpage2008@yahoo.com	Jersey	e5a762f6-3052-4384-a92b-b5401e965d25	1247666	264330
required1923@outlook.com	Jersey	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2518595	4463390
hormone1827@gmail.com	Jersey	642d495a-e016-412f-a53b-dc046cc492a0	4679297	4311720
absence1941@live.com	Burundi	5de74332-bf74-402e-bac8-55b0a378954d	760907	345884
vocal2080@protonmail.com	Burundi	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1373877	1446114
cruise1800@yahoo.com	Burundi	5a00b0a4-db1a-4555-b66c-e47023575e85	223548	209219
program2002@yandex.com	Burundi	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	671216	914472
florence2033@protonmail.com	Burundi	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1473753	399805
restoration1945@yahoo.com	Burundi	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	690328	1482318
delight1975@live.com	Burundi	69798bb6-1716-47ee-90ff-0938314cce0c	1469151	1430842
nbc2041@yahoo.com	Burundi	9a270672-9e02-44bf-ba2e-2b6baf568829	1304409	908311
building2058@yandex.com	Burundi	69817e8b-5270-4081-b06b-5f94d1a99c72	996750	686762
throwing1896@protonmail.com	Burundi	62f3d028-08e0-4986-806a-254f0d812c5b	695902	222963
officials1972@protonmail.com	Burundi	80a97543-fd97-40a3-b8dc-f58e50101abc	209717	447860
lifetime1925@gmail.com	Burundi	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	858333	622208
journey2091@outlook.com	Burundi	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	510325	109841
program2002@yandex.com	Burundi	9848ad52-bed1-4791-9352-c779584dcbe7	661233	1221865
vocal2080@protonmail.com	Burundi	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	873424	119605
florence2033@protonmail.com	Burundi	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1127256	1193493
dont2100@protonmail.com	Burundi	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1361459	670565
overall2026@outlook.com	Burundi	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	746488	503247
pda1876@outlook.com	Burundi	c5c41565-02cb-462f-83e5-150521ebde9c	667883	1472253
davidson2081@outlook.com	Burundi	8ec60513-990a-4ce2-a516-8972fdcf9919	388970	400098
davidson2081@outlook.com	Burundi	68739ab8-38f9-45e5-9e67-fb0fc6139879	974039	954694
lifetime1925@gmail.com	Burundi	ea8636de-62ee-4739-8be2-2028afe303c9	1215067	109896
building2058@yandex.com	Burundi	ce85ec8a-a207-4929-ba56-2e8376b239ea	1371418	1075820
sauce2013@yandex.com	Burundi	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	645420	1299104
webpage2008@yahoo.com	Burundi	5ed75d07-f129-4210-8934-b5282ab6bf39	1309108	12372
absence1941@live.com	Burundi	c82545f7-d728-4444-aded-9648e5d8c22c	101710	1164087
local1830@gmail.com	Burundi	b207278e-f452-43f3-8e6d-1d55a32497dc	635276	1402938
bookings1998@protonmail.com	Burundi	e6920268-aba1-48db-8739-415368d962ec	126668	777038
davidson2081@outlook.com	Burundi	6feb9519-7623-422d-848c-0b9a5723da19	284008	737450
despite1900@live.com	Burundi	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1033906	1230856
hormone1827@gmail.com	Burundi	7408db66-1b96-458c-b4f6-4234b2625afd	508358	519453
dont2100@protonmail.com	Burundi	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	461021	213215
only2081@protonmail.com	Burundi	0b57e8c3-3a12-44b9-8236-ace791387ba3	955653	1418972
bind1902@yahoo.com	Burundi	33828361-6656-438a-aeb6-15a2e5ffcf27	1018181	1422666
delight1975@live.com	Burundi	ccde439b-b989-4cd2-aec9-f142c8d948d0	1385191	162291
duncan1820@gmail.com	Burundi	57309776-d0f5-43a2-b94e-38372ee07cc6	874608	1416660
hormone1827@gmail.com	Burundi	436386c2-345f-4570-ba73-582b3437d53e	379685	85896
delight1975@live.com	Burundi	dccda210-9223-4604-b148-a0a248fb714e	221809	899867
despite1900@live.com	Burundi	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1496650	1320282
chance1827@gmail.com	Burundi	495303f4-a868-4fa4-acba-c08667d7bcc8	455385	786405
vocal2080@protonmail.com	Burundi	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1314760	1394308
delight1975@live.com	Burundi	c94fd88f-86c3-433a-9d81-b19695d48328	62149	708280
required1923@outlook.com	Burundi	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	65998	27600
lifetime1925@gmail.com	Burundi	e88d9503-9bde-473f-9276-3651878e2863	1387478	1078490
navy1800@outlook.com	Burundi	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	767056	25335
bind1902@yahoo.com	Burundi	1ef2eabc-18f9-4869-973e-fa0d7a60446c	57887	1202915
peoples2042@protonmail.com	Burundi	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	926942	1001119
overall2026@outlook.com	Burundi	28778fb1-1671-4bad-8284-6a731564a45e	61859	139859
overall2026@outlook.com	Burundi	e5a762f6-3052-4384-a92b-b5401e965d25	794533	3030
webpage2008@yahoo.com	Burundi	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	167	608763
overall2026@outlook.com	Burundi	642d495a-e016-412f-a53b-dc046cc492a0	179726	97943
florence2033@protonmail.com	Estonia	5de74332-bf74-402e-bac8-55b0a378954d	2383287	169651
duncan1820@gmail.com	Estonia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2547261	1047427
sauce2013@yandex.com	Estonia	5a00b0a4-db1a-4555-b66c-e47023575e85	1133575	577337
lifetime1925@gmail.com	Estonia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2066330	87497
only2081@protonmail.com	Estonia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1733066	272739
pda1876@outlook.com	Estonia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2431487	275597
hormone1827@gmail.com	Estonia	69798bb6-1716-47ee-90ff-0938314cce0c	2146071	2328964
florence2033@protonmail.com	Estonia	9a270672-9e02-44bf-ba2e-2b6baf568829	1358030	3008487
only2081@protonmail.com	Estonia	69817e8b-5270-4081-b06b-5f94d1a99c72	142043	2231883
nelson2015@protonmail.com	Estonia	62f3d028-08e0-4986-806a-254f0d812c5b	1018492	1902309
chance1827@gmail.com	Estonia	80a97543-fd97-40a3-b8dc-f58e50101abc	1979790	960623
building2058@yandex.com	Estonia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2555402	1262957
cruise1800@yahoo.com	Estonia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2751053	2703567
bookings1998@protonmail.com	Estonia	9848ad52-bed1-4791-9352-c779584dcbe7	2193538	3014359
bind1902@yahoo.com	Estonia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2771189	38365
only2081@protonmail.com	Estonia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	274522	2160982
local1830@gmail.com	Estonia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1841206	1244934
lifetime1925@gmail.com	Estonia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1508038	1923870
delight1975@live.com	Estonia	c5c41565-02cb-462f-83e5-150521ebde9c	3012699	1213295
hospital2060@yahoo.com	Estonia	8ec60513-990a-4ce2-a516-8972fdcf9919	1207219	1576407
peoples2042@protonmail.com	Estonia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2646481	2563346
overall2026@outlook.com	Estonia	ea8636de-62ee-4739-8be2-2028afe303c9	1714017	694064
pda1876@outlook.com	Estonia	ce85ec8a-a207-4929-ba56-2e8376b239ea	81759	2977824
dont2100@protonmail.com	Estonia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2637453	1692858
bind1902@yahoo.com	Estonia	5ed75d07-f129-4210-8934-b5282ab6bf39	2777321	1041100
davidson2081@outlook.com	Estonia	c82545f7-d728-4444-aded-9648e5d8c22c	473917	957075
pda1876@outlook.com	Estonia	b207278e-f452-43f3-8e6d-1d55a32497dc	2279226	2485407
required1923@outlook.com	Estonia	e6920268-aba1-48db-8739-415368d962ec	2727155	1641
overall2026@outlook.com	Estonia	6feb9519-7623-422d-848c-0b9a5723da19	258814	647404
lifetime1925@gmail.com	Estonia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	993219	2461560
bind1902@yahoo.com	Estonia	7408db66-1b96-458c-b4f6-4234b2625afd	1750740	2463799
mature1894@yahoo.com	Estonia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1512816	1619816
required1923@outlook.com	Estonia	0b57e8c3-3a12-44b9-8236-ace791387ba3	2715220	1084990
journey2091@outlook.com	Estonia	33828361-6656-438a-aeb6-15a2e5ffcf27	284208	214177
program2002@yandex.com	Estonia	ccde439b-b989-4cd2-aec9-f142c8d948d0	900098	1619822
lifetime1925@gmail.com	Estonia	57309776-d0f5-43a2-b94e-38372ee07cc6	1037183	953659
only2081@protonmail.com	Estonia	436386c2-345f-4570-ba73-582b3437d53e	2399852	2771043
overall2026@outlook.com	Estonia	dccda210-9223-4604-b148-a0a248fb714e	1999362	773979
required1923@outlook.com	Estonia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2734778	2608340
overall2026@outlook.com	Estonia	495303f4-a868-4fa4-acba-c08667d7bcc8	1886137	201493
fred1901@live.com	Estonia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1422663	97936
davidson2081@outlook.com	Estonia	c94fd88f-86c3-433a-9d81-b19695d48328	2783009	2396269
pda1876@outlook.com	Estonia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1689785	858988
journey2091@outlook.com	Estonia	e88d9503-9bde-473f-9276-3651878e2863	780141	1210909
chance1827@gmail.com	Estonia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2568848	1711047
restoration1945@yahoo.com	Estonia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2424704	1778864
cruise1800@yahoo.com	Estonia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	772751	1757202
throwing1896@protonmail.com	Estonia	28778fb1-1671-4bad-8284-6a731564a45e	2468265	1874261
overall2026@outlook.com	Estonia	e5a762f6-3052-4384-a92b-b5401e965d25	15932	950737
throwing1896@protonmail.com	Estonia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	526369	2833469
cruise1800@yahoo.com	Estonia	642d495a-e016-412f-a53b-dc046cc492a0	2816163	4438
delight1975@live.com	Portugal	5de74332-bf74-402e-bac8-55b0a378954d	2564720	5428789
despite1900@live.com	Portugal	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1699388	6189690
florence2033@protonmail.com	Portugal	5a00b0a4-db1a-4555-b66c-e47023575e85	6284124	926809
pda1876@outlook.com	Portugal	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	868666	5429081
hospital2060@yahoo.com	Portugal	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4503226	5931192
dont2100@protonmail.com	Portugal	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2766612	7285699
only2081@protonmail.com	Portugal	69798bb6-1716-47ee-90ff-0938314cce0c	2041368	5680263
sauce2013@yandex.com	Portugal	9a270672-9e02-44bf-ba2e-2b6baf568829	4615354	6396047
mature1894@yahoo.com	Portugal	69817e8b-5270-4081-b06b-5f94d1a99c72	5362532	4802843
program2002@yandex.com	Portugal	62f3d028-08e0-4986-806a-254f0d812c5b	7166872	3902348
required1923@outlook.com	Portugal	80a97543-fd97-40a3-b8dc-f58e50101abc	871460	5022563
duncan1820@gmail.com	Portugal	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3554733	2062110
building2058@yandex.com	Portugal	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5349923	6085811
throwing1896@protonmail.com	Portugal	9848ad52-bed1-4791-9352-c779584dcbe7	639463	203556
overall2026@outlook.com	Portugal	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4545490	7050635
pda1876@outlook.com	Portugal	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	576196	4141189
bookings1998@protonmail.com	Portugal	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3240240	5997821
absence1941@live.com	Portugal	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	600975	2452058
despite1900@live.com	Portugal	c5c41565-02cb-462f-83e5-150521ebde9c	220507	5851158
bind1902@yahoo.com	Portugal	8ec60513-990a-4ce2-a516-8972fdcf9919	2174752	7458523
dont2100@protonmail.com	Portugal	68739ab8-38f9-45e5-9e67-fb0fc6139879	4034033	7282061
bookings1998@protonmail.com	Portugal	ea8636de-62ee-4739-8be2-2028afe303c9	1992251	3903998
facilitate2066@gmail.com	Portugal	ce85ec8a-a207-4929-ba56-2e8376b239ea	5063649	1988945
despite1900@live.com	Portugal	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4869436	5658890
webpage2008@yahoo.com	Portugal	5ed75d07-f129-4210-8934-b5282ab6bf39	4585119	5392851
florence2033@protonmail.com	Portugal	c82545f7-d728-4444-aded-9648e5d8c22c	6385814	7258417
officials1972@protonmail.com	Portugal	b207278e-f452-43f3-8e6d-1d55a32497dc	2148279	2612967
absence1941@live.com	Portugal	e6920268-aba1-48db-8739-415368d962ec	2435631	5107778
despite1900@live.com	Portugal	6feb9519-7623-422d-848c-0b9a5723da19	1225040	7131827
journey2091@outlook.com	Portugal	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	6922628	7278132
davidson2081@outlook.com	Portugal	7408db66-1b96-458c-b4f6-4234b2625afd	2995708	5648609
local1830@gmail.com	Portugal	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	6914255	3439401
hormone1827@gmail.com	Portugal	0b57e8c3-3a12-44b9-8236-ace791387ba3	7248810	2840692
nelson2015@protonmail.com	Portugal	33828361-6656-438a-aeb6-15a2e5ffcf27	493902	3279642
chance1827@gmail.com	Portugal	ccde439b-b989-4cd2-aec9-f142c8d948d0	5594331	5359491
local1830@gmail.com	Portugal	57309776-d0f5-43a2-b94e-38372ee07cc6	3573553	2991729
bookings1998@protonmail.com	Portugal	436386c2-345f-4570-ba73-582b3437d53e	5331747	7220991
despite1900@live.com	Portugal	dccda210-9223-4604-b148-a0a248fb714e	2149166	5067010
despite1900@live.com	Portugal	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2063694	7441136
required1923@outlook.com	Portugal	495303f4-a868-4fa4-acba-c08667d7bcc8	2902679	2182252
pda1876@outlook.com	Portugal	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3109192	3437667
vocal2080@protonmail.com	Portugal	c94fd88f-86c3-433a-9d81-b19695d48328	902870	2801702
chance1827@gmail.com	Portugal	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5471730	6452047
webpage2008@yahoo.com	Portugal	e88d9503-9bde-473f-9276-3651878e2863	2861987	2290123
duncan1820@gmail.com	Portugal	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1611622	4433001
throwing1896@protonmail.com	Portugal	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4896409	3565099
overall2026@outlook.com	Portugal	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1603754	3339239
nbc2041@yahoo.com	Portugal	28778fb1-1671-4bad-8284-6a731564a45e	6964374	5377579
journey2091@outlook.com	Portugal	e5a762f6-3052-4384-a92b-b5401e965d25	2144225	6528296
delight1975@live.com	Portugal	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	5679670	4832743
duncan1820@gmail.com	Portugal	642d495a-e016-412f-a53b-dc046cc492a0	5585950	2422985
cruise1800@yahoo.com	Pakistan	5de74332-bf74-402e-bac8-55b0a378954d	5441756	5553243
peoples2042@protonmail.com	Pakistan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5821958	3552196
chance1827@gmail.com	Pakistan	5a00b0a4-db1a-4555-b66c-e47023575e85	5799185	6346400
restoration1945@yahoo.com	Pakistan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4244147	2709951
overall2026@outlook.com	Pakistan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5963619	6286713
davidson2081@outlook.com	Pakistan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5662530	3397920
throwing1896@protonmail.com	Pakistan	69798bb6-1716-47ee-90ff-0938314cce0c	5331046	5556138
sauce2013@yandex.com	Pakistan	9a270672-9e02-44bf-ba2e-2b6baf568829	3929483	6338874
boost1833@gmail.com	Pakistan	69817e8b-5270-4081-b06b-5f94d1a99c72	5527303	4023383
peoples2042@protonmail.com	Pakistan	62f3d028-08e0-4986-806a-254f0d812c5b	36314	3375820
facilitate2066@gmail.com	Pakistan	80a97543-fd97-40a3-b8dc-f58e50101abc	757274	1210973
restoration1945@yahoo.com	Pakistan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4676873	5045668
journey2091@outlook.com	Pakistan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1087649	6327002
despite1900@live.com	Pakistan	9848ad52-bed1-4791-9352-c779584dcbe7	231731	6395363
despite1900@live.com	Pakistan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6513156	6660683
mature1894@yahoo.com	Pakistan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1336078	2853115
officials1972@protonmail.com	Pakistan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4521490	2805890
program2002@yandex.com	Pakistan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3769812	2225979
bookings1998@protonmail.com	Pakistan	c5c41565-02cb-462f-83e5-150521ebde9c	5943171	2017424
officials1972@protonmail.com	Pakistan	8ec60513-990a-4ce2-a516-8972fdcf9919	1351792	6536075
lifetime1925@gmail.com	Pakistan	68739ab8-38f9-45e5-9e67-fb0fc6139879	1279196	3798742
sauce2013@yandex.com	Pakistan	ea8636de-62ee-4739-8be2-2028afe303c9	3496261	1283633
absence1941@live.com	Pakistan	ce85ec8a-a207-4929-ba56-2e8376b239ea	2876656	6400345
duncan1820@gmail.com	Pakistan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2269672	6754913
local1830@gmail.com	Pakistan	5ed75d07-f129-4210-8934-b5282ab6bf39	3661685	1927977
only2081@protonmail.com	Pakistan	c82545f7-d728-4444-aded-9648e5d8c22c	3794269	1276656
delight1975@live.com	Pakistan	b207278e-f452-43f3-8e6d-1d55a32497dc	506136	5258980
fred1901@live.com	Pakistan	e6920268-aba1-48db-8739-415368d962ec	2888247	4504397
journey2091@outlook.com	Pakistan	6feb9519-7623-422d-848c-0b9a5723da19	4912070	836369
hormone1827@gmail.com	Pakistan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4705560	1115393
chance1827@gmail.com	Pakistan	7408db66-1b96-458c-b4f6-4234b2625afd	1336811	1866871
throwing1896@protonmail.com	Pakistan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	6364491	4117566
officials1972@protonmail.com	Pakistan	0b57e8c3-3a12-44b9-8236-ace791387ba3	5679786	2987381
bind1902@yahoo.com	Pakistan	33828361-6656-438a-aeb6-15a2e5ffcf27	2066581	409982
boost1833@gmail.com	Pakistan	ccde439b-b989-4cd2-aec9-f142c8d948d0	1786937	376121
absence1941@live.com	Pakistan	57309776-d0f5-43a2-b94e-38372ee07cc6	4502424	4762486
throwing1896@protonmail.com	Pakistan	436386c2-345f-4570-ba73-582b3437d53e	3649755	5160614
nbc2041@yahoo.com	Pakistan	dccda210-9223-4604-b148-a0a248fb714e	3669421	2527401
pda1876@outlook.com	Pakistan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1402244	5922377
dont2100@protonmail.com	Pakistan	495303f4-a868-4fa4-acba-c08667d7bcc8	6123534	25478
nelson2015@protonmail.com	Pakistan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2631227	2223216
boost1833@gmail.com	Pakistan	c94fd88f-86c3-433a-9d81-b19695d48328	3144943	84953
building2058@yandex.com	Pakistan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	528350	134047
vocal2080@protonmail.com	Pakistan	e88d9503-9bde-473f-9276-3651878e2863	1047255	6255486
florence2033@protonmail.com	Pakistan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2109869	1654983
throwing1896@protonmail.com	Pakistan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3013813	6139941
davidson2081@outlook.com	Pakistan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2635303	6436938
facilitate2066@gmail.com	Pakistan	28778fb1-1671-4bad-8284-6a731564a45e	4113867	1161861
sauce2013@yandex.com	Pakistan	e5a762f6-3052-4384-a92b-b5401e965d25	6833296	1685351
davidson2081@outlook.com	Pakistan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	508672	1752076
pda1876@outlook.com	Pakistan	642d495a-e016-412f-a53b-dc046cc492a0	6004805	3471380
sauce2013@yandex.com	Gibraltar	5de74332-bf74-402e-bac8-55b0a378954d	2527135	2187565
bind1902@yahoo.com	Gibraltar	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	430166	1166779
hormone1827@gmail.com	Gibraltar	5a00b0a4-db1a-4555-b66c-e47023575e85	2792271	1446373
boost1833@gmail.com	Gibraltar	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3623592	1767484
boost1833@gmail.com	Gibraltar	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3032228	936401
restoration1945@yahoo.com	Gibraltar	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	709246	653661
overall2026@outlook.com	Gibraltar	69798bb6-1716-47ee-90ff-0938314cce0c	3660992	2920352
pda1876@outlook.com	Gibraltar	9a270672-9e02-44bf-ba2e-2b6baf568829	2143640	1476401
dont2100@protonmail.com	Gibraltar	69817e8b-5270-4081-b06b-5f94d1a99c72	3564038	2759610
boost1833@gmail.com	Gibraltar	62f3d028-08e0-4986-806a-254f0d812c5b	3245294	1444161
cruise1800@yahoo.com	Gibraltar	80a97543-fd97-40a3-b8dc-f58e50101abc	1616122	595962
absence1941@live.com	Gibraltar	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2264746	858807
program2002@yandex.com	Gibraltar	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	951759	2797658
pda1876@outlook.com	Gibraltar	9848ad52-bed1-4791-9352-c779584dcbe7	749614	2685091
bookings1998@protonmail.com	Gibraltar	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3235386	2556251
nbc2041@yahoo.com	Gibraltar	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3412816	3198782
overall2026@outlook.com	Gibraltar	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2755579	3118526
restoration1945@yahoo.com	Gibraltar	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	109676	528640
local1830@gmail.com	Gibraltar	c5c41565-02cb-462f-83e5-150521ebde9c	688497	1302058
lifetime1925@gmail.com	Gibraltar	8ec60513-990a-4ce2-a516-8972fdcf9919	2029243	347709
chance1827@gmail.com	Gibraltar	68739ab8-38f9-45e5-9e67-fb0fc6139879	2749034	3396313
despite1900@live.com	Gibraltar	ea8636de-62ee-4739-8be2-2028afe303c9	3291513	1876106
absence1941@live.com	Gibraltar	ce85ec8a-a207-4929-ba56-2e8376b239ea	73160	2458332
program2002@yandex.com	Gibraltar	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6810	523833
delight1975@live.com	Gibraltar	5ed75d07-f129-4210-8934-b5282ab6bf39	1106322	1327177
building2058@yandex.com	Gibraltar	c82545f7-d728-4444-aded-9648e5d8c22c	444334	240867
delight1975@live.com	Gibraltar	b207278e-f452-43f3-8e6d-1d55a32497dc	2080050	2839044
dont2100@protonmail.com	Gibraltar	e6920268-aba1-48db-8739-415368d962ec	2523282	1869598
hospital2060@yahoo.com	Gibraltar	6feb9519-7623-422d-848c-0b9a5723da19	1358529	2237962
pda1876@outlook.com	Gibraltar	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3326288	936001
program2002@yandex.com	Gibraltar	7408db66-1b96-458c-b4f6-4234b2625afd	2092013	1942363
lifetime1925@gmail.com	Gibraltar	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1185873	2639023
davidson2081@outlook.com	Gibraltar	0b57e8c3-3a12-44b9-8236-ace791387ba3	2579620	26616
journey2091@outlook.com	Gibraltar	33828361-6656-438a-aeb6-15a2e5ffcf27	381116	1713781
facilitate2066@gmail.com	Gibraltar	ccde439b-b989-4cd2-aec9-f142c8d948d0	1511337	414267
throwing1896@protonmail.com	Gibraltar	57309776-d0f5-43a2-b94e-38372ee07cc6	244358	2843961
absence1941@live.com	Gibraltar	436386c2-345f-4570-ba73-582b3437d53e	2863122	325104
despite1900@live.com	Gibraltar	dccda210-9223-4604-b148-a0a248fb714e	3362587	1082437
davidson2081@outlook.com	Gibraltar	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1254008	1869859
journey2091@outlook.com	Gibraltar	495303f4-a868-4fa4-acba-c08667d7bcc8	3011757	2027700
throwing1896@protonmail.com	Gibraltar	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1604204	912088
officials1972@protonmail.com	Gibraltar	c94fd88f-86c3-433a-9d81-b19695d48328	1929661	1768264
officials1972@protonmail.com	Gibraltar	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1643679	2975529
only2081@protonmail.com	Gibraltar	e88d9503-9bde-473f-9276-3651878e2863	1483834	1458833
cruise1800@yahoo.com	Gibraltar	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1106647	97410
local1830@gmail.com	Gibraltar	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1826061	3511750
sauce2013@yandex.com	Gibraltar	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1068087	2291185
despite1900@live.com	Gibraltar	28778fb1-1671-4bad-8284-6a731564a45e	2409895	1998943
cruise1800@yahoo.com	Gibraltar	e5a762f6-3052-4384-a92b-b5401e965d25	1188911	606025
boost1833@gmail.com	Gibraltar	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2269991	126536
officials1972@protonmail.com	Gibraltar	642d495a-e016-412f-a53b-dc046cc492a0	3264020	2669540
journey2091@outlook.com	Mozambique	5de74332-bf74-402e-bac8-55b0a378954d	2105568	2467011
required1923@outlook.com	Mozambique	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4974886	4780397
florence2033@protonmail.com	Mozambique	5a00b0a4-db1a-4555-b66c-e47023575e85	2035516	1059193
bind1902@yahoo.com	Mozambique	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1226993	2081745
duncan1820@gmail.com	Mozambique	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1177873	5267903
required1923@outlook.com	Mozambique	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6283187	4198913
fred1901@live.com	Mozambique	69798bb6-1716-47ee-90ff-0938314cce0c	4303931	5080995
nbc2041@yahoo.com	Mozambique	9a270672-9e02-44bf-ba2e-2b6baf568829	4181383	6121582
webpage2008@yahoo.com	Mozambique	69817e8b-5270-4081-b06b-5f94d1a99c72	330753	1652904
absence1941@live.com	Mozambique	62f3d028-08e0-4986-806a-254f0d812c5b	2406065	1657059
dont2100@protonmail.com	Mozambique	80a97543-fd97-40a3-b8dc-f58e50101abc	4820755	2153759
only2081@protonmail.com	Mozambique	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4438839	3193261
peoples2042@protonmail.com	Mozambique	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1140209	1712046
required1923@outlook.com	Mozambique	9848ad52-bed1-4791-9352-c779584dcbe7	4847317	1004019
local1830@gmail.com	Mozambique	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	455560	4701628
despite1900@live.com	Mozambique	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1275905	3496823
delight1975@live.com	Mozambique	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	467050	3628582
chance1827@gmail.com	Mozambique	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4603813	2908648
absence1941@live.com	Mozambique	c5c41565-02cb-462f-83e5-150521ebde9c	2948616	5473870
dont2100@protonmail.com	Mozambique	8ec60513-990a-4ce2-a516-8972fdcf9919	3014424	3996517
webpage2008@yahoo.com	Mozambique	68739ab8-38f9-45e5-9e67-fb0fc6139879	3709740	3079234
chance1827@gmail.com	Mozambique	ea8636de-62ee-4739-8be2-2028afe303c9	3448916	2608521
dont2100@protonmail.com	Mozambique	ce85ec8a-a207-4929-ba56-2e8376b239ea	5407416	4209780
required1923@outlook.com	Mozambique	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3284665	3248901
mature1894@yahoo.com	Mozambique	5ed75d07-f129-4210-8934-b5282ab6bf39	5439302	1681249
officials1972@protonmail.com	Mozambique	c82545f7-d728-4444-aded-9648e5d8c22c	4601767	3128872
pda1876@outlook.com	Mozambique	b207278e-f452-43f3-8e6d-1d55a32497dc	1042035	3534285
absence1941@live.com	Mozambique	e6920268-aba1-48db-8739-415368d962ec	6346267	5784030
nbc2041@yahoo.com	Mozambique	6feb9519-7623-422d-848c-0b9a5723da19	3808389	155783
duncan1820@gmail.com	Mozambique	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	448364	2955197
only2081@protonmail.com	Mozambique	7408db66-1b96-458c-b4f6-4234b2625afd	927359	771208
pda1876@outlook.com	Mozambique	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5722179	4833883
throwing1896@protonmail.com	Mozambique	0b57e8c3-3a12-44b9-8236-ace791387ba3	3215198	3474320
building2058@yandex.com	Mozambique	33828361-6656-438a-aeb6-15a2e5ffcf27	3555482	162180
bookings1998@protonmail.com	Mozambique	ccde439b-b989-4cd2-aec9-f142c8d948d0	3040164	4857424
hospital2060@yahoo.com	Mozambique	57309776-d0f5-43a2-b94e-38372ee07cc6	3594710	538355
required1923@outlook.com	Mozambique	436386c2-345f-4570-ba73-582b3437d53e	5652145	1987609
required1923@outlook.com	Mozambique	dccda210-9223-4604-b148-a0a248fb714e	4995085	5699656
webpage2008@yahoo.com	Mozambique	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3714311	5727825
bookings1998@protonmail.com	Mozambique	495303f4-a868-4fa4-acba-c08667d7bcc8	5610752	6335557
florence2033@protonmail.com	Mozambique	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2621026	1670916
duncan1820@gmail.com	Mozambique	c94fd88f-86c3-433a-9d81-b19695d48328	415391	1876997
only2081@protonmail.com	Mozambique	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	670403	3459980
sauce2013@yandex.com	Mozambique	e88d9503-9bde-473f-9276-3651878e2863	3271275	2536425
restoration1945@yahoo.com	Mozambique	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2548089	1798415
mature1894@yahoo.com	Mozambique	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1744206	4004955
duncan1820@gmail.com	Mozambique	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4988129	5732770
duncan1820@gmail.com	Mozambique	28778fb1-1671-4bad-8284-6a731564a45e	1545425	1577885
officials1972@protonmail.com	Mozambique	e5a762f6-3052-4384-a92b-b5401e965d25	4132585	3694003
nelson2015@protonmail.com	Mozambique	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6061066	2426261
pda1876@outlook.com	Mozambique	642d495a-e016-412f-a53b-dc046cc492a0	2249243	1920754
bind1902@yahoo.com	Azerbaijan	5de74332-bf74-402e-bac8-55b0a378954d	244397	647549
boost1833@gmail.com	Azerbaijan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	451035	385144
nelson2015@protonmail.com	Azerbaijan	5a00b0a4-db1a-4555-b66c-e47023575e85	527208	576809
required1923@outlook.com	Azerbaijan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	568368	330888
required1923@outlook.com	Azerbaijan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	423671	404527
vocal2080@protonmail.com	Azerbaijan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	130290	78646
mature1894@yahoo.com	Azerbaijan	69798bb6-1716-47ee-90ff-0938314cce0c	175917	622325
nelson2015@protonmail.com	Azerbaijan	9a270672-9e02-44bf-ba2e-2b6baf568829	61472	172361
nbc2041@yahoo.com	Azerbaijan	69817e8b-5270-4081-b06b-5f94d1a99c72	542417	185126
duncan1820@gmail.com	Azerbaijan	62f3d028-08e0-4986-806a-254f0d812c5b	71859	429387
pda1876@outlook.com	Azerbaijan	80a97543-fd97-40a3-b8dc-f58e50101abc	80210	100859
mature1894@yahoo.com	Azerbaijan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	346499	16
fred1901@live.com	Azerbaijan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	612279	26938
only2081@protonmail.com	Azerbaijan	9848ad52-bed1-4791-9352-c779584dcbe7	538217	88134
only2081@protonmail.com	Azerbaijan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	9682	404748
nbc2041@yahoo.com	Azerbaijan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	587459	241301
boost1833@gmail.com	Azerbaijan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	657940	275681
restoration1945@yahoo.com	Azerbaijan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	341972	362223
hospital2060@yahoo.com	Azerbaijan	c5c41565-02cb-462f-83e5-150521ebde9c	438890	582859
journey2091@outlook.com	Azerbaijan	8ec60513-990a-4ce2-a516-8972fdcf9919	573924	344134
program2002@yandex.com	Azerbaijan	68739ab8-38f9-45e5-9e67-fb0fc6139879	195656	562071
fred1901@live.com	Azerbaijan	ea8636de-62ee-4739-8be2-2028afe303c9	152940	177818
chance1827@gmail.com	Azerbaijan	ce85ec8a-a207-4929-ba56-2e8376b239ea	571981	269882
navy1800@outlook.com	Azerbaijan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	536734	113174
only2081@protonmail.com	Azerbaijan	5ed75d07-f129-4210-8934-b5282ab6bf39	213491	328702
only2081@protonmail.com	Azerbaijan	c82545f7-d728-4444-aded-9648e5d8c22c	505930	351316
hormone1827@gmail.com	Azerbaijan	b207278e-f452-43f3-8e6d-1d55a32497dc	24802	447258
overall2026@outlook.com	Azerbaijan	e6920268-aba1-48db-8739-415368d962ec	359668	246641
hormone1827@gmail.com	Azerbaijan	6feb9519-7623-422d-848c-0b9a5723da19	573788	178981
chance1827@gmail.com	Azerbaijan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	300169	284881
local1830@gmail.com	Azerbaijan	7408db66-1b96-458c-b4f6-4234b2625afd	125656	139887
davidson2081@outlook.com	Azerbaijan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	150462	73424
only2081@protonmail.com	Azerbaijan	0b57e8c3-3a12-44b9-8236-ace791387ba3	529586	504638
navy1800@outlook.com	Azerbaijan	33828361-6656-438a-aeb6-15a2e5ffcf27	297095	37483
throwing1896@protonmail.com	Azerbaijan	ccde439b-b989-4cd2-aec9-f142c8d948d0	60151	181920
mature1894@yahoo.com	Azerbaijan	57309776-d0f5-43a2-b94e-38372ee07cc6	508913	142183
officials1972@protonmail.com	Azerbaijan	436386c2-345f-4570-ba73-582b3437d53e	439396	119570
absence1941@live.com	Azerbaijan	dccda210-9223-4604-b148-a0a248fb714e	361473	492127
pda1876@outlook.com	Azerbaijan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	344294	468308
florence2033@protonmail.com	Azerbaijan	495303f4-a868-4fa4-acba-c08667d7bcc8	227056	669076
cruise1800@yahoo.com	Azerbaijan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	467137	328936
required1923@outlook.com	Azerbaijan	c94fd88f-86c3-433a-9d81-b19695d48328	396835	409203
overall2026@outlook.com	Azerbaijan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	661062	393036
program2002@yandex.com	Azerbaijan	e88d9503-9bde-473f-9276-3651878e2863	290043	568762
dont2100@protonmail.com	Azerbaijan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	129215	356564
bookings1998@protonmail.com	Azerbaijan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	491796	545235
absence1941@live.com	Azerbaijan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	478122	392083
vocal2080@protonmail.com	Azerbaijan	28778fb1-1671-4bad-8284-6a731564a45e	441028	333003
building2058@yandex.com	Azerbaijan	e5a762f6-3052-4384-a92b-b5401e965d25	461677	287094
hospital2060@yahoo.com	Azerbaijan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	154112	483450
peoples2042@protonmail.com	Azerbaijan	642d495a-e016-412f-a53b-dc046cc492a0	658842	366492
dont2100@protonmail.com	Seychelles	5de74332-bf74-402e-bac8-55b0a378954d	3908325	5257216
building2058@yandex.com	Seychelles	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	7233788	2522987
webpage2008@yahoo.com	Seychelles	5a00b0a4-db1a-4555-b66c-e47023575e85	2452651	7752637
bookings1998@protonmail.com	Seychelles	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2502883	2022468
fred1901@live.com	Seychelles	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2099918	6406654
local1830@gmail.com	Seychelles	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6945193	5746901
nelson2015@protonmail.com	Seychelles	69798bb6-1716-47ee-90ff-0938314cce0c	6506849	4265328
bind1902@yahoo.com	Seychelles	9a270672-9e02-44bf-ba2e-2b6baf568829	6245706	6290314
only2081@protonmail.com	Seychelles	69817e8b-5270-4081-b06b-5f94d1a99c72	7811196	709237
vocal2080@protonmail.com	Seychelles	62f3d028-08e0-4986-806a-254f0d812c5b	720729	1085942
boost1833@gmail.com	Seychelles	80a97543-fd97-40a3-b8dc-f58e50101abc	3368179	4652425
restoration1945@yahoo.com	Seychelles	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	5712341	574505
pda1876@outlook.com	Seychelles	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4139297	7064961
bookings1998@protonmail.com	Seychelles	9848ad52-bed1-4791-9352-c779584dcbe7	5829227	4082178
boost1833@gmail.com	Seychelles	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4739897	5449904
officials1972@protonmail.com	Seychelles	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3695625	4497695
bookings1998@protonmail.com	Seychelles	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	371127	1516340
chance1827@gmail.com	Seychelles	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7811568	777818
webpage2008@yahoo.com	Seychelles	c5c41565-02cb-462f-83e5-150521ebde9c	5675496	4549453
local1830@gmail.com	Seychelles	8ec60513-990a-4ce2-a516-8972fdcf9919	344228	1011789
vocal2080@protonmail.com	Seychelles	68739ab8-38f9-45e5-9e67-fb0fc6139879	5837480	6683766
fred1901@live.com	Seychelles	ea8636de-62ee-4739-8be2-2028afe303c9	6169163	1667800
only2081@protonmail.com	Seychelles	ce85ec8a-a207-4929-ba56-2e8376b239ea	2663044	2706906
hospital2060@yahoo.com	Seychelles	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3065689	7323421
only2081@protonmail.com	Seychelles	5ed75d07-f129-4210-8934-b5282ab6bf39	4551768	7629311
duncan1820@gmail.com	Seychelles	c82545f7-d728-4444-aded-9648e5d8c22c	66620	451254
chance1827@gmail.com	Seychelles	b207278e-f452-43f3-8e6d-1d55a32497dc	805701	4497060
navy1800@outlook.com	Seychelles	e6920268-aba1-48db-8739-415368d962ec	5748760	5319403
program2002@yandex.com	Seychelles	6feb9519-7623-422d-848c-0b9a5723da19	7237786	6016201
fred1901@live.com	Seychelles	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4927185	179286
nbc2041@yahoo.com	Seychelles	7408db66-1b96-458c-b4f6-4234b2625afd	1189789	6334914
duncan1820@gmail.com	Seychelles	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	6230676	3026786
absence1941@live.com	Seychelles	0b57e8c3-3a12-44b9-8236-ace791387ba3	2976283	300465
fred1901@live.com	Seychelles	33828361-6656-438a-aeb6-15a2e5ffcf27	2035396	6575015
dont2100@protonmail.com	Seychelles	ccde439b-b989-4cd2-aec9-f142c8d948d0	7200075	5681264
officials1972@protonmail.com	Seychelles	57309776-d0f5-43a2-b94e-38372ee07cc6	4427811	61295
only2081@protonmail.com	Seychelles	436386c2-345f-4570-ba73-582b3437d53e	6267565	553534
boost1833@gmail.com	Seychelles	dccda210-9223-4604-b148-a0a248fb714e	4643938	5252583
vocal2080@protonmail.com	Seychelles	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3571798	6749567
dont2100@protonmail.com	Seychelles	495303f4-a868-4fa4-acba-c08667d7bcc8	3602890	6257879
duncan1820@gmail.com	Seychelles	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6665003	210714
required1923@outlook.com	Seychelles	c94fd88f-86c3-433a-9d81-b19695d48328	4273933	6594491
absence1941@live.com	Seychelles	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	777447	7174688
nelson2015@protonmail.com	Seychelles	e88d9503-9bde-473f-9276-3651878e2863	7833012	3161275
bind1902@yahoo.com	Seychelles	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2997223	3480944
throwing1896@protonmail.com	Seychelles	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6009224	7083748
building2058@yandex.com	Seychelles	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4856163	634271
absence1941@live.com	Seychelles	28778fb1-1671-4bad-8284-6a731564a45e	7037841	2667612
sauce2013@yandex.com	Seychelles	e5a762f6-3052-4384-a92b-b5401e965d25	7841615	236985
webpage2008@yahoo.com	Seychelles	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	776095	6245368
chance1827@gmail.com	Seychelles	642d495a-e016-412f-a53b-dc046cc492a0	5771037	2560271
only2081@protonmail.com	North Korea	5de74332-bf74-402e-bac8-55b0a378954d	4129167	4941373
chance1827@gmail.com	North Korea	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2027388	2130164
peoples2042@protonmail.com	North Korea	5a00b0a4-db1a-4555-b66c-e47023575e85	4564831	6833087
lifetime1925@gmail.com	North Korea	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3378714	4479829
building2058@yandex.com	North Korea	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1213360	4207487
navy1800@outlook.com	North Korea	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1911131	3056486
peoples2042@protonmail.com	North Korea	69798bb6-1716-47ee-90ff-0938314cce0c	2640795	5543041
bookings1998@protonmail.com	North Korea	9a270672-9e02-44bf-ba2e-2b6baf568829	5611279	2809114
absence1941@live.com	North Korea	69817e8b-5270-4081-b06b-5f94d1a99c72	2108501	2656301
boost1833@gmail.com	North Korea	62f3d028-08e0-4986-806a-254f0d812c5b	4673133	1084281
chance1827@gmail.com	North Korea	80a97543-fd97-40a3-b8dc-f58e50101abc	920207	432821
bind1902@yahoo.com	North Korea	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1789612	3910729
webpage2008@yahoo.com	North Korea	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5809212	6428385
cruise1800@yahoo.com	North Korea	9848ad52-bed1-4791-9352-c779584dcbe7	3615338	362190
restoration1945@yahoo.com	North Korea	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5590540	4144849
facilitate2066@gmail.com	North Korea	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2862976	1261451
local1830@gmail.com	North Korea	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1188289	4266026
vocal2080@protonmail.com	North Korea	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5648359	6800988
only2081@protonmail.com	North Korea	c5c41565-02cb-462f-83e5-150521ebde9c	1594728	1646045
chance1827@gmail.com	North Korea	8ec60513-990a-4ce2-a516-8972fdcf9919	6686598	3727280
delight1975@live.com	North Korea	68739ab8-38f9-45e5-9e67-fb0fc6139879	2248560	4204789
pda1876@outlook.com	North Korea	ea8636de-62ee-4739-8be2-2028afe303c9	925574	1562712
florence2033@protonmail.com	North Korea	ce85ec8a-a207-4929-ba56-2e8376b239ea	1945945	3242768
duncan1820@gmail.com	North Korea	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3277836	1759856
restoration1945@yahoo.com	North Korea	5ed75d07-f129-4210-8934-b5282ab6bf39	6297301	3547395
dont2100@protonmail.com	North Korea	c82545f7-d728-4444-aded-9648e5d8c22c	2545682	5682467
bind1902@yahoo.com	North Korea	b207278e-f452-43f3-8e6d-1d55a32497dc	5323703	1855074
nbc2041@yahoo.com	North Korea	e6920268-aba1-48db-8739-415368d962ec	1077337	4239877
despite1900@live.com	North Korea	6feb9519-7623-422d-848c-0b9a5723da19	59258	715279
despite1900@live.com	North Korea	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2362257	6327595
hospital2060@yahoo.com	North Korea	7408db66-1b96-458c-b4f6-4234b2625afd	1624764	1421749
delight1975@live.com	North Korea	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1329812	4342245
pda1876@outlook.com	North Korea	0b57e8c3-3a12-44b9-8236-ace791387ba3	4438185	1498051
absence1941@live.com	North Korea	33828361-6656-438a-aeb6-15a2e5ffcf27	3304990	5965710
overall2026@outlook.com	North Korea	ccde439b-b989-4cd2-aec9-f142c8d948d0	4099557	6266323
navy1800@outlook.com	North Korea	57309776-d0f5-43a2-b94e-38372ee07cc6	3659933	5208280
chance1827@gmail.com	North Korea	436386c2-345f-4570-ba73-582b3437d53e	4271549	2215656
required1923@outlook.com	North Korea	dccda210-9223-4604-b148-a0a248fb714e	6393432	5096474
required1923@outlook.com	North Korea	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3608647	5168676
bookings1998@protonmail.com	North Korea	495303f4-a868-4fa4-acba-c08667d7bcc8	554001	4991334
navy1800@outlook.com	North Korea	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	722788	5249140
hospital2060@yahoo.com	North Korea	c94fd88f-86c3-433a-9d81-b19695d48328	3198248	5429881
fred1901@live.com	North Korea	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	848133	2445997
fred1901@live.com	North Korea	e88d9503-9bde-473f-9276-3651878e2863	1874487	2628665
cruise1800@yahoo.com	North Korea	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4870944	4818748
lifetime1925@gmail.com	North Korea	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2621063	1464045
nbc2041@yahoo.com	North Korea	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6063334	1737860
hospital2060@yahoo.com	North Korea	28778fb1-1671-4bad-8284-6a731564a45e	3758585	4217120
navy1800@outlook.com	North Korea	e5a762f6-3052-4384-a92b-b5401e965d25	3612747	2825303
webpage2008@yahoo.com	North Korea	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4199122	4362360
overall2026@outlook.com	North Korea	642d495a-e016-412f-a53b-dc046cc492a0	4138623	5029481
despite1900@live.com	Bahrain	5de74332-bf74-402e-bac8-55b0a378954d	571731	331755
nbc2041@yahoo.com	Bahrain	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	531055	89643
lifetime1925@gmail.com	Bahrain	5a00b0a4-db1a-4555-b66c-e47023575e85	497116	641326
local1830@gmail.com	Bahrain	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	242791	516491
fred1901@live.com	Bahrain	000efc5f-1b50-44ef-92c9-7cd412ba4fca	467136	510184
dont2100@protonmail.com	Bahrain	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	539945	308670
pda1876@outlook.com	Bahrain	69798bb6-1716-47ee-90ff-0938314cce0c	325344	437126
florence2033@protonmail.com	Bahrain	9a270672-9e02-44bf-ba2e-2b6baf568829	329475	488299
hospital2060@yahoo.com	Bahrain	69817e8b-5270-4081-b06b-5f94d1a99c72	567123	537993
pda1876@outlook.com	Bahrain	62f3d028-08e0-4986-806a-254f0d812c5b	339316	393949
despite1900@live.com	Bahrain	80a97543-fd97-40a3-b8dc-f58e50101abc	605860	367873
mature1894@yahoo.com	Bahrain	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	453169	719144
davidson2081@outlook.com	Bahrain	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	111088	346494
program2002@yandex.com	Bahrain	9848ad52-bed1-4791-9352-c779584dcbe7	320545	643983
bookings1998@protonmail.com	Bahrain	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	657569	580
cruise1800@yahoo.com	Bahrain	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	433467	246311
peoples2042@protonmail.com	Bahrain	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	379099	146064
program2002@yandex.com	Bahrain	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	270570	468252
nbc2041@yahoo.com	Bahrain	c5c41565-02cb-462f-83e5-150521ebde9c	463279	62590
navy1800@outlook.com	Bahrain	8ec60513-990a-4ce2-a516-8972fdcf9919	338727	589163
vocal2080@protonmail.com	Bahrain	68739ab8-38f9-45e5-9e67-fb0fc6139879	409360	681867
peoples2042@protonmail.com	Bahrain	ea8636de-62ee-4739-8be2-2028afe303c9	499237	28927
pda1876@outlook.com	Bahrain	ce85ec8a-a207-4929-ba56-2e8376b239ea	716405	677398
vocal2080@protonmail.com	Bahrain	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	328747	103378
hormone1827@gmail.com	Bahrain	5ed75d07-f129-4210-8934-b5282ab6bf39	83690	174895
program2002@yandex.com	Bahrain	c82545f7-d728-4444-aded-9648e5d8c22c	161636	491000
peoples2042@protonmail.com	Bahrain	b207278e-f452-43f3-8e6d-1d55a32497dc	235405	347786
journey2091@outlook.com	Bahrain	e6920268-aba1-48db-8739-415368d962ec	336240	185202
dont2100@protonmail.com	Bahrain	6feb9519-7623-422d-848c-0b9a5723da19	5890	115691
hospital2060@yahoo.com	Bahrain	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	113417	347147
dont2100@protonmail.com	Bahrain	7408db66-1b96-458c-b4f6-4234b2625afd	203430	618139
davidson2081@outlook.com	Bahrain	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	625259	670786
overall2026@outlook.com	Bahrain	0b57e8c3-3a12-44b9-8236-ace791387ba3	678461	201324
pda1876@outlook.com	Bahrain	33828361-6656-438a-aeb6-15a2e5ffcf27	633960	495764
only2081@protonmail.com	Bahrain	ccde439b-b989-4cd2-aec9-f142c8d948d0	10244	176431
davidson2081@outlook.com	Bahrain	57309776-d0f5-43a2-b94e-38372ee07cc6	595176	320688
florence2033@protonmail.com	Bahrain	436386c2-345f-4570-ba73-582b3437d53e	579288	368546
nbc2041@yahoo.com	Bahrain	dccda210-9223-4604-b148-a0a248fb714e	194303	593746
lifetime1925@gmail.com	Bahrain	8acf71b1-5cd5-4010-8a5c-b1265d537e02	162466	566437
facilitate2066@gmail.com	Bahrain	495303f4-a868-4fa4-acba-c08667d7bcc8	554184	100324
cruise1800@yahoo.com	Bahrain	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	455228	440769
journey2091@outlook.com	Bahrain	c94fd88f-86c3-433a-9d81-b19695d48328	153223	191298
restoration1945@yahoo.com	Bahrain	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	64251	460965
davidson2081@outlook.com	Bahrain	e88d9503-9bde-473f-9276-3651878e2863	407033	488169
nelson2015@protonmail.com	Bahrain	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	331989	385633
bookings1998@protonmail.com	Bahrain	1ef2eabc-18f9-4869-973e-fa0d7a60446c	347501	211957
peoples2042@protonmail.com	Bahrain	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	347806	336970
davidson2081@outlook.com	Bahrain	28778fb1-1671-4bad-8284-6a731564a45e	183354	532980
chance1827@gmail.com	Bahrain	e5a762f6-3052-4384-a92b-b5401e965d25	584412	581818
program2002@yandex.com	Bahrain	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	8	58891
fred1901@live.com	Bahrain	642d495a-e016-412f-a53b-dc046cc492a0	284616	177091
facilitate2066@gmail.com	France	5de74332-bf74-402e-bac8-55b0a378954d	2763507	2097913
sauce2013@yandex.com	France	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1748516	3014180
bind1902@yahoo.com	France	5a00b0a4-db1a-4555-b66c-e47023575e85	1710236	1408391
nbc2041@yahoo.com	France	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	699472	2297095
peoples2042@protonmail.com	France	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1100418	1859342
dont2100@protonmail.com	France	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2761154	3279086
peoples2042@protonmail.com	France	69798bb6-1716-47ee-90ff-0938314cce0c	844589	2190244
duncan1820@gmail.com	France	9a270672-9e02-44bf-ba2e-2b6baf568829	1436222	1150265
overall2026@outlook.com	France	69817e8b-5270-4081-b06b-5f94d1a99c72	1372874	2583896
bookings1998@protonmail.com	France	62f3d028-08e0-4986-806a-254f0d812c5b	1146567	399478
peoples2042@protonmail.com	France	80a97543-fd97-40a3-b8dc-f58e50101abc	328894	2282629
cruise1800@yahoo.com	France	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2969015	123951
bind1902@yahoo.com	France	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2254560	823797
nelson2015@protonmail.com	France	9848ad52-bed1-4791-9352-c779584dcbe7	851303	362222
despite1900@live.com	France	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1525008	1883060
lifetime1925@gmail.com	France	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2805660	58076
davidson2081@outlook.com	France	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1042420	1265444
fred1901@live.com	France	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2570769	502137
bookings1998@protonmail.com	France	c5c41565-02cb-462f-83e5-150521ebde9c	598853	1216549
facilitate2066@gmail.com	France	8ec60513-990a-4ce2-a516-8972fdcf9919	589209	1096783
despite1900@live.com	France	68739ab8-38f9-45e5-9e67-fb0fc6139879	1709626	527848
duncan1820@gmail.com	France	ea8636de-62ee-4739-8be2-2028afe303c9	2065150	2746323
throwing1896@protonmail.com	France	ce85ec8a-a207-4929-ba56-2e8376b239ea	1625068	2882132
bind1902@yahoo.com	France	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	903844	1750010
boost1833@gmail.com	France	5ed75d07-f129-4210-8934-b5282ab6bf39	3118844	2094752
bind1902@yahoo.com	France	c82545f7-d728-4444-aded-9648e5d8c22c	3204693	432485
dont2100@protonmail.com	France	b207278e-f452-43f3-8e6d-1d55a32497dc	1039110	1910206
webpage2008@yahoo.com	France	e6920268-aba1-48db-8739-415368d962ec	2264566	410470
only2081@protonmail.com	France	6feb9519-7623-422d-848c-0b9a5723da19	1251751	2954537
overall2026@outlook.com	France	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	324790	1441897
dont2100@protonmail.com	France	7408db66-1b96-458c-b4f6-4234b2625afd	477739	457259
bind1902@yahoo.com	France	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	369768	2644875
required1923@outlook.com	France	0b57e8c3-3a12-44b9-8236-ace791387ba3	2426	1903441
bind1902@yahoo.com	France	33828361-6656-438a-aeb6-15a2e5ffcf27	1349950	2868894
hormone1827@gmail.com	France	ccde439b-b989-4cd2-aec9-f142c8d948d0	1906789	2685572
journey2091@outlook.com	France	57309776-d0f5-43a2-b94e-38372ee07cc6	3024394	2801373
facilitate2066@gmail.com	France	436386c2-345f-4570-ba73-582b3437d53e	2214190	1680872
hospital2060@yahoo.com	France	dccda210-9223-4604-b148-a0a248fb714e	2181998	1614006
nbc2041@yahoo.com	France	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1972962	1177765
overall2026@outlook.com	France	495303f4-a868-4fa4-acba-c08667d7bcc8	1276062	667408
mature1894@yahoo.com	France	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2562490	1861738
chance1827@gmail.com	France	c94fd88f-86c3-433a-9d81-b19695d48328	2624695	619956
building2058@yandex.com	France	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	698318	3245087
lifetime1925@gmail.com	France	e88d9503-9bde-473f-9276-3651878e2863	1220735	3259953
bookings1998@protonmail.com	France	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2291910	2304803
bind1902@yahoo.com	France	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1661149	1950009
bookings1998@protonmail.com	France	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2438472	1555503
navy1800@outlook.com	France	28778fb1-1671-4bad-8284-6a731564a45e	996682	1007027
lifetime1925@gmail.com	France	e5a762f6-3052-4384-a92b-b5401e965d25	745796	3210439
peoples2042@protonmail.com	France	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3040657	2667950
cruise1800@yahoo.com	France	642d495a-e016-412f-a53b-dc046cc492a0	3237095	3084820
vocal2080@protonmail.com	American Samoa	5de74332-bf74-402e-bac8-55b0a378954d	31576	52907
only2081@protonmail.com	American Samoa	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	12390	18126
sauce2013@yandex.com	American Samoa	5a00b0a4-db1a-4555-b66c-e47023575e85	114988	65532
florence2033@protonmail.com	American Samoa	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	23403	96688
vocal2080@protonmail.com	American Samoa	000efc5f-1b50-44ef-92c9-7cd412ba4fca	126003	146158
florence2033@protonmail.com	American Samoa	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	112109	31297
absence1941@live.com	American Samoa	69798bb6-1716-47ee-90ff-0938314cce0c	68895	52624
lifetime1925@gmail.com	American Samoa	9a270672-9e02-44bf-ba2e-2b6baf568829	146218	145734
florence2033@protonmail.com	American Samoa	69817e8b-5270-4081-b06b-5f94d1a99c72	14433	117419
fred1901@live.com	American Samoa	62f3d028-08e0-4986-806a-254f0d812c5b	21902	24889
sauce2013@yandex.com	American Samoa	80a97543-fd97-40a3-b8dc-f58e50101abc	139108	102174
cruise1800@yahoo.com	American Samoa	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	16382	41037
local1830@gmail.com	American Samoa	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	115760	107470
journey2091@outlook.com	American Samoa	9848ad52-bed1-4791-9352-c779584dcbe7	85470	130361
nbc2041@yahoo.com	American Samoa	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	11578	119678
delight1975@live.com	American Samoa	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	8498	78738
required1923@outlook.com	American Samoa	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	112277	94833
hormone1827@gmail.com	American Samoa	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	62434	60642
only2081@protonmail.com	American Samoa	c5c41565-02cb-462f-83e5-150521ebde9c	72383	61509
nbc2041@yahoo.com	American Samoa	8ec60513-990a-4ce2-a516-8972fdcf9919	2163	127085
only2081@protonmail.com	American Samoa	68739ab8-38f9-45e5-9e67-fb0fc6139879	112265	38491
restoration1945@yahoo.com	American Samoa	ea8636de-62ee-4739-8be2-2028afe303c9	34119	54367
cruise1800@yahoo.com	American Samoa	ce85ec8a-a207-4929-ba56-2e8376b239ea	93900	82398
navy1800@outlook.com	American Samoa	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	92863	9258
nbc2041@yahoo.com	American Samoa	5ed75d07-f129-4210-8934-b5282ab6bf39	65099	21859
local1830@gmail.com	American Samoa	c82545f7-d728-4444-aded-9648e5d8c22c	91966	75721
fred1901@live.com	American Samoa	b207278e-f452-43f3-8e6d-1d55a32497dc	72624	37087
only2081@protonmail.com	American Samoa	e6920268-aba1-48db-8739-415368d962ec	73902	88851
fred1901@live.com	American Samoa	6feb9519-7623-422d-848c-0b9a5723da19	63603	77936
dont2100@protonmail.com	American Samoa	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	108933	65767
dont2100@protonmail.com	American Samoa	7408db66-1b96-458c-b4f6-4234b2625afd	143380	54036
despite1900@live.com	American Samoa	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	69217	15852
local1830@gmail.com	American Samoa	0b57e8c3-3a12-44b9-8236-ace791387ba3	145798	6270
bind1902@yahoo.com	American Samoa	33828361-6656-438a-aeb6-15a2e5ffcf27	83418	107067
nbc2041@yahoo.com	American Samoa	ccde439b-b989-4cd2-aec9-f142c8d948d0	139568	112842
hormone1827@gmail.com	American Samoa	57309776-d0f5-43a2-b94e-38372ee07cc6	133294	78059
florence2033@protonmail.com	American Samoa	436386c2-345f-4570-ba73-582b3437d53e	58988	132184
nbc2041@yahoo.com	American Samoa	dccda210-9223-4604-b148-a0a248fb714e	73599	79831
duncan1820@gmail.com	American Samoa	8acf71b1-5cd5-4010-8a5c-b1265d537e02	54240	21161
nbc2041@yahoo.com	American Samoa	495303f4-a868-4fa4-acba-c08667d7bcc8	76084	54237
peoples2042@protonmail.com	American Samoa	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	9834	65213
overall2026@outlook.com	American Samoa	c94fd88f-86c3-433a-9d81-b19695d48328	330	128369
hospital2060@yahoo.com	American Samoa	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	92782	76825
sauce2013@yandex.com	American Samoa	e88d9503-9bde-473f-9276-3651878e2863	32920	15090
navy1800@outlook.com	American Samoa	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	127241	144594
dont2100@protonmail.com	American Samoa	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6677	23030
pda1876@outlook.com	American Samoa	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	89575	125301
nbc2041@yahoo.com	American Samoa	28778fb1-1671-4bad-8284-6a731564a45e	106431	129228
overall2026@outlook.com	American Samoa	e5a762f6-3052-4384-a92b-b5401e965d25	56789	103959
duncan1820@gmail.com	American Samoa	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	93932	106714
hospital2060@yahoo.com	American Samoa	642d495a-e016-412f-a53b-dc046cc492a0	35781	76205
florence2033@protonmail.com	Bhutan	5de74332-bf74-402e-bac8-55b0a378954d	246454	367001
boost1833@gmail.com	Bhutan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	399064	32648
boost1833@gmail.com	Bhutan	5a00b0a4-db1a-4555-b66c-e47023575e85	142352	262278
vocal2080@protonmail.com	Bhutan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	579393	1004022
sauce2013@yandex.com	Bhutan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	108198	699126
program2002@yandex.com	Bhutan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	552978	892416
fred1901@live.com	Bhutan	69798bb6-1716-47ee-90ff-0938314cce0c	687978	985738
required1923@outlook.com	Bhutan	9a270672-9e02-44bf-ba2e-2b6baf568829	887462	325215
vocal2080@protonmail.com	Bhutan	69817e8b-5270-4081-b06b-5f94d1a99c72	979816	632172
only2081@protonmail.com	Bhutan	62f3d028-08e0-4986-806a-254f0d812c5b	492369	87179
lifetime1925@gmail.com	Bhutan	80a97543-fd97-40a3-b8dc-f58e50101abc	617458	171263
cruise1800@yahoo.com	Bhutan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	820299	14734
despite1900@live.com	Bhutan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	979652	404931
delight1975@live.com	Bhutan	9848ad52-bed1-4791-9352-c779584dcbe7	292029	31733
pda1876@outlook.com	Bhutan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	595746	764254
restoration1945@yahoo.com	Bhutan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	626007	797531
officials1972@protonmail.com	Bhutan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	303787	470582
officials1972@protonmail.com	Bhutan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	513208	304764
fred1901@live.com	Bhutan	c5c41565-02cb-462f-83e5-150521ebde9c	230018	817481
fred1901@live.com	Bhutan	8ec60513-990a-4ce2-a516-8972fdcf9919	1048342	860150
bookings1998@protonmail.com	Bhutan	68739ab8-38f9-45e5-9e67-fb0fc6139879	6081	666693
mature1894@yahoo.com	Bhutan	ea8636de-62ee-4739-8be2-2028afe303c9	946384	246481
mature1894@yahoo.com	Bhutan	ce85ec8a-a207-4929-ba56-2e8376b239ea	255827	1022291
delight1975@live.com	Bhutan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	730321	741564
cruise1800@yahoo.com	Bhutan	5ed75d07-f129-4210-8934-b5282ab6bf39	517531	54906
overall2026@outlook.com	Bhutan	c82545f7-d728-4444-aded-9648e5d8c22c	561654	212867
absence1941@live.com	Bhutan	b207278e-f452-43f3-8e6d-1d55a32497dc	838741	1025370
only2081@protonmail.com	Bhutan	e6920268-aba1-48db-8739-415368d962ec	120669	549245
pda1876@outlook.com	Bhutan	6feb9519-7623-422d-848c-0b9a5723da19	704040	364408
fred1901@live.com	Bhutan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	886042	883755
officials1972@protonmail.com	Bhutan	7408db66-1b96-458c-b4f6-4234b2625afd	344182	13825
hormone1827@gmail.com	Bhutan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	516579	3967
required1923@outlook.com	Bhutan	0b57e8c3-3a12-44b9-8236-ace791387ba3	698054	338371
florence2033@protonmail.com	Bhutan	33828361-6656-438a-aeb6-15a2e5ffcf27	691517	592001
dont2100@protonmail.com	Bhutan	ccde439b-b989-4cd2-aec9-f142c8d948d0	222911	76485
nelson2015@protonmail.com	Bhutan	57309776-d0f5-43a2-b94e-38372ee07cc6	31401	769870
required1923@outlook.com	Bhutan	436386c2-345f-4570-ba73-582b3437d53e	583437	342770
program2002@yandex.com	Bhutan	dccda210-9223-4604-b148-a0a248fb714e	1049919	572720
officials1972@protonmail.com	Bhutan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1014734	991808
throwing1896@protonmail.com	Bhutan	495303f4-a868-4fa4-acba-c08667d7bcc8	372582	404313
restoration1945@yahoo.com	Bhutan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1036282	122691
mature1894@yahoo.com	Bhutan	c94fd88f-86c3-433a-9d81-b19695d48328	26986	673994
delight1975@live.com	Bhutan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	917898	349145
required1923@outlook.com	Bhutan	e88d9503-9bde-473f-9276-3651878e2863	405266	389318
required1923@outlook.com	Bhutan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	690056	493012
bookings1998@protonmail.com	Bhutan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	160712	106528
davidson2081@outlook.com	Bhutan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	525416	236276
peoples2042@protonmail.com	Bhutan	28778fb1-1671-4bad-8284-6a731564a45e	1054784	494990
chance1827@gmail.com	Bhutan	e5a762f6-3052-4384-a92b-b5401e965d25	931574	108930
florence2033@protonmail.com	Bhutan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	637372	640569
florence2033@protonmail.com	Bhutan	642d495a-e016-412f-a53b-dc046cc492a0	173727	280678
dont2100@protonmail.com	India	5de74332-bf74-402e-bac8-55b0a378954d	2396724	1835242
peoples2042@protonmail.com	India	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3735814	4193301
navy1800@outlook.com	India	5a00b0a4-db1a-4555-b66c-e47023575e85	3578469	2087982
bind1902@yahoo.com	India	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1400118	4237627
absence1941@live.com	India	000efc5f-1b50-44ef-92c9-7cd412ba4fca	583709	4307055
duncan1820@gmail.com	India	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4161643	1135638
nelson2015@protonmail.com	India	69798bb6-1716-47ee-90ff-0938314cce0c	52583	1024208
throwing1896@protonmail.com	India	9a270672-9e02-44bf-ba2e-2b6baf568829	3696667	3176381
local1830@gmail.com	India	69817e8b-5270-4081-b06b-5f94d1a99c72	857266	3325998
required1923@outlook.com	India	62f3d028-08e0-4986-806a-254f0d812c5b	1775747	648336
only2081@protonmail.com	India	80a97543-fd97-40a3-b8dc-f58e50101abc	593187	3401164
lifetime1925@gmail.com	India	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3066383	1654920
local1830@gmail.com	India	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1105674	970344
dont2100@protonmail.com	India	9848ad52-bed1-4791-9352-c779584dcbe7	2574580	915668
peoples2042@protonmail.com	India	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4048243	3024290
restoration1945@yahoo.com	India	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3655026	75565
overall2026@outlook.com	India	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1403903	148502
despite1900@live.com	India	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3294254	2245176
restoration1945@yahoo.com	India	c5c41565-02cb-462f-83e5-150521ebde9c	3950727	4221740
vocal2080@protonmail.com	India	8ec60513-990a-4ce2-a516-8972fdcf9919	598740	2190616
florence2033@protonmail.com	India	68739ab8-38f9-45e5-9e67-fb0fc6139879	3793499	937287
restoration1945@yahoo.com	India	ea8636de-62ee-4739-8be2-2028afe303c9	2250931	478240
davidson2081@outlook.com	India	ce85ec8a-a207-4929-ba56-2e8376b239ea	3259559	4123274
lifetime1925@gmail.com	India	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	275039	2930825
only2081@protonmail.com	India	5ed75d07-f129-4210-8934-b5282ab6bf39	1788047	1774263
hospital2060@yahoo.com	India	c82545f7-d728-4444-aded-9648e5d8c22c	646420	22317
dont2100@protonmail.com	India	b207278e-f452-43f3-8e6d-1d55a32497dc	2904920	2487122
sauce2013@yandex.com	India	e6920268-aba1-48db-8739-415368d962ec	3644393	1181031
chance1827@gmail.com	India	6feb9519-7623-422d-848c-0b9a5723da19	191871	31569
webpage2008@yahoo.com	India	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3029734	21164
dont2100@protonmail.com	India	7408db66-1b96-458c-b4f6-4234b2625afd	3593138	1737206
fred1901@live.com	India	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2359279	447182
lifetime1925@gmail.com	India	0b57e8c3-3a12-44b9-8236-ace791387ba3	484453	2116777
florence2033@protonmail.com	India	33828361-6656-438a-aeb6-15a2e5ffcf27	3705875	2289930
boost1833@gmail.com	India	ccde439b-b989-4cd2-aec9-f142c8d948d0	159215	1570621
chance1827@gmail.com	India	57309776-d0f5-43a2-b94e-38372ee07cc6	1351025	307166
throwing1896@protonmail.com	India	436386c2-345f-4570-ba73-582b3437d53e	2944205	2495215
peoples2042@protonmail.com	India	dccda210-9223-4604-b148-a0a248fb714e	3317933	669636
lifetime1925@gmail.com	India	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2049524	1627143
local1830@gmail.com	India	495303f4-a868-4fa4-acba-c08667d7bcc8	3563523	2096390
lifetime1925@gmail.com	India	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1073716	1001317
davidson2081@outlook.com	India	c94fd88f-86c3-433a-9d81-b19695d48328	837714	4310645
lifetime1925@gmail.com	India	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3621319	2005149
webpage2008@yahoo.com	India	e88d9503-9bde-473f-9276-3651878e2863	128368	2971574
nelson2015@protonmail.com	India	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3461754	3498018
chance1827@gmail.com	India	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2176372	1544246
required1923@outlook.com	India	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	948721	3106156
lifetime1925@gmail.com	India	28778fb1-1671-4bad-8284-6a731564a45e	958187	983146
fred1901@live.com	India	e5a762f6-3052-4384-a92b-b5401e965d25	2936992	2310438
nbc2041@yahoo.com	India	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	403436	3279513
peoples2042@protonmail.com	India	642d495a-e016-412f-a53b-dc046cc492a0	3118993	4116043
restoration1945@yahoo.com	Tanzania	5de74332-bf74-402e-bac8-55b0a378954d	8447371	3393616
dont2100@protonmail.com	Tanzania	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1819615	3683628
local1830@gmail.com	Tanzania	5a00b0a4-db1a-4555-b66c-e47023575e85	1433329	512938
restoration1945@yahoo.com	Tanzania	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4364503	6551535
program2002@yandex.com	Tanzania	000efc5f-1b50-44ef-92c9-7cd412ba4fca	7608130	491524
florence2033@protonmail.com	Tanzania	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2926633	3576191
throwing1896@protonmail.com	Tanzania	69798bb6-1716-47ee-90ff-0938314cce0c	4988523	4276835
journey2091@outlook.com	Tanzania	9a270672-9e02-44bf-ba2e-2b6baf568829	5315621	465155
lifetime1925@gmail.com	Tanzania	69817e8b-5270-4081-b06b-5f94d1a99c72	1982748	2850648
despite1900@live.com	Tanzania	62f3d028-08e0-4986-806a-254f0d812c5b	4394938	2785056
hormone1827@gmail.com	Tanzania	80a97543-fd97-40a3-b8dc-f58e50101abc	5262306	2621092
journey2091@outlook.com	Tanzania	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1327301	7086261
florence2033@protonmail.com	Tanzania	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1509696	8426193
bookings1998@protonmail.com	Tanzania	9848ad52-bed1-4791-9352-c779584dcbe7	1495902	6083621
fred1901@live.com	Tanzania	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6115824	4042672
absence1941@live.com	Tanzania	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5529477	276734
chance1827@gmail.com	Tanzania	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2066232	936685
overall2026@outlook.com	Tanzania	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	983875	638568
facilitate2066@gmail.com	Tanzania	c5c41565-02cb-462f-83e5-150521ebde9c	7717032	4485456
required1923@outlook.com	Tanzania	8ec60513-990a-4ce2-a516-8972fdcf9919	4856795	1783861
local1830@gmail.com	Tanzania	68739ab8-38f9-45e5-9e67-fb0fc6139879	4126620	1401020
required1923@outlook.com	Tanzania	ea8636de-62ee-4739-8be2-2028afe303c9	6264297	6079814
florence2033@protonmail.com	Tanzania	ce85ec8a-a207-4929-ba56-2e8376b239ea	4585955	6060587
webpage2008@yahoo.com	Tanzania	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	817828	5947545
dont2100@protonmail.com	Tanzania	5ed75d07-f129-4210-8934-b5282ab6bf39	2986738	3141672
required1923@outlook.com	Tanzania	c82545f7-d728-4444-aded-9648e5d8c22c	5183750	7577761
hormone1827@gmail.com	Tanzania	b207278e-f452-43f3-8e6d-1d55a32497dc	3962014	3594442
nbc2041@yahoo.com	Tanzania	e6920268-aba1-48db-8739-415368d962ec	3963529	3680511
chance1827@gmail.com	Tanzania	6feb9519-7623-422d-848c-0b9a5723da19	2244973	6556934
journey2091@outlook.com	Tanzania	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4002241	877535
mature1894@yahoo.com	Tanzania	7408db66-1b96-458c-b4f6-4234b2625afd	6444332	8751861
facilitate2066@gmail.com	Tanzania	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	7864670	9270571
davidson2081@outlook.com	Tanzania	0b57e8c3-3a12-44b9-8236-ace791387ba3	9111719	2292092
chance1827@gmail.com	Tanzania	33828361-6656-438a-aeb6-15a2e5ffcf27	1578450	3060618
nelson2015@protonmail.com	Tanzania	ccde439b-b989-4cd2-aec9-f142c8d948d0	3331903	8014551
chance1827@gmail.com	Tanzania	57309776-d0f5-43a2-b94e-38372ee07cc6	5172409	6100783
pda1876@outlook.com	Tanzania	436386c2-345f-4570-ba73-582b3437d53e	7294074	5710574
only2081@protonmail.com	Tanzania	dccda210-9223-4604-b148-a0a248fb714e	7062820	9114204
boost1833@gmail.com	Tanzania	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4199086	3101337
mature1894@yahoo.com	Tanzania	495303f4-a868-4fa4-acba-c08667d7bcc8	6727247	591268
boost1833@gmail.com	Tanzania	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6111765	1703341
nelson2015@protonmail.com	Tanzania	c94fd88f-86c3-433a-9d81-b19695d48328	953312	1933802
required1923@outlook.com	Tanzania	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	8716389	159247
lifetime1925@gmail.com	Tanzania	e88d9503-9bde-473f-9276-3651878e2863	5715782	9171382
nbc2041@yahoo.com	Tanzania	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1158699	980111
only2081@protonmail.com	Tanzania	1ef2eabc-18f9-4869-973e-fa0d7a60446c	8303949	5608866
bookings1998@protonmail.com	Tanzania	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	879348	6893076
nelson2015@protonmail.com	Tanzania	28778fb1-1671-4bad-8284-6a731564a45e	7086657	1431579
local1830@gmail.com	Tanzania	e5a762f6-3052-4384-a92b-b5401e965d25	7885353	856552
peoples2042@protonmail.com	Tanzania	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	8652333	730017
officials1972@protonmail.com	Tanzania	642d495a-e016-412f-a53b-dc046cc492a0	4707394	5881863
program2002@yandex.com	Algeria	5de74332-bf74-402e-bac8-55b0a378954d	15833	66535
delight1975@live.com	Algeria	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	9119	41325
nelson2015@protonmail.com	Algeria	5a00b0a4-db1a-4555-b66c-e47023575e85	61659	58202
mature1894@yahoo.com	Algeria	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	24119	2651
restoration1945@yahoo.com	Algeria	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5426	68841
duncan1820@gmail.com	Algeria	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	64319	18955
journey2091@outlook.com	Algeria	69798bb6-1716-47ee-90ff-0938314cce0c	12562	56870
vocal2080@protonmail.com	Algeria	9a270672-9e02-44bf-ba2e-2b6baf568829	22714	23740
mature1894@yahoo.com	Algeria	69817e8b-5270-4081-b06b-5f94d1a99c72	36896	5027
webpage2008@yahoo.com	Algeria	62f3d028-08e0-4986-806a-254f0d812c5b	86640	65141
bookings1998@protonmail.com	Algeria	80a97543-fd97-40a3-b8dc-f58e50101abc	45550	84520
hormone1827@gmail.com	Algeria	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	51347	45483
florence2033@protonmail.com	Algeria	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	8712	13197
navy1800@outlook.com	Algeria	9848ad52-bed1-4791-9352-c779584dcbe7	41976	54150
nbc2041@yahoo.com	Algeria	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2634	74838
local1830@gmail.com	Algeria	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	33983	37899
cruise1800@yahoo.com	Algeria	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	45305	47032
vocal2080@protonmail.com	Algeria	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	86943	82926
hospital2060@yahoo.com	Algeria	c5c41565-02cb-462f-83e5-150521ebde9c	2900	33554
restoration1945@yahoo.com	Algeria	8ec60513-990a-4ce2-a516-8972fdcf9919	81155	83565
davidson2081@outlook.com	Algeria	68739ab8-38f9-45e5-9e67-fb0fc6139879	59003	57987
vocal2080@protonmail.com	Algeria	ea8636de-62ee-4739-8be2-2028afe303c9	79253	85637
despite1900@live.com	Algeria	ce85ec8a-a207-4929-ba56-2e8376b239ea	66063	25439
journey2091@outlook.com	Algeria	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	83383	42486
despite1900@live.com	Algeria	5ed75d07-f129-4210-8934-b5282ab6bf39	79739	46747
webpage2008@yahoo.com	Algeria	c82545f7-d728-4444-aded-9648e5d8c22c	23418	63072
pda1876@outlook.com	Algeria	b207278e-f452-43f3-8e6d-1d55a32497dc	40283	84499
officials1972@protonmail.com	Algeria	e6920268-aba1-48db-8739-415368d962ec	18686	75900
peoples2042@protonmail.com	Algeria	6feb9519-7623-422d-848c-0b9a5723da19	15290	59791
navy1800@outlook.com	Algeria	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	28177	69255
pda1876@outlook.com	Algeria	7408db66-1b96-458c-b4f6-4234b2625afd	59749	37084
building2058@yandex.com	Algeria	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	69462	39053
fred1901@live.com	Algeria	0b57e8c3-3a12-44b9-8236-ace791387ba3	28701	81901
sauce2013@yandex.com	Algeria	33828361-6656-438a-aeb6-15a2e5ffcf27	2	71797
hospital2060@yahoo.com	Algeria	ccde439b-b989-4cd2-aec9-f142c8d948d0	74597	27524
hospital2060@yahoo.com	Algeria	57309776-d0f5-43a2-b94e-38372ee07cc6	64757	73063
sauce2013@yandex.com	Algeria	436386c2-345f-4570-ba73-582b3437d53e	34443	83324
overall2026@outlook.com	Algeria	dccda210-9223-4604-b148-a0a248fb714e	4833	62203
boost1833@gmail.com	Algeria	8acf71b1-5cd5-4010-8a5c-b1265d537e02	59506	48221
bookings1998@protonmail.com	Algeria	495303f4-a868-4fa4-acba-c08667d7bcc8	46408	36399
mature1894@yahoo.com	Algeria	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	25057	43262
hormone1827@gmail.com	Algeria	c94fd88f-86c3-433a-9d81-b19695d48328	34045	81599
officials1972@protonmail.com	Algeria	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	22827	58456
nbc2041@yahoo.com	Algeria	e88d9503-9bde-473f-9276-3651878e2863	43671	38389
overall2026@outlook.com	Algeria	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	30660	8153
pda1876@outlook.com	Algeria	1ef2eabc-18f9-4869-973e-fa0d7a60446c	50632	86742
davidson2081@outlook.com	Algeria	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1307	76734
facilitate2066@gmail.com	Algeria	28778fb1-1671-4bad-8284-6a731564a45e	3145	50071
only2081@protonmail.com	Algeria	e5a762f6-3052-4384-a92b-b5401e965d25	57362	52215
journey2091@outlook.com	Algeria	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	82698	3363
hospital2060@yahoo.com	Algeria	642d495a-e016-412f-a53b-dc046cc492a0	8418	36748
lifetime1925@gmail.com	Macedonia	5de74332-bf74-402e-bac8-55b0a378954d	256618	440310
throwing1896@protonmail.com	Macedonia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1861747	309682
restoration1945@yahoo.com	Macedonia	5a00b0a4-db1a-4555-b66c-e47023575e85	72572	3741658
facilitate2066@gmail.com	Macedonia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3834241	360074
mature1894@yahoo.com	Macedonia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2516795	4460375
despite1900@live.com	Macedonia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1062239	202231
fred1901@live.com	Macedonia	69798bb6-1716-47ee-90ff-0938314cce0c	4235436	1988065
nbc2041@yahoo.com	Macedonia	9a270672-9e02-44bf-ba2e-2b6baf568829	2686506	5162086
pda1876@outlook.com	Macedonia	69817e8b-5270-4081-b06b-5f94d1a99c72	3283034	908563
delight1975@live.com	Macedonia	62f3d028-08e0-4986-806a-254f0d812c5b	4507251	4795322
cruise1800@yahoo.com	Macedonia	80a97543-fd97-40a3-b8dc-f58e50101abc	3903859	2176817
local1830@gmail.com	Macedonia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3102453	3554551
journey2091@outlook.com	Macedonia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2485067	3315222
absence1941@live.com	Macedonia	9848ad52-bed1-4791-9352-c779584dcbe7	5223819	1382187
journey2091@outlook.com	Macedonia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4439873	618775
program2002@yandex.com	Macedonia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2842957	1037235
bind1902@yahoo.com	Macedonia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	929592	4282378
chance1827@gmail.com	Macedonia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4467826	5433306
nbc2041@yahoo.com	Macedonia	c5c41565-02cb-462f-83e5-150521ebde9c	200315	4473867
sauce2013@yandex.com	Macedonia	8ec60513-990a-4ce2-a516-8972fdcf9919	4200693	5015861
required1923@outlook.com	Macedonia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2323297	4693080
bind1902@yahoo.com	Macedonia	ea8636de-62ee-4739-8be2-2028afe303c9	3703350	2064534
throwing1896@protonmail.com	Macedonia	ce85ec8a-a207-4929-ba56-2e8376b239ea	3758810	2292733
bookings1998@protonmail.com	Macedonia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5303839	3076220
fred1901@live.com	Macedonia	5ed75d07-f129-4210-8934-b5282ab6bf39	2428651	864892
nbc2041@yahoo.com	Macedonia	c82545f7-d728-4444-aded-9648e5d8c22c	1237021	1956678
journey2091@outlook.com	Macedonia	b207278e-f452-43f3-8e6d-1d55a32497dc	3953134	1300912
sauce2013@yandex.com	Macedonia	e6920268-aba1-48db-8739-415368d962ec	2673590	1712727
lifetime1925@gmail.com	Macedonia	6feb9519-7623-422d-848c-0b9a5723da19	1354854	3157770
delight1975@live.com	Macedonia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3299365	1541643
facilitate2066@gmail.com	Macedonia	7408db66-1b96-458c-b4f6-4234b2625afd	3762314	1781490
bind1902@yahoo.com	Macedonia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	825680	2025420
only2081@protonmail.com	Macedonia	0b57e8c3-3a12-44b9-8236-ace791387ba3	1930416	2521359
local1830@gmail.com	Macedonia	33828361-6656-438a-aeb6-15a2e5ffcf27	5279134	2072854
hospital2060@yahoo.com	Macedonia	ccde439b-b989-4cd2-aec9-f142c8d948d0	619451	4846345
davidson2081@outlook.com	Macedonia	57309776-d0f5-43a2-b94e-38372ee07cc6	3085963	1560242
navy1800@outlook.com	Macedonia	436386c2-345f-4570-ba73-582b3437d53e	5176651	4748498
bookings1998@protonmail.com	Macedonia	dccda210-9223-4604-b148-a0a248fb714e	4605300	566028
lifetime1925@gmail.com	Macedonia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	570361	4943045
webpage2008@yahoo.com	Macedonia	495303f4-a868-4fa4-acba-c08667d7bcc8	1348258	2511312
duncan1820@gmail.com	Macedonia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1181686	2069825
journey2091@outlook.com	Macedonia	c94fd88f-86c3-433a-9d81-b19695d48328	1683720	5316318
bind1902@yahoo.com	Macedonia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	202162	3350836
despite1900@live.com	Macedonia	e88d9503-9bde-473f-9276-3651878e2863	1219066	912406
only2081@protonmail.com	Macedonia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3567047	2903360
local1830@gmail.com	Macedonia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	635660	4745144
throwing1896@protonmail.com	Macedonia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1423582	5442190
pda1876@outlook.com	Macedonia	28778fb1-1671-4bad-8284-6a731564a45e	3577720	1521958
duncan1820@gmail.com	Macedonia	e5a762f6-3052-4384-a92b-b5401e965d25	3647091	3242979
chance1827@gmail.com	Macedonia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2390224	1569633
facilitate2066@gmail.com	Macedonia	642d495a-e016-412f-a53b-dc046cc492a0	4577937	1532081
bind1902@yahoo.com	Mongolia	5de74332-bf74-402e-bac8-55b0a378954d	2675736	1809900
webpage2008@yahoo.com	Mongolia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	549178	4976035
facilitate2066@gmail.com	Mongolia	5a00b0a4-db1a-4555-b66c-e47023575e85	5844376	1593949
program2002@yandex.com	Mongolia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1162415	3852287
nbc2041@yahoo.com	Mongolia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	65439	1116126
navy1800@outlook.com	Mongolia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	718936	1865044
hormone1827@gmail.com	Mongolia	69798bb6-1716-47ee-90ff-0938314cce0c	145177	2823794
davidson2081@outlook.com	Mongolia	9a270672-9e02-44bf-ba2e-2b6baf568829	5907491	126184
webpage2008@yahoo.com	Mongolia	69817e8b-5270-4081-b06b-5f94d1a99c72	4605314	373762
officials1972@protonmail.com	Mongolia	62f3d028-08e0-4986-806a-254f0d812c5b	4923015	2796110
local1830@gmail.com	Mongolia	80a97543-fd97-40a3-b8dc-f58e50101abc	5816576	3753096
fred1901@live.com	Mongolia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1227386	3090086
duncan1820@gmail.com	Mongolia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4608139	302096
boost1833@gmail.com	Mongolia	9848ad52-bed1-4791-9352-c779584dcbe7	4951535	1634492
mature1894@yahoo.com	Mongolia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4620061	2482743
throwing1896@protonmail.com	Mongolia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5523283	3529768
absence1941@live.com	Mongolia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	309513	608900
despite1900@live.com	Mongolia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2491869	1861289
mature1894@yahoo.com	Mongolia	c5c41565-02cb-462f-83e5-150521ebde9c	2524920	1992774
restoration1945@yahoo.com	Mongolia	8ec60513-990a-4ce2-a516-8972fdcf9919	2840123	994647
hormone1827@gmail.com	Mongolia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2872138	4428245
despite1900@live.com	Mongolia	ea8636de-62ee-4739-8be2-2028afe303c9	1182369	4175027
throwing1896@protonmail.com	Mongolia	ce85ec8a-a207-4929-ba56-2e8376b239ea	976280	884352
duncan1820@gmail.com	Mongolia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4556378	6020657
boost1833@gmail.com	Mongolia	5ed75d07-f129-4210-8934-b5282ab6bf39	3997635	795752
required1923@outlook.com	Mongolia	c82545f7-d728-4444-aded-9648e5d8c22c	3640530	1414021
dont2100@protonmail.com	Mongolia	b207278e-f452-43f3-8e6d-1d55a32497dc	2902662	4347042
navy1800@outlook.com	Mongolia	e6920268-aba1-48db-8739-415368d962ec	4535182	5627886
boost1833@gmail.com	Mongolia	6feb9519-7623-422d-848c-0b9a5723da19	2184684	2893670
florence2033@protonmail.com	Mongolia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1549767	1676559
absence1941@live.com	Mongolia	7408db66-1b96-458c-b4f6-4234b2625afd	5677864	2481625
pda1876@outlook.com	Mongolia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	300728	2232993
peoples2042@protonmail.com	Mongolia	0b57e8c3-3a12-44b9-8236-ace791387ba3	1785944	3053507
davidson2081@outlook.com	Mongolia	33828361-6656-438a-aeb6-15a2e5ffcf27	3585498	5191383
vocal2080@protonmail.com	Mongolia	ccde439b-b989-4cd2-aec9-f142c8d948d0	5415590	2142842
cruise1800@yahoo.com	Mongolia	57309776-d0f5-43a2-b94e-38372ee07cc6	5968089	1778073
mature1894@yahoo.com	Mongolia	436386c2-345f-4570-ba73-582b3437d53e	3005245	3904632
bind1902@yahoo.com	Mongolia	dccda210-9223-4604-b148-a0a248fb714e	4614028	1154920
absence1941@live.com	Mongolia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	6076338	4453256
webpage2008@yahoo.com	Mongolia	495303f4-a868-4fa4-acba-c08667d7bcc8	6119706	1071027
mature1894@yahoo.com	Mongolia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2757223	166497
restoration1945@yahoo.com	Mongolia	c94fd88f-86c3-433a-9d81-b19695d48328	456853	1430159
journey2091@outlook.com	Mongolia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4532505	4262102
florence2033@protonmail.com	Mongolia	e88d9503-9bde-473f-9276-3651878e2863	2931027	2067448
required1923@outlook.com	Mongolia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1867957	3794602
nelson2015@protonmail.com	Mongolia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5428492	2769352
cruise1800@yahoo.com	Mongolia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1984013	2962762
sauce2013@yandex.com	Mongolia	28778fb1-1671-4bad-8284-6a731564a45e	2989576	1701978
program2002@yandex.com	Mongolia	e5a762f6-3052-4384-a92b-b5401e965d25	4027276	444534
navy1800@outlook.com	Mongolia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1654068	1435026
required1923@outlook.com	Mongolia	642d495a-e016-412f-a53b-dc046cc492a0	137972	5537847
florence2033@protonmail.com	Georgia	5de74332-bf74-402e-bac8-55b0a378954d	427031	1542691
despite1900@live.com	Georgia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2774320	3338325
lifetime1925@gmail.com	Georgia	5a00b0a4-db1a-4555-b66c-e47023575e85	2245378	2672188
program2002@yandex.com	Georgia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	825217	2910694
local1830@gmail.com	Georgia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	884765	2581168
nbc2041@yahoo.com	Georgia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3413466	1216528
bind1902@yahoo.com	Georgia	69798bb6-1716-47ee-90ff-0938314cce0c	1410097	1371100
delight1975@live.com	Georgia	9a270672-9e02-44bf-ba2e-2b6baf568829	1225583	44969
florence2033@protonmail.com	Georgia	69817e8b-5270-4081-b06b-5f94d1a99c72	2885279	2549770
hormone1827@gmail.com	Georgia	62f3d028-08e0-4986-806a-254f0d812c5b	1603420	3207174
navy1800@outlook.com	Georgia	80a97543-fd97-40a3-b8dc-f58e50101abc	1765061	1956207
building2058@yandex.com	Georgia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1775570	1663687
absence1941@live.com	Georgia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1245375	409172
journey2091@outlook.com	Georgia	9848ad52-bed1-4791-9352-c779584dcbe7	1713447	524625
local1830@gmail.com	Georgia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2796663	1290362
hospital2060@yahoo.com	Georgia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1115248	1104221
florence2033@protonmail.com	Georgia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	972976	1333309
nelson2015@protonmail.com	Georgia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	82063	876534
vocal2080@protonmail.com	Georgia	c5c41565-02cb-462f-83e5-150521ebde9c	1607319	2707888
building2058@yandex.com	Georgia	8ec60513-990a-4ce2-a516-8972fdcf9919	3491062	1140785
webpage2008@yahoo.com	Georgia	68739ab8-38f9-45e5-9e67-fb0fc6139879	3203704	2715222
hormone1827@gmail.com	Georgia	ea8636de-62ee-4739-8be2-2028afe303c9	1245457	2054566
nelson2015@protonmail.com	Georgia	ce85ec8a-a207-4929-ba56-2e8376b239ea	216774	362194
program2002@yandex.com	Georgia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2804017	579390
dont2100@protonmail.com	Georgia	5ed75d07-f129-4210-8934-b5282ab6bf39	1417389	269661
only2081@protonmail.com	Georgia	c82545f7-d728-4444-aded-9648e5d8c22c	504278	1613369
boost1833@gmail.com	Georgia	b207278e-f452-43f3-8e6d-1d55a32497dc	2891819	1261252
despite1900@live.com	Georgia	e6920268-aba1-48db-8739-415368d962ec	2786190	1678425
throwing1896@protonmail.com	Georgia	6feb9519-7623-422d-848c-0b9a5723da19	3085175	1653753
vocal2080@protonmail.com	Georgia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3488468	1474377
officials1972@protonmail.com	Georgia	7408db66-1b96-458c-b4f6-4234b2625afd	2986510	3405832
local1830@gmail.com	Georgia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	851729	840767
nbc2041@yahoo.com	Georgia	0b57e8c3-3a12-44b9-8236-ace791387ba3	3418659	2222067
peoples2042@protonmail.com	Georgia	33828361-6656-438a-aeb6-15a2e5ffcf27	2544902	1719147
chance1827@gmail.com	Georgia	ccde439b-b989-4cd2-aec9-f142c8d948d0	1314782	3036429
duncan1820@gmail.com	Georgia	57309776-d0f5-43a2-b94e-38372ee07cc6	3160466	3347464
delight1975@live.com	Georgia	436386c2-345f-4570-ba73-582b3437d53e	2525836	438521
bind1902@yahoo.com	Georgia	dccda210-9223-4604-b148-a0a248fb714e	1158873	2644045
boost1833@gmail.com	Georgia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2214980	1357096
dont2100@protonmail.com	Georgia	495303f4-a868-4fa4-acba-c08667d7bcc8	416546	2748447
required1923@outlook.com	Georgia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1803928	3245640
hospital2060@yahoo.com	Georgia	c94fd88f-86c3-433a-9d81-b19695d48328	1027759	1245234
dont2100@protonmail.com	Georgia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	740607	206067
vocal2080@protonmail.com	Georgia	e88d9503-9bde-473f-9276-3651878e2863	396527	3509201
required1923@outlook.com	Georgia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2328497	2205817
pda1876@outlook.com	Georgia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2600904	1990656
peoples2042@protonmail.com	Georgia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1499103	2006227
absence1941@live.com	Georgia	28778fb1-1671-4bad-8284-6a731564a45e	199901	1146618
nelson2015@protonmail.com	Georgia	e5a762f6-3052-4384-a92b-b5401e965d25	2936382	1936897
program2002@yandex.com	Georgia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3135397	1062264
pda1876@outlook.com	Georgia	642d495a-e016-412f-a53b-dc046cc492a0	920757	1208373
hormone1827@gmail.com	Vatican City	5de74332-bf74-402e-bac8-55b0a378954d	1584252	937643
fred1901@live.com	Vatican City	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3758615	2859733
despite1900@live.com	Vatican City	5a00b0a4-db1a-4555-b66c-e47023575e85	1477320	2369253
throwing1896@protonmail.com	Vatican City	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2513946	2103114
officials1972@protonmail.com	Vatican City	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1028508	2860751
bind1902@yahoo.com	Vatican City	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5333203	3463509
only2081@protonmail.com	Vatican City	69798bb6-1716-47ee-90ff-0938314cce0c	3088480	2883665
nbc2041@yahoo.com	Vatican City	9a270672-9e02-44bf-ba2e-2b6baf568829	5108945	775614
pda1876@outlook.com	Vatican City	69817e8b-5270-4081-b06b-5f94d1a99c72	2893272	457820
cruise1800@yahoo.com	Vatican City	62f3d028-08e0-4986-806a-254f0d812c5b	1884021	5444135
chance1827@gmail.com	Vatican City	80a97543-fd97-40a3-b8dc-f58e50101abc	733984	4892933
officials1972@protonmail.com	Vatican City	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2748293	3914268
boost1833@gmail.com	Vatican City	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2905016	3030940
vocal2080@protonmail.com	Vatican City	9848ad52-bed1-4791-9352-c779584dcbe7	3334524	975100
sauce2013@yandex.com	Vatican City	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1989723	1651332
navy1800@outlook.com	Vatican City	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5232022	1164774
peoples2042@protonmail.com	Vatican City	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5089790	2128531
hospital2060@yahoo.com	Vatican City	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3457534	2408830
only2081@protonmail.com	Vatican City	c5c41565-02cb-462f-83e5-150521ebde9c	3135203	2151686
pda1876@outlook.com	Vatican City	8ec60513-990a-4ce2-a516-8972fdcf9919	591190	5302449
fred1901@live.com	Vatican City	68739ab8-38f9-45e5-9e67-fb0fc6139879	63515	2205915
boost1833@gmail.com	Vatican City	ea8636de-62ee-4739-8be2-2028afe303c9	4975890	5152596
nbc2041@yahoo.com	Vatican City	ce85ec8a-a207-4929-ba56-2e8376b239ea	4241097	1073628
despite1900@live.com	Vatican City	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4410044	2962825
chance1827@gmail.com	Gabon	c94fd88f-86c3-433a-9d81-b19695d48328	22019	180325
program2002@yandex.com	Vatican City	5ed75d07-f129-4210-8934-b5282ab6bf39	4927134	5315688
sauce2013@yandex.com	Vatican City	c82545f7-d728-4444-aded-9648e5d8c22c	4677857	233754
only2081@protonmail.com	Vatican City	b207278e-f452-43f3-8e6d-1d55a32497dc	2243862	2457779
facilitate2066@gmail.com	Vatican City	e6920268-aba1-48db-8739-415368d962ec	129397	636173
boost1833@gmail.com	Vatican City	6feb9519-7623-422d-848c-0b9a5723da19	4782148	4283653
overall2026@outlook.com	Vatican City	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3451251	1301184
florence2033@protonmail.com	Vatican City	7408db66-1b96-458c-b4f6-4234b2625afd	3279941	3137042
chance1827@gmail.com	Vatican City	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3798332	2964253
required1923@outlook.com	Vatican City	0b57e8c3-3a12-44b9-8236-ace791387ba3	3538757	3147556
florence2033@protonmail.com	Vatican City	33828361-6656-438a-aeb6-15a2e5ffcf27	828384	1048816
lifetime1925@gmail.com	Vatican City	ccde439b-b989-4cd2-aec9-f142c8d948d0	712131	4426579
journey2091@outlook.com	Vatican City	57309776-d0f5-43a2-b94e-38372ee07cc6	3185035	393717
throwing1896@protonmail.com	Vatican City	436386c2-345f-4570-ba73-582b3437d53e	4366734	1611519
nelson2015@protonmail.com	Vatican City	dccda210-9223-4604-b148-a0a248fb714e	3220366	758953
navy1800@outlook.com	Vatican City	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4115644	4798253
dont2100@protonmail.com	Vatican City	495303f4-a868-4fa4-acba-c08667d7bcc8	1695088	4199833
hormone1827@gmail.com	Vatican City	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	174100	4399565
building2058@yandex.com	Vatican City	c94fd88f-86c3-433a-9d81-b19695d48328	4234552	2948319
program2002@yandex.com	Vatican City	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3352604	2620194
delight1975@live.com	Vatican City	e88d9503-9bde-473f-9276-3651878e2863	455474	4188605
delight1975@live.com	Vatican City	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2039787	4496070
building2058@yandex.com	Vatican City	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2392847	3385658
hormone1827@gmail.com	Vatican City	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	890228	3145747
navy1800@outlook.com	Vatican City	28778fb1-1671-4bad-8284-6a731564a45e	3533129	449843
florence2033@protonmail.com	Vatican City	e5a762f6-3052-4384-a92b-b5401e965d25	2087576	1699316
despite1900@live.com	Vatican City	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1190929	3355717
nbc2041@yahoo.com	Vatican City	642d495a-e016-412f-a53b-dc046cc492a0	2730901	1508744
despite1900@live.com	Malawi	5de74332-bf74-402e-bac8-55b0a378954d	798616	2484828
bind1902@yahoo.com	Malawi	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1906346	5403051
officials1972@protonmail.com	Malawi	5a00b0a4-db1a-4555-b66c-e47023575e85	429577	300445
peoples2042@protonmail.com	Malawi	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3635509	2387477
required1923@outlook.com	Malawi	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5040668	3842095
officials1972@protonmail.com	Malawi	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4987567	3526093
despite1900@live.com	Malawi	69798bb6-1716-47ee-90ff-0938314cce0c	622423	46156
facilitate2066@gmail.com	Malawi	9a270672-9e02-44bf-ba2e-2b6baf568829	5243693	510629
program2002@yandex.com	Malawi	69817e8b-5270-4081-b06b-5f94d1a99c72	3985912	4167199
hospital2060@yahoo.com	Malawi	62f3d028-08e0-4986-806a-254f0d812c5b	1351368	3887060
dont2100@protonmail.com	Malawi	80a97543-fd97-40a3-b8dc-f58e50101abc	125816	1572790
hormone1827@gmail.com	Malawi	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1987277	2760828
building2058@yandex.com	Malawi	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4814058	1655888
restoration1945@yahoo.com	Malawi	9848ad52-bed1-4791-9352-c779584dcbe7	3085417	5752178
bookings1998@protonmail.com	Malawi	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	96452	2093893
officials1972@protonmail.com	Malawi	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	12650	1520728
davidson2081@outlook.com	Malawi	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3083712	2192035
journey2091@outlook.com	Malawi	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2980571	2948809
boost1833@gmail.com	Malawi	c5c41565-02cb-462f-83e5-150521ebde9c	3805714	253687
overall2026@outlook.com	Malawi	8ec60513-990a-4ce2-a516-8972fdcf9919	4718151	413575
absence1941@live.com	Malawi	68739ab8-38f9-45e5-9e67-fb0fc6139879	1218301	3423127
navy1800@outlook.com	Malawi	ea8636de-62ee-4739-8be2-2028afe303c9	3615244	1509379
hospital2060@yahoo.com	Malawi	ce85ec8a-a207-4929-ba56-2e8376b239ea	2117860	4839297
bookings1998@protonmail.com	Malawi	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2808064	4946264
delight1975@live.com	Malawi	5ed75d07-f129-4210-8934-b5282ab6bf39	5472242	1074360
required1923@outlook.com	Malawi	c82545f7-d728-4444-aded-9648e5d8c22c	1370462	56967
fred1901@live.com	Malawi	b207278e-f452-43f3-8e6d-1d55a32497dc	245404	812208
cruise1800@yahoo.com	Malawi	e6920268-aba1-48db-8739-415368d962ec	1057356	1556035
bookings1998@protonmail.com	Malawi	6feb9519-7623-422d-848c-0b9a5723da19	5838094	4365021
duncan1820@gmail.com	Malawi	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2326703	3050807
required1923@outlook.com	Malawi	7408db66-1b96-458c-b4f6-4234b2625afd	2747713	4714637
journey2091@outlook.com	Malawi	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4051353	5680345
dont2100@protonmail.com	Malawi	0b57e8c3-3a12-44b9-8236-ace791387ba3	2238373	3683260
navy1800@outlook.com	Malawi	33828361-6656-438a-aeb6-15a2e5ffcf27	824799	2415656
sauce2013@yandex.com	Malawi	ccde439b-b989-4cd2-aec9-f142c8d948d0	1615277	65274
nelson2015@protonmail.com	Malawi	57309776-d0f5-43a2-b94e-38372ee07cc6	3058343	2374157
vocal2080@protonmail.com	Malawi	436386c2-345f-4570-ba73-582b3437d53e	55300	2540555
webpage2008@yahoo.com	Malawi	dccda210-9223-4604-b148-a0a248fb714e	3688172	2538551
mature1894@yahoo.com	Malawi	8acf71b1-5cd5-4010-8a5c-b1265d537e02	636730	274845
hormone1827@gmail.com	Malawi	495303f4-a868-4fa4-acba-c08667d7bcc8	5818210	3868226
absence1941@live.com	Malawi	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3677746	2840801
cruise1800@yahoo.com	Malawi	c94fd88f-86c3-433a-9d81-b19695d48328	928190	3314629
only2081@protonmail.com	Malawi	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	825079	5297432
nelson2015@protonmail.com	Malawi	e88d9503-9bde-473f-9276-3651878e2863	659982	5419170
duncan1820@gmail.com	Malawi	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	500206	43170
boost1833@gmail.com	Malawi	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3269663	3139642
cruise1800@yahoo.com	Malawi	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5543339	2104757
mature1894@yahoo.com	Malawi	28778fb1-1671-4bad-8284-6a731564a45e	2754331	1193945
hospital2060@yahoo.com	Malawi	e5a762f6-3052-4384-a92b-b5401e965d25	4949234	859423
journey2091@outlook.com	Malawi	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2245467	2631023
facilitate2066@gmail.com	Malawi	642d495a-e016-412f-a53b-dc046cc492a0	2180865	5579703
fred1901@live.com	Mauritania	5de74332-bf74-402e-bac8-55b0a378954d	1847147	1967278
davidson2081@outlook.com	Mauritania	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1785083	4689403
building2058@yandex.com	Mauritania	5a00b0a4-db1a-4555-b66c-e47023575e85	890663	6004859
duncan1820@gmail.com	Mauritania	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	769049	2860574
program2002@yandex.com	Mauritania	000efc5f-1b50-44ef-92c9-7cd412ba4fca	6251529	5299235
navy1800@outlook.com	Mauritania	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4069689	6406471
pda1876@outlook.com	Mauritania	69798bb6-1716-47ee-90ff-0938314cce0c	852705	2168345
only2081@protonmail.com	Mauritania	9a270672-9e02-44bf-ba2e-2b6baf568829	5254308	642011
nelson2015@protonmail.com	Mauritania	69817e8b-5270-4081-b06b-5f94d1a99c72	2034088	5347846
lifetime1925@gmail.com	Mauritania	62f3d028-08e0-4986-806a-254f0d812c5b	4070933	4989332
required1923@outlook.com	Mauritania	80a97543-fd97-40a3-b8dc-f58e50101abc	2779221	6101627
mature1894@yahoo.com	Mauritania	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1218960	4863964
pda1876@outlook.com	Mauritania	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2195407	2589338
sauce2013@yandex.com	Mauritania	9848ad52-bed1-4791-9352-c779584dcbe7	4421720	2836418
mature1894@yahoo.com	Mauritania	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3831514	4134245
throwing1896@protonmail.com	Mauritania	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3236684	67346
only2081@protonmail.com	Mauritania	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	479282	6175805
dont2100@protonmail.com	Mauritania	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3687004	3804480
officials1972@protonmail.com	Mauritania	c5c41565-02cb-462f-83e5-150521ebde9c	5932296	6614886
nelson2015@protonmail.com	Mauritania	8ec60513-990a-4ce2-a516-8972fdcf9919	1117776	1916822
boost1833@gmail.com	Mauritania	68739ab8-38f9-45e5-9e67-fb0fc6139879	1977385	3956613
davidson2081@outlook.com	Mauritania	ea8636de-62ee-4739-8be2-2028afe303c9	6038114	4533119
local1830@gmail.com	Mauritania	ce85ec8a-a207-4929-ba56-2e8376b239ea	678692	5090985
vocal2080@protonmail.com	Mauritania	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5331329	6586398
journey2091@outlook.com	Mauritania	5ed75d07-f129-4210-8934-b5282ab6bf39	4544753	4899456
lifetime1925@gmail.com	Mauritania	c82545f7-d728-4444-aded-9648e5d8c22c	3016626	949911
local1830@gmail.com	Mauritania	b207278e-f452-43f3-8e6d-1d55a32497dc	4919601	6479626
duncan1820@gmail.com	Mauritania	e6920268-aba1-48db-8739-415368d962ec	5874338	2692276
hormone1827@gmail.com	Mauritania	6feb9519-7623-422d-848c-0b9a5723da19	2846686	1034982
vocal2080@protonmail.com	Mauritania	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	394550	6039310
officials1972@protonmail.com	Mauritania	7408db66-1b96-458c-b4f6-4234b2625afd	4965638	3470823
officials1972@protonmail.com	Mauritania	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3507251	298536
chance1827@gmail.com	Mauritania	0b57e8c3-3a12-44b9-8236-ace791387ba3	341886	4296400
nbc2041@yahoo.com	Mauritania	33828361-6656-438a-aeb6-15a2e5ffcf27	5210460	6025087
fred1901@live.com	Mauritania	ccde439b-b989-4cd2-aec9-f142c8d948d0	2573413	1916642
restoration1945@yahoo.com	Mauritania	57309776-d0f5-43a2-b94e-38372ee07cc6	6180760	3995231
only2081@protonmail.com	Mauritania	436386c2-345f-4570-ba73-582b3437d53e	4294808	2169969
davidson2081@outlook.com	Mauritania	dccda210-9223-4604-b148-a0a248fb714e	928405	1988128
vocal2080@protonmail.com	Mauritania	8acf71b1-5cd5-4010-8a5c-b1265d537e02	5175872	3748882
dont2100@protonmail.com	Mauritania	495303f4-a868-4fa4-acba-c08667d7bcc8	3779843	1106959
only2081@protonmail.com	Mauritania	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1889453	2453258
nelson2015@protonmail.com	Mauritania	c94fd88f-86c3-433a-9d81-b19695d48328	2878839	5217741
overall2026@outlook.com	Mauritania	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6642404	1831565
chance1827@gmail.com	Mauritania	e88d9503-9bde-473f-9276-3651878e2863	4466397	5667670
duncan1820@gmail.com	Mauritania	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2987779	5537460
only2081@protonmail.com	Mauritania	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3848824	5250367
despite1900@live.com	Mauritania	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3500663	2195694
nelson2015@protonmail.com	Mauritania	28778fb1-1671-4bad-8284-6a731564a45e	2946824	3426802
program2002@yandex.com	Mauritania	e5a762f6-3052-4384-a92b-b5401e965d25	5387814	3991213
bookings1998@protonmail.com	Mauritania	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3861375	3717684
vocal2080@protonmail.com	Mauritania	642d495a-e016-412f-a53b-dc046cc492a0	6460029	1987276
chance1827@gmail.com	Nicaragua	5de74332-bf74-402e-bac8-55b0a378954d	896399	1962513
dont2100@protonmail.com	Nicaragua	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5637342	5320885
bookings1998@protonmail.com	Nicaragua	5a00b0a4-db1a-4555-b66c-e47023575e85	883963	2973100
cruise1800@yahoo.com	Nicaragua	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	956861	3571747
chance1827@gmail.com	Nicaragua	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5204204	1907808
chance1827@gmail.com	Nicaragua	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3229333	5251529
mature1894@yahoo.com	Nicaragua	69798bb6-1716-47ee-90ff-0938314cce0c	4980228	4231991
absence1941@live.com	Nicaragua	9a270672-9e02-44bf-ba2e-2b6baf568829	459436	3065596
hospital2060@yahoo.com	Nicaragua	69817e8b-5270-4081-b06b-5f94d1a99c72	4548998	2210853
program2002@yandex.com	Nicaragua	62f3d028-08e0-4986-806a-254f0d812c5b	3496434	3319385
overall2026@outlook.com	Nicaragua	80a97543-fd97-40a3-b8dc-f58e50101abc	3762759	4003030
overall2026@outlook.com	Nicaragua	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	842395	230633
fred1901@live.com	Nicaragua	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	900780	2338139
duncan1820@gmail.com	Nicaragua	9848ad52-bed1-4791-9352-c779584dcbe7	67705	3462292
nbc2041@yahoo.com	Nicaragua	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2842250	5286134
chance1827@gmail.com	Nicaragua	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2868412	5040851
nbc2041@yahoo.com	Nicaragua	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	555365	2198026
lifetime1925@gmail.com	Nicaragua	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5411988	5217873
building2058@yandex.com	Nicaragua	c5c41565-02cb-462f-83e5-150521ebde9c	4161846	749705
boost1833@gmail.com	Nicaragua	8ec60513-990a-4ce2-a516-8972fdcf9919	1077975	5490546
nelson2015@protonmail.com	Nicaragua	68739ab8-38f9-45e5-9e67-fb0fc6139879	1618302	2814717
restoration1945@yahoo.com	Nicaragua	ea8636de-62ee-4739-8be2-2028afe303c9	4386909	232559
hormone1827@gmail.com	Nicaragua	ce85ec8a-a207-4929-ba56-2e8376b239ea	4287709	901926
only2081@protonmail.com	Nicaragua	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	569603	2215107
officials1972@protonmail.com	Nicaragua	5ed75d07-f129-4210-8934-b5282ab6bf39	2928844	615026
journey2091@outlook.com	Nicaragua	c82545f7-d728-4444-aded-9648e5d8c22c	4939259	1914317
nbc2041@yahoo.com	Nicaragua	b207278e-f452-43f3-8e6d-1d55a32497dc	1206078	2726696
chance1827@gmail.com	Nicaragua	e6920268-aba1-48db-8739-415368d962ec	2726667	4146588
hospital2060@yahoo.com	Nicaragua	6feb9519-7623-422d-848c-0b9a5723da19	1771781	3728129
mature1894@yahoo.com	Nicaragua	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	918418	2023174
navy1800@outlook.com	Nicaragua	7408db66-1b96-458c-b4f6-4234b2625afd	1958184	1928908
overall2026@outlook.com	Nicaragua	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	584892	1666810
florence2033@protonmail.com	Nicaragua	0b57e8c3-3a12-44b9-8236-ace791387ba3	1963780	4068408
building2058@yandex.com	Nicaragua	33828361-6656-438a-aeb6-15a2e5ffcf27	5499552	1911915
facilitate2066@gmail.com	Nicaragua	ccde439b-b989-4cd2-aec9-f142c8d948d0	716175	4917713
hormone1827@gmail.com	Nicaragua	57309776-d0f5-43a2-b94e-38372ee07cc6	5574920	418595
only2081@protonmail.com	Nicaragua	436386c2-345f-4570-ba73-582b3437d53e	4825830	541677
program2002@yandex.com	Nicaragua	dccda210-9223-4604-b148-a0a248fb714e	4827850	1317821
local1830@gmail.com	Nicaragua	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4406620	3167363
nbc2041@yahoo.com	Nicaragua	495303f4-a868-4fa4-acba-c08667d7bcc8	4773999	3934884
facilitate2066@gmail.com	Nicaragua	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3427566	4361646
hospital2060@yahoo.com	Nicaragua	c94fd88f-86c3-433a-9d81-b19695d48328	3630160	2351688
restoration1945@yahoo.com	Nicaragua	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4040393	376074
required1923@outlook.com	Nicaragua	e88d9503-9bde-473f-9276-3651878e2863	2374792	4175867
nelson2015@protonmail.com	Nicaragua	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	26968	2550259
vocal2080@protonmail.com	Nicaragua	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1579225	5412971
lifetime1925@gmail.com	Nicaragua	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2244504	1565109
boost1833@gmail.com	Nicaragua	28778fb1-1671-4bad-8284-6a731564a45e	2271382	3063126
program2002@yandex.com	Nicaragua	e5a762f6-3052-4384-a92b-b5401e965d25	4405423	937525
absence1941@live.com	Nicaragua	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	383218	145814
peoples2042@protonmail.com	Nicaragua	642d495a-e016-412f-a53b-dc046cc492a0	4068771	3751496
webpage2008@yahoo.com	Malaysia	5de74332-bf74-402e-bac8-55b0a378954d	3829751	3260582
webpage2008@yahoo.com	Malaysia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5907504	3218022
cruise1800@yahoo.com	Malaysia	5a00b0a4-db1a-4555-b66c-e47023575e85	44923	5288834
peoples2042@protonmail.com	Malaysia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	7549501	1706660
florence2033@protonmail.com	Malaysia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4005155	7074939
peoples2042@protonmail.com	Malaysia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3824282	3836957
bind1902@yahoo.com	Malaysia	69798bb6-1716-47ee-90ff-0938314cce0c	4352987	7614459
navy1800@outlook.com	Malaysia	9a270672-9e02-44bf-ba2e-2b6baf568829	4742915	720735
hospital2060@yahoo.com	Malaysia	69817e8b-5270-4081-b06b-5f94d1a99c72	6167590	7608111
bookings1998@protonmail.com	Malaysia	62f3d028-08e0-4986-806a-254f0d812c5b	2119950	5433868
florence2033@protonmail.com	Malaysia	80a97543-fd97-40a3-b8dc-f58e50101abc	6792159	1647796
local1830@gmail.com	Malaysia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3203349	760934
local1830@gmail.com	Malaysia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5653477	5084782
program2002@yandex.com	Malaysia	9848ad52-bed1-4791-9352-c779584dcbe7	677683	4972469
pda1876@outlook.com	Malaysia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6649050	5965464
nbc2041@yahoo.com	Malaysia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3562563	6300515
bookings1998@protonmail.com	Malaysia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	567631	6342234
local1830@gmail.com	Malaysia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	629478	4587520
delight1975@live.com	Malaysia	c5c41565-02cb-462f-83e5-150521ebde9c	3366909	2990157
program2002@yandex.com	Malaysia	8ec60513-990a-4ce2-a516-8972fdcf9919	533328	3826477
hormone1827@gmail.com	Malaysia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2185083	1416636
mature1894@yahoo.com	Malaysia	ea8636de-62ee-4739-8be2-2028afe303c9	1930043	2971652
dont2100@protonmail.com	Malaysia	ce85ec8a-a207-4929-ba56-2e8376b239ea	4160812	139826
pda1876@outlook.com	Malaysia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3173016	4782815
journey2091@outlook.com	Malaysia	5ed75d07-f129-4210-8934-b5282ab6bf39	2499152	1632328
hospital2060@yahoo.com	Malaysia	c82545f7-d728-4444-aded-9648e5d8c22c	233156	2059121
boost1833@gmail.com	Malaysia	b207278e-f452-43f3-8e6d-1d55a32497dc	807164	171255
pda1876@outlook.com	Malaysia	e6920268-aba1-48db-8739-415368d962ec	5189480	7085037
bind1902@yahoo.com	Malaysia	6feb9519-7623-422d-848c-0b9a5723da19	7364712	5067327
required1923@outlook.com	Malaysia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	815692	5166986
required1923@outlook.com	Malaysia	7408db66-1b96-458c-b4f6-4234b2625afd	4366003	6651175
bind1902@yahoo.com	Malaysia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1382057	3533539
lifetime1925@gmail.com	Malaysia	0b57e8c3-3a12-44b9-8236-ace791387ba3	2722861	5185422
dont2100@protonmail.com	Malaysia	33828361-6656-438a-aeb6-15a2e5ffcf27	177637	6191881
program2002@yandex.com	Malaysia	ccde439b-b989-4cd2-aec9-f142c8d948d0	277789	4309839
cruise1800@yahoo.com	Malaysia	57309776-d0f5-43a2-b94e-38372ee07cc6	4592376	3650745
vocal2080@protonmail.com	Malaysia	436386c2-345f-4570-ba73-582b3437d53e	5387411	4989612
boost1833@gmail.com	Malaysia	dccda210-9223-4604-b148-a0a248fb714e	4734445	3730416
despite1900@live.com	Malaysia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	237315	125166
nbc2041@yahoo.com	Malaysia	495303f4-a868-4fa4-acba-c08667d7bcc8	7228796	6192594
required1923@outlook.com	Malaysia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1791749	6488658
boost1833@gmail.com	Malaysia	c94fd88f-86c3-433a-9d81-b19695d48328	5363186	5395195
dont2100@protonmail.com	Malaysia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6122705	1829969
florence2033@protonmail.com	Malaysia	e88d9503-9bde-473f-9276-3651878e2863	1494191	5707596
florence2033@protonmail.com	Malaysia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2432088	2499986
required1923@outlook.com	Malaysia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	7841619	6542890
sauce2013@yandex.com	Malaysia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3465510	4202546
throwing1896@protonmail.com	Malaysia	28778fb1-1671-4bad-8284-6a731564a45e	106730	2489494
webpage2008@yahoo.com	Malaysia	e5a762f6-3052-4384-a92b-b5401e965d25	7744142	7431020
local1830@gmail.com	Malaysia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6927592	4332637
mature1894@yahoo.com	Malaysia	642d495a-e016-412f-a53b-dc046cc492a0	1868585	4851526
absence1941@live.com	Saudi Arabia	5de74332-bf74-402e-bac8-55b0a378954d	269180	88631
despite1900@live.com	Saudi Arabia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	20255	573034
program2002@yandex.com	Saudi Arabia	5a00b0a4-db1a-4555-b66c-e47023575e85	497684	238415
sauce2013@yandex.com	Saudi Arabia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	18501	506897
throwing1896@protonmail.com	Saudi Arabia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	156148	742414
bookings1998@protonmail.com	Saudi Arabia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	245429	557288
boost1833@gmail.com	Saudi Arabia	69798bb6-1716-47ee-90ff-0938314cce0c	15373	485364
lifetime1925@gmail.com	Saudi Arabia	9a270672-9e02-44bf-ba2e-2b6baf568829	769612	492212
hormone1827@gmail.com	Saudi Arabia	69817e8b-5270-4081-b06b-5f94d1a99c72	604981	641065
vocal2080@protonmail.com	Saudi Arabia	62f3d028-08e0-4986-806a-254f0d812c5b	8162	774615
dont2100@protonmail.com	Saudi Arabia	80a97543-fd97-40a3-b8dc-f58e50101abc	344210	6680
mature1894@yahoo.com	Saudi Arabia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	320548	351887
despite1900@live.com	Saudi Arabia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	627645	65531
only2081@protonmail.com	Saudi Arabia	9848ad52-bed1-4791-9352-c779584dcbe7	714349	20066
chance1827@gmail.com	Saudi Arabia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	526250	591246
mature1894@yahoo.com	Saudi Arabia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	252962	289125
absence1941@live.com	Saudi Arabia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	703005	693637
florence2033@protonmail.com	Saudi Arabia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	528667	2181
nbc2041@yahoo.com	Saudi Arabia	c5c41565-02cb-462f-83e5-150521ebde9c	292744	276179
navy1800@outlook.com	Saudi Arabia	8ec60513-990a-4ce2-a516-8972fdcf9919	17904	690349
bookings1998@protonmail.com	Saudi Arabia	68739ab8-38f9-45e5-9e67-fb0fc6139879	172259	199091
dont2100@protonmail.com	Saudi Arabia	ea8636de-62ee-4739-8be2-2028afe303c9	244555	616024
facilitate2066@gmail.com	Saudi Arabia	ce85ec8a-a207-4929-ba56-2e8376b239ea	371086	364891
nelson2015@protonmail.com	Saudi Arabia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	617016	407830
throwing1896@protonmail.com	Saudi Arabia	5ed75d07-f129-4210-8934-b5282ab6bf39	461815	7685
cruise1800@yahoo.com	Saudi Arabia	c82545f7-d728-4444-aded-9648e5d8c22c	320059	143929
florence2033@protonmail.com	Saudi Arabia	b207278e-f452-43f3-8e6d-1d55a32497dc	280231	308044
vocal2080@protonmail.com	Saudi Arabia	e6920268-aba1-48db-8739-415368d962ec	681321	410817
local1830@gmail.com	Saudi Arabia	6feb9519-7623-422d-848c-0b9a5723da19	346998	414034
throwing1896@protonmail.com	Saudi Arabia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	438800	597411
mature1894@yahoo.com	Saudi Arabia	7408db66-1b96-458c-b4f6-4234b2625afd	357679	49777
boost1833@gmail.com	Saudi Arabia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	42396	602773
facilitate2066@gmail.com	Saudi Arabia	0b57e8c3-3a12-44b9-8236-ace791387ba3	295001	105754
program2002@yandex.com	Saudi Arabia	33828361-6656-438a-aeb6-15a2e5ffcf27	174040	730836
boost1833@gmail.com	Saudi Arabia	ccde439b-b989-4cd2-aec9-f142c8d948d0	35382	346316
davidson2081@outlook.com	Saudi Arabia	57309776-d0f5-43a2-b94e-38372ee07cc6	537635	242505
hormone1827@gmail.com	Saudi Arabia	436386c2-345f-4570-ba73-582b3437d53e	529380	41976
chance1827@gmail.com	Saudi Arabia	dccda210-9223-4604-b148-a0a248fb714e	479993	143156
dont2100@protonmail.com	Saudi Arabia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	700829	555697
mature1894@yahoo.com	Saudi Arabia	495303f4-a868-4fa4-acba-c08667d7bcc8	113795	46688
restoration1945@yahoo.com	Saudi Arabia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	281402	505086
webpage2008@yahoo.com	Saudi Arabia	c94fd88f-86c3-433a-9d81-b19695d48328	745497	238232
florence2033@protonmail.com	Saudi Arabia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	376162	274674
fred1901@live.com	Saudi Arabia	e88d9503-9bde-473f-9276-3651878e2863	22564	381248
pda1876@outlook.com	Saudi Arabia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	176676	433193
officials1972@protonmail.com	Saudi Arabia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	334784	107864
despite1900@live.com	Saudi Arabia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	202735	336609
florence2033@protonmail.com	Saudi Arabia	28778fb1-1671-4bad-8284-6a731564a45e	383590	342787
lifetime1925@gmail.com	Saudi Arabia	e5a762f6-3052-4384-a92b-b5401e965d25	66381	723377
vocal2080@protonmail.com	Saudi Arabia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	761870	254832
peoples2042@protonmail.com	Saudi Arabia	642d495a-e016-412f-a53b-dc046cc492a0	276697	431451
webpage2008@yahoo.com	Bangladesh	5de74332-bf74-402e-bac8-55b0a378954d	214289	3558795
nelson2015@protonmail.com	Bangladesh	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	787674	2876775
required1923@outlook.com	Bangladesh	5a00b0a4-db1a-4555-b66c-e47023575e85	1220603	2828234
boost1833@gmail.com	Bangladesh	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1785368	2321707
bind1902@yahoo.com	Bangladesh	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3023436	3170590
journey2091@outlook.com	Bangladesh	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	713074	1670927
nbc2041@yahoo.com	Bangladesh	69798bb6-1716-47ee-90ff-0938314cce0c	2837893	107458
restoration1945@yahoo.com	Bangladesh	9a270672-9e02-44bf-ba2e-2b6baf568829	1005039	511543
only2081@protonmail.com	Bangladesh	69817e8b-5270-4081-b06b-5f94d1a99c72	2483407	2233976
nelson2015@protonmail.com	Bangladesh	62f3d028-08e0-4986-806a-254f0d812c5b	3624358	3281875
throwing1896@protonmail.com	Bangladesh	80a97543-fd97-40a3-b8dc-f58e50101abc	2536666	3636214
boost1833@gmail.com	Bangladesh	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2152920	3158875
nbc2041@yahoo.com	Tunisia	e6920268-aba1-48db-8739-415368d962ec	2628045	4442602
nelson2015@protonmail.com	Bangladesh	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	480361	3536638
required1923@outlook.com	Bangladesh	9848ad52-bed1-4791-9352-c779584dcbe7	2734926	3355142
despite1900@live.com	Bangladesh	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6591	1808653
throwing1896@protonmail.com	Bangladesh	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2809426	2068196
pda1876@outlook.com	Bangladesh	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3690923	935412
nbc2041@yahoo.com	Bangladesh	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	165354	1244594
boost1833@gmail.com	Bangladesh	c5c41565-02cb-462f-83e5-150521ebde9c	2500895	2816807
journey2091@outlook.com	Bangladesh	8ec60513-990a-4ce2-a516-8972fdcf9919	3385198	1804002
boost1833@gmail.com	Bangladesh	68739ab8-38f9-45e5-9e67-fb0fc6139879	3456866	1814688
peoples2042@protonmail.com	Bangladesh	ea8636de-62ee-4739-8be2-2028afe303c9	1426676	173637
duncan1820@gmail.com	Bangladesh	ce85ec8a-a207-4929-ba56-2e8376b239ea	226143	1036693
lifetime1925@gmail.com	Bangladesh	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	293463	974595
journey2091@outlook.com	Bangladesh	5ed75d07-f129-4210-8934-b5282ab6bf39	3710618	354220
journey2091@outlook.com	Bangladesh	c82545f7-d728-4444-aded-9648e5d8c22c	1605977	3526800
only2081@protonmail.com	Bangladesh	b207278e-f452-43f3-8e6d-1d55a32497dc	1501377	1766807
officials1972@protonmail.com	Bangladesh	e6920268-aba1-48db-8739-415368d962ec	1415531	1947503
restoration1945@yahoo.com	Bangladesh	6feb9519-7623-422d-848c-0b9a5723da19	3344463	1324228
hospital2060@yahoo.com	Bangladesh	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1932739	534519
program2002@yandex.com	Bangladesh	7408db66-1b96-458c-b4f6-4234b2625afd	313397	1467968
bookings1998@protonmail.com	Bangladesh	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2123064	1329297
officials1972@protonmail.com	Bangladesh	0b57e8c3-3a12-44b9-8236-ace791387ba3	3433065	2383455
boost1833@gmail.com	Bangladesh	33828361-6656-438a-aeb6-15a2e5ffcf27	2890764	3449390
sauce2013@yandex.com	Bangladesh	ccde439b-b989-4cd2-aec9-f142c8d948d0	3139636	1301305
only2081@protonmail.com	Bangladesh	57309776-d0f5-43a2-b94e-38372ee07cc6	1792124	11211
officials1972@protonmail.com	Bangladesh	436386c2-345f-4570-ba73-582b3437d53e	2491417	3536240
sauce2013@yandex.com	Bangladesh	dccda210-9223-4604-b148-a0a248fb714e	1334370	2767900
hormone1827@gmail.com	Bangladesh	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2947610	1390040
nelson2015@protonmail.com	Bangladesh	495303f4-a868-4fa4-acba-c08667d7bcc8	3477982	257280
program2002@yandex.com	Bangladesh	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2381158	3082445
cruise1800@yahoo.com	Bangladesh	c94fd88f-86c3-433a-9d81-b19695d48328	3044646	3049368
dont2100@protonmail.com	Bangladesh	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2288576	2158377
required1923@outlook.com	Bangladesh	e88d9503-9bde-473f-9276-3651878e2863	940747	1130556
peoples2042@protonmail.com	Bangladesh	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3525941	84393
davidson2081@outlook.com	Bangladesh	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1807250	1195846
cruise1800@yahoo.com	Bangladesh	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2891904	2418475
sauce2013@yandex.com	Bangladesh	28778fb1-1671-4bad-8284-6a731564a45e	112574	1289377
throwing1896@protonmail.com	Bangladesh	e5a762f6-3052-4384-a92b-b5401e965d25	145252	1779927
bind1902@yahoo.com	Bangladesh	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	55526	2807709
fred1901@live.com	Bangladesh	642d495a-e016-412f-a53b-dc046cc492a0	2506649	5768
despite1900@live.com	Greece	5de74332-bf74-402e-bac8-55b0a378954d	1071962	2419158
local1830@gmail.com	Greece	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2247976	3954065
hospital2060@yahoo.com	Greece	5a00b0a4-db1a-4555-b66c-e47023575e85	2012587	2643357
required1923@outlook.com	Greece	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1961145	3979032
absence1941@live.com	Greece	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1697473	4900724
required1923@outlook.com	Greece	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2145931	7007147
davidson2081@outlook.com	Greece	69798bb6-1716-47ee-90ff-0938314cce0c	3436830	2847195
throwing1896@protonmail.com	Greece	9a270672-9e02-44bf-ba2e-2b6baf568829	7925350	3232717
program2002@yandex.com	Greece	69817e8b-5270-4081-b06b-5f94d1a99c72	2449177	6343325
cruise1800@yahoo.com	Greece	62f3d028-08e0-4986-806a-254f0d812c5b	3792168	232568
webpage2008@yahoo.com	Greece	80a97543-fd97-40a3-b8dc-f58e50101abc	1036448	5964087
throwing1896@protonmail.com	Greece	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1076076	1910352
webpage2008@yahoo.com	Greece	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1140559	7340995
bind1902@yahoo.com	Greece	9848ad52-bed1-4791-9352-c779584dcbe7	5006499	5585940
nelson2015@protonmail.com	Greece	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3851880	104432
required1923@outlook.com	Greece	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1660581	4861080
delight1975@live.com	Greece	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2348567	5446747
overall2026@outlook.com	Greece	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	792382	3600762
davidson2081@outlook.com	Greece	c5c41565-02cb-462f-83e5-150521ebde9c	1372686	3498850
delight1975@live.com	Greece	8ec60513-990a-4ce2-a516-8972fdcf9919	5394393	3851723
overall2026@outlook.com	Greece	68739ab8-38f9-45e5-9e67-fb0fc6139879	926224	6719972
local1830@gmail.com	Greece	ea8636de-62ee-4739-8be2-2028afe303c9	2185043	3323270
only2081@protonmail.com	Greece	ce85ec8a-a207-4929-ba56-2e8376b239ea	358795	4982548
duncan1820@gmail.com	Greece	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7781742	2225313
program2002@yandex.com	Greece	5ed75d07-f129-4210-8934-b5282ab6bf39	7687476	4033723
webpage2008@yahoo.com	Greece	c82545f7-d728-4444-aded-9648e5d8c22c	8137497	6017848
boost1833@gmail.com	Greece	b207278e-f452-43f3-8e6d-1d55a32497dc	3960699	4472082
nbc2041@yahoo.com	Greece	e6920268-aba1-48db-8739-415368d962ec	6190921	757172
hormone1827@gmail.com	Greece	6feb9519-7623-422d-848c-0b9a5723da19	1500435	6303686
duncan1820@gmail.com	Greece	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4635693	7154152
hormone1827@gmail.com	Greece	7408db66-1b96-458c-b4f6-4234b2625afd	4010671	8276621
absence1941@live.com	Greece	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2517109	941245
mature1894@yahoo.com	Greece	0b57e8c3-3a12-44b9-8236-ace791387ba3	7292241	1284123
boost1833@gmail.com	Greece	33828361-6656-438a-aeb6-15a2e5ffcf27	7677981	2358710
absence1941@live.com	Greece	ccde439b-b989-4cd2-aec9-f142c8d948d0	1340172	2681366
facilitate2066@gmail.com	Greece	57309776-d0f5-43a2-b94e-38372ee07cc6	7363310	3512289
chance1827@gmail.com	Greece	436386c2-345f-4570-ba73-582b3437d53e	2259637	5294473
facilitate2066@gmail.com	Greece	dccda210-9223-4604-b148-a0a248fb714e	696900	7748961
building2058@yandex.com	Greece	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1482132	3387286
vocal2080@protonmail.com	Greece	495303f4-a868-4fa4-acba-c08667d7bcc8	1686457	2495059
pda1876@outlook.com	Greece	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4569272	6233223
webpage2008@yahoo.com	Greece	c94fd88f-86c3-433a-9d81-b19695d48328	6320096	8163130
florence2033@protonmail.com	Greece	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6981820	961954
navy1800@outlook.com	Greece	e88d9503-9bde-473f-9276-3651878e2863	2922990	631952
cruise1800@yahoo.com	Greece	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1251517	1155982
despite1900@live.com	Greece	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4400702	7894811
only2081@protonmail.com	Greece	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6781275	932974
facilitate2066@gmail.com	Greece	28778fb1-1671-4bad-8284-6a731564a45e	263428	4736630
overall2026@outlook.com	Greece	e5a762f6-3052-4384-a92b-b5401e965d25	2100908	5454133
required1923@outlook.com	Greece	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	632182	5571901
nbc2041@yahoo.com	Greece	642d495a-e016-412f-a53b-dc046cc492a0	6805606	6514487
delight1975@live.com	South Africa	5de74332-bf74-402e-bac8-55b0a378954d	2124042	3084198
pda1876@outlook.com	South Africa	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4211389	195407
despite1900@live.com	South Africa	5a00b0a4-db1a-4555-b66c-e47023575e85	1970318	3624521
peoples2042@protonmail.com	South Africa	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	5015226	3984850
building2058@yandex.com	South Africa	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5450889	5894050
officials1972@protonmail.com	South Africa	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3126632	716978
lifetime1925@gmail.com	South Africa	69798bb6-1716-47ee-90ff-0938314cce0c	3606242	5920482
duncan1820@gmail.com	South Africa	9a270672-9e02-44bf-ba2e-2b6baf568829	5816669	2257912
sauce2013@yandex.com	South Africa	69817e8b-5270-4081-b06b-5f94d1a99c72	11422	3530402
throwing1896@protonmail.com	South Africa	62f3d028-08e0-4986-806a-254f0d812c5b	1443141	2784586
webpage2008@yahoo.com	South Africa	80a97543-fd97-40a3-b8dc-f58e50101abc	2600307	3604442
cruise1800@yahoo.com	South Africa	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4365604	470429
navy1800@outlook.com	South Africa	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3076880	3766196
hormone1827@gmail.com	South Africa	9848ad52-bed1-4791-9352-c779584dcbe7	5579599	5197316
program2002@yandex.com	South Africa	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1777796	4147132
required1923@outlook.com	South Africa	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5188140	3432227
throwing1896@protonmail.com	South Africa	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5489330	1097564
fred1901@live.com	South Africa	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2913376	4144213
sauce2013@yandex.com	South Africa	c5c41565-02cb-462f-83e5-150521ebde9c	3293059	1651030
lifetime1925@gmail.com	South Africa	8ec60513-990a-4ce2-a516-8972fdcf9919	497468	3538315
delight1975@live.com	South Africa	68739ab8-38f9-45e5-9e67-fb0fc6139879	4879170	2465432
nelson2015@protonmail.com	South Africa	ea8636de-62ee-4739-8be2-2028afe303c9	800263	4547544
peoples2042@protonmail.com	South Africa	ce85ec8a-a207-4929-ba56-2e8376b239ea	5647228	1531236
peoples2042@protonmail.com	South Africa	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2833902	2671101
restoration1945@yahoo.com	South Africa	5ed75d07-f129-4210-8934-b5282ab6bf39	2059506	2363894
officials1972@protonmail.com	South Africa	c82545f7-d728-4444-aded-9648e5d8c22c	2753030	5061372
chance1827@gmail.com	South Africa	b207278e-f452-43f3-8e6d-1d55a32497dc	4509975	2078764
peoples2042@protonmail.com	South Africa	e6920268-aba1-48db-8739-415368d962ec	4522070	955917
peoples2042@protonmail.com	South Africa	6feb9519-7623-422d-848c-0b9a5723da19	263791	2769593
delight1975@live.com	South Africa	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3530414	2466051
hospital2060@yahoo.com	South Africa	7408db66-1b96-458c-b4f6-4234b2625afd	2731776	2368496
despite1900@live.com	South Africa	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2272612	5054501
program2002@yandex.com	South Africa	0b57e8c3-3a12-44b9-8236-ace791387ba3	1004051	1787796
webpage2008@yahoo.com	South Africa	33828361-6656-438a-aeb6-15a2e5ffcf27	3886586	917896
fred1901@live.com	South Africa	ccde439b-b989-4cd2-aec9-f142c8d948d0	1159671	3196550
local1830@gmail.com	South Africa	57309776-d0f5-43a2-b94e-38372ee07cc6	5078022	5324740
delight1975@live.com	South Africa	436386c2-345f-4570-ba73-582b3437d53e	1565759	5030425
boost1833@gmail.com	South Africa	dccda210-9223-4604-b148-a0a248fb714e	614662	4535206
program2002@yandex.com	South Africa	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4102908	3411179
hormone1827@gmail.com	South Africa	495303f4-a868-4fa4-acba-c08667d7bcc8	2761454	2392988
bookings1998@protonmail.com	South Africa	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3814663	2490077
fred1901@live.com	South Africa	c94fd88f-86c3-433a-9d81-b19695d48328	3518791	2818103
navy1800@outlook.com	South Africa	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2236422	1727025
duncan1820@gmail.com	South Africa	e88d9503-9bde-473f-9276-3651878e2863	5923526	1526183
boost1833@gmail.com	South Africa	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	527333	1345759
dont2100@protonmail.com	South Africa	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1928848	2629555
absence1941@live.com	South Africa	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3809800	829088
only2081@protonmail.com	South Africa	28778fb1-1671-4bad-8284-6a731564a45e	2428270	4164126
boost1833@gmail.com	South Africa	e5a762f6-3052-4384-a92b-b5401e965d25	1344192	195724
peoples2042@protonmail.com	South Africa	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2655977	3715124
cruise1800@yahoo.com	South Africa	642d495a-e016-412f-a53b-dc046cc492a0	4077043	2312953
navy1800@outlook.com	Mayotte	5de74332-bf74-402e-bac8-55b0a378954d	1352691	5972083
navy1800@outlook.com	Mayotte	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5734375	8227042
throwing1896@protonmail.com	Mayotte	5a00b0a4-db1a-4555-b66c-e47023575e85	7988401	1425433
delight1975@live.com	Mayotte	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3945042	1309032
duncan1820@gmail.com	Mayotte	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1908228	3883221
officials1972@protonmail.com	Mayotte	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4339845	3106676
bind1902@yahoo.com	Mayotte	69798bb6-1716-47ee-90ff-0938314cce0c	7446069	7787891
chance1827@gmail.com	Mayotte	9a270672-9e02-44bf-ba2e-2b6baf568829	6636951	3780775
journey2091@outlook.com	Mayotte	69817e8b-5270-4081-b06b-5f94d1a99c72	7254559	2967764
overall2026@outlook.com	Mayotte	62f3d028-08e0-4986-806a-254f0d812c5b	7027957	980365
bookings1998@protonmail.com	Mayotte	80a97543-fd97-40a3-b8dc-f58e50101abc	4856430	4405381
chance1827@gmail.com	Mayotte	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6450759	1353297
despite1900@live.com	Mayotte	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2342422	8272938
hospital2060@yahoo.com	Mayotte	9848ad52-bed1-4791-9352-c779584dcbe7	3833234	196411
nbc2041@yahoo.com	Mayotte	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6376297	465687
pda1876@outlook.com	Mayotte	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5425069	3364802
dont2100@protonmail.com	Mayotte	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	8171892	7295038
mature1894@yahoo.com	Mayotte	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1311058	6888496
local1830@gmail.com	Mayotte	c5c41565-02cb-462f-83e5-150521ebde9c	5044217	3587103
absence1941@live.com	Mayotte	8ec60513-990a-4ce2-a516-8972fdcf9919	7017863	3937109
duncan1820@gmail.com	Mayotte	68739ab8-38f9-45e5-9e67-fb0fc6139879	7691076	3205434
boost1833@gmail.com	Mayotte	ea8636de-62ee-4739-8be2-2028afe303c9	7088784	5246975
delight1975@live.com	Mayotte	ce85ec8a-a207-4929-ba56-2e8376b239ea	1094000	1707329
pda1876@outlook.com	Mayotte	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	546397	1334691
webpage2008@yahoo.com	Mayotte	5ed75d07-f129-4210-8934-b5282ab6bf39	2964720	4525635
local1830@gmail.com	Mayotte	c82545f7-d728-4444-aded-9648e5d8c22c	5281923	5405593
local1830@gmail.com	Mayotte	b207278e-f452-43f3-8e6d-1d55a32497dc	4766610	5625799
overall2026@outlook.com	Mayotte	e6920268-aba1-48db-8739-415368d962ec	2699357	805804
restoration1945@yahoo.com	Mayotte	6feb9519-7623-422d-848c-0b9a5723da19	1521138	6347153
peoples2042@protonmail.com	Mayotte	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4690761	2516830
pda1876@outlook.com	Mayotte	7408db66-1b96-458c-b4f6-4234b2625afd	4039863	5534615
duncan1820@gmail.com	Mayotte	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	7570865	6310493
vocal2080@protonmail.com	Mayotte	0b57e8c3-3a12-44b9-8236-ace791387ba3	578057	6840429
hormone1827@gmail.com	Mayotte	33828361-6656-438a-aeb6-15a2e5ffcf27	8501124	4474290
florence2033@protonmail.com	Mayotte	ccde439b-b989-4cd2-aec9-f142c8d948d0	5228224	8047459
sauce2013@yandex.com	Mayotte	57309776-d0f5-43a2-b94e-38372ee07cc6	3792278	5257228
building2058@yandex.com	Mayotte	436386c2-345f-4570-ba73-582b3437d53e	779294	8110802
duncan1820@gmail.com	Mayotte	dccda210-9223-4604-b148-a0a248fb714e	505955	7322931
building2058@yandex.com	Mayotte	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3788696	3326710
hospital2060@yahoo.com	Mayotte	495303f4-a868-4fa4-acba-c08667d7bcc8	689927	8514887
nelson2015@protonmail.com	Mayotte	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6516984	2952694
bookings1998@protonmail.com	Mayotte	c94fd88f-86c3-433a-9d81-b19695d48328	4262300	7785517
davidson2081@outlook.com	Mayotte	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2481411	937528
absence1941@live.com	Mayotte	e88d9503-9bde-473f-9276-3651878e2863	4928080	1821999
florence2033@protonmail.com	Mayotte	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	887754	2541247
peoples2042@protonmail.com	Mayotte	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4544814	4089398
hormone1827@gmail.com	Mayotte	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5700807	5393628
peoples2042@protonmail.com	Mayotte	28778fb1-1671-4bad-8284-6a731564a45e	5763650	2652188
journey2091@outlook.com	Mayotte	e5a762f6-3052-4384-a92b-b5401e965d25	7717868	2296518
chance1827@gmail.com	Mayotte	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1733018	8330150
vocal2080@protonmail.com	Mayotte	642d495a-e016-412f-a53b-dc046cc492a0	4015128	4236286
dont2100@protonmail.com	St. Pierre & Miquelon	5de74332-bf74-402e-bac8-55b0a378954d	406760	3076121
program2002@yandex.com	St. Pierre & Miquelon	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3687265	1284050
journey2091@outlook.com	St. Pierre & Miquelon	5a00b0a4-db1a-4555-b66c-e47023575e85	1734260	1471175
nelson2015@protonmail.com	St. Pierre & Miquelon	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1118396	79723
hospital2060@yahoo.com	St. Pierre & Miquelon	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3281751	2971530
sauce2013@yandex.com	St. Pierre & Miquelon	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1506808	1800652
throwing1896@protonmail.com	St. Pierre & Miquelon	69798bb6-1716-47ee-90ff-0938314cce0c	3776800	3082209
building2058@yandex.com	St. Pierre & Miquelon	9a270672-9e02-44bf-ba2e-2b6baf568829	732875	329856
peoples2042@protonmail.com	St. Pierre & Miquelon	69817e8b-5270-4081-b06b-5f94d1a99c72	146067	1748637
vocal2080@protonmail.com	St. Pierre & Miquelon	62f3d028-08e0-4986-806a-254f0d812c5b	3565510	1679579
hormone1827@gmail.com	St. Pierre & Miquelon	80a97543-fd97-40a3-b8dc-f58e50101abc	2490929	989979
facilitate2066@gmail.com	St. Pierre & Miquelon	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2545697	1906562
webpage2008@yahoo.com	St. Pierre & Miquelon	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2276442	3280142
program2002@yandex.com	St. Pierre & Miquelon	9848ad52-bed1-4791-9352-c779584dcbe7	3346076	408550
sauce2013@yandex.com	St. Pierre & Miquelon	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3669011	667902
navy1800@outlook.com	St. Pierre & Miquelon	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1498106	1668126
journey2091@outlook.com	St. Pierre & Miquelon	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2991829	112936
throwing1896@protonmail.com	St. Pierre & Miquelon	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1604543	3698287
despite1900@live.com	St. Pierre & Miquelon	c5c41565-02cb-462f-83e5-150521ebde9c	3704448	1680929
officials1972@protonmail.com	St. Pierre & Miquelon	8ec60513-990a-4ce2-a516-8972fdcf9919	68233	33188
peoples2042@protonmail.com	St. Pierre & Miquelon	68739ab8-38f9-45e5-9e67-fb0fc6139879	2839267	3417908
nelson2015@protonmail.com	St. Pierre & Miquelon	ea8636de-62ee-4739-8be2-2028afe303c9	2087752	2666053
restoration1945@yahoo.com	St. Pierre & Miquelon	ce85ec8a-a207-4929-ba56-2e8376b239ea	3641414	1167412
officials1972@protonmail.com	St. Pierre & Miquelon	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1104603	2968600
lifetime1925@gmail.com	St. Pierre & Miquelon	5ed75d07-f129-4210-8934-b5282ab6bf39	1896539	2965838
bookings1998@protonmail.com	St. Pierre & Miquelon	c82545f7-d728-4444-aded-9648e5d8c22c	2493175	3447369
nbc2041@yahoo.com	St. Pierre & Miquelon	b207278e-f452-43f3-8e6d-1d55a32497dc	2377618	3760241
duncan1820@gmail.com	St. Pierre & Miquelon	e6920268-aba1-48db-8739-415368d962ec	2775686	3317651
mature1894@yahoo.com	St. Pierre & Miquelon	6feb9519-7623-422d-848c-0b9a5723da19	1717263	1240672
sauce2013@yandex.com	St. Pierre & Miquelon	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2897737	1862332
dont2100@protonmail.com	St. Pierre & Miquelon	7408db66-1b96-458c-b4f6-4234b2625afd	3431492	3013214
program2002@yandex.com	St. Pierre & Miquelon	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1530450	1711971
navy1800@outlook.com	St. Pierre & Miquelon	0b57e8c3-3a12-44b9-8236-ace791387ba3	321226	2776723
restoration1945@yahoo.com	St. Pierre & Miquelon	33828361-6656-438a-aeb6-15a2e5ffcf27	3689820	543272
facilitate2066@gmail.com	St. Pierre & Miquelon	ccde439b-b989-4cd2-aec9-f142c8d948d0	2607390	1328081
nbc2041@yahoo.com	St. Pierre & Miquelon	57309776-d0f5-43a2-b94e-38372ee07cc6	2990316	2966751
required1923@outlook.com	St. Pierre & Miquelon	436386c2-345f-4570-ba73-582b3437d53e	3345218	1704719
sauce2013@yandex.com	St. Pierre & Miquelon	dccda210-9223-4604-b148-a0a248fb714e	2197946	774073
lifetime1925@gmail.com	St. Pierre & Miquelon	8acf71b1-5cd5-4010-8a5c-b1265d537e02	701463	1545341
hormone1827@gmail.com	St. Pierre & Miquelon	495303f4-a868-4fa4-acba-c08667d7bcc8	496277	1803828
navy1800@outlook.com	St. Pierre & Miquelon	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	346137	2559729
required1923@outlook.com	St. Pierre & Miquelon	c94fd88f-86c3-433a-9d81-b19695d48328	3021329	1445835
mature1894@yahoo.com	St. Pierre & Miquelon	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1829863	823030
hormone1827@gmail.com	St. Pierre & Miquelon	e88d9503-9bde-473f-9276-3651878e2863	671622	523250
facilitate2066@gmail.com	St. Pierre & Miquelon	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2915341	1129232
only2081@protonmail.com	St. Pierre & Miquelon	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2282729	2636020
cruise1800@yahoo.com	St. Pierre & Miquelon	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2163828	3105852
hospital2060@yahoo.com	St. Pierre & Miquelon	28778fb1-1671-4bad-8284-6a731564a45e	597710	2007264
nbc2041@yahoo.com	St. Pierre & Miquelon	e5a762f6-3052-4384-a92b-b5401e965d25	1193252	3347178
webpage2008@yahoo.com	St. Pierre & Miquelon	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3316612	2552346
webpage2008@yahoo.com	St. Pierre & Miquelon	642d495a-e016-412f-a53b-dc046cc492a0	2603397	3075528
journey2091@outlook.com	Guadeloupe	5de74332-bf74-402e-bac8-55b0a378954d	6994322	4576084
absence1941@live.com	Guadeloupe	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2728365	2001322
absence1941@live.com	Guadeloupe	5a00b0a4-db1a-4555-b66c-e47023575e85	453140	6769809
bookings1998@protonmail.com	Guadeloupe	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	9053290	5066286
peoples2042@protonmail.com	Guadeloupe	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5836226	6272668
only2081@protonmail.com	Guadeloupe	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	88110	6931886
restoration1945@yahoo.com	Guadeloupe	69798bb6-1716-47ee-90ff-0938314cce0c	376351	1314871
absence1941@live.com	Guadeloupe	9a270672-9e02-44bf-ba2e-2b6baf568829	4731670	8578627
local1830@gmail.com	Guadeloupe	69817e8b-5270-4081-b06b-5f94d1a99c72	7781626	4644452
required1923@outlook.com	Guadeloupe	62f3d028-08e0-4986-806a-254f0d812c5b	8128553	1540875
boost1833@gmail.com	Guadeloupe	80a97543-fd97-40a3-b8dc-f58e50101abc	1563232	5963608
required1923@outlook.com	Guadeloupe	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	8022714	5737066
delight1975@live.com	Guadeloupe	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	6471246	2679828
mature1894@yahoo.com	Guadeloupe	9848ad52-bed1-4791-9352-c779584dcbe7	6711869	8586205
mature1894@yahoo.com	Guadeloupe	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3338909	330595
officials1972@protonmail.com	Guadeloupe	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7587274	3976765
cruise1800@yahoo.com	Guadeloupe	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3061344	2836941
lifetime1925@gmail.com	Guadeloupe	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5454204	2543737
cruise1800@yahoo.com	Guadeloupe	c5c41565-02cb-462f-83e5-150521ebde9c	5038244	895671
only2081@protonmail.com	Guadeloupe	8ec60513-990a-4ce2-a516-8972fdcf9919	5827580	1214235
delight1975@live.com	Guadeloupe	68739ab8-38f9-45e5-9e67-fb0fc6139879	4106058	7486788
local1830@gmail.com	Guadeloupe	ea8636de-62ee-4739-8be2-2028afe303c9	7846374	536171
hospital2060@yahoo.com	Guadeloupe	ce85ec8a-a207-4929-ba56-2e8376b239ea	6064917	7287805
hospital2060@yahoo.com	Guadeloupe	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1698839	9299149
dont2100@protonmail.com	Guadeloupe	5ed75d07-f129-4210-8934-b5282ab6bf39	5779164	623411
throwing1896@protonmail.com	Guadeloupe	c82545f7-d728-4444-aded-9648e5d8c22c	1041368	4537475
duncan1820@gmail.com	Guadeloupe	b207278e-f452-43f3-8e6d-1d55a32497dc	5564927	1995963
throwing1896@protonmail.com	Guadeloupe	e6920268-aba1-48db-8739-415368d962ec	8702263	1512966
pda1876@outlook.com	Guadeloupe	6feb9519-7623-422d-848c-0b9a5723da19	4479254	9026087
delight1975@live.com	Guadeloupe	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4909896	4752224
chance1827@gmail.com	Guadeloupe	7408db66-1b96-458c-b4f6-4234b2625afd	4059642	4646688
required1923@outlook.com	Guadeloupe	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3008743	2604762
vocal2080@protonmail.com	Guadeloupe	0b57e8c3-3a12-44b9-8236-ace791387ba3	6951968	140649
pda1876@outlook.com	Guadeloupe	33828361-6656-438a-aeb6-15a2e5ffcf27	3509894	4982959
navy1800@outlook.com	Guadeloupe	ccde439b-b989-4cd2-aec9-f142c8d948d0	396194	5315070
bind1902@yahoo.com	Guadeloupe	57309776-d0f5-43a2-b94e-38372ee07cc6	8798875	3380038
pda1876@outlook.com	Guadeloupe	436386c2-345f-4570-ba73-582b3437d53e	8854800	939429
nbc2041@yahoo.com	Guadeloupe	dccda210-9223-4604-b148-a0a248fb714e	670328	8506622
despite1900@live.com	Guadeloupe	8acf71b1-5cd5-4010-8a5c-b1265d537e02	9013238	9157934
nbc2041@yahoo.com	Guadeloupe	495303f4-a868-4fa4-acba-c08667d7bcc8	2174149	6519290
bind1902@yahoo.com	Guadeloupe	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6737319	1960585
facilitate2066@gmail.com	Guadeloupe	c94fd88f-86c3-433a-9d81-b19695d48328	1572241	2671653
peoples2042@protonmail.com	Guadeloupe	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	8587754	6021453
officials1972@protonmail.com	Guadeloupe	e88d9503-9bde-473f-9276-3651878e2863	6397985	3497828
hormone1827@gmail.com	Guadeloupe	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	8539795	2351134
only2081@protonmail.com	Guadeloupe	1ef2eabc-18f9-4869-973e-fa0d7a60446c	757760	7372098
program2002@yandex.com	Guadeloupe	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5852554	3017785
required1923@outlook.com	Guadeloupe	28778fb1-1671-4bad-8284-6a731564a45e	7024330	5286856
bookings1998@protonmail.com	Guadeloupe	e5a762f6-3052-4384-a92b-b5401e965d25	3304407	851998
program2002@yandex.com	Guadeloupe	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	98709	1260911
fred1901@live.com	Guadeloupe	642d495a-e016-412f-a53b-dc046cc492a0	6445235	6265182
delight1975@live.com	Timor-Leste	5de74332-bf74-402e-bac8-55b0a378954d	124537	73154
hospital2060@yahoo.com	Timor-Leste	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	63730	123153
lifetime1925@gmail.com	Timor-Leste	5a00b0a4-db1a-4555-b66c-e47023575e85	134132	9488
pda1876@outlook.com	Timor-Leste	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	13654	25798
navy1800@outlook.com	Timor-Leste	000efc5f-1b50-44ef-92c9-7cd412ba4fca	35350	127115
duncan1820@gmail.com	Timor-Leste	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	45175	54735
only2081@protonmail.com	Timor-Leste	69798bb6-1716-47ee-90ff-0938314cce0c	111903	106144
program2002@yandex.com	Timor-Leste	9a270672-9e02-44bf-ba2e-2b6baf568829	19728	52483
local1830@gmail.com	Timor-Leste	69817e8b-5270-4081-b06b-5f94d1a99c72	127205	11233
peoples2042@protonmail.com	Timor-Leste	62f3d028-08e0-4986-806a-254f0d812c5b	62081	107578
facilitate2066@gmail.com	Timor-Leste	80a97543-fd97-40a3-b8dc-f58e50101abc	20385	520
building2058@yandex.com	Timor-Leste	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	110628	114256
dont2100@protonmail.com	Timor-Leste	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	105008	112366
local1830@gmail.com	Timor-Leste	9848ad52-bed1-4791-9352-c779584dcbe7	139207	43124
only2081@protonmail.com	Timor-Leste	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	32783	77087
despite1900@live.com	Timor-Leste	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	81711	23128
chance1827@gmail.com	Timor-Leste	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	102910	15416
officials1972@protonmail.com	Timor-Leste	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	63387	135999
officials1972@protonmail.com	Timor-Leste	c5c41565-02cb-462f-83e5-150521ebde9c	135246	89475
local1830@gmail.com	Timor-Leste	8ec60513-990a-4ce2-a516-8972fdcf9919	30108	10878
florence2033@protonmail.com	Timor-Leste	68739ab8-38f9-45e5-9e67-fb0fc6139879	107699	16526
fred1901@live.com	Timor-Leste	ea8636de-62ee-4739-8be2-2028afe303c9	118422	14827
building2058@yandex.com	Timor-Leste	ce85ec8a-a207-4929-ba56-2e8376b239ea	95842	83934
throwing1896@protonmail.com	Timor-Leste	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	94033	123043
program2002@yandex.com	Timor-Leste	5ed75d07-f129-4210-8934-b5282ab6bf39	11184	21143
fred1901@live.com	Timor-Leste	c82545f7-d728-4444-aded-9648e5d8c22c	135990	81319
hospital2060@yahoo.com	Timor-Leste	b207278e-f452-43f3-8e6d-1d55a32497dc	89967	83718
florence2033@protonmail.com	Timor-Leste	e6920268-aba1-48db-8739-415368d962ec	30391	29991
bind1902@yahoo.com	Timor-Leste	6feb9519-7623-422d-848c-0b9a5723da19	4453	117452
hormone1827@gmail.com	Timor-Leste	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	72195	119749
throwing1896@protonmail.com	Timor-Leste	7408db66-1b96-458c-b4f6-4234b2625afd	18346	108381
cruise1800@yahoo.com	Timor-Leste	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	63682	22842
nelson2015@protonmail.com	Timor-Leste	0b57e8c3-3a12-44b9-8236-ace791387ba3	25788	106469
florence2033@protonmail.com	Timor-Leste	33828361-6656-438a-aeb6-15a2e5ffcf27	132824	133995
hospital2060@yahoo.com	Timor-Leste	ccde439b-b989-4cd2-aec9-f142c8d948d0	134306	130287
program2002@yandex.com	Timor-Leste	57309776-d0f5-43a2-b94e-38372ee07cc6	370	42396
local1830@gmail.com	Timor-Leste	436386c2-345f-4570-ba73-582b3437d53e	13289	103858
cruise1800@yahoo.com	Timor-Leste	dccda210-9223-4604-b148-a0a248fb714e	110289	89767
hospital2060@yahoo.com	Timor-Leste	8acf71b1-5cd5-4010-8a5c-b1265d537e02	18872	40032
pda1876@outlook.com	Timor-Leste	495303f4-a868-4fa4-acba-c08667d7bcc8	133332	131164
absence1941@live.com	Timor-Leste	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6402	120260
facilitate2066@gmail.com	Timor-Leste	c94fd88f-86c3-433a-9d81-b19695d48328	104669	100539
hospital2060@yahoo.com	Timor-Leste	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	59870	88577
navy1800@outlook.com	Timor-Leste	e88d9503-9bde-473f-9276-3651878e2863	5071	135855
only2081@protonmail.com	Timor-Leste	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	39661	33138
hormone1827@gmail.com	Timor-Leste	1ef2eabc-18f9-4869-973e-fa0d7a60446c	51644	102725
davidson2081@outlook.com	Timor-Leste	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	76199	40238
journey2091@outlook.com	Timor-Leste	28778fb1-1671-4bad-8284-6a731564a45e	88970	139143
lifetime1925@gmail.com	Timor-Leste	e5a762f6-3052-4384-a92b-b5401e965d25	9658	66209
only2081@protonmail.com	Timor-Leste	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	89459	78427
facilitate2066@gmail.com	Timor-Leste	642d495a-e016-412f-a53b-dc046cc492a0	54841	65981
mature1894@yahoo.com	Vietnam	5de74332-bf74-402e-bac8-55b0a378954d	1754735	1613574
absence1941@live.com	Vietnam	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3118190	3579139
pda1876@outlook.com	Vietnam	5a00b0a4-db1a-4555-b66c-e47023575e85	706614	2133730
webpage2008@yahoo.com	Vietnam	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4063895	823326
dont2100@protonmail.com	Vietnam	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1466906	2617370
webpage2008@yahoo.com	Vietnam	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3627416	1474113
davidson2081@outlook.com	Vietnam	69798bb6-1716-47ee-90ff-0938314cce0c	1655125	2889296
bind1902@yahoo.com	Vietnam	9a270672-9e02-44bf-ba2e-2b6baf568829	1023650	1881908
bookings1998@protonmail.com	Vietnam	69817e8b-5270-4081-b06b-5f94d1a99c72	741668	1154244
nelson2015@protonmail.com	Vietnam	62f3d028-08e0-4986-806a-254f0d812c5b	2256329	1373840
hormone1827@gmail.com	Vietnam	80a97543-fd97-40a3-b8dc-f58e50101abc	1434759	3074810
navy1800@outlook.com	Vietnam	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3858734	2580945
sauce2013@yandex.com	Vietnam	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2163322	1039021
hormone1827@gmail.com	Vietnam	9848ad52-bed1-4791-9352-c779584dcbe7	3187449	3642326
facilitate2066@gmail.com	Vietnam	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1443566	3341983
absence1941@live.com	Vietnam	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3472134	3904324
davidson2081@outlook.com	Vietnam	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	594722	3479577
despite1900@live.com	Vietnam	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2906016	461713
overall2026@outlook.com	Vietnam	c5c41565-02cb-462f-83e5-150521ebde9c	2790116	1853962
overall2026@outlook.com	Vietnam	8ec60513-990a-4ce2-a516-8972fdcf9919	3134916	797564
webpage2008@yahoo.com	Vietnam	68739ab8-38f9-45e5-9e67-fb0fc6139879	508068	2207330
program2002@yandex.com	Vietnam	ea8636de-62ee-4739-8be2-2028afe303c9	209482	3250514
journey2091@outlook.com	Vietnam	ce85ec8a-a207-4929-ba56-2e8376b239ea	4168846	708169
hospital2060@yahoo.com	Vietnam	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3284487	3254949
navy1800@outlook.com	Vietnam	5ed75d07-f129-4210-8934-b5282ab6bf39	455263	831729
florence2033@protonmail.com	Vietnam	c82545f7-d728-4444-aded-9648e5d8c22c	1979073	1221812
boost1833@gmail.com	Vietnam	b207278e-f452-43f3-8e6d-1d55a32497dc	3684584	2240571
florence2033@protonmail.com	Vietnam	e6920268-aba1-48db-8739-415368d962ec	3269279	3846654
program2002@yandex.com	Vietnam	6feb9519-7623-422d-848c-0b9a5723da19	4187992	759177
bind1902@yahoo.com	Vietnam	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1839965	2153752
dont2100@protonmail.com	Vietnam	7408db66-1b96-458c-b4f6-4234b2625afd	2125716	287482
mature1894@yahoo.com	Vietnam	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4004642	819521
vocal2080@protonmail.com	Vietnam	0b57e8c3-3a12-44b9-8236-ace791387ba3	3778042	2456329
facilitate2066@gmail.com	Vietnam	33828361-6656-438a-aeb6-15a2e5ffcf27	85631	1589463
facilitate2066@gmail.com	Vietnam	ccde439b-b989-4cd2-aec9-f142c8d948d0	858277	398902
officials1972@protonmail.com	Vietnam	57309776-d0f5-43a2-b94e-38372ee07cc6	4073869	761146
fred1901@live.com	Vietnam	436386c2-345f-4570-ba73-582b3437d53e	992944	80468
lifetime1925@gmail.com	Vietnam	dccda210-9223-4604-b148-a0a248fb714e	2374658	3275608
nbc2041@yahoo.com	Vietnam	8acf71b1-5cd5-4010-8a5c-b1265d537e02	237871	1508116
program2002@yandex.com	Vietnam	495303f4-a868-4fa4-acba-c08667d7bcc8	3364367	2036019
restoration1945@yahoo.com	Vietnam	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	830445	4124763
boost1833@gmail.com	Vietnam	c94fd88f-86c3-433a-9d81-b19695d48328	469636	4084736
davidson2081@outlook.com	Vietnam	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3441884	1130526
delight1975@live.com	Vietnam	e88d9503-9bde-473f-9276-3651878e2863	2261262	627356
only2081@protonmail.com	Vietnam	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3093266	2927754
webpage2008@yahoo.com	Vietnam	1ef2eabc-18f9-4869-973e-fa0d7a60446c	265724	1963390
nelson2015@protonmail.com	Vietnam	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3722136	638121
only2081@protonmail.com	Vietnam	28778fb1-1671-4bad-8284-6a731564a45e	357589	1101044
officials1972@protonmail.com	Vietnam	e5a762f6-3052-4384-a92b-b5401e965d25	2593354	2987190
local1830@gmail.com	Vietnam	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	488202	4157647
duncan1820@gmail.com	Vietnam	642d495a-e016-412f-a53b-dc046cc492a0	435168	2231737
boost1833@gmail.com	American Samoa	5de74332-bf74-402e-bac8-55b0a378954d	2674226	1381511
building2058@yandex.com	American Samoa	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1233944	1501758
peoples2042@protonmail.com	American Samoa	5a00b0a4-db1a-4555-b66c-e47023575e85	3090100	3293665
sauce2013@yandex.com	American Samoa	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3386887	2611382
bind1902@yahoo.com	American Samoa	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1990409	843537
nbc2041@yahoo.com	American Samoa	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3230662	3319174
program2002@yandex.com	American Samoa	69798bb6-1716-47ee-90ff-0938314cce0c	3152295	2792586
vocal2080@protonmail.com	American Samoa	9a270672-9e02-44bf-ba2e-2b6baf568829	2087728	1578606
delight1975@live.com	American Samoa	69817e8b-5270-4081-b06b-5f94d1a99c72	568673	2090183
davidson2081@outlook.com	American Samoa	62f3d028-08e0-4986-806a-254f0d812c5b	1455218	2769796
hospital2060@yahoo.com	American Samoa	80a97543-fd97-40a3-b8dc-f58e50101abc	863233	1490316
duncan1820@gmail.com	American Samoa	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	756785	2701464
chance1827@gmail.com	American Samoa	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3024693	2448346
required1923@outlook.com	American Samoa	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	844538	1747006
hospital2060@yahoo.com	American Samoa	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1966676	3426825
boost1833@gmail.com	American Samoa	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1954303	428202
restoration1945@yahoo.com	American Samoa	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2002280	1364937
building2058@yandex.com	American Samoa	8ec60513-990a-4ce2-a516-8972fdcf9919	49803	1224877
absence1941@live.com	American Samoa	68739ab8-38f9-45e5-9e67-fb0fc6139879	655206	66662
hospital2060@yahoo.com	American Samoa	ea8636de-62ee-4739-8be2-2028afe303c9	556790	3130514
chance1827@gmail.com	American Samoa	ce85ec8a-a207-4929-ba56-2e8376b239ea	3065106	950501
local1830@gmail.com	American Samoa	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2307055	1599779
overall2026@outlook.com	American Samoa	5ed75d07-f129-4210-8934-b5282ab6bf39	1771771	3049962
duncan1820@gmail.com	American Samoa	c82545f7-d728-4444-aded-9648e5d8c22c	829137	1605367
davidson2081@outlook.com	American Samoa	b207278e-f452-43f3-8e6d-1d55a32497dc	3170489	3153943
sauce2013@yandex.com	American Samoa	e6920268-aba1-48db-8739-415368d962ec	3312850	1307880
nelson2015@protonmail.com	American Samoa	6feb9519-7623-422d-848c-0b9a5723da19	3358140	1098553
required1923@outlook.com	American Samoa	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	494397	2789770
bookings1998@protonmail.com	American Samoa	7408db66-1b96-458c-b4f6-4234b2625afd	2555344	2865249
navy1800@outlook.com	American Samoa	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2424883	3039256
nelson2015@protonmail.com	American Samoa	0b57e8c3-3a12-44b9-8236-ace791387ba3	1959371	475162
chance1827@gmail.com	American Samoa	33828361-6656-438a-aeb6-15a2e5ffcf27	884875	2827048
bookings1998@protonmail.com	American Samoa	ccde439b-b989-4cd2-aec9-f142c8d948d0	2507197	2775308
throwing1896@protonmail.com	American Samoa	57309776-d0f5-43a2-b94e-38372ee07cc6	2486561	828578
journey2091@outlook.com	American Samoa	436386c2-345f-4570-ba73-582b3437d53e	1830682	2530260
fred1901@live.com	American Samoa	dccda210-9223-4604-b148-a0a248fb714e	2666214	2334861
overall2026@outlook.com	American Samoa	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2118972	1038600
despite1900@live.com	American Samoa	495303f4-a868-4fa4-acba-c08667d7bcc8	1751367	2135094
boost1833@gmail.com	American Samoa	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2500587	694483
dont2100@protonmail.com	American Samoa	c94fd88f-86c3-433a-9d81-b19695d48328	616384	2794957
boost1833@gmail.com	American Samoa	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	465324	880739
despite1900@live.com	American Samoa	e88d9503-9bde-473f-9276-3651878e2863	2420833	1896768
only2081@protonmail.com	American Samoa	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2188220	2881010
journey2091@outlook.com	American Samoa	1ef2eabc-18f9-4869-973e-fa0d7a60446c	611707	2872507
required1923@outlook.com	American Samoa	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2831500	367713
overall2026@outlook.com	American Samoa	28778fb1-1671-4bad-8284-6a731564a45e	1215076	232214
journey2091@outlook.com	American Samoa	e5a762f6-3052-4384-a92b-b5401e965d25	678373	1686410
hospital2060@yahoo.com	American Samoa	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2190717	1948481
absence1941@live.com	Honduras	5de74332-bf74-402e-bac8-55b0a378954d	2985067	4162792
journey2091@outlook.com	Honduras	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	9016850	6822942
vocal2080@protonmail.com	Honduras	5a00b0a4-db1a-4555-b66c-e47023575e85	1840991	8997277
hormone1827@gmail.com	Honduras	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3918171	234870
despite1900@live.com	Honduras	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3227243	2072899
mature1894@yahoo.com	Honduras	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4982002	551190
officials1972@protonmail.com	Honduras	69798bb6-1716-47ee-90ff-0938314cce0c	7516351	3272295
local1830@gmail.com	Honduras	9a270672-9e02-44bf-ba2e-2b6baf568829	6662789	3481260
program2002@yandex.com	Honduras	69817e8b-5270-4081-b06b-5f94d1a99c72	4753205	9239985
delight1975@live.com	Honduras	62f3d028-08e0-4986-806a-254f0d812c5b	3194195	292398
program2002@yandex.com	Honduras	80a97543-fd97-40a3-b8dc-f58e50101abc	7247758	4705460
journey2091@outlook.com	Honduras	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	8837615	6709789
required1923@outlook.com	Honduras	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	6543566	7844844
only2081@protonmail.com	Honduras	9848ad52-bed1-4791-9352-c779584dcbe7	5223687	8127928
sauce2013@yandex.com	Honduras	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	9594216	2400123
hospital2060@yahoo.com	Honduras	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	668972	2014730
nbc2041@yahoo.com	Honduras	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3265648	3499046
peoples2042@protonmail.com	Honduras	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	8652244	6799428
program2002@yandex.com	Honduras	c5c41565-02cb-462f-83e5-150521ebde9c	6131592	1165983
davidson2081@outlook.com	Honduras	8ec60513-990a-4ce2-a516-8972fdcf9919	1985233	8463686
fred1901@live.com	Honduras	68739ab8-38f9-45e5-9e67-fb0fc6139879	4856571	3781274
sauce2013@yandex.com	Honduras	ea8636de-62ee-4739-8be2-2028afe303c9	1820343	8794767
bookings1998@protonmail.com	Honduras	ce85ec8a-a207-4929-ba56-2e8376b239ea	8613800	1824302
despite1900@live.com	Honduras	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	8362872	7039302
webpage2008@yahoo.com	Honduras	5ed75d07-f129-4210-8934-b5282ab6bf39	4636572	4425176
bookings1998@protonmail.com	Honduras	c82545f7-d728-4444-aded-9648e5d8c22c	2409396	6436565
overall2026@outlook.com	Honduras	b207278e-f452-43f3-8e6d-1d55a32497dc	1618467	1123983
facilitate2066@gmail.com	Honduras	e6920268-aba1-48db-8739-415368d962ec	2557909	8262101
delight1975@live.com	Honduras	6feb9519-7623-422d-848c-0b9a5723da19	8981558	5551806
nbc2041@yahoo.com	Honduras	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	7467484	1874670
program2002@yandex.com	Honduras	7408db66-1b96-458c-b4f6-4234b2625afd	651469	4715170
fred1901@live.com	Honduras	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	218769	8886795
cruise1800@yahoo.com	Honduras	0b57e8c3-3a12-44b9-8236-ace791387ba3	4882515	9122150
absence1941@live.com	Honduras	33828361-6656-438a-aeb6-15a2e5ffcf27	7176894	775590
journey2091@outlook.com	Honduras	ccde439b-b989-4cd2-aec9-f142c8d948d0	7410089	5274532
webpage2008@yahoo.com	Honduras	57309776-d0f5-43a2-b94e-38372ee07cc6	2030778	2530792
throwing1896@protonmail.com	Honduras	436386c2-345f-4570-ba73-582b3437d53e	7412167	7746640
officials1972@protonmail.com	Honduras	dccda210-9223-4604-b148-a0a248fb714e	6726691	2214204
boost1833@gmail.com	Honduras	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1039497	6848939
navy1800@outlook.com	Honduras	495303f4-a868-4fa4-acba-c08667d7bcc8	4553130	1117238
florence2033@protonmail.com	Honduras	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	9305737	5422155
nelson2015@protonmail.com	Honduras	c94fd88f-86c3-433a-9d81-b19695d48328	9549888	8396917
absence1941@live.com	Honduras	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	7376687	5687842
throwing1896@protonmail.com	Honduras	e88d9503-9bde-473f-9276-3651878e2863	9418108	5641157
vocal2080@protonmail.com	Honduras	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	15868	8002051
dont2100@protonmail.com	Honduras	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2302388	6592301
bookings1998@protonmail.com	Honduras	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	7794775	8016203
cruise1800@yahoo.com	Honduras	28778fb1-1671-4bad-8284-6a731564a45e	1725399	4793699
only2081@protonmail.com	Honduras	e5a762f6-3052-4384-a92b-b5401e965d25	241986	6285299
nbc2041@yahoo.com	Honduras	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1287852	5743115
davidson2081@outlook.com	Honduras	642d495a-e016-412f-a53b-dc046cc492a0	5103330	4317055
building2058@yandex.com	Gambia	5de74332-bf74-402e-bac8-55b0a378954d	2268758	1764435
dont2100@protonmail.com	Gambia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2651700	1305066
navy1800@outlook.com	Gambia	5a00b0a4-db1a-4555-b66c-e47023575e85	3048439	2543513
peoples2042@protonmail.com	Gambia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2200504	468112
sauce2013@yandex.com	Gambia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1971991	1947432
bind1902@yahoo.com	Gambia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2383402	4513685
sauce2013@yandex.com	Gambia	69798bb6-1716-47ee-90ff-0938314cce0c	1716584	1787487
hormone1827@gmail.com	Gambia	9a270672-9e02-44bf-ba2e-2b6baf568829	4120253	2258258
hospital2060@yahoo.com	Gambia	69817e8b-5270-4081-b06b-5f94d1a99c72	3243927	261134
officials1972@protonmail.com	Gambia	62f3d028-08e0-4986-806a-254f0d812c5b	1292781	2669849
cruise1800@yahoo.com	Gambia	80a97543-fd97-40a3-b8dc-f58e50101abc	4349262	1938982
throwing1896@protonmail.com	Gambia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	149481	2807251
florence2033@protonmail.com	Gambia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2775357	1852117
vocal2080@protonmail.com	Gambia	9848ad52-bed1-4791-9352-c779584dcbe7	2927145	3831823
throwing1896@protonmail.com	Gambia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3338604	1022208
boost1833@gmail.com	Gambia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	272943	2297879
fred1901@live.com	Gambia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1034890	1213536
peoples2042@protonmail.com	Gambia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2435965	4244096
building2058@yandex.com	Gambia	c5c41565-02cb-462f-83e5-150521ebde9c	1255597	3209198
duncan1820@gmail.com	Gambia	8ec60513-990a-4ce2-a516-8972fdcf9919	2640734	3297471
restoration1945@yahoo.com	Gambia	68739ab8-38f9-45e5-9e67-fb0fc6139879	617073	3144496
officials1972@protonmail.com	Gambia	ea8636de-62ee-4739-8be2-2028afe303c9	1231887	2703662
restoration1945@yahoo.com	Gambia	ce85ec8a-a207-4929-ba56-2e8376b239ea	2713376	1894907
only2081@protonmail.com	Gambia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3903580	4547273
boost1833@gmail.com	Gambia	5ed75d07-f129-4210-8934-b5282ab6bf39	577125	4252641
webpage2008@yahoo.com	Gambia	c82545f7-d728-4444-aded-9648e5d8c22c	4406280	3758863
mature1894@yahoo.com	Gambia	b207278e-f452-43f3-8e6d-1d55a32497dc	917253	3777701
program2002@yandex.com	Gambia	e6920268-aba1-48db-8739-415368d962ec	1092828	929210
dont2100@protonmail.com	Gambia	6feb9519-7623-422d-848c-0b9a5723da19	2164809	3098457
lifetime1925@gmail.com	Gambia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4388970	164910
overall2026@outlook.com	Gambia	7408db66-1b96-458c-b4f6-4234b2625afd	1217631	3288601
absence1941@live.com	Gambia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1146481	670802
nelson2015@protonmail.com	Gambia	0b57e8c3-3a12-44b9-8236-ace791387ba3	1622505	990258
fred1901@live.com	Gambia	33828361-6656-438a-aeb6-15a2e5ffcf27	3274843	2852778
program2002@yandex.com	Gambia	ccde439b-b989-4cd2-aec9-f142c8d948d0	88913	2430512
delight1975@live.com	Gambia	57309776-d0f5-43a2-b94e-38372ee07cc6	3962613	2014763
webpage2008@yahoo.com	Gambia	436386c2-345f-4570-ba73-582b3437d53e	1264517	3778608
building2058@yandex.com	Gambia	dccda210-9223-4604-b148-a0a248fb714e	3892040	1475217
sauce2013@yandex.com	Gambia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	553088	1131115
peoples2042@protonmail.com	Gambia	495303f4-a868-4fa4-acba-c08667d7bcc8	2700825	703664
delight1975@live.com	Gambia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3773165	292737
sauce2013@yandex.com	Gambia	c94fd88f-86c3-433a-9d81-b19695d48328	2371720	2081913
program2002@yandex.com	Gambia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	472463	3754022
florence2033@protonmail.com	Gambia	e88d9503-9bde-473f-9276-3651878e2863	3348033	2103629
restoration1945@yahoo.com	Gambia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3226870	2239345
vocal2080@protonmail.com	Gambia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3292920	1972888
webpage2008@yahoo.com	Gambia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2429124	1170675
bind1902@yahoo.com	Gambia	28778fb1-1671-4bad-8284-6a731564a45e	2779903	3417181
dont2100@protonmail.com	Gambia	e5a762f6-3052-4384-a92b-b5401e965d25	635274	1475802
nbc2041@yahoo.com	Gambia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	143518	3612212
duncan1820@gmail.com	Gambia	642d495a-e016-412f-a53b-dc046cc492a0	3600252	2882197
florence2033@protonmail.com	Turkey	5de74332-bf74-402e-bac8-55b0a378954d	2063651	216632
peoples2042@protonmail.com	Turkey	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3002746	1658385
program2002@yandex.com	Turkey	5a00b0a4-db1a-4555-b66c-e47023575e85	1483014	309351
mature1894@yahoo.com	Turkey	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2147739	2906338
dont2100@protonmail.com	Turkey	000efc5f-1b50-44ef-92c9-7cd412ba4fca	592307	1703357
throwing1896@protonmail.com	Turkey	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	546278	1785438
dont2100@protonmail.com	Turkey	69798bb6-1716-47ee-90ff-0938314cce0c	2157931	1625580
boost1833@gmail.com	Turkey	9a270672-9e02-44bf-ba2e-2b6baf568829	2476029	2654220
chance1827@gmail.com	Turkey	69817e8b-5270-4081-b06b-5f94d1a99c72	841428	1738312
cruise1800@yahoo.com	Turkey	62f3d028-08e0-4986-806a-254f0d812c5b	2236873	2565028
duncan1820@gmail.com	Turkey	80a97543-fd97-40a3-b8dc-f58e50101abc	2509925	2178271
local1830@gmail.com	Turkey	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2359860	512098
mature1894@yahoo.com	Turkey	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	589523	1503322
absence1941@live.com	Turkey	9848ad52-bed1-4791-9352-c779584dcbe7	2821050	2758140
davidson2081@outlook.com	Turkey	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	127999	1593967
required1923@outlook.com	Turkey	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3095902	307150
chance1827@gmail.com	Turkey	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	699741	186878
lifetime1925@gmail.com	Turkey	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2005029	2854040
program2002@yandex.com	Turkey	c5c41565-02cb-462f-83e5-150521ebde9c	2240051	1913375
hormone1827@gmail.com	Turkey	8ec60513-990a-4ce2-a516-8972fdcf9919	1818737	237252
vocal2080@protonmail.com	Turkey	68739ab8-38f9-45e5-9e67-fb0fc6139879	2902614	611730
fred1901@live.com	Turkey	ea8636de-62ee-4739-8be2-2028afe303c9	2462064	2916101
nbc2041@yahoo.com	Turkey	ce85ec8a-a207-4929-ba56-2e8376b239ea	1066482	1310028
building2058@yandex.com	Turkey	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	846139	316429
navy1800@outlook.com	Turkey	5ed75d07-f129-4210-8934-b5282ab6bf39	1053340	1774914
officials1972@protonmail.com	Turkey	c82545f7-d728-4444-aded-9648e5d8c22c	1336691	2224405
restoration1945@yahoo.com	Turkey	b207278e-f452-43f3-8e6d-1d55a32497dc	399800	3010037
program2002@yandex.com	Turkey	e6920268-aba1-48db-8739-415368d962ec	2297482	1244113
throwing1896@protonmail.com	Turkey	6feb9519-7623-422d-848c-0b9a5723da19	2022210	2333064
facilitate2066@gmail.com	Turkey	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	66107	353244
duncan1820@gmail.com	Turkey	7408db66-1b96-458c-b4f6-4234b2625afd	2466244	2978181
boost1833@gmail.com	Turkey	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2743122	224055
navy1800@outlook.com	Turkey	0b57e8c3-3a12-44b9-8236-ace791387ba3	1684946	3034409
overall2026@outlook.com	Turkey	33828361-6656-438a-aeb6-15a2e5ffcf27	2252172	18800
hormone1827@gmail.com	Turkey	ccde439b-b989-4cd2-aec9-f142c8d948d0	1523097	1969759
journey2091@outlook.com	Turkey	57309776-d0f5-43a2-b94e-38372ee07cc6	2908325	2920599
program2002@yandex.com	Turkey	436386c2-345f-4570-ba73-582b3437d53e	885361	1571986
chance1827@gmail.com	Turkey	dccda210-9223-4604-b148-a0a248fb714e	2966028	2037605
overall2026@outlook.com	Turkey	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2214307	2662859
nbc2041@yahoo.com	Turkey	495303f4-a868-4fa4-acba-c08667d7bcc8	1544327	705072
program2002@yandex.com	Turkey	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2916072	373647
duncan1820@gmail.com	Turkey	c94fd88f-86c3-433a-9d81-b19695d48328	1654814	394984
chance1827@gmail.com	Turkey	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	335057	749687
peoples2042@protonmail.com	Turkey	e88d9503-9bde-473f-9276-3651878e2863	71143	1214345
hospital2060@yahoo.com	Turkey	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2134132	873039
peoples2042@protonmail.com	Turkey	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1293158	2658786
webpage2008@yahoo.com	Turkey	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2941373	876524
dont2100@protonmail.com	Turkey	28778fb1-1671-4bad-8284-6a731564a45e	1076337	526076
journey2091@outlook.com	Turkey	e5a762f6-3052-4384-a92b-b5401e965d25	2237139	1614879
overall2026@outlook.com	Turkey	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2726282	2756685
chance1827@gmail.com	Turkey	642d495a-e016-412f-a53b-dc046cc492a0	2970057	2443518
davidson2081@outlook.com	Jamaica	5de74332-bf74-402e-bac8-55b0a378954d	1584203	3394236
davidson2081@outlook.com	Jamaica	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	420148	684668
hormone1827@gmail.com	Jamaica	5a00b0a4-db1a-4555-b66c-e47023575e85	2959536	985592
navy1800@outlook.com	Jamaica	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	569979	1334633
florence2033@protonmail.com	Jamaica	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1991781	464737
vocal2080@protonmail.com	Jamaica	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	765419	1400010
nbc2041@yahoo.com	Jamaica	69798bb6-1716-47ee-90ff-0938314cce0c	509494	2530062
sauce2013@yandex.com	Jamaica	9a270672-9e02-44bf-ba2e-2b6baf568829	2573038	2508419
absence1941@live.com	Jamaica	69817e8b-5270-4081-b06b-5f94d1a99c72	2999072	2885863
required1923@outlook.com	Jamaica	62f3d028-08e0-4986-806a-254f0d812c5b	1083352	3207779
nelson2015@protonmail.com	Jamaica	80a97543-fd97-40a3-b8dc-f58e50101abc	694847	2195300
program2002@yandex.com	Jamaica	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1395103	3410077
throwing1896@protonmail.com	Jamaica	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	413661	2840706
sauce2013@yandex.com	Jamaica	9848ad52-bed1-4791-9352-c779584dcbe7	2706497	2581402
program2002@yandex.com	Jamaica	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1174539	1391956
only2081@protonmail.com	Jamaica	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1857588	2925562
nbc2041@yahoo.com	Jamaica	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2305498	2462087
nelson2015@protonmail.com	Jamaica	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	543482	334771
only2081@protonmail.com	Jamaica	c5c41565-02cb-462f-83e5-150521ebde9c	1518333	517707
lifetime1925@gmail.com	Jamaica	8ec60513-990a-4ce2-a516-8972fdcf9919	573297	2347232
nelson2015@protonmail.com	Jamaica	68739ab8-38f9-45e5-9e67-fb0fc6139879	2193741	915651
building2058@yandex.com	Jamaica	ea8636de-62ee-4739-8be2-2028afe303c9	2635710	2306368
journey2091@outlook.com	Jamaica	ce85ec8a-a207-4929-ba56-2e8376b239ea	2264629	1671115
despite1900@live.com	Jamaica	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1854152	2576883
davidson2081@outlook.com	Jamaica	5ed75d07-f129-4210-8934-b5282ab6bf39	708581	173122
davidson2081@outlook.com	Jamaica	c82545f7-d728-4444-aded-9648e5d8c22c	2694259	1109728
overall2026@outlook.com	Jamaica	b207278e-f452-43f3-8e6d-1d55a32497dc	2969977	283040
overall2026@outlook.com	Jamaica	e6920268-aba1-48db-8739-415368d962ec	1964840	1160467
duncan1820@gmail.com	Jamaica	6feb9519-7623-422d-848c-0b9a5723da19	2273146	931350
nbc2041@yahoo.com	Jamaica	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1907644	140622
delight1975@live.com	Jamaica	7408db66-1b96-458c-b4f6-4234b2625afd	1184574	882429
hospital2060@yahoo.com	Jamaica	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3161471	3118697
delight1975@live.com	Jamaica	0b57e8c3-3a12-44b9-8236-ace791387ba3	3268709	3129273
boost1833@gmail.com	Jamaica	33828361-6656-438a-aeb6-15a2e5ffcf27	1901852	953970
building2058@yandex.com	Jamaica	ccde439b-b989-4cd2-aec9-f142c8d948d0	3127715	1108952
delight1975@live.com	Jamaica	57309776-d0f5-43a2-b94e-38372ee07cc6	195802	2426456
despite1900@live.com	Jamaica	436386c2-345f-4570-ba73-582b3437d53e	1321101	1249876
peoples2042@protonmail.com	Jamaica	dccda210-9223-4604-b148-a0a248fb714e	1238536	1209444
sauce2013@yandex.com	Jamaica	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1928855	3364672
despite1900@live.com	Jamaica	495303f4-a868-4fa4-acba-c08667d7bcc8	301710	247207
restoration1945@yahoo.com	Jamaica	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	95070	1332396
restoration1945@yahoo.com	Jamaica	c94fd88f-86c3-433a-9d81-b19695d48328	165879	844134
local1830@gmail.com	Jamaica	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1706869	1461007
davidson2081@outlook.com	Jamaica	e88d9503-9bde-473f-9276-3651878e2863	164203	526019
only2081@protonmail.com	Jamaica	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2644887	1156610
restoration1945@yahoo.com	Jamaica	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1254070	1299414
nbc2041@yahoo.com	Jamaica	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1772007	1668417
delight1975@live.com	Jamaica	28778fb1-1671-4bad-8284-6a731564a45e	2437805	2779809
boost1833@gmail.com	Jamaica	e5a762f6-3052-4384-a92b-b5401e965d25	1094169	1796591
overall2026@outlook.com	Jamaica	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2173324	1445086
bind1902@yahoo.com	Jamaica	642d495a-e016-412f-a53b-dc046cc492a0	3070461	1856452
absence1941@live.com	Ethiopia	5de74332-bf74-402e-bac8-55b0a378954d	336886	111076
vocal2080@protonmail.com	Ethiopia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1098447	540953
officials1972@protonmail.com	Ethiopia	5a00b0a4-db1a-4555-b66c-e47023575e85	2252747	276680
despite1900@live.com	Ethiopia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	320032	762226
boost1833@gmail.com	Ethiopia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1465987	20768
facilitate2066@gmail.com	Ethiopia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	599997	404189
journey2091@outlook.com	Ethiopia	69798bb6-1716-47ee-90ff-0938314cce0c	1325869	329164
mature1894@yahoo.com	Ethiopia	9a270672-9e02-44bf-ba2e-2b6baf568829	699916	585010
bookings1998@protonmail.com	Ethiopia	69817e8b-5270-4081-b06b-5f94d1a99c72	1002611	2212284
bookings1998@protonmail.com	Ethiopia	62f3d028-08e0-4986-806a-254f0d812c5b	635173	744976
vocal2080@protonmail.com	Ethiopia	80a97543-fd97-40a3-b8dc-f58e50101abc	1564305	693645
florence2033@protonmail.com	Ethiopia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1924380	1206612
mature1894@yahoo.com	Ethiopia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	500324	202909
cruise1800@yahoo.com	Ethiopia	9848ad52-bed1-4791-9352-c779584dcbe7	976011	1146598
nelson2015@protonmail.com	Ethiopia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	446759	708826
mature1894@yahoo.com	Ethiopia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	261541	100919
local1830@gmail.com	Ethiopia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1672654	1367088
hormone1827@gmail.com	Ethiopia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2092056	299990
restoration1945@yahoo.com	Ethiopia	c5c41565-02cb-462f-83e5-150521ebde9c	2203640	2103208
dont2100@protonmail.com	Ethiopia	8ec60513-990a-4ce2-a516-8972fdcf9919	1688825	1586740
bind1902@yahoo.com	Ethiopia	68739ab8-38f9-45e5-9e67-fb0fc6139879	1694977	1374042
hospital2060@yahoo.com	Ethiopia	ea8636de-62ee-4739-8be2-2028afe303c9	1065758	1140976
despite1900@live.com	Ethiopia	ce85ec8a-a207-4929-ba56-2e8376b239ea	2285986	1714091
vocal2080@protonmail.com	Ethiopia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1717838	2291020
bookings1998@protonmail.com	Ethiopia	5ed75d07-f129-4210-8934-b5282ab6bf39	1131835	1967723
nelson2015@protonmail.com	Ethiopia	c82545f7-d728-4444-aded-9648e5d8c22c	1314702	1051282
overall2026@outlook.com	Ethiopia	b207278e-f452-43f3-8e6d-1d55a32497dc	1219560	353998
throwing1896@protonmail.com	Ethiopia	e6920268-aba1-48db-8739-415368d962ec	1429011	908105
nbc2041@yahoo.com	Ethiopia	6feb9519-7623-422d-848c-0b9a5723da19	358358	636196
hormone1827@gmail.com	Ethiopia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	892768	1125385
boost1833@gmail.com	Ethiopia	7408db66-1b96-458c-b4f6-4234b2625afd	89110	1758221
bind1902@yahoo.com	Ethiopia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1146375	703350
journey2091@outlook.com	Ethiopia	0b57e8c3-3a12-44b9-8236-ace791387ba3	490758	1200500
despite1900@live.com	Ethiopia	33828361-6656-438a-aeb6-15a2e5ffcf27	2180342	1945851
required1923@outlook.com	Ethiopia	ccde439b-b989-4cd2-aec9-f142c8d948d0	414989	689587
hormone1827@gmail.com	Ethiopia	57309776-d0f5-43a2-b94e-38372ee07cc6	975716	1371547
navy1800@outlook.com	Ethiopia	436386c2-345f-4570-ba73-582b3437d53e	190983	809046
dont2100@protonmail.com	Ethiopia	dccda210-9223-4604-b148-a0a248fb714e	261304	1953210
building2058@yandex.com	Ethiopia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1552261	1902754
navy1800@outlook.com	Ethiopia	495303f4-a868-4fa4-acba-c08667d7bcc8	456308	1232788
overall2026@outlook.com	Ethiopia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	162654	470558
throwing1896@protonmail.com	Ethiopia	c94fd88f-86c3-433a-9d81-b19695d48328	2032676	1755956
cruise1800@yahoo.com	Ethiopia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1448132	494709
overall2026@outlook.com	Ethiopia	e88d9503-9bde-473f-9276-3651878e2863	116151	629869
facilitate2066@gmail.com	Ethiopia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	104538	564974
journey2091@outlook.com	Ethiopia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	633146	163475
florence2033@protonmail.com	Ethiopia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2154251	569640
restoration1945@yahoo.com	Ethiopia	28778fb1-1671-4bad-8284-6a731564a45e	511513	1978034
dont2100@protonmail.com	Ethiopia	e5a762f6-3052-4384-a92b-b5401e965d25	894627	805759
delight1975@live.com	Ethiopia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	170641	1327288
pda1876@outlook.com	Ethiopia	642d495a-e016-412f-a53b-dc046cc492a0	1147905	66901
peoples2042@protonmail.com	Gabon	5de74332-bf74-402e-bac8-55b0a378954d	224921	218114
facilitate2066@gmail.com	Gabon	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	37949	17801
peoples2042@protonmail.com	Gabon	5a00b0a4-db1a-4555-b66c-e47023575e85	59658	235682
facilitate2066@gmail.com	Gabon	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	98362	131059
webpage2008@yahoo.com	Gabon	000efc5f-1b50-44ef-92c9-7cd412ba4fca	31155	129876
nelson2015@protonmail.com	Gabon	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	132719	266315
mature1894@yahoo.com	Gabon	69798bb6-1716-47ee-90ff-0938314cce0c	150309	91775
program2002@yandex.com	Gabon	9a270672-9e02-44bf-ba2e-2b6baf568829	27829	19015
duncan1820@gmail.com	Gabon	69817e8b-5270-4081-b06b-5f94d1a99c72	90276	43442
fred1901@live.com	Gabon	62f3d028-08e0-4986-806a-254f0d812c5b	61703	260170
only2081@protonmail.com	Gabon	80a97543-fd97-40a3-b8dc-f58e50101abc	251543	75836
overall2026@outlook.com	Gabon	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	228442	220894
absence1941@live.com	Gabon	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	22284	74453
delight1975@live.com	Gabon	9848ad52-bed1-4791-9352-c779584dcbe7	151894	69162
sauce2013@yandex.com	Gabon	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	86134	110819
florence2033@protonmail.com	Gabon	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	159975	202898
facilitate2066@gmail.com	Gabon	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	171686	234377
chance1827@gmail.com	Gabon	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	207659	25307
program2002@yandex.com	Gabon	c5c41565-02cb-462f-83e5-150521ebde9c	111478	133491
overall2026@outlook.com	Gabon	8ec60513-990a-4ce2-a516-8972fdcf9919	146300	175067
required1923@outlook.com	Gabon	68739ab8-38f9-45e5-9e67-fb0fc6139879	247069	59719
vocal2080@protonmail.com	Gabon	ea8636de-62ee-4739-8be2-2028afe303c9	21870	58005
davidson2081@outlook.com	Gabon	ce85ec8a-a207-4929-ba56-2e8376b239ea	215599	235240
building2058@yandex.com	Gabon	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	114663	192931
sauce2013@yandex.com	Gabon	5ed75d07-f129-4210-8934-b5282ab6bf39	64825	208059
absence1941@live.com	Gabon	c82545f7-d728-4444-aded-9648e5d8c22c	149325	244307
nbc2041@yahoo.com	Gabon	b207278e-f452-43f3-8e6d-1d55a32497dc	249362	180857
building2058@yandex.com	Gabon	e6920268-aba1-48db-8739-415368d962ec	188707	145248
vocal2080@protonmail.com	Gabon	6feb9519-7623-422d-848c-0b9a5723da19	183129	88605
journey2091@outlook.com	Gabon	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	20890	112087
mature1894@yahoo.com	Gabon	7408db66-1b96-458c-b4f6-4234b2625afd	240678	26720
peoples2042@protonmail.com	Gabon	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	151254	7089
overall2026@outlook.com	Gabon	0b57e8c3-3a12-44b9-8236-ace791387ba3	101455	245731
bind1902@yahoo.com	Gabon	33828361-6656-438a-aeb6-15a2e5ffcf27	163881	101533
nbc2041@yahoo.com	Gabon	ccde439b-b989-4cd2-aec9-f142c8d948d0	52691	213544
sauce2013@yandex.com	Gabon	57309776-d0f5-43a2-b94e-38372ee07cc6	224506	19789
pda1876@outlook.com	Gabon	436386c2-345f-4570-ba73-582b3437d53e	215718	34821
nbc2041@yahoo.com	Gabon	dccda210-9223-4604-b148-a0a248fb714e	150565	154798
bind1902@yahoo.com	Gabon	8acf71b1-5cd5-4010-8a5c-b1265d537e02	264564	261173
florence2033@protonmail.com	Gabon	495303f4-a868-4fa4-acba-c08667d7bcc8	202987	203061
required1923@outlook.com	Gabon	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	179407	200932
only2081@protonmail.com	Gabon	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	35899	256395
hospital2060@yahoo.com	Gabon	e88d9503-9bde-473f-9276-3651878e2863	25864	34494
absence1941@live.com	Gabon	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	86992	1971
florence2033@protonmail.com	Gabon	1ef2eabc-18f9-4869-973e-fa0d7a60446c	82293	179159
only2081@protonmail.com	Gabon	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	79414	128089
local1830@gmail.com	Gabon	28778fb1-1671-4bad-8284-6a731564a45e	39454	236079
navy1800@outlook.com	Gabon	e5a762f6-3052-4384-a92b-b5401e965d25	202519	55516
navy1800@outlook.com	Gabon	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	161519	81091
local1830@gmail.com	Gabon	642d495a-e016-412f-a53b-dc046cc492a0	175756	262224
building2058@yandex.com	Croatia	5de74332-bf74-402e-bac8-55b0a378954d	2219373	3365750
duncan1820@gmail.com	Croatia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	951460	1185050
peoples2042@protonmail.com	Croatia	5a00b0a4-db1a-4555-b66c-e47023575e85	2491927	2715083
nelson2015@protonmail.com	Croatia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2608639	2393886
hormone1827@gmail.com	Croatia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	381588	2708618
boost1833@gmail.com	Croatia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1444483	943073
bookings1998@protonmail.com	Croatia	69798bb6-1716-47ee-90ff-0938314cce0c	1597746	3555198
davidson2081@outlook.com	Croatia	9a270672-9e02-44bf-ba2e-2b6baf568829	2589172	1115626
chance1827@gmail.com	Croatia	69817e8b-5270-4081-b06b-5f94d1a99c72	1575364	3249831
hormone1827@gmail.com	Croatia	62f3d028-08e0-4986-806a-254f0d812c5b	3291671	2671479
program2002@yandex.com	Croatia	80a97543-fd97-40a3-b8dc-f58e50101abc	409985	527830
florence2033@protonmail.com	Croatia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2545370	1429235
boost1833@gmail.com	Croatia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	305877	648603
florence2033@protonmail.com	Croatia	9848ad52-bed1-4791-9352-c779584dcbe7	1640227	3106613
hospital2060@yahoo.com	Croatia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1088485	455597
navy1800@outlook.com	Croatia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1705162	634629
only2081@protonmail.com	Croatia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2806445	2184539
despite1900@live.com	Croatia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2704379	1448897
cruise1800@yahoo.com	Croatia	c5c41565-02cb-462f-83e5-150521ebde9c	2165619	1019996
required1923@outlook.com	Croatia	8ec60513-990a-4ce2-a516-8972fdcf9919	1964154	138403
despite1900@live.com	Croatia	68739ab8-38f9-45e5-9e67-fb0fc6139879	3310792	3322733
peoples2042@protonmail.com	Croatia	ea8636de-62ee-4739-8be2-2028afe303c9	3428220	402240
absence1941@live.com	Croatia	ce85ec8a-a207-4929-ba56-2e8376b239ea	2175239	2801478
journey2091@outlook.com	Croatia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	17916	381080
restoration1945@yahoo.com	Croatia	5ed75d07-f129-4210-8934-b5282ab6bf39	273726	2850296
lifetime1925@gmail.com	Croatia	c82545f7-d728-4444-aded-9648e5d8c22c	801431	3510173
florence2033@protonmail.com	Croatia	b207278e-f452-43f3-8e6d-1d55a32497dc	3551480	559430
program2002@yandex.com	Croatia	e6920268-aba1-48db-8739-415368d962ec	1209920	1667727
required1923@outlook.com	Croatia	6feb9519-7623-422d-848c-0b9a5723da19	1806891	2622562
cruise1800@yahoo.com	Croatia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3559814	313534
cruise1800@yahoo.com	Croatia	7408db66-1b96-458c-b4f6-4234b2625afd	753405	2559637
pda1876@outlook.com	Croatia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2523433	2493036
dont2100@protonmail.com	Croatia	0b57e8c3-3a12-44b9-8236-ace791387ba3	2163227	2461341
davidson2081@outlook.com	Croatia	33828361-6656-438a-aeb6-15a2e5ffcf27	3014437	1451146
webpage2008@yahoo.com	Croatia	ccde439b-b989-4cd2-aec9-f142c8d948d0	2229861	1370683
restoration1945@yahoo.com	Croatia	57309776-d0f5-43a2-b94e-38372ee07cc6	255183	2178837
lifetime1925@gmail.com	Croatia	436386c2-345f-4570-ba73-582b3437d53e	2991634	401146
mature1894@yahoo.com	Croatia	dccda210-9223-4604-b148-a0a248fb714e	1322909	1602981
hormone1827@gmail.com	Croatia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	551231	1506304
pda1876@outlook.com	Croatia	495303f4-a868-4fa4-acba-c08667d7bcc8	1407495	973359
building2058@yandex.com	Croatia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2103027	1144875
pda1876@outlook.com	Croatia	c94fd88f-86c3-433a-9d81-b19695d48328	2212143	2925213
peoples2042@protonmail.com	Croatia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	290108	2557502
peoples2042@protonmail.com	Croatia	e88d9503-9bde-473f-9276-3651878e2863	1952274	1437896
chance1827@gmail.com	Croatia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2763299	1643593
bind1902@yahoo.com	Croatia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3190410	132652
lifetime1925@gmail.com	Croatia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1072477	2955673
webpage2008@yahoo.com	Croatia	28778fb1-1671-4bad-8284-6a731564a45e	2762849	726890
webpage2008@yahoo.com	Croatia	e5a762f6-3052-4384-a92b-b5401e965d25	794731	458980
facilitate2066@gmail.com	Croatia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	738760	1553917
bind1902@yahoo.com	Croatia	642d495a-e016-412f-a53b-dc046cc492a0	1215326	466432
throwing1896@protonmail.com	Anguilla	5de74332-bf74-402e-bac8-55b0a378954d	656304	2154681
absence1941@live.com	Anguilla	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5115990	5183839
local1830@gmail.com	Anguilla	5a00b0a4-db1a-4555-b66c-e47023575e85	3462846	3197571
peoples2042@protonmail.com	Anguilla	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	501996	4343073
delight1975@live.com	Anguilla	000efc5f-1b50-44ef-92c9-7cd412ba4fca	6226322	764746
building2058@yandex.com	Anguilla	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4767465	5175823
fred1901@live.com	Anguilla	69798bb6-1716-47ee-90ff-0938314cce0c	3780036	2374560
boost1833@gmail.com	Anguilla	9a270672-9e02-44bf-ba2e-2b6baf568829	1235412	36599
officials1972@protonmail.com	Anguilla	69817e8b-5270-4081-b06b-5f94d1a99c72	3089527	4365627
florence2033@protonmail.com	Anguilla	62f3d028-08e0-4986-806a-254f0d812c5b	1129767	1374855
dont2100@protonmail.com	Anguilla	80a97543-fd97-40a3-b8dc-f58e50101abc	2032026	4560057
building2058@yandex.com	Anguilla	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2636023	2727441
vocal2080@protonmail.com	Anguilla	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	6419286	1125389
peoples2042@protonmail.com	Anguilla	9848ad52-bed1-4791-9352-c779584dcbe7	6288205	241236
journey2091@outlook.com	Anguilla	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5121726	2239178
cruise1800@yahoo.com	Anguilla	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4614890	2582049
journey2091@outlook.com	Anguilla	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5770420	5303806
nelson2015@protonmail.com	Anguilla	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1467766	4573194
nbc2041@yahoo.com	Anguilla	c5c41565-02cb-462f-83e5-150521ebde9c	1572839	945440
journey2091@outlook.com	Anguilla	8ec60513-990a-4ce2-a516-8972fdcf9919	3637250	2926812
sauce2013@yandex.com	Anguilla	68739ab8-38f9-45e5-9e67-fb0fc6139879	641591	2510772
building2058@yandex.com	Anguilla	ea8636de-62ee-4739-8be2-2028afe303c9	1110729	975412
officials1972@protonmail.com	Anguilla	ce85ec8a-a207-4929-ba56-2e8376b239ea	2069092	5348794
sauce2013@yandex.com	Anguilla	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	255891	5518635
peoples2042@protonmail.com	Anguilla	5ed75d07-f129-4210-8934-b5282ab6bf39	1182165	3219354
peoples2042@protonmail.com	Anguilla	c82545f7-d728-4444-aded-9648e5d8c22c	1857689	3102122
vocal2080@protonmail.com	Anguilla	b207278e-f452-43f3-8e6d-1d55a32497dc	1057801	3547195
overall2026@outlook.com	Anguilla	e6920268-aba1-48db-8739-415368d962ec	3795098	4951199
peoples2042@protonmail.com	Anguilla	6feb9519-7623-422d-848c-0b9a5723da19	3931752	1527204
restoration1945@yahoo.com	Anguilla	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3281187	2247517
fred1901@live.com	Anguilla	7408db66-1b96-458c-b4f6-4234b2625afd	5023961	6143837
dont2100@protonmail.com	Anguilla	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1075484	803148
despite1900@live.com	Anguilla	0b57e8c3-3a12-44b9-8236-ace791387ba3	4406997	3015279
overall2026@outlook.com	Anguilla	33828361-6656-438a-aeb6-15a2e5ffcf27	1480110	1183042
hormone1827@gmail.com	Anguilla	ccde439b-b989-4cd2-aec9-f142c8d948d0	3233313	4072869
hospital2060@yahoo.com	Anguilla	57309776-d0f5-43a2-b94e-38372ee07cc6	5607323	1575467
boost1833@gmail.com	Anguilla	436386c2-345f-4570-ba73-582b3437d53e	58617	5058941
despite1900@live.com	Anguilla	dccda210-9223-4604-b148-a0a248fb714e	2193714	3754493
cruise1800@yahoo.com	Anguilla	8acf71b1-5cd5-4010-8a5c-b1265d537e02	121771	987921
despite1900@live.com	Anguilla	495303f4-a868-4fa4-acba-c08667d7bcc8	800744	664044
pda1876@outlook.com	Anguilla	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4473013	2813176
dont2100@protonmail.com	Anguilla	c94fd88f-86c3-433a-9d81-b19695d48328	2680870	5514956
chance1827@gmail.com	Anguilla	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	917321	6398463
building2058@yandex.com	Anguilla	e88d9503-9bde-473f-9276-3651878e2863	3306855	148375
facilitate2066@gmail.com	Anguilla	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	546663	544641
building2058@yandex.com	Anguilla	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2769878	1620057
lifetime1925@gmail.com	Anguilla	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4184450	2281157
chance1827@gmail.com	Anguilla	28778fb1-1671-4bad-8284-6a731564a45e	1701426	3971597
lifetime1925@gmail.com	Anguilla	e5a762f6-3052-4384-a92b-b5401e965d25	3212453	3057139
mature1894@yahoo.com	Anguilla	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2689876	4657506
dont2100@protonmail.com	Anguilla	642d495a-e016-412f-a53b-dc046cc492a0	5789598	2465043
program2002@yandex.com	Gibraltar	5de74332-bf74-402e-bac8-55b0a378954d	11315	631038
officials1972@protonmail.com	Gibraltar	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2371328	2254673
officials1972@protonmail.com	Gibraltar	5a00b0a4-db1a-4555-b66c-e47023575e85	971716	1936081
only2081@protonmail.com	Gibraltar	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3068983	3257804
webpage2008@yahoo.com	Gibraltar	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3593860	2904898
pda1876@outlook.com	Gibraltar	69798bb6-1716-47ee-90ff-0938314cce0c	3585319	2111763
chance1827@gmail.com	Gibraltar	9a270672-9e02-44bf-ba2e-2b6baf568829	3337383	742413
webpage2008@yahoo.com	Gibraltar	69817e8b-5270-4081-b06b-5f94d1a99c72	312020	2591304
navy1800@outlook.com	Gibraltar	62f3d028-08e0-4986-806a-254f0d812c5b	739447	545731
fred1901@live.com	Gibraltar	80a97543-fd97-40a3-b8dc-f58e50101abc	1542531	2823098
hormone1827@gmail.com	Gibraltar	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	193323	2521014
chance1827@gmail.com	Gibraltar	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1489546	3413200
delight1975@live.com	Gibraltar	9848ad52-bed1-4791-9352-c779584dcbe7	361936	2797861
only2081@protonmail.com	Gibraltar	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	659014	161183
building2058@yandex.com	Gibraltar	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1570646	578253
vocal2080@protonmail.com	Gibraltar	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3287077	989219
overall2026@outlook.com	Gibraltar	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3057017	81489
nbc2041@yahoo.com	Gibraltar	c5c41565-02cb-462f-83e5-150521ebde9c	995899	3231639
hospital2060@yahoo.com	Gibraltar	8ec60513-990a-4ce2-a516-8972fdcf9919	2438408	501485
program2002@yandex.com	Gibraltar	68739ab8-38f9-45e5-9e67-fb0fc6139879	504578	1986457
cruise1800@yahoo.com	Gibraltar	ea8636de-62ee-4739-8be2-2028afe303c9	3270937	2192203
officials1972@protonmail.com	Gibraltar	ce85ec8a-a207-4929-ba56-2e8376b239ea	2072047	2610269
cruise1800@yahoo.com	Gibraltar	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1260896	657002
chance1827@gmail.com	Gibraltar	5ed75d07-f129-4210-8934-b5282ab6bf39	3593386	1922234
throwing1896@protonmail.com	Gibraltar	c82545f7-d728-4444-aded-9648e5d8c22c	1369414	2655053
vocal2080@protonmail.com	Gibraltar	b207278e-f452-43f3-8e6d-1d55a32497dc	2917699	3563114
journey2091@outlook.com	Gibraltar	e6920268-aba1-48db-8739-415368d962ec	2063544	2958384
required1923@outlook.com	Gibraltar	6feb9519-7623-422d-848c-0b9a5723da19	262787	3523357
sauce2013@yandex.com	Gibraltar	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1453788	1103797
officials1972@protonmail.com	Gibraltar	7408db66-1b96-458c-b4f6-4234b2625afd	883673	3687098
building2058@yandex.com	Gibraltar	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	392334	1279033
absence1941@live.com	Gibraltar	0b57e8c3-3a12-44b9-8236-ace791387ba3	1588287	678975
chance1827@gmail.com	Gibraltar	33828361-6656-438a-aeb6-15a2e5ffcf27	531217	357625
nbc2041@yahoo.com	Gibraltar	ccde439b-b989-4cd2-aec9-f142c8d948d0	955798	609354
lifetime1925@gmail.com	Gibraltar	57309776-d0f5-43a2-b94e-38372ee07cc6	3567876	697516
despite1900@live.com	Gibraltar	436386c2-345f-4570-ba73-582b3437d53e	1684395	2907686
overall2026@outlook.com	Gibraltar	dccda210-9223-4604-b148-a0a248fb714e	2179351	3013533
mature1894@yahoo.com	Gibraltar	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2799896	1237305
nelson2015@protonmail.com	Gibraltar	495303f4-a868-4fa4-acba-c08667d7bcc8	3162097	915749
bind1902@yahoo.com	Gibraltar	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1041088	3581
navy1800@outlook.com	Gibraltar	c94fd88f-86c3-433a-9d81-b19695d48328	3336096	3664761
hospital2060@yahoo.com	Gibraltar	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2768795	2559064
mature1894@yahoo.com	Gibraltar	e88d9503-9bde-473f-9276-3651878e2863	2149808	935646
fred1901@live.com	Gibraltar	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2501580	2778956
only2081@protonmail.com	Gibraltar	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1697432	934344
program2002@yandex.com	Gibraltar	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	249674	2396832
dont2100@protonmail.com	Gibraltar	28778fb1-1671-4bad-8284-6a731564a45e	2969757	3383905
florence2033@protonmail.com	Gibraltar	e5a762f6-3052-4384-a92b-b5401e965d25	1412777	2005950
bookings1998@protonmail.com	Gibraltar	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	800423	3239740
required1923@outlook.com	Gibraltar	642d495a-e016-412f-a53b-dc046cc492a0	3351946	2340139
only2081@protonmail.com	Namibia	5de74332-bf74-402e-bac8-55b0a378954d	35511	45631
throwing1896@protonmail.com	Namibia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	272518	239064
boost1833@gmail.com	Namibia	5a00b0a4-db1a-4555-b66c-e47023575e85	210946	255566
only2081@protonmail.com	Namibia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	448960	238393
only2081@protonmail.com	Namibia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	324171	401810
journey2091@outlook.com	Namibia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	252416	282671
bind1902@yahoo.com	Namibia	69798bb6-1716-47ee-90ff-0938314cce0c	341367	327788
program2002@yandex.com	Namibia	9a270672-9e02-44bf-ba2e-2b6baf568829	487687	412689
duncan1820@gmail.com	Namibia	69817e8b-5270-4081-b06b-5f94d1a99c72	28148	497309
delight1975@live.com	Namibia	62f3d028-08e0-4986-806a-254f0d812c5b	386920	189636
facilitate2066@gmail.com	Namibia	80a97543-fd97-40a3-b8dc-f58e50101abc	379358	328960
absence1941@live.com	Namibia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	134279	149793
boost1833@gmail.com	Namibia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	60395	38289
sauce2013@yandex.com	Namibia	9848ad52-bed1-4791-9352-c779584dcbe7	242967	97737
restoration1945@yahoo.com	Namibia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	275135	537257
hormone1827@gmail.com	Namibia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	92333	365223
bookings1998@protonmail.com	Namibia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	16470	319006
only2081@protonmail.com	Namibia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	177367	6057
required1923@outlook.com	Namibia	c5c41565-02cb-462f-83e5-150521ebde9c	126980	94347
bind1902@yahoo.com	Namibia	8ec60513-990a-4ce2-a516-8972fdcf9919	455283	501197
vocal2080@protonmail.com	Namibia	68739ab8-38f9-45e5-9e67-fb0fc6139879	282651	279973
peoples2042@protonmail.com	Namibia	ea8636de-62ee-4739-8be2-2028afe303c9	395583	381008
fred1901@live.com	Namibia	ce85ec8a-a207-4929-ba56-2e8376b239ea	496840	188081
webpage2008@yahoo.com	Namibia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	486423	181079
bind1902@yahoo.com	Namibia	5ed75d07-f129-4210-8934-b5282ab6bf39	470916	174333
florence2033@protonmail.com	Namibia	c82545f7-d728-4444-aded-9648e5d8c22c	540521	173767
duncan1820@gmail.com	Namibia	b207278e-f452-43f3-8e6d-1d55a32497dc	274291	414814
navy1800@outlook.com	Namibia	e6920268-aba1-48db-8739-415368d962ec	324732	448225
only2081@protonmail.com	Namibia	6feb9519-7623-422d-848c-0b9a5723da19	48314	177194
bind1902@yahoo.com	Namibia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	499868	435982
nelson2015@protonmail.com	Namibia	7408db66-1b96-458c-b4f6-4234b2625afd	225984	248743
local1830@gmail.com	Namibia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	273724	273558
sauce2013@yandex.com	Namibia	0b57e8c3-3a12-44b9-8236-ace791387ba3	102590	109926
local1830@gmail.com	Namibia	33828361-6656-438a-aeb6-15a2e5ffcf27	11877	478447
pda1876@outlook.com	Namibia	ccde439b-b989-4cd2-aec9-f142c8d948d0	256531	138542
delight1975@live.com	Namibia	57309776-d0f5-43a2-b94e-38372ee07cc6	530760	310405
nelson2015@protonmail.com	Namibia	436386c2-345f-4570-ba73-582b3437d53e	459785	14323
sauce2013@yandex.com	Namibia	dccda210-9223-4604-b148-a0a248fb714e	92550	320917
facilitate2066@gmail.com	Namibia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	275798	134110
florence2033@protonmail.com	Namibia	495303f4-a868-4fa4-acba-c08667d7bcc8	160991	337179
throwing1896@protonmail.com	Namibia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	256685	525397
despite1900@live.com	Namibia	c94fd88f-86c3-433a-9d81-b19695d48328	216313	501769
lifetime1925@gmail.com	Namibia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	55216	429256
nelson2015@protonmail.com	Namibia	e88d9503-9bde-473f-9276-3651878e2863	382698	92004
duncan1820@gmail.com	Namibia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	508434	60044
lifetime1925@gmail.com	Namibia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	413571	131472
florence2033@protonmail.com	Namibia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	541864	220913
throwing1896@protonmail.com	Namibia	28778fb1-1671-4bad-8284-6a731564a45e	464989	26128
hormone1827@gmail.com	Namibia	e5a762f6-3052-4384-a92b-b5401e965d25	387213	151981
required1923@outlook.com	Namibia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	238957	149922
hospital2060@yahoo.com	Namibia	642d495a-e016-412f-a53b-dc046cc492a0	161555	340354
absence1941@live.com	Guadeloupe	5de74332-bf74-402e-bac8-55b0a378954d	1414657	1919653
duncan1820@gmail.com	Guadeloupe	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1815843	1015809
vocal2080@protonmail.com	Guadeloupe	5a00b0a4-db1a-4555-b66c-e47023575e85	1594765	2555250
facilitate2066@gmail.com	Guadeloupe	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1543632	2832353
absence1941@live.com	Guadeloupe	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1119513	3067236
local1830@gmail.com	Guadeloupe	69798bb6-1716-47ee-90ff-0938314cce0c	2617302	407794
overall2026@outlook.com	Guadeloupe	9a270672-9e02-44bf-ba2e-2b6baf568829	2721712	2821292
absence1941@live.com	Guadeloupe	69817e8b-5270-4081-b06b-5f94d1a99c72	1248757	1323169
despite1900@live.com	Guadeloupe	62f3d028-08e0-4986-806a-254f0d812c5b	1613486	575368
officials1972@protonmail.com	Guadeloupe	80a97543-fd97-40a3-b8dc-f58e50101abc	1096454	1197689
peoples2042@protonmail.com	Guadeloupe	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2715987	2762397
only2081@protonmail.com	Guadeloupe	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	598187	2834553
lifetime1925@gmail.com	Guadeloupe	9848ad52-bed1-4791-9352-c779584dcbe7	162159	1333748
only2081@protonmail.com	Guadeloupe	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	997433	670916
bookings1998@protonmail.com	Guadeloupe	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	100242	299711
vocal2080@protonmail.com	Guadeloupe	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3385592	2246361
local1830@gmail.com	Guadeloupe	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2504313	1559864
davidson2081@outlook.com	Guadeloupe	c5c41565-02cb-462f-83e5-150521ebde9c	2727120	1469687
webpage2008@yahoo.com	Guadeloupe	8ec60513-990a-4ce2-a516-8972fdcf9919	901629	1303657
local1830@gmail.com	Guadeloupe	68739ab8-38f9-45e5-9e67-fb0fc6139879	2327114	3011639
navy1800@outlook.com	Guadeloupe	ea8636de-62ee-4739-8be2-2028afe303c9	3156913	281028
only2081@protonmail.com	Guadeloupe	ce85ec8a-a207-4929-ba56-2e8376b239ea	1814768	286778
journey2091@outlook.com	Guadeloupe	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2153916	2776111
chance1827@gmail.com	Guadeloupe	5ed75d07-f129-4210-8934-b5282ab6bf39	1117900	3572675
navy1800@outlook.com	Guadeloupe	b207278e-f452-43f3-8e6d-1d55a32497dc	17109	2728904
vocal2080@protonmail.com	Guadeloupe	e6920268-aba1-48db-8739-415368d962ec	1557092	730081
nbc2041@yahoo.com	Guadeloupe	6feb9519-7623-422d-848c-0b9a5723da19	381499	3335592
despite1900@live.com	Guadeloupe	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	90993	1401388
absence1941@live.com	Guadeloupe	7408db66-1b96-458c-b4f6-4234b2625afd	291352	2351114
vocal2080@protonmail.com	Guadeloupe	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	66353	1419050
lifetime1925@gmail.com	Guadeloupe	0b57e8c3-3a12-44b9-8236-ace791387ba3	2886821	417922
hospital2060@yahoo.com	Guadeloupe	33828361-6656-438a-aeb6-15a2e5ffcf27	2862255	157557
hospital2060@yahoo.com	Guadeloupe	ccde439b-b989-4cd2-aec9-f142c8d948d0	914763	2295167
fred1901@live.com	Guadeloupe	57309776-d0f5-43a2-b94e-38372ee07cc6	2488231	1588635
throwing1896@protonmail.com	Guadeloupe	436386c2-345f-4570-ba73-582b3437d53e	2266208	2922392
sauce2013@yandex.com	Guadeloupe	dccda210-9223-4604-b148-a0a248fb714e	2476572	1925778
hormone1827@gmail.com	Guadeloupe	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3128353	3444281
dont2100@protonmail.com	Guadeloupe	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2434060	2988677
lifetime1925@gmail.com	Guadeloupe	c94fd88f-86c3-433a-9d81-b19695d48328	1575644	157764
webpage2008@yahoo.com	Guadeloupe	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1292759	119577
davidson2081@outlook.com	Guadeloupe	e88d9503-9bde-473f-9276-3651878e2863	1940177	639832
despite1900@live.com	Guadeloupe	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1265606	3023672
throwing1896@protonmail.com	Guadeloupe	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2895147	140882
only2081@protonmail.com	Guadeloupe	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1387582	2365951
officials1972@protonmail.com	Guadeloupe	28778fb1-1671-4bad-8284-6a731564a45e	1407734	1597515
local1830@gmail.com	Guadeloupe	e5a762f6-3052-4384-a92b-b5401e965d25	3288689	338173
facilitate2066@gmail.com	Guadeloupe	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2193528	1813447
dont2100@protonmail.com	Guadeloupe	642d495a-e016-412f-a53b-dc046cc492a0	1559340	3464911
florence2033@protonmail.com	Ascension Island	5de74332-bf74-402e-bac8-55b0a378954d	6760411	1655153
lifetime1925@gmail.com	Ascension Island	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5289636	410481
peoples2042@protonmail.com	Ascension Island	5a00b0a4-db1a-4555-b66c-e47023575e85	2201883	4399117
program2002@yandex.com	Ascension Island	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1381080	5037260
absence1941@live.com	Ascension Island	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5149216	3499286
dont2100@protonmail.com	Ascension Island	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2526993	447228
hospital2060@yahoo.com	Ascension Island	69798bb6-1716-47ee-90ff-0938314cce0c	1660305	7823122
required1923@outlook.com	Ascension Island	9a270672-9e02-44bf-ba2e-2b6baf568829	3231717	3225349
journey2091@outlook.com	Ascension Island	69817e8b-5270-4081-b06b-5f94d1a99c72	4831228	4417505
delight1975@live.com	Ascension Island	62f3d028-08e0-4986-806a-254f0d812c5b	6769223	2562958
webpage2008@yahoo.com	Ascension Island	80a97543-fd97-40a3-b8dc-f58e50101abc	7677818	7633202
officials1972@protonmail.com	Ascension Island	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6473692	7397335
hormone1827@gmail.com	Ascension Island	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5118740	3693580
overall2026@outlook.com	Ascension Island	9848ad52-bed1-4791-9352-c779584dcbe7	3167387	4514475
facilitate2066@gmail.com	Ascension Island	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5155831	1482577
only2081@protonmail.com	Ascension Island	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7121283	1583929
hospital2060@yahoo.com	Ascension Island	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1413776	2173792
chance1827@gmail.com	Ascension Island	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7011704	1212281
davidson2081@outlook.com	Ascension Island	c5c41565-02cb-462f-83e5-150521ebde9c	256086	6030770
program2002@yandex.com	Ascension Island	8ec60513-990a-4ce2-a516-8972fdcf9919	2507215	2017415
peoples2042@protonmail.com	Ascension Island	68739ab8-38f9-45e5-9e67-fb0fc6139879	4098982	1958850
bookings1998@protonmail.com	Ascension Island	ea8636de-62ee-4739-8be2-2028afe303c9	5178404	3121322
program2002@yandex.com	Ascension Island	ce85ec8a-a207-4929-ba56-2e8376b239ea	5811538	3646990
fred1901@live.com	Ascension Island	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	927956	3031074
chance1827@gmail.com	Ascension Island	5ed75d07-f129-4210-8934-b5282ab6bf39	3973192	2514676
chance1827@gmail.com	Ascension Island	c82545f7-d728-4444-aded-9648e5d8c22c	7035031	4204883
davidson2081@outlook.com	Ascension Island	b207278e-f452-43f3-8e6d-1d55a32497dc	3068970	4633982
despite1900@live.com	Ascension Island	e6920268-aba1-48db-8739-415368d962ec	3890792	5232919
florence2033@protonmail.com	Ascension Island	6feb9519-7623-422d-848c-0b9a5723da19	7147393	6983777
hormone1827@gmail.com	Ascension Island	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2402410	4062154
dont2100@protonmail.com	Ascension Island	7408db66-1b96-458c-b4f6-4234b2625afd	6764504	2365316
bookings1998@protonmail.com	Ascension Island	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	7681970	6362985
facilitate2066@gmail.com	Ascension Island	0b57e8c3-3a12-44b9-8236-ace791387ba3	7194808	7600745
hormone1827@gmail.com	Ascension Island	33828361-6656-438a-aeb6-15a2e5ffcf27	6643124	1757932
dont2100@protonmail.com	Ascension Island	ccde439b-b989-4cd2-aec9-f142c8d948d0	7559394	1209544
building2058@yandex.com	Ascension Island	57309776-d0f5-43a2-b94e-38372ee07cc6	6418119	1878708
building2058@yandex.com	Ascension Island	436386c2-345f-4570-ba73-582b3437d53e	4963233	3875360
journey2091@outlook.com	Ascension Island	dccda210-9223-4604-b148-a0a248fb714e	6113441	4534465
hormone1827@gmail.com	Ascension Island	8acf71b1-5cd5-4010-8a5c-b1265d537e02	6555462	5317168
pda1876@outlook.com	Ascension Island	495303f4-a868-4fa4-acba-c08667d7bcc8	6165465	2483923
florence2033@protonmail.com	Ascension Island	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	746035	2762979
restoration1945@yahoo.com	Ascension Island	c94fd88f-86c3-433a-9d81-b19695d48328	795493	1958138
chance1827@gmail.com	Ascension Island	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5420938	2089285
navy1800@outlook.com	Ascension Island	e88d9503-9bde-473f-9276-3651878e2863	2575658	2087490
bookings1998@protonmail.com	Ascension Island	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5758254	3665356
building2058@yandex.com	Ascension Island	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4159961	169944
program2002@yandex.com	Ascension Island	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1968368	7440522
absence1941@live.com	Ascension Island	28778fb1-1671-4bad-8284-6a731564a45e	5940669	5886827
pda1876@outlook.com	Ascension Island	e5a762f6-3052-4384-a92b-b5401e965d25	2068300	4448837
hospital2060@yahoo.com	Ascension Island	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4472424	1673527
delight1975@live.com	Ascension Island	642d495a-e016-412f-a53b-dc046cc492a0	965469	3924345
despite1900@live.com	Germany	5de74332-bf74-402e-bac8-55b0a378954d	5283019	5640943
duncan1820@gmail.com	Germany	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3908086	750399
local1830@gmail.com	Germany	5a00b0a4-db1a-4555-b66c-e47023575e85	3890934	1075203
peoples2042@protonmail.com	Germany	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	6831499	2415201
officials1972@protonmail.com	Germany	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4002432	4683420
building2058@yandex.com	Germany	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4855518	750494
nelson2015@protonmail.com	Germany	69798bb6-1716-47ee-90ff-0938314cce0c	7504742	3518260
delight1975@live.com	Germany	9a270672-9e02-44bf-ba2e-2b6baf568829	5481821	1577854
facilitate2066@gmail.com	Germany	69817e8b-5270-4081-b06b-5f94d1a99c72	5511043	6238269
nelson2015@protonmail.com	Germany	62f3d028-08e0-4986-806a-254f0d812c5b	6338838	1634541
journey2091@outlook.com	Germany	80a97543-fd97-40a3-b8dc-f58e50101abc	3542920	2660695
local1830@gmail.com	Germany	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4105449	275901
program2002@yandex.com	Germany	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2577189	7514230
overall2026@outlook.com	Germany	9848ad52-bed1-4791-9352-c779584dcbe7	1172675	2609464
sauce2013@yandex.com	Germany	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2663594	1256304
mature1894@yahoo.com	Germany	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1280269	249895
journey2091@outlook.com	Germany	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1255981	7123809
hospital2060@yahoo.com	Germany	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4002183	6464644
lifetime1925@gmail.com	Germany	c5c41565-02cb-462f-83e5-150521ebde9c	3679130	2255215
dont2100@protonmail.com	Germany	8ec60513-990a-4ce2-a516-8972fdcf9919	3314802	6777643
florence2033@protonmail.com	Germany	68739ab8-38f9-45e5-9e67-fb0fc6139879	4657872	2485280
throwing1896@protonmail.com	Germany	ea8636de-62ee-4739-8be2-2028afe303c9	2586997	2377751
cruise1800@yahoo.com	Germany	ce85ec8a-a207-4929-ba56-2e8376b239ea	6884473	5045754
davidson2081@outlook.com	Germany	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1828751	5552989
davidson2081@outlook.com	Germany	5ed75d07-f129-4210-8934-b5282ab6bf39	6324275	4395142
bind1902@yahoo.com	Germany	c82545f7-d728-4444-aded-9648e5d8c22c	1539126	2045079
chance1827@gmail.com	Germany	b207278e-f452-43f3-8e6d-1d55a32497dc	3797763	6342672
fred1901@live.com	Germany	e6920268-aba1-48db-8739-415368d962ec	2231188	3009726
delight1975@live.com	Germany	6feb9519-7623-422d-848c-0b9a5723da19	2954069	7582715
nelson2015@protonmail.com	Germany	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3640619	6011338
nelson2015@protonmail.com	Germany	7408db66-1b96-458c-b4f6-4234b2625afd	1906705	1044192
dont2100@protonmail.com	Germany	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1196884	4613903
nbc2041@yahoo.com	Germany	0b57e8c3-3a12-44b9-8236-ace791387ba3	1112538	7471729
local1830@gmail.com	Germany	33828361-6656-438a-aeb6-15a2e5ffcf27	3553336	4960543
pda1876@outlook.com	Germany	ccde439b-b989-4cd2-aec9-f142c8d948d0	6405180	3356307
journey2091@outlook.com	Germany	57309776-d0f5-43a2-b94e-38372ee07cc6	4677289	4785110
required1923@outlook.com	Germany	436386c2-345f-4570-ba73-582b3437d53e	5377465	3915578
local1830@gmail.com	Germany	dccda210-9223-4604-b148-a0a248fb714e	5703196	6096523
bind1902@yahoo.com	Germany	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3223305	6297714
program2002@yandex.com	Germany	495303f4-a868-4fa4-acba-c08667d7bcc8	432855	1966757
florence2033@protonmail.com	Germany	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1695843	660500
mature1894@yahoo.com	Germany	c94fd88f-86c3-433a-9d81-b19695d48328	7495859	4880738
despite1900@live.com	Germany	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2097547	223478
overall2026@outlook.com	Germany	e88d9503-9bde-473f-9276-3651878e2863	366248	1082672
dont2100@protonmail.com	Germany	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2419062	182404
navy1800@outlook.com	Germany	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2325185	6495235
dont2100@protonmail.com	Germany	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4424086	4771281
davidson2081@outlook.com	Germany	28778fb1-1671-4bad-8284-6a731564a45e	6766900	4303128
absence1941@live.com	Germany	e5a762f6-3052-4384-a92b-b5401e965d25	4985218	1717579
program2002@yandex.com	Germany	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2966045	7457369
webpage2008@yahoo.com	Germany	642d495a-e016-412f-a53b-dc046cc492a0	869827	1293037
lifetime1925@gmail.com	Saudi Arabia	5de74332-bf74-402e-bac8-55b0a378954d	1637704	851651
peoples2042@protonmail.com	Saudi Arabia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1879371	1637803
cruise1800@yahoo.com	Saudi Arabia	5a00b0a4-db1a-4555-b66c-e47023575e85	2145681	126396
program2002@yandex.com	Saudi Arabia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1458144	125883
required1923@outlook.com	Saudi Arabia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1182039	1351654
davidson2081@outlook.com	Saudi Arabia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1398332	364907
local1830@gmail.com	Saudi Arabia	69798bb6-1716-47ee-90ff-0938314cce0c	716006	301626
nbc2041@yahoo.com	Saudi Arabia	9a270672-9e02-44bf-ba2e-2b6baf568829	1787976	1301054
boost1833@gmail.com	Saudi Arabia	69817e8b-5270-4081-b06b-5f94d1a99c72	1910998	461987
throwing1896@protonmail.com	Saudi Arabia	62f3d028-08e0-4986-806a-254f0d812c5b	1287135	388463
vocal2080@protonmail.com	Saudi Arabia	80a97543-fd97-40a3-b8dc-f58e50101abc	1251239	968130
officials1972@protonmail.com	Saudi Arabia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1276535	971907
program2002@yandex.com	Saudi Arabia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	755583	1168876
hormone1827@gmail.com	Saudi Arabia	9848ad52-bed1-4791-9352-c779584dcbe7	2101008	299891
sauce2013@yandex.com	Saudi Arabia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	821288	1973983
journey2091@outlook.com	Saudi Arabia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	487453	1223379
despite1900@live.com	Saudi Arabia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	157291	573609
sauce2013@yandex.com	Saudi Arabia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	123712	1524756
cruise1800@yahoo.com	Saudi Arabia	c5c41565-02cb-462f-83e5-150521ebde9c	1248381	130561
despite1900@live.com	Saudi Arabia	8ec60513-990a-4ce2-a516-8972fdcf9919	1493427	657629
navy1800@outlook.com	Saudi Arabia	68739ab8-38f9-45e5-9e67-fb0fc6139879	1366265	417924
absence1941@live.com	Saudi Arabia	ea8636de-62ee-4739-8be2-2028afe303c9	2104607	541680
despite1900@live.com	Saudi Arabia	ce85ec8a-a207-4929-ba56-2e8376b239ea	1132061	715312
cruise1800@yahoo.com	Saudi Arabia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	596394	1054721
officials1972@protonmail.com	Saudi Arabia	5ed75d07-f129-4210-8934-b5282ab6bf39	113762	1302099
chance1827@gmail.com	Saudi Arabia	c82545f7-d728-4444-aded-9648e5d8c22c	1289657	745523
sauce2013@yandex.com	Saudi Arabia	b207278e-f452-43f3-8e6d-1d55a32497dc	1803444	1752619
bind1902@yahoo.com	Saudi Arabia	e6920268-aba1-48db-8739-415368d962ec	541075	2123412
peoples2042@protonmail.com	Saudi Arabia	6feb9519-7623-422d-848c-0b9a5723da19	647001	52033
program2002@yandex.com	Saudi Arabia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1669224	628776
lifetime1925@gmail.com	Saudi Arabia	7408db66-1b96-458c-b4f6-4234b2625afd	1890490	1857103
nbc2041@yahoo.com	Saudi Arabia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	215880	1904665
overall2026@outlook.com	Saudi Arabia	0b57e8c3-3a12-44b9-8236-ace791387ba3	206922	497679
mature1894@yahoo.com	Saudi Arabia	33828361-6656-438a-aeb6-15a2e5ffcf27	744219	2159204
restoration1945@yahoo.com	Saudi Arabia	ccde439b-b989-4cd2-aec9-f142c8d948d0	796685	911217
navy1800@outlook.com	Saudi Arabia	57309776-d0f5-43a2-b94e-38372ee07cc6	296177	1959596
bookings1998@protonmail.com	Saudi Arabia	436386c2-345f-4570-ba73-582b3437d53e	159684	497116
dont2100@protonmail.com	Saudi Arabia	dccda210-9223-4604-b148-a0a248fb714e	1923758	1499300
delight1975@live.com	Saudi Arabia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	390724	126615
officials1972@protonmail.com	Saudi Arabia	495303f4-a868-4fa4-acba-c08667d7bcc8	1237807	1122483
duncan1820@gmail.com	Saudi Arabia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	572656	1126536
overall2026@outlook.com	Saudi Arabia	c94fd88f-86c3-433a-9d81-b19695d48328	1800014	1248842
pda1876@outlook.com	Saudi Arabia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1606957	388889
hormone1827@gmail.com	Saudi Arabia	e88d9503-9bde-473f-9276-3651878e2863	1728832	1008530
only2081@protonmail.com	Saudi Arabia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	424815	453661
chance1827@gmail.com	Saudi Arabia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1917422	1003504
journey2091@outlook.com	Saudi Arabia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	829855	2147170
journey2091@outlook.com	Saudi Arabia	28778fb1-1671-4bad-8284-6a731564a45e	493797	1737882
sauce2013@yandex.com	Saudi Arabia	e5a762f6-3052-4384-a92b-b5401e965d25	1130863	1948789
delight1975@live.com	Saudi Arabia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1364708	51252
journey2091@outlook.com	Saudi Arabia	642d495a-e016-412f-a53b-dc046cc492a0	481063	31518
throwing1896@protonmail.com	San Marino	5de74332-bf74-402e-bac8-55b0a378954d	1924219	2750745
boost1833@gmail.com	San Marino	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3527285	3043352
cruise1800@yahoo.com	San Marino	5a00b0a4-db1a-4555-b66c-e47023575e85	930564	123263
despite1900@live.com	San Marino	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	187426	1207260
facilitate2066@gmail.com	San Marino	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3036272	3470921
building2058@yandex.com	San Marino	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4175533	1391235
dont2100@protonmail.com	San Marino	69798bb6-1716-47ee-90ff-0938314cce0c	2447503	3994896
overall2026@outlook.com	San Marino	9a270672-9e02-44bf-ba2e-2b6baf568829	2205990	741247
vocal2080@protonmail.com	San Marino	69817e8b-5270-4081-b06b-5f94d1a99c72	3225641	2885700
required1923@outlook.com	San Marino	62f3d028-08e0-4986-806a-254f0d812c5b	1260738	2558408
required1923@outlook.com	San Marino	80a97543-fd97-40a3-b8dc-f58e50101abc	3742675	2559538
cruise1800@yahoo.com	San Marino	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2756532	4228002
vocal2080@protonmail.com	San Marino	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2599347	1069950
boost1833@gmail.com	San Marino	9848ad52-bed1-4791-9352-c779584dcbe7	3820287	909860
bind1902@yahoo.com	San Marino	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3619554	2235971
despite1900@live.com	San Marino	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	302718	492378
dont2100@protonmail.com	San Marino	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1192285	1557480
hormone1827@gmail.com	San Marino	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	261417	1046201
officials1972@protonmail.com	San Marino	c5c41565-02cb-462f-83e5-150521ebde9c	375985	1588440
hospital2060@yahoo.com	San Marino	8ec60513-990a-4ce2-a516-8972fdcf9919	450637	56451
boost1833@gmail.com	San Marino	68739ab8-38f9-45e5-9e67-fb0fc6139879	3859460	329830
local1830@gmail.com	San Marino	ea8636de-62ee-4739-8be2-2028afe303c9	745490	2314285
facilitate2066@gmail.com	San Marino	ce85ec8a-a207-4929-ba56-2e8376b239ea	1320852	4095846
vocal2080@protonmail.com	San Marino	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	495591	1916316
peoples2042@protonmail.com	San Marino	5ed75d07-f129-4210-8934-b5282ab6bf39	3075576	3160155
duncan1820@gmail.com	San Marino	c82545f7-d728-4444-aded-9648e5d8c22c	2340664	2860252
facilitate2066@gmail.com	San Marino	b207278e-f452-43f3-8e6d-1d55a32497dc	267346	2993025
fred1901@live.com	San Marino	e6920268-aba1-48db-8739-415368d962ec	540533	293724
building2058@yandex.com	San Marino	6feb9519-7623-422d-848c-0b9a5723da19	231118	1171255
boost1833@gmail.com	San Marino	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3912887	4113871
throwing1896@protonmail.com	San Marino	7408db66-1b96-458c-b4f6-4234b2625afd	4074967	3931631
overall2026@outlook.com	San Marino	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1015223	3628057
delight1975@live.com	San Marino	0b57e8c3-3a12-44b9-8236-ace791387ba3	3160676	2826903
hospital2060@yahoo.com	San Marino	33828361-6656-438a-aeb6-15a2e5ffcf27	237147	2828701
mature1894@yahoo.com	San Marino	ccde439b-b989-4cd2-aec9-f142c8d948d0	2892245	3577288
program2002@yandex.com	San Marino	57309776-d0f5-43a2-b94e-38372ee07cc6	4188677	1525927
mature1894@yahoo.com	San Marino	436386c2-345f-4570-ba73-582b3437d53e	2641316	2492976
duncan1820@gmail.com	San Marino	dccda210-9223-4604-b148-a0a248fb714e	1849186	1625354
hormone1827@gmail.com	San Marino	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1950760	516524
program2002@yandex.com	San Marino	495303f4-a868-4fa4-acba-c08667d7bcc8	1478329	4113949
hospital2060@yahoo.com	San Marino	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3972961	1360354
navy1800@outlook.com	San Marino	c94fd88f-86c3-433a-9d81-b19695d48328	3744805	3395050
required1923@outlook.com	San Marino	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2090559	1249340
local1830@gmail.com	San Marino	e88d9503-9bde-473f-9276-3651878e2863	4084566	4078069
webpage2008@yahoo.com	San Marino	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	528612	510648
throwing1896@protonmail.com	San Marino	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1597094	3256694
officials1972@protonmail.com	San Marino	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1526327	1970355
chance1827@gmail.com	San Marino	28778fb1-1671-4bad-8284-6a731564a45e	87112	393013
cruise1800@yahoo.com	San Marino	e5a762f6-3052-4384-a92b-b5401e965d25	370661	3311618
overall2026@outlook.com	San Marino	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2964842	1392113
sauce2013@yandex.com	San Marino	642d495a-e016-412f-a53b-dc046cc492a0	1016220	1465371
dont2100@protonmail.com	Comoros	5de74332-bf74-402e-bac8-55b0a378954d	2723501	7332230
boost1833@gmail.com	Comoros	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1202110	5126339
restoration1945@yahoo.com	Comoros	5a00b0a4-db1a-4555-b66c-e47023575e85	351560	4909942
duncan1820@gmail.com	Comoros	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3561791	7843599
program2002@yandex.com	Comoros	000efc5f-1b50-44ef-92c9-7cd412ba4fca	8103141	3760333
hospital2060@yahoo.com	Comoros	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2034624	3672776
vocal2080@protonmail.com	Comoros	69798bb6-1716-47ee-90ff-0938314cce0c	5380742	9286260
davidson2081@outlook.com	Comoros	9a270672-9e02-44bf-ba2e-2b6baf568829	6876318	1952183
local1830@gmail.com	Comoros	69817e8b-5270-4081-b06b-5f94d1a99c72	7645048	8219255
journey2091@outlook.com	Comoros	62f3d028-08e0-4986-806a-254f0d812c5b	5307479	7578927
local1830@gmail.com	Comoros	80a97543-fd97-40a3-b8dc-f58e50101abc	4751272	3713804
local1830@gmail.com	Comoros	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4126758	5233503
mature1894@yahoo.com	Comoros	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3648695	8795286
local1830@gmail.com	Comoros	9848ad52-bed1-4791-9352-c779584dcbe7	8699072	4980406
hormone1827@gmail.com	Comoros	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2445518	483580
cruise1800@yahoo.com	Comoros	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7649012	741851
duncan1820@gmail.com	Comoros	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	62762	815812
program2002@yandex.com	Comoros	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7568122	3560610
bind1902@yahoo.com	Comoros	c5c41565-02cb-462f-83e5-150521ebde9c	145371	7044819
florence2033@protonmail.com	Comoros	8ec60513-990a-4ce2-a516-8972fdcf9919	8593497	8648320
nbc2041@yahoo.com	Comoros	68739ab8-38f9-45e5-9e67-fb0fc6139879	2443750	8901357
facilitate2066@gmail.com	Comoros	ea8636de-62ee-4739-8be2-2028afe303c9	907042	3523117
pda1876@outlook.com	Comoros	ce85ec8a-a207-4929-ba56-2e8376b239ea	6959256	2937520
journey2091@outlook.com	Comoros	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5579463	1283715
nbc2041@yahoo.com	Comoros	5ed75d07-f129-4210-8934-b5282ab6bf39	9610664	4509964
nelson2015@protonmail.com	Comoros	c82545f7-d728-4444-aded-9648e5d8c22c	8604189	7777161
bookings1998@protonmail.com	Comoros	b207278e-f452-43f3-8e6d-1d55a32497dc	5866656	8984099
peoples2042@protonmail.com	Comoros	e6920268-aba1-48db-8739-415368d962ec	9442680	2662253
chance1827@gmail.com	Comoros	6feb9519-7623-422d-848c-0b9a5723da19	2802809	5871365
officials1972@protonmail.com	Comoros	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3078379	3244393
pda1876@outlook.com	Comoros	7408db66-1b96-458c-b4f6-4234b2625afd	7367272	144619
journey2091@outlook.com	Comoros	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3648162	6630480
webpage2008@yahoo.com	Comoros	0b57e8c3-3a12-44b9-8236-ace791387ba3	676968	8137191
hospital2060@yahoo.com	Comoros	33828361-6656-438a-aeb6-15a2e5ffcf27	4696202	6239231
pda1876@outlook.com	Comoros	ccde439b-b989-4cd2-aec9-f142c8d948d0	2889534	3322121
only2081@protonmail.com	Comoros	57309776-d0f5-43a2-b94e-38372ee07cc6	1815480	6677351
pda1876@outlook.com	Comoros	436386c2-345f-4570-ba73-582b3437d53e	5167303	8564411
hormone1827@gmail.com	Comoros	dccda210-9223-4604-b148-a0a248fb714e	395836	554248
mature1894@yahoo.com	Comoros	8acf71b1-5cd5-4010-8a5c-b1265d537e02	368659	3200855
bind1902@yahoo.com	Comoros	495303f4-a868-4fa4-acba-c08667d7bcc8	9591760	2018867
delight1975@live.com	Comoros	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	7894100	7361052
nbc2041@yahoo.com	Comoros	c94fd88f-86c3-433a-9d81-b19695d48328	7898266	557644
davidson2081@outlook.com	Comoros	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1312366	849742
peoples2042@protonmail.com	Comoros	e88d9503-9bde-473f-9276-3651878e2863	6239331	4998158
nbc2041@yahoo.com	Comoros	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2845000	8865362
hospital2060@yahoo.com	Comoros	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1235372	4983514
only2081@protonmail.com	Comoros	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4651743	9003980
delight1975@live.com	Comoros	28778fb1-1671-4bad-8284-6a731564a45e	4046674	1299989
florence2033@protonmail.com	Comoros	e5a762f6-3052-4384-a92b-b5401e965d25	4392925	8422882
chance1827@gmail.com	Comoros	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3442245	2070145
chance1827@gmail.com	Comoros	642d495a-e016-412f-a53b-dc046cc492a0	1664357	997611
davidson2081@outlook.com	Hungary	5de74332-bf74-402e-bac8-55b0a378954d	4238719	6686523
throwing1896@protonmail.com	Hungary	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4672905	1280326
duncan1820@gmail.com	Hungary	5a00b0a4-db1a-4555-b66c-e47023575e85	8486272	3713992
vocal2080@protonmail.com	Hungary	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	965610	8352642
delight1975@live.com	Hungary	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1961003	8234665
dont2100@protonmail.com	Hungary	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2541778	6623845
florence2033@protonmail.com	Hungary	69798bb6-1716-47ee-90ff-0938314cce0c	1015527	1002764
absence1941@live.com	Hungary	9a270672-9e02-44bf-ba2e-2b6baf568829	6747413	2941958
nelson2015@protonmail.com	Hungary	69817e8b-5270-4081-b06b-5f94d1a99c72	3249833	2216381
nelson2015@protonmail.com	Hungary	62f3d028-08e0-4986-806a-254f0d812c5b	7512624	2616531
navy1800@outlook.com	Hungary	80a97543-fd97-40a3-b8dc-f58e50101abc	7868401	1231825
absence1941@live.com	Hungary	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4363840	3199504
navy1800@outlook.com	Hungary	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3325613	5405827
sauce2013@yandex.com	Hungary	9848ad52-bed1-4791-9352-c779584dcbe7	1618918	7573081
sauce2013@yandex.com	Hungary	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3123716	1585857
boost1833@gmail.com	Hungary	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3724937	2345799
hospital2060@yahoo.com	Hungary	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	7643767	1085572
only2081@protonmail.com	Hungary	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	719709	4733737
delight1975@live.com	Hungary	c5c41565-02cb-462f-83e5-150521ebde9c	7749531	5845668
facilitate2066@gmail.com	Hungary	8ec60513-990a-4ce2-a516-8972fdcf9919	6344461	7921186
florence2033@protonmail.com	Hungary	68739ab8-38f9-45e5-9e67-fb0fc6139879	3530673	5143362
duncan1820@gmail.com	Hungary	ea8636de-62ee-4739-8be2-2028afe303c9	6437041	8015409
nelson2015@protonmail.com	Hungary	ce85ec8a-a207-4929-ba56-2e8376b239ea	1872838	3456449
webpage2008@yahoo.com	Hungary	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2299501	2058305
nbc2041@yahoo.com	Hungary	5ed75d07-f129-4210-8934-b5282ab6bf39	4857233	5763759
despite1900@live.com	Hungary	c82545f7-d728-4444-aded-9648e5d8c22c	4840805	2539456
absence1941@live.com	Hungary	b207278e-f452-43f3-8e6d-1d55a32497dc	4625663	5746602
pda1876@outlook.com	Hungary	e6920268-aba1-48db-8739-415368d962ec	8305331	7521827
fred1901@live.com	Hungary	6feb9519-7623-422d-848c-0b9a5723da19	4719629	7824141
pda1876@outlook.com	Hungary	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5034804	8565739
hormone1827@gmail.com	Hungary	7408db66-1b96-458c-b4f6-4234b2625afd	6760349	1256026
journey2091@outlook.com	Hungary	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5510900	8301154
pda1876@outlook.com	Hungary	0b57e8c3-3a12-44b9-8236-ace791387ba3	6108900	2597272
peoples2042@protonmail.com	Hungary	33828361-6656-438a-aeb6-15a2e5ffcf27	7600228	7072771
vocal2080@protonmail.com	Hungary	ccde439b-b989-4cd2-aec9-f142c8d948d0	8707571	8795807
mature1894@yahoo.com	Hungary	57309776-d0f5-43a2-b94e-38372ee07cc6	6735285	5758219
davidson2081@outlook.com	Hungary	436386c2-345f-4570-ba73-582b3437d53e	2142615	7450906
florence2033@protonmail.com	Hungary	dccda210-9223-4604-b148-a0a248fb714e	3280019	6440457
program2002@yandex.com	Hungary	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2340845	6485759
bookings1998@protonmail.com	Hungary	495303f4-a868-4fa4-acba-c08667d7bcc8	8093415	2151252
absence1941@live.com	Hungary	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	8670953	6427778
hospital2060@yahoo.com	Hungary	c94fd88f-86c3-433a-9d81-b19695d48328	5354579	8489445
only2081@protonmail.com	Hungary	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4374800	4310199
cruise1800@yahoo.com	Hungary	e88d9503-9bde-473f-9276-3651878e2863	4775518	3628271
delight1975@live.com	Hungary	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	6108234	5964270
local1830@gmail.com	Hungary	1ef2eabc-18f9-4869-973e-fa0d7a60446c	7657008	7780424
davidson2081@outlook.com	Hungary	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1618728	880793
absence1941@live.com	Hungary	28778fb1-1671-4bad-8284-6a731564a45e	1715460	3786612
boost1833@gmail.com	Hungary	e5a762f6-3052-4384-a92b-b5401e965d25	4347879	1048806
bind1902@yahoo.com	Hungary	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6010071	2192104
hospital2060@yahoo.com	Hungary	642d495a-e016-412f-a53b-dc046cc492a0	7440241	7687444
hormone1827@gmail.com	Tunisia	5de74332-bf74-402e-bac8-55b0a378954d	8096016	2280299
nelson2015@protonmail.com	Tunisia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2584182	2400478
bookings1998@protonmail.com	Tunisia	5a00b0a4-db1a-4555-b66c-e47023575e85	5018272	1537697
local1830@gmail.com	Tunisia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	5340665	410463
dont2100@protonmail.com	Tunisia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	7198863	4533730
davidson2081@outlook.com	Tunisia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1515037	5475979
bookings1998@protonmail.com	Tunisia	69798bb6-1716-47ee-90ff-0938314cce0c	3012439	4247233
vocal2080@protonmail.com	Tunisia	9a270672-9e02-44bf-ba2e-2b6baf568829	3688211	5199636
lifetime1925@gmail.com	Tunisia	69817e8b-5270-4081-b06b-5f94d1a99c72	8218440	5809384
boost1833@gmail.com	Tunisia	62f3d028-08e0-4986-806a-254f0d812c5b	1166905	6473650
throwing1896@protonmail.com	Tunisia	80a97543-fd97-40a3-b8dc-f58e50101abc	2199338	6180568
vocal2080@protonmail.com	Tunisia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6768708	1763262
nelson2015@protonmail.com	Tunisia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5736095	1373147
overall2026@outlook.com	Tunisia	9848ad52-bed1-4791-9352-c779584dcbe7	2593245	845657
chance1827@gmail.com	Tunisia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	7140198	890328
local1830@gmail.com	Tunisia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3748726	7007355
delight1975@live.com	Tunisia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3091528	5435685
florence2033@protonmail.com	Tunisia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	8302280	271954
local1830@gmail.com	Tunisia	c5c41565-02cb-462f-83e5-150521ebde9c	1951681	5155094
boost1833@gmail.com	Tunisia	8ec60513-990a-4ce2-a516-8972fdcf9919	3912153	2556678
facilitate2066@gmail.com	Tunisia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2743121	3963151
boost1833@gmail.com	Tunisia	ea8636de-62ee-4739-8be2-2028afe303c9	1536042	3756727
despite1900@live.com	Tunisia	ce85ec8a-a207-4929-ba56-2e8376b239ea	5198149	950735
webpage2008@yahoo.com	Tunisia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	376118	7007937
required1923@outlook.com	Tunisia	5ed75d07-f129-4210-8934-b5282ab6bf39	4641979	5438356
hormone1827@gmail.com	Tunisia	c82545f7-d728-4444-aded-9648e5d8c22c	1970374	1206346
bookings1998@protonmail.com	Tunisia	b207278e-f452-43f3-8e6d-1d55a32497dc	1097208	850201
throwing1896@protonmail.com	Tunisia	6feb9519-7623-422d-848c-0b9a5723da19	4999820	2483584
journey2091@outlook.com	Tunisia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1856964	5073433
hormone1827@gmail.com	Tunisia	7408db66-1b96-458c-b4f6-4234b2625afd	7399013	427747
navy1800@outlook.com	Tunisia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1747627	2367511
overall2026@outlook.com	Tunisia	0b57e8c3-3a12-44b9-8236-ace791387ba3	2801814	619247
absence1941@live.com	Tunisia	33828361-6656-438a-aeb6-15a2e5ffcf27	193498	7077721
local1830@gmail.com	Tunisia	ccde439b-b989-4cd2-aec9-f142c8d948d0	5902659	1230399
program2002@yandex.com	Tunisia	57309776-d0f5-43a2-b94e-38372ee07cc6	893235	4999179
program2002@yandex.com	Tunisia	436386c2-345f-4570-ba73-582b3437d53e	159217	4864713
overall2026@outlook.com	Tunisia	dccda210-9223-4604-b148-a0a248fb714e	6826202	1228720
despite1900@live.com	Tunisia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	8364298	2780929
officials1972@protonmail.com	Tunisia	495303f4-a868-4fa4-acba-c08667d7bcc8	1394359	7131547
chance1827@gmail.com	Tunisia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3255342	5955808
duncan1820@gmail.com	Tunisia	c94fd88f-86c3-433a-9d81-b19695d48328	83059	2504238
vocal2080@protonmail.com	Tunisia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2369160	4885702
navy1800@outlook.com	Tunisia	e88d9503-9bde-473f-9276-3651878e2863	8071900	6658100
vocal2080@protonmail.com	Tunisia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4085923	1425711
cruise1800@yahoo.com	Tunisia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4207126	5057551
officials1972@protonmail.com	Tunisia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2600794	2694084
restoration1945@yahoo.com	Tunisia	28778fb1-1671-4bad-8284-6a731564a45e	7294277	4601687
despite1900@live.com	Tunisia	e5a762f6-3052-4384-a92b-b5401e965d25	7688486	3613186
bookings1998@protonmail.com	Tunisia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	5988616	7574282
overall2026@outlook.com	Tunisia	642d495a-e016-412f-a53b-dc046cc492a0	5842428	185317
overall2026@outlook.com	Sudan	5de74332-bf74-402e-bac8-55b0a378954d	1435128	891569
duncan1820@gmail.com	Sudan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1367542	1759671
mature1894@yahoo.com	Sudan	5a00b0a4-db1a-4555-b66c-e47023575e85	1946376	127545
delight1975@live.com	Sudan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1935291	693268
boost1833@gmail.com	Sudan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	151489	1115104
local1830@gmail.com	Sudan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	102133	1771074
delight1975@live.com	Sudan	69798bb6-1716-47ee-90ff-0938314cce0c	1987858	1852012
journey2091@outlook.com	Sudan	9a270672-9e02-44bf-ba2e-2b6baf568829	832656	1779842
officials1972@protonmail.com	Sudan	69817e8b-5270-4081-b06b-5f94d1a99c72	1998553	1256895
pda1876@outlook.com	Sudan	62f3d028-08e0-4986-806a-254f0d812c5b	742813	921552
duncan1820@gmail.com	Sudan	80a97543-fd97-40a3-b8dc-f58e50101abc	1925809	963498
restoration1945@yahoo.com	Sudan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	909744	1883562
only2081@protonmail.com	Sudan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	886917	825974
vocal2080@protonmail.com	Sudan	9848ad52-bed1-4791-9352-c779584dcbe7	1594709	955879
throwing1896@protonmail.com	Sudan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	225746	896688
peoples2042@protonmail.com	Sudan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	185887	1468906
vocal2080@protonmail.com	Sudan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	844148	376253
despite1900@live.com	Sudan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1428874	1128190
program2002@yandex.com	Sudan	c5c41565-02cb-462f-83e5-150521ebde9c	716106	1572285
vocal2080@protonmail.com	Sudan	8ec60513-990a-4ce2-a516-8972fdcf9919	721195	1780249
journey2091@outlook.com	Sudan	68739ab8-38f9-45e5-9e67-fb0fc6139879	1992938	365520
despite1900@live.com	Sudan	ea8636de-62ee-4739-8be2-2028afe303c9	127202	59454
davidson2081@outlook.com	Sudan	ce85ec8a-a207-4929-ba56-2e8376b239ea	500336	2087506
peoples2042@protonmail.com	Sudan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1602915	1134388
vocal2080@protonmail.com	Sudan	5ed75d07-f129-4210-8934-b5282ab6bf39	1015134	1646930
program2002@yandex.com	Sudan	c82545f7-d728-4444-aded-9648e5d8c22c	284745	1909218
restoration1945@yahoo.com	Sudan	b207278e-f452-43f3-8e6d-1d55a32497dc	1583038	1997581
local1830@gmail.com	Sudan	e6920268-aba1-48db-8739-415368d962ec	2001450	1702281
absence1941@live.com	Sudan	6feb9519-7623-422d-848c-0b9a5723da19	1230743	42485
overall2026@outlook.com	Sudan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	485581	255589
local1830@gmail.com	Sudan	7408db66-1b96-458c-b4f6-4234b2625afd	841634	1298002
overall2026@outlook.com	Sudan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1697579	1588595
program2002@yandex.com	Sudan	0b57e8c3-3a12-44b9-8236-ace791387ba3	903587	1851368
hospital2060@yahoo.com	Sudan	33828361-6656-438a-aeb6-15a2e5ffcf27	1202906	2100655
davidson2081@outlook.com	Sudan	ccde439b-b989-4cd2-aec9-f142c8d948d0	980570	1765776
pda1876@outlook.com	Sudan	57309776-d0f5-43a2-b94e-38372ee07cc6	1727904	1164964
despite1900@live.com	Sudan	436386c2-345f-4570-ba73-582b3437d53e	558723	1338534
delight1975@live.com	Sudan	dccda210-9223-4604-b148-a0a248fb714e	235741	365004
throwing1896@protonmail.com	Sudan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	941458	1969115
bind1902@yahoo.com	Sudan	495303f4-a868-4fa4-acba-c08667d7bcc8	915823	361246
required1923@outlook.com	Sudan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	37482	1549864
hospital2060@yahoo.com	Sudan	c94fd88f-86c3-433a-9d81-b19695d48328	632681	1686969
webpage2008@yahoo.com	Sudan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	846530	908863
hormone1827@gmail.com	Sudan	e88d9503-9bde-473f-9276-3651878e2863	376564	868541
despite1900@live.com	Sudan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	400403	1454777
navy1800@outlook.com	Sudan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1382246	4017
local1830@gmail.com	Sudan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2112221	1996736
dont2100@protonmail.com	Sudan	28778fb1-1671-4bad-8284-6a731564a45e	2098775	2069032
restoration1945@yahoo.com	Sudan	e5a762f6-3052-4384-a92b-b5401e965d25	110729	712729
despite1900@live.com	Sudan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1369571	1767889
despite1900@live.com	Sudan	642d495a-e016-412f-a53b-dc046cc492a0	1015415	64120
navy1800@outlook.com	South Korea	5de74332-bf74-402e-bac8-55b0a378954d	5868593	5060887
lifetime1925@gmail.com	South Korea	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5165265	659989
boost1833@gmail.com	Poland	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5058164	6842527
cruise1800@yahoo.com	South Korea	5a00b0a4-db1a-4555-b66c-e47023575e85	1013615	394829
local1830@gmail.com	South Korea	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3992714	257113
hormone1827@gmail.com	South Korea	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2667722	3222191
sauce2013@yandex.com	South Korea	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6658678	5166017
only2081@protonmail.com	South Korea	69798bb6-1716-47ee-90ff-0938314cce0c	1037452	4002842
duncan1820@gmail.com	South Korea	9a270672-9e02-44bf-ba2e-2b6baf568829	994725	6196928
davidson2081@outlook.com	South Korea	69817e8b-5270-4081-b06b-5f94d1a99c72	2067935	4344527
nbc2041@yahoo.com	South Korea	62f3d028-08e0-4986-806a-254f0d812c5b	4913391	7404428
vocal2080@protonmail.com	South Korea	80a97543-fd97-40a3-b8dc-f58e50101abc	3188689	6253914
only2081@protonmail.com	South Korea	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4740845	1307446
davidson2081@outlook.com	South Korea	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5659376	2641141
chance1827@gmail.com	South Korea	9848ad52-bed1-4791-9352-c779584dcbe7	7862346	2678072
only2081@protonmail.com	South Korea	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1601282	7703240
restoration1945@yahoo.com	South Korea	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6515705	2289491
nelson2015@protonmail.com	South Korea	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3250900	2996262
webpage2008@yahoo.com	South Korea	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7922780	5023690
nelson2015@protonmail.com	South Korea	c5c41565-02cb-462f-83e5-150521ebde9c	2100091	7583782
journey2091@outlook.com	South Korea	8ec60513-990a-4ce2-a516-8972fdcf9919	553805	6707208
chance1827@gmail.com	South Korea	68739ab8-38f9-45e5-9e67-fb0fc6139879	4015145	382748
sauce2013@yandex.com	South Korea	ea8636de-62ee-4739-8be2-2028afe303c9	814147	3357577
webpage2008@yahoo.com	South Korea	ce85ec8a-a207-4929-ba56-2e8376b239ea	6330891	722137
despite1900@live.com	South Korea	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7276723	1720167
hormone1827@gmail.com	South Korea	5ed75d07-f129-4210-8934-b5282ab6bf39	1196547	5528114
journey2091@outlook.com	South Korea	c82545f7-d728-4444-aded-9648e5d8c22c	4460976	6796323
program2002@yandex.com	South Korea	b207278e-f452-43f3-8e6d-1d55a32497dc	7717716	2614098
duncan1820@gmail.com	South Korea	e6920268-aba1-48db-8739-415368d962ec	7241707	2571772
officials1972@protonmail.com	South Korea	6feb9519-7623-422d-848c-0b9a5723da19	6123909	6966078
hospital2060@yahoo.com	South Korea	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3880680	3795216
hormone1827@gmail.com	South Korea	7408db66-1b96-458c-b4f6-4234b2625afd	7711310	2692822
throwing1896@protonmail.com	South Korea	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3731339	3652552
nbc2041@yahoo.com	South Korea	0b57e8c3-3a12-44b9-8236-ace791387ba3	3339883	5676853
program2002@yandex.com	South Korea	33828361-6656-438a-aeb6-15a2e5ffcf27	5099264	6039611
pda1876@outlook.com	South Korea	ccde439b-b989-4cd2-aec9-f142c8d948d0	1618835	7121140
duncan1820@gmail.com	South Korea	57309776-d0f5-43a2-b94e-38372ee07cc6	6882287	1572050
fred1901@live.com	South Korea	436386c2-345f-4570-ba73-582b3437d53e	235861	1380725
vocal2080@protonmail.com	South Korea	dccda210-9223-4604-b148-a0a248fb714e	1153333	5027160
only2081@protonmail.com	South Korea	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4025098	1216934
only2081@protonmail.com	South Korea	495303f4-a868-4fa4-acba-c08667d7bcc8	5580602	5471431
officials1972@protonmail.com	South Korea	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6280250	6716620
florence2033@protonmail.com	South Korea	c94fd88f-86c3-433a-9d81-b19695d48328	7873202	7618929
journey2091@outlook.com	South Korea	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3627745	7687092
peoples2042@protonmail.com	South Korea	e88d9503-9bde-473f-9276-3651878e2863	2006	7256714
local1830@gmail.com	South Korea	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3348970	6431122
dont2100@protonmail.com	South Korea	1ef2eabc-18f9-4869-973e-fa0d7a60446c	967541	7281096
bind1902@yahoo.com	South Korea	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6196281	2204603
chance1827@gmail.com	South Korea	28778fb1-1671-4bad-8284-6a731564a45e	722554	7332297
hormone1827@gmail.com	South Korea	e5a762f6-3052-4384-a92b-b5401e965d25	6153947	7400379
restoration1945@yahoo.com	South Korea	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3344980	78901
bookings1998@protonmail.com	South Korea	642d495a-e016-412f-a53b-dc046cc492a0	7662598	4592741
nelson2015@protonmail.com	Colombia	5de74332-bf74-402e-bac8-55b0a378954d	588447	4924421
davidson2081@outlook.com	Colombia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1836691	232581
throwing1896@protonmail.com	Colombia	5a00b0a4-db1a-4555-b66c-e47023575e85	2183427	4928108
pda1876@outlook.com	Colombia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2313885	3242155
cruise1800@yahoo.com	Colombia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5393244	2336774
hospital2060@yahoo.com	Colombia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5282061	2515435
officials1972@protonmail.com	Colombia	69798bb6-1716-47ee-90ff-0938314cce0c	589155	2523474
absence1941@live.com	Colombia	9a270672-9e02-44bf-ba2e-2b6baf568829	1752852	3024071
vocal2080@protonmail.com	Colombia	69817e8b-5270-4081-b06b-5f94d1a99c72	1089952	2654676
required1923@outlook.com	Colombia	62f3d028-08e0-4986-806a-254f0d812c5b	859081	5305173
boost1833@gmail.com	Colombia	80a97543-fd97-40a3-b8dc-f58e50101abc	3349815	3451893
despite1900@live.com	Colombia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3790576	2442076
hormone1827@gmail.com	Colombia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	316929	2561879
chance1827@gmail.com	Colombia	9848ad52-bed1-4791-9352-c779584dcbe7	2321274	4083990
duncan1820@gmail.com	Colombia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1647711	670101
throwing1896@protonmail.com	Colombia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4305817	1730497
pda1876@outlook.com	Colombia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1961338	2024391
duncan1820@gmail.com	Colombia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2922190	2962021
lifetime1925@gmail.com	Colombia	c5c41565-02cb-462f-83e5-150521ebde9c	4926724	3479474
nelson2015@protonmail.com	Colombia	8ec60513-990a-4ce2-a516-8972fdcf9919	3871052	5230151
pda1876@outlook.com	Colombia	68739ab8-38f9-45e5-9e67-fb0fc6139879	3726161	2946853
sauce2013@yandex.com	Colombia	ea8636de-62ee-4739-8be2-2028afe303c9	5575684	4272913
mature1894@yahoo.com	Colombia	ce85ec8a-a207-4929-ba56-2e8376b239ea	729950	1637774
overall2026@outlook.com	Colombia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1748733	4540212
mature1894@yahoo.com	Colombia	5ed75d07-f129-4210-8934-b5282ab6bf39	2133788	253040
lifetime1925@gmail.com	Colombia	c82545f7-d728-4444-aded-9648e5d8c22c	4521462	4763513
delight1975@live.com	Colombia	b207278e-f452-43f3-8e6d-1d55a32497dc	5018149	1179901
fred1901@live.com	Colombia	e6920268-aba1-48db-8739-415368d962ec	5689739	3138978
sauce2013@yandex.com	Colombia	6feb9519-7623-422d-848c-0b9a5723da19	88570	807304
nelson2015@protonmail.com	Colombia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4979314	3275101
facilitate2066@gmail.com	Colombia	7408db66-1b96-458c-b4f6-4234b2625afd	4839642	479138
nelson2015@protonmail.com	Colombia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5331240	3722487
fred1901@live.com	Colombia	0b57e8c3-3a12-44b9-8236-ace791387ba3	630105	5402473
facilitate2066@gmail.com	Colombia	33828361-6656-438a-aeb6-15a2e5ffcf27	1629118	4477750
fred1901@live.com	Colombia	ccde439b-b989-4cd2-aec9-f142c8d948d0	3731880	5336124
florence2033@protonmail.com	Colombia	57309776-d0f5-43a2-b94e-38372ee07cc6	2749750	1264278
only2081@protonmail.com	Colombia	436386c2-345f-4570-ba73-582b3437d53e	137038	1098430
vocal2080@protonmail.com	Colombia	dccda210-9223-4604-b148-a0a248fb714e	1800204	1990250
bookings1998@protonmail.com	Colombia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3322559	705790
required1923@outlook.com	Colombia	495303f4-a868-4fa4-acba-c08667d7bcc8	5362776	2690410
bookings1998@protonmail.com	Colombia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1716441	1399364
cruise1800@yahoo.com	Colombia	c94fd88f-86c3-433a-9d81-b19695d48328	1810762	2855412
duncan1820@gmail.com	Colombia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1590799	4358252
sauce2013@yandex.com	Colombia	e88d9503-9bde-473f-9276-3651878e2863	4344941	4548661
absence1941@live.com	Colombia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1678009	5659296
vocal2080@protonmail.com	Colombia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2576925	4637928
dont2100@protonmail.com	Colombia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5242238	5655997
boost1833@gmail.com	Colombia	28778fb1-1671-4bad-8284-6a731564a45e	5083175	5401810
bind1902@yahoo.com	Colombia	e5a762f6-3052-4384-a92b-b5401e965d25	2043346	1525669
boost1833@gmail.com	Colombia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2977984	739956
pda1876@outlook.com	Colombia	642d495a-e016-412f-a53b-dc046cc492a0	140530	2204882
hospital2060@yahoo.com	Seychelles	5de74332-bf74-402e-bac8-55b0a378954d	1874465	2002173
officials1972@protonmail.com	Seychelles	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1847345	3461845
journey2091@outlook.com	Seychelles	5a00b0a4-db1a-4555-b66c-e47023575e85	2861916	2576483
sauce2013@yandex.com	Seychelles	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	134546	3490542
journey2091@outlook.com	Seychelles	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3519732	1040464
cruise1800@yahoo.com	Seychelles	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1713935	2667556
throwing1896@protonmail.com	Seychelles	69798bb6-1716-47ee-90ff-0938314cce0c	2933786	3168024
only2081@protonmail.com	Seychelles	9a270672-9e02-44bf-ba2e-2b6baf568829	93411	2277274
bookings1998@protonmail.com	Seychelles	69817e8b-5270-4081-b06b-5f94d1a99c72	1851587	2044861
dont2100@protonmail.com	Seychelles	62f3d028-08e0-4986-806a-254f0d812c5b	69057	1292141
peoples2042@protonmail.com	Seychelles	80a97543-fd97-40a3-b8dc-f58e50101abc	2919567	1066549
journey2091@outlook.com	Seychelles	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2285439	2900194
bind1902@yahoo.com	Seychelles	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3234448	3601878
lifetime1925@gmail.com	Seychelles	9848ad52-bed1-4791-9352-c779584dcbe7	221810	1327038
required1923@outlook.com	Seychelles	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2339204	1344996
florence2033@protonmail.com	Seychelles	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2069825	2336810
bind1902@yahoo.com	Seychelles	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2308797	3694465
restoration1945@yahoo.com	Seychelles	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3209922	1256596
florence2033@protonmail.com	Seychelles	c5c41565-02cb-462f-83e5-150521ebde9c	2711942	3115406
nbc2041@yahoo.com	Seychelles	8ec60513-990a-4ce2-a516-8972fdcf9919	1743632	1590695
duncan1820@gmail.com	Seychelles	68739ab8-38f9-45e5-9e67-fb0fc6139879	185696	1685148
duncan1820@gmail.com	Seychelles	ea8636de-62ee-4739-8be2-2028afe303c9	2353551	734844
hospital2060@yahoo.com	Seychelles	ce85ec8a-a207-4929-ba56-2e8376b239ea	2536301	2319667
navy1800@outlook.com	Seychelles	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3048301	2521533
vocal2080@protonmail.com	Seychelles	5ed75d07-f129-4210-8934-b5282ab6bf39	1120978	918002
only2081@protonmail.com	Seychelles	c82545f7-d728-4444-aded-9648e5d8c22c	22564	2153453
building2058@yandex.com	Seychelles	b207278e-f452-43f3-8e6d-1d55a32497dc	2477315	645627
despite1900@live.com	Seychelles	e6920268-aba1-48db-8739-415368d962ec	505770	1855104
pda1876@outlook.com	Seychelles	6feb9519-7623-422d-848c-0b9a5723da19	2802668	3325415
webpage2008@yahoo.com	Seychelles	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	695284	2287858
bookings1998@protonmail.com	Seychelles	7408db66-1b96-458c-b4f6-4234b2625afd	3040229	1949097
journey2091@outlook.com	Seychelles	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1239421	1728938
facilitate2066@gmail.com	Seychelles	0b57e8c3-3a12-44b9-8236-ace791387ba3	288123	3505518
webpage2008@yahoo.com	Seychelles	33828361-6656-438a-aeb6-15a2e5ffcf27	3216573	157449
hormone1827@gmail.com	Seychelles	ccde439b-b989-4cd2-aec9-f142c8d948d0	2527547	1178346
lifetime1925@gmail.com	Seychelles	57309776-d0f5-43a2-b94e-38372ee07cc6	3150554	622697
chance1827@gmail.com	Seychelles	436386c2-345f-4570-ba73-582b3437d53e	2270613	1639463
fred1901@live.com	Seychelles	dccda210-9223-4604-b148-a0a248fb714e	2668484	1000328
local1830@gmail.com	Seychelles	8acf71b1-5cd5-4010-8a5c-b1265d537e02	858765	866529
officials1972@protonmail.com	Seychelles	495303f4-a868-4fa4-acba-c08667d7bcc8	788908	1828353
restoration1945@yahoo.com	Seychelles	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	558094	2323501
building2058@yandex.com	Seychelles	c94fd88f-86c3-433a-9d81-b19695d48328	3218165	4279
duncan1820@gmail.com	Seychelles	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3119574	3360704
hormone1827@gmail.com	Seychelles	e88d9503-9bde-473f-9276-3651878e2863	590834	2432580
lifetime1925@gmail.com	Seychelles	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2483026	2722424
nelson2015@protonmail.com	Seychelles	1ef2eabc-18f9-4869-973e-fa0d7a60446c	407223	1006297
bookings1998@protonmail.com	Seychelles	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3164199	3328987
dont2100@protonmail.com	Seychelles	28778fb1-1671-4bad-8284-6a731564a45e	3414822	3640536
pda1876@outlook.com	Seychelles	e5a762f6-3052-4384-a92b-b5401e965d25	2223797	2712731
navy1800@outlook.com	Seychelles	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1777331	162088
nelson2015@protonmail.com	Seychelles	642d495a-e016-412f-a53b-dc046cc492a0	1043063	464615
navy1800@outlook.com	Martinique	5de74332-bf74-402e-bac8-55b0a378954d	134609	618231
webpage2008@yahoo.com	Martinique	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	984758	2399334
nelson2015@protonmail.com	Martinique	5a00b0a4-db1a-4555-b66c-e47023575e85	94542	3541351
florence2033@protonmail.com	Martinique	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4061553	3218765
webpage2008@yahoo.com	Martinique	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2083084	2072633
dont2100@protonmail.com	Martinique	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3534892	3864739
davidson2081@outlook.com	Martinique	69798bb6-1716-47ee-90ff-0938314cce0c	3170764	533385
only2081@protonmail.com	Martinique	9a270672-9e02-44bf-ba2e-2b6baf568829	2230599	784435
journey2091@outlook.com	Martinique	69817e8b-5270-4081-b06b-5f94d1a99c72	1898377	816534
restoration1945@yahoo.com	Martinique	62f3d028-08e0-4986-806a-254f0d812c5b	636512	15092
delight1975@live.com	Martinique	80a97543-fd97-40a3-b8dc-f58e50101abc	3604007	2694781
davidson2081@outlook.com	Martinique	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	938387	1172092
despite1900@live.com	Martinique	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2452326	1292956
mature1894@yahoo.com	Martinique	9848ad52-bed1-4791-9352-c779584dcbe7	3232736	285106
bind1902@yahoo.com	Martinique	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4205289	3408490
journey2091@outlook.com	Martinique	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	365906	4202805
program2002@yandex.com	Martinique	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1157105	3288920
hospital2060@yahoo.com	Martinique	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	897295	1894235
local1830@gmail.com	Martinique	c5c41565-02cb-462f-83e5-150521ebde9c	1197415	581963
webpage2008@yahoo.com	Martinique	8ec60513-990a-4ce2-a516-8972fdcf9919	4154883	26717
davidson2081@outlook.com	Martinique	68739ab8-38f9-45e5-9e67-fb0fc6139879	773468	918951
florence2033@protonmail.com	Martinique	ea8636de-62ee-4739-8be2-2028afe303c9	1197443	4146040
fred1901@live.com	Martinique	ce85ec8a-a207-4929-ba56-2e8376b239ea	489317	3571267
mature1894@yahoo.com	Martinique	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3575816	1071570
fred1901@live.com	Martinique	5ed75d07-f129-4210-8934-b5282ab6bf39	96607	2626266
davidson2081@outlook.com	Martinique	c82545f7-d728-4444-aded-9648e5d8c22c	858509	3074931
bookings1998@protonmail.com	Martinique	b207278e-f452-43f3-8e6d-1d55a32497dc	3833098	257259
despite1900@live.com	Martinique	e6920268-aba1-48db-8739-415368d962ec	2899184	2443779
officials1972@protonmail.com	Martinique	6feb9519-7623-422d-848c-0b9a5723da19	3818186	3921842
sauce2013@yandex.com	Martinique	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4000718	3138672
florence2033@protonmail.com	Martinique	7408db66-1b96-458c-b4f6-4234b2625afd	2933344	3405620
chance1827@gmail.com	Martinique	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2757322	4048575
webpage2008@yahoo.com	Martinique	0b57e8c3-3a12-44b9-8236-ace791387ba3	2662250	3910808
florence2033@protonmail.com	Martinique	33828361-6656-438a-aeb6-15a2e5ffcf27	489105	987161
local1830@gmail.com	Martinique	ccde439b-b989-4cd2-aec9-f142c8d948d0	1262747	93200
davidson2081@outlook.com	Martinique	57309776-d0f5-43a2-b94e-38372ee07cc6	728633	3115207
bookings1998@protonmail.com	Martinique	436386c2-345f-4570-ba73-582b3437d53e	2467871	2691510
delight1975@live.com	Martinique	dccda210-9223-4604-b148-a0a248fb714e	628180	2445231
fred1901@live.com	Martinique	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3761458	239845
navy1800@outlook.com	Martinique	495303f4-a868-4fa4-acba-c08667d7bcc8	1932494	2109662
restoration1945@yahoo.com	Martinique	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1486009	508391
chance1827@gmail.com	Martinique	c94fd88f-86c3-433a-9d81-b19695d48328	2100002	779723
pda1876@outlook.com	Martinique	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4216207	3522847
bind1902@yahoo.com	Martinique	e88d9503-9bde-473f-9276-3651878e2863	4251040	4039810
delight1975@live.com	Martinique	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2684889	2732364
nbc2041@yahoo.com	Martinique	1ef2eabc-18f9-4869-973e-fa0d7a60446c	460377	2395953
fred1901@live.com	Martinique	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2150015	4000800
overall2026@outlook.com	Martinique	28778fb1-1671-4bad-8284-6a731564a45e	333717	3329622
journey2091@outlook.com	Martinique	e5a762f6-3052-4384-a92b-b5401e965d25	1794085	2830509
hormone1827@gmail.com	Martinique	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1655728	1056654
dont2100@protonmail.com	Martinique	642d495a-e016-412f-a53b-dc046cc492a0	2331615	1140976
only2081@protonmail.com	Greece	5de74332-bf74-402e-bac8-55b0a378954d	1060814	500718
mature1894@yahoo.com	Greece	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	978829	543162
delight1975@live.com	Greece	5a00b0a4-db1a-4555-b66c-e47023575e85	1656997	163595
webpage2008@yahoo.com	Greece	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2551587	464013
nelson2015@protonmail.com	Greece	000efc5f-1b50-44ef-92c9-7cd412ba4fca	613176	2450707
chance1827@gmail.com	Greece	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2062308	1279374
absence1941@live.com	Greece	69798bb6-1716-47ee-90ff-0938314cce0c	1631687	1144667
duncan1820@gmail.com	Greece	9a270672-9e02-44bf-ba2e-2b6baf568829	1483345	1466938
delight1975@live.com	Greece	69817e8b-5270-4081-b06b-5f94d1a99c72	2597799	1985864
mature1894@yahoo.com	Greece	62f3d028-08e0-4986-806a-254f0d812c5b	1232831	1230980
fred1901@live.com	Greece	80a97543-fd97-40a3-b8dc-f58e50101abc	2239935	1020175
dont2100@protonmail.com	Greece	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	730503	2224922
despite1900@live.com	Greece	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1582932	2312516
florence2033@protonmail.com	Greece	9848ad52-bed1-4791-9352-c779584dcbe7	1498788	2578382
navy1800@outlook.com	Greece	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1229779	2122444
boost1833@gmail.com	Greece	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2489618	1047999
bind1902@yahoo.com	Greece	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2240657	465378
navy1800@outlook.com	Greece	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1215768	397126
duncan1820@gmail.com	Greece	c5c41565-02cb-462f-83e5-150521ebde9c	2084174	681705
hospital2060@yahoo.com	Greece	8ec60513-990a-4ce2-a516-8972fdcf9919	536007	523125
hormone1827@gmail.com	Greece	68739ab8-38f9-45e5-9e67-fb0fc6139879	1099354	2553369
vocal2080@protonmail.com	Greece	ea8636de-62ee-4739-8be2-2028afe303c9	1531949	347093
fred1901@live.com	Greece	ce85ec8a-a207-4929-ba56-2e8376b239ea	2187995	356900
bind1902@yahoo.com	Greece	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2266942	690764
bookings1998@protonmail.com	Greece	c82545f7-d728-4444-aded-9648e5d8c22c	290041	1122386
facilitate2066@gmail.com	Greece	e6920268-aba1-48db-8739-415368d962ec	1709425	429802
only2081@protonmail.com	Greece	6feb9519-7623-422d-848c-0b9a5723da19	2591040	390647
absence1941@live.com	Greece	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	568319	1619744
boost1833@gmail.com	Greece	7408db66-1b96-458c-b4f6-4234b2625afd	1336794	711793
boost1833@gmail.com	Greece	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1898656	384369
duncan1820@gmail.com	Greece	0b57e8c3-3a12-44b9-8236-ace791387ba3	1493042	1307030
dont2100@protonmail.com	Greece	33828361-6656-438a-aeb6-15a2e5ffcf27	1214650	2256394
navy1800@outlook.com	Greece	57309776-d0f5-43a2-b94e-38372ee07cc6	2403529	1474085
absence1941@live.com	Greece	436386c2-345f-4570-ba73-582b3437d53e	2156161	2067280
pda1876@outlook.com	Greece	dccda210-9223-4604-b148-a0a248fb714e	2063677	1847925
program2002@yandex.com	Greece	8acf71b1-5cd5-4010-8a5c-b1265d537e02	951168	2348401
nelson2015@protonmail.com	Greece	495303f4-a868-4fa4-acba-c08667d7bcc8	276394	1208712
required1923@outlook.com	Greece	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1935581	882585
facilitate2066@gmail.com	Greece	c94fd88f-86c3-433a-9d81-b19695d48328	2533570	1018976
required1923@outlook.com	Greece	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1004613	1640157
chance1827@gmail.com	Greece	e88d9503-9bde-473f-9276-3651878e2863	1441301	1507971
officials1972@protonmail.com	Greece	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1843379	725422
dont2100@protonmail.com	Greece	1ef2eabc-18f9-4869-973e-fa0d7a60446c	87928	1103370
restoration1945@yahoo.com	Greece	28778fb1-1671-4bad-8284-6a731564a45e	2245073	2078375
facilitate2066@gmail.com	Greece	e5a762f6-3052-4384-a92b-b5401e965d25	989859	1559980
local1830@gmail.com	Greece	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1512623	2519435
overall2026@outlook.com	Greece	642d495a-e016-412f-a53b-dc046cc492a0	2576398	1239084
hormone1827@gmail.com	Iceland	5de74332-bf74-402e-bac8-55b0a378954d	101775	1745689
throwing1896@protonmail.com	Iceland	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2145782	94354
sauce2013@yandex.com	Iceland	5a00b0a4-db1a-4555-b66c-e47023575e85	490342	450103
hospital2060@yahoo.com	Iceland	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1706001	1755472
only2081@protonmail.com	Iceland	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1377466	1505567
required1923@outlook.com	Iceland	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	475859	1466732
bookings1998@protonmail.com	Iceland	69798bb6-1716-47ee-90ff-0938314cce0c	1691321	880457
restoration1945@yahoo.com	Iceland	9a270672-9e02-44bf-ba2e-2b6baf568829	1748914	278917
pda1876@outlook.com	Iceland	69817e8b-5270-4081-b06b-5f94d1a99c72	1776122	1202536
despite1900@live.com	Iceland	62f3d028-08e0-4986-806a-254f0d812c5b	1493764	236144
despite1900@live.com	Iceland	80a97543-fd97-40a3-b8dc-f58e50101abc	864084	229552
vocal2080@protonmail.com	Iceland	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1576760	167973
nbc2041@yahoo.com	Iceland	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	844342	228335
only2081@protonmail.com	Iceland	9848ad52-bed1-4791-9352-c779584dcbe7	2101236	25834
building2058@yandex.com	Iceland	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1390523	1205417
peoples2042@protonmail.com	Iceland	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	971570	1126597
overall2026@outlook.com	Iceland	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1251297	382539
chance1827@gmail.com	Iceland	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	184794	1326286
building2058@yandex.com	Iceland	c5c41565-02cb-462f-83e5-150521ebde9c	432186	211533
hormone1827@gmail.com	Iceland	8ec60513-990a-4ce2-a516-8972fdcf9919	160422	936925
vocal2080@protonmail.com	Iceland	68739ab8-38f9-45e5-9e67-fb0fc6139879	224114	1903683
lifetime1925@gmail.com	Iceland	ea8636de-62ee-4739-8be2-2028afe303c9	17084	751318
florence2033@protonmail.com	Iceland	ce85ec8a-a207-4929-ba56-2e8376b239ea	651944	1145226
peoples2042@protonmail.com	Iceland	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1737362	843558
boost1833@gmail.com	Iceland	5ed75d07-f129-4210-8934-b5282ab6bf39	328623	2114075
webpage2008@yahoo.com	Iceland	c82545f7-d728-4444-aded-9648e5d8c22c	2132131	1301995
florence2033@protonmail.com	Iceland	b207278e-f452-43f3-8e6d-1d55a32497dc	2138263	1067792
journey2091@outlook.com	Iceland	e6920268-aba1-48db-8739-415368d962ec	304846	1818218
mature1894@yahoo.com	Iceland	6feb9519-7623-422d-848c-0b9a5723da19	1638618	1815657
only2081@protonmail.com	Iceland	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	888677	17455
cruise1800@yahoo.com	Iceland	7408db66-1b96-458c-b4f6-4234b2625afd	1635112	68313
nbc2041@yahoo.com	Iceland	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	154812	755605
local1830@gmail.com	Iceland	0b57e8c3-3a12-44b9-8236-ace791387ba3	22916	1259511
program2002@yandex.com	Iceland	33828361-6656-438a-aeb6-15a2e5ffcf27	1377832	951363
local1830@gmail.com	Iceland	ccde439b-b989-4cd2-aec9-f142c8d948d0	181989	1947146
facilitate2066@gmail.com	Iceland	57309776-d0f5-43a2-b94e-38372ee07cc6	469093	2002733
throwing1896@protonmail.com	Iceland	436386c2-345f-4570-ba73-582b3437d53e	307140	1229303
required1923@outlook.com	Iceland	dccda210-9223-4604-b148-a0a248fb714e	1847817	1007599
cruise1800@yahoo.com	Iceland	8acf71b1-5cd5-4010-8a5c-b1265d537e02	230895	509270
program2002@yandex.com	Iceland	495303f4-a868-4fa4-acba-c08667d7bcc8	939344	716978
peoples2042@protonmail.com	Iceland	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	60630	658458
despite1900@live.com	Iceland	c94fd88f-86c3-433a-9d81-b19695d48328	1306441	564155
only2081@protonmail.com	Iceland	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	760238	1681872
duncan1820@gmail.com	Iceland	e88d9503-9bde-473f-9276-3651878e2863	1257450	177941
duncan1820@gmail.com	Iceland	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1468183	54958
overall2026@outlook.com	Iceland	1ef2eabc-18f9-4869-973e-fa0d7a60446c	68614	277174
restoration1945@yahoo.com	Iceland	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1445370	1623622
officials1972@protonmail.com	Iceland	28778fb1-1671-4bad-8284-6a731564a45e	1619463	1501113
facilitate2066@gmail.com	Iceland	e5a762f6-3052-4384-a92b-b5401e965d25	1509524	28062
sauce2013@yandex.com	Iceland	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2119476	2050665
program2002@yandex.com	Iceland	642d495a-e016-412f-a53b-dc046cc492a0	1536528	1209410
nelson2015@protonmail.com	Denmark	5de74332-bf74-402e-bac8-55b0a378954d	2403460	1557734
florence2033@protonmail.com	Denmark	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3613010	1372884
despite1900@live.com	Denmark	5a00b0a4-db1a-4555-b66c-e47023575e85	3981489	1123408
webpage2008@yahoo.com	Denmark	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1989322	2884119
overall2026@outlook.com	Denmark	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4429070	1850975
vocal2080@protonmail.com	Denmark	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	436931	4739529
pda1876@outlook.com	Denmark	69798bb6-1716-47ee-90ff-0938314cce0c	4535729	5098861
sauce2013@yandex.com	Denmark	9a270672-9e02-44bf-ba2e-2b6baf568829	5278878	2812084
bind1902@yahoo.com	Denmark	69817e8b-5270-4081-b06b-5f94d1a99c72	3600765	2279101
only2081@protonmail.com	Denmark	62f3d028-08e0-4986-806a-254f0d812c5b	521400	4508695
mature1894@yahoo.com	Denmark	80a97543-fd97-40a3-b8dc-f58e50101abc	1145394	4960088
webpage2008@yahoo.com	Denmark	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	5207875	2318979
cruise1800@yahoo.com	Denmark	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3667213	138545
peoples2042@protonmail.com	Denmark	9848ad52-bed1-4791-9352-c779584dcbe7	1895903	671717
nelson2015@protonmail.com	Denmark	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5061073	4220925
peoples2042@protonmail.com	Denmark	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1928893	3439592
sauce2013@yandex.com	Denmark	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4955826	5194406
duncan1820@gmail.com	Denmark	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3329703	4479852
boost1833@gmail.com	Denmark	c5c41565-02cb-462f-83e5-150521ebde9c	3745843	3539803
chance1827@gmail.com	Denmark	8ec60513-990a-4ce2-a516-8972fdcf9919	2422328	1023087
only2081@protonmail.com	Denmark	68739ab8-38f9-45e5-9e67-fb0fc6139879	2398178	551497
officials1972@protonmail.com	Denmark	ea8636de-62ee-4739-8be2-2028afe303c9	4272824	3112009
restoration1945@yahoo.com	Denmark	ce85ec8a-a207-4929-ba56-2e8376b239ea	1658943	1555259
webpage2008@yahoo.com	Denmark	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	340697	1187144
chance1827@gmail.com	Denmark	5ed75d07-f129-4210-8934-b5282ab6bf39	2167710	4667107
cruise1800@yahoo.com	Denmark	c82545f7-d728-4444-aded-9648e5d8c22c	776841	3406278
vocal2080@protonmail.com	Denmark	b207278e-f452-43f3-8e6d-1d55a32497dc	2959666	354489
delight1975@live.com	Denmark	e6920268-aba1-48db-8739-415368d962ec	1971783	3110979
delight1975@live.com	Denmark	6feb9519-7623-422d-848c-0b9a5723da19	4502579	3518173
dont2100@protonmail.com	Denmark	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4390315	118661
vocal2080@protonmail.com	Denmark	7408db66-1b96-458c-b4f6-4234b2625afd	2332918	2129106
cruise1800@yahoo.com	Denmark	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	915496	3745767
navy1800@outlook.com	Denmark	0b57e8c3-3a12-44b9-8236-ace791387ba3	122328	1599158
despite1900@live.com	Denmark	33828361-6656-438a-aeb6-15a2e5ffcf27	4606106	4776031
delight1975@live.com	Denmark	ccde439b-b989-4cd2-aec9-f142c8d948d0	2672170	3405675
pda1876@outlook.com	Denmark	57309776-d0f5-43a2-b94e-38372ee07cc6	3448618	4232419
program2002@yandex.com	Denmark	436386c2-345f-4570-ba73-582b3437d53e	2358543	1696382
local1830@gmail.com	Denmark	dccda210-9223-4604-b148-a0a248fb714e	4176826	4767293
peoples2042@protonmail.com	Denmark	8acf71b1-5cd5-4010-8a5c-b1265d537e02	218153	598073
webpage2008@yahoo.com	Denmark	495303f4-a868-4fa4-acba-c08667d7bcc8	4293015	952544
sauce2013@yandex.com	Denmark	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1857024	1776909
navy1800@outlook.com	Denmark	c94fd88f-86c3-433a-9d81-b19695d48328	39881	2006611
throwing1896@protonmail.com	Denmark	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3632389	3612988
only2081@protonmail.com	Denmark	e88d9503-9bde-473f-9276-3651878e2863	783493	1789947
peoples2042@protonmail.com	Denmark	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1438834	2262275
florence2033@protonmail.com	Denmark	1ef2eabc-18f9-4869-973e-fa0d7a60446c	774254	2795291
fred1901@live.com	Denmark	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1834662	3274053
bookings1998@protonmail.com	Denmark	28778fb1-1671-4bad-8284-6a731564a45e	3069129	4954655
navy1800@outlook.com	Denmark	e5a762f6-3052-4384-a92b-b5401e965d25	439197	2216873
navy1800@outlook.com	Denmark	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1515731	2263307
required1923@outlook.com	Denmark	642d495a-e016-412f-a53b-dc046cc492a0	2050384	1724125
despite1900@live.com	Comoros	5de74332-bf74-402e-bac8-55b0a378954d	4005881	5798486
nbc2041@yahoo.com	Comoros	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6978857	6116777
facilitate2066@gmail.com	Comoros	5a00b0a4-db1a-4555-b66c-e47023575e85	4441840	2518594
facilitate2066@gmail.com	Comoros	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4968746	2141992
davidson2081@outlook.com	Comoros	000efc5f-1b50-44ef-92c9-7cd412ba4fca	6069577	2534105
webpage2008@yahoo.com	Comoros	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1728021	3859048
journey2091@outlook.com	Comoros	69798bb6-1716-47ee-90ff-0938314cce0c	4456064	6163757
navy1800@outlook.com	Comoros	9a270672-9e02-44bf-ba2e-2b6baf568829	175600	1154136
program2002@yandex.com	Comoros	69817e8b-5270-4081-b06b-5f94d1a99c72	2225888	5895346
boost1833@gmail.com	Comoros	62f3d028-08e0-4986-806a-254f0d812c5b	6810773	6742349
boost1833@gmail.com	Comoros	80a97543-fd97-40a3-b8dc-f58e50101abc	3320462	3791672
boost1833@gmail.com	Comoros	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3845603	2370979
chance1827@gmail.com	Comoros	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4876810	3892266
sauce2013@yandex.com	Comoros	9848ad52-bed1-4791-9352-c779584dcbe7	661358	1265864
journey2091@outlook.com	Comoros	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3537953	5689205
boost1833@gmail.com	Comoros	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	727491	3229196
despite1900@live.com	Comoros	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	500494	4891486
overall2026@outlook.com	Comoros	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1338995	24519
bookings1998@protonmail.com	Comoros	c5c41565-02cb-462f-83e5-150521ebde9c	5678389	4660039
duncan1820@gmail.com	Comoros	8ec60513-990a-4ce2-a516-8972fdcf9919	3452350	2480891
officials1972@protonmail.com	Comoros	68739ab8-38f9-45e5-9e67-fb0fc6139879	6427504	7268659
chance1827@gmail.com	Comoros	ea8636de-62ee-4739-8be2-2028afe303c9	1376911	4711623
florence2033@protonmail.com	Comoros	ce85ec8a-a207-4929-ba56-2e8376b239ea	1559122	1373113
facilitate2066@gmail.com	Comoros	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	544745	7103370
webpage2008@yahoo.com	Comoros	5ed75d07-f129-4210-8934-b5282ab6bf39	2587050	166797
only2081@protonmail.com	Comoros	c82545f7-d728-4444-aded-9648e5d8c22c	2821987	5727026
mature1894@yahoo.com	Comoros	b207278e-f452-43f3-8e6d-1d55a32497dc	2129811	2360607
pda1876@outlook.com	Comoros	e6920268-aba1-48db-8739-415368d962ec	2691134	3968713
duncan1820@gmail.com	Comoros	6feb9519-7623-422d-848c-0b9a5723da19	1838354	639746
nbc2041@yahoo.com	Comoros	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3573770	50597
delight1975@live.com	Comoros	7408db66-1b96-458c-b4f6-4234b2625afd	6974430	1845368
building2058@yandex.com	Comoros	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5523597	4323320
program2002@yandex.com	Comoros	0b57e8c3-3a12-44b9-8236-ace791387ba3	3670785	3788939
facilitate2066@gmail.com	Comoros	33828361-6656-438a-aeb6-15a2e5ffcf27	2903135	1790881
chance1827@gmail.com	Comoros	ccde439b-b989-4cd2-aec9-f142c8d948d0	5919629	7124454
chance1827@gmail.com	Comoros	57309776-d0f5-43a2-b94e-38372ee07cc6	2465845	531394
program2002@yandex.com	Comoros	436386c2-345f-4570-ba73-582b3437d53e	5896670	5479154
duncan1820@gmail.com	Comoros	dccda210-9223-4604-b148-a0a248fb714e	5169272	904111
local1830@gmail.com	Comoros	8acf71b1-5cd5-4010-8a5c-b1265d537e02	152410	4892923
duncan1820@gmail.com	Comoros	495303f4-a868-4fa4-acba-c08667d7bcc8	907243	1733520
nelson2015@protonmail.com	Comoros	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3519218	2563071
boost1833@gmail.com	Comoros	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	63886	2417942
journey2091@outlook.com	Comoros	e88d9503-9bde-473f-9276-3651878e2863	7171552	7197267
only2081@protonmail.com	Comoros	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2657578	4226773
despite1900@live.com	Comoros	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2912437	4196363
bookings1998@protonmail.com	Comoros	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3299024	6637686
boost1833@gmail.com	Comoros	28778fb1-1671-4bad-8284-6a731564a45e	1012559	7056656
only2081@protonmail.com	Comoros	e5a762f6-3052-4384-a92b-b5401e965d25	6229201	6239808
throwing1896@protonmail.com	Comoros	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1329701	5708630
duncan1820@gmail.com	Comoros	642d495a-e016-412f-a53b-dc046cc492a0	5475473	4940435
nbc2041@yahoo.com	Macau SAR China	5de74332-bf74-402e-bac8-55b0a378954d	2849258	1523164
nelson2015@protonmail.com	Macau SAR China	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	9910050	4028107
mature1894@yahoo.com	Macau SAR China	5a00b0a4-db1a-4555-b66c-e47023575e85	2148583	1393928
chance1827@gmail.com	Macau SAR China	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	9567727	2778486
bookings1998@protonmail.com	Macau SAR China	000efc5f-1b50-44ef-92c9-7cd412ba4fca	8395021	8609567
restoration1945@yahoo.com	Macau SAR China	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6722346	9399517
journey2091@outlook.com	Macau SAR China	69798bb6-1716-47ee-90ff-0938314cce0c	1732635	3876900
program2002@yandex.com	Macau SAR China	9a270672-9e02-44bf-ba2e-2b6baf568829	6410510	2992758
mature1894@yahoo.com	Macau SAR China	69817e8b-5270-4081-b06b-5f94d1a99c72	4147042	477919
restoration1945@yahoo.com	Macau SAR China	62f3d028-08e0-4986-806a-254f0d812c5b	7837865	380444
restoration1945@yahoo.com	Macau SAR China	80a97543-fd97-40a3-b8dc-f58e50101abc	7465605	9577144
facilitate2066@gmail.com	Macau SAR China	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4231666	9060852
duncan1820@gmail.com	Macau SAR China	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2880980	3209540
absence1941@live.com	Macau SAR China	9848ad52-bed1-4791-9352-c779584dcbe7	4789318	6123366
throwing1896@protonmail.com	Macau SAR China	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	8522069	3235876
journey2091@outlook.com	Macau SAR China	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3614778	5397484
delight1975@live.com	Macau SAR China	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4655377	3065959
hormone1827@gmail.com	Macau SAR China	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1874960	28769
despite1900@live.com	Macau SAR China	c5c41565-02cb-462f-83e5-150521ebde9c	4601547	236164
boost1833@gmail.com	Macau SAR China	8ec60513-990a-4ce2-a516-8972fdcf9919	9728293	4941178
bind1902@yahoo.com	Macau SAR China	68739ab8-38f9-45e5-9e67-fb0fc6139879	9743332	1987971
duncan1820@gmail.com	Macau SAR China	ea8636de-62ee-4739-8be2-2028afe303c9	7750217	6534265
vocal2080@protonmail.com	Macau SAR China	ce85ec8a-a207-4929-ba56-2e8376b239ea	722310	4781210
bookings1998@protonmail.com	Macau SAR China	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	9287265	5192060
only2081@protonmail.com	Macau SAR China	5ed75d07-f129-4210-8934-b5282ab6bf39	4082214	5949017
despite1900@live.com	Macau SAR China	c82545f7-d728-4444-aded-9648e5d8c22c	7576151	4798204
hospital2060@yahoo.com	Macau SAR China	b207278e-f452-43f3-8e6d-1d55a32497dc	8871468	7171957
mature1894@yahoo.com	Macau SAR China	e6920268-aba1-48db-8739-415368d962ec	7638355	3413012
bookings1998@protonmail.com	Macau SAR China	6feb9519-7623-422d-848c-0b9a5723da19	2427470	3576934
required1923@outlook.com	Macau SAR China	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	8918432	2287754
required1923@outlook.com	Macau SAR China	7408db66-1b96-458c-b4f6-4234b2625afd	9629906	4239542
bind1902@yahoo.com	Macau SAR China	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	9516851	9252952
required1923@outlook.com	Macau SAR China	0b57e8c3-3a12-44b9-8236-ace791387ba3	384912	2867209
restoration1945@yahoo.com	Macau SAR China	33828361-6656-438a-aeb6-15a2e5ffcf27	6950218	3503966
hormone1827@gmail.com	Macau SAR China	ccde439b-b989-4cd2-aec9-f142c8d948d0	2977089	8895112
dont2100@protonmail.com	Macau SAR China	57309776-d0f5-43a2-b94e-38372ee07cc6	4953619	5756534
navy1800@outlook.com	Macau SAR China	436386c2-345f-4570-ba73-582b3437d53e	799453	7007507
bookings1998@protonmail.com	Macau SAR China	dccda210-9223-4604-b148-a0a248fb714e	6807037	2108850
boost1833@gmail.com	Macau SAR China	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2377929	1238871
duncan1820@gmail.com	Macau SAR China	495303f4-a868-4fa4-acba-c08667d7bcc8	8186838	6640323
restoration1945@yahoo.com	Macau SAR China	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5715679	8731813
restoration1945@yahoo.com	Macau SAR China	c94fd88f-86c3-433a-9d81-b19695d48328	5280909	5974106
absence1941@live.com	Macau SAR China	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6608364	8673837
program2002@yandex.com	Macau SAR China	e88d9503-9bde-473f-9276-3651878e2863	9619212	9509192
boost1833@gmail.com	Macau SAR China	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4461849	2259590
dont2100@protonmail.com	Macau SAR China	1ef2eabc-18f9-4869-973e-fa0d7a60446c	7013868	8607347
throwing1896@protonmail.com	Macau SAR China	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	7995921	1091024
nelson2015@protonmail.com	Macau SAR China	28778fb1-1671-4bad-8284-6a731564a45e	8988445	8344901
fred1901@live.com	Macau SAR China	e5a762f6-3052-4384-a92b-b5401e965d25	4762590	2172629
program2002@yandex.com	Macau SAR China	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6396890	1671204
officials1972@protonmail.com	Macau SAR China	642d495a-e016-412f-a53b-dc046cc492a0	4547665	9926780
mature1894@yahoo.com	Paraguay	5de74332-bf74-402e-bac8-55b0a378954d	944958	1607496
dont2100@protonmail.com	Paraguay	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2892830	3473433
webpage2008@yahoo.com	Paraguay	5a00b0a4-db1a-4555-b66c-e47023575e85	1081347	676721
journey2091@outlook.com	Paraguay	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	937815	7287
bind1902@yahoo.com	Paraguay	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2681728	2846959
throwing1896@protonmail.com	Paraguay	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1439748	3350175
hormone1827@gmail.com	Paraguay	69798bb6-1716-47ee-90ff-0938314cce0c	1030276	1844009
absence1941@live.com	Paraguay	9a270672-9e02-44bf-ba2e-2b6baf568829	1339208	2136002
lifetime1925@gmail.com	Paraguay	69817e8b-5270-4081-b06b-5f94d1a99c72	2814325	105505
sauce2013@yandex.com	Paraguay	62f3d028-08e0-4986-806a-254f0d812c5b	747271	1327287
dont2100@protonmail.com	Paraguay	80a97543-fd97-40a3-b8dc-f58e50101abc	497749	1220779
fred1901@live.com	Paraguay	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2444773	69327
despite1900@live.com	Paraguay	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	462230	2853324
overall2026@outlook.com	Paraguay	9848ad52-bed1-4791-9352-c779584dcbe7	3533976	1041705
navy1800@outlook.com	Paraguay	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2210244	3370679
journey2091@outlook.com	Paraguay	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	561614	2392684
bookings1998@protonmail.com	Paraguay	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3036160	58744
nbc2041@yahoo.com	Paraguay	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3664334	1490983
local1830@gmail.com	Paraguay	c5c41565-02cb-462f-83e5-150521ebde9c	2966848	2970142
sauce2013@yandex.com	Paraguay	8ec60513-990a-4ce2-a516-8972fdcf9919	1543255	578620
dont2100@protonmail.com	Paraguay	68739ab8-38f9-45e5-9e67-fb0fc6139879	3446263	572484
peoples2042@protonmail.com	Paraguay	ea8636de-62ee-4739-8be2-2028afe303c9	2951573	3229570
overall2026@outlook.com	Paraguay	ce85ec8a-a207-4929-ba56-2e8376b239ea	1719271	2855088
pda1876@outlook.com	Paraguay	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3140222	226041
local1830@gmail.com	Paraguay	5ed75d07-f129-4210-8934-b5282ab6bf39	1603379	3515826
facilitate2066@gmail.com	Paraguay	c82545f7-d728-4444-aded-9648e5d8c22c	2574648	1267525
sauce2013@yandex.com	Paraguay	b207278e-f452-43f3-8e6d-1d55a32497dc	1446632	512817
fred1901@live.com	Paraguay	e6920268-aba1-48db-8739-415368d962ec	931637	446690
local1830@gmail.com	Paraguay	6feb9519-7623-422d-848c-0b9a5723da19	3471251	2644960
nelson2015@protonmail.com	Paraguay	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3063621	529031
peoples2042@protonmail.com	Paraguay	7408db66-1b96-458c-b4f6-4234b2625afd	635190	3509687
dont2100@protonmail.com	Paraguay	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2043615	3132813
navy1800@outlook.com	Paraguay	0b57e8c3-3a12-44b9-8236-ace791387ba3	2761845	2260117
bind1902@yahoo.com	Paraguay	33828361-6656-438a-aeb6-15a2e5ffcf27	2469510	283699
florence2033@protonmail.com	Paraguay	ccde439b-b989-4cd2-aec9-f142c8d948d0	1880653	658646
nelson2015@protonmail.com	Paraguay	57309776-d0f5-43a2-b94e-38372ee07cc6	2986309	787332
lifetime1925@gmail.com	Paraguay	436386c2-345f-4570-ba73-582b3437d53e	1676954	1849808
despite1900@live.com	Paraguay	dccda210-9223-4604-b148-a0a248fb714e	1283422	2243931
facilitate2066@gmail.com	Paraguay	8acf71b1-5cd5-4010-8a5c-b1265d537e02	292167	791933
vocal2080@protonmail.com	Paraguay	495303f4-a868-4fa4-acba-c08667d7bcc8	995531	1732258
florence2033@protonmail.com	Paraguay	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3799251	2213510
dont2100@protonmail.com	Paraguay	c94fd88f-86c3-433a-9d81-b19695d48328	937078	2652747
pda1876@outlook.com	Paraguay	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1339141	2336222
absence1941@live.com	Paraguay	e88d9503-9bde-473f-9276-3651878e2863	3327190	1649031
required1923@outlook.com	Paraguay	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3643175	413381
webpage2008@yahoo.com	Paraguay	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2208421	3290488
bookings1998@protonmail.com	Paraguay	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2133384	863035
navy1800@outlook.com	Paraguay	28778fb1-1671-4bad-8284-6a731564a45e	106711	666508
required1923@outlook.com	Paraguay	e5a762f6-3052-4384-a92b-b5401e965d25	1848292	2022061
officials1972@protonmail.com	Paraguay	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	759462	3295361
absence1941@live.com	Paraguay	642d495a-e016-412f-a53b-dc046cc492a0	3591305	2065436
davidson2081@outlook.com	United Arab Emirates	5de74332-bf74-402e-bac8-55b0a378954d	1347399	2404799
navy1800@outlook.com	United Arab Emirates	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3400262	1306347
program2002@yandex.com	United Arab Emirates	5a00b0a4-db1a-4555-b66c-e47023575e85	1144760	1911296
chance1827@gmail.com	United Arab Emirates	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3632034	284410
hormone1827@gmail.com	United Arab Emirates	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1212041	413145
pda1876@outlook.com	United Arab Emirates	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2067876	531619
sauce2013@yandex.com	United Arab Emirates	69798bb6-1716-47ee-90ff-0938314cce0c	2535441	1175450
absence1941@live.com	United Arab Emirates	9a270672-9e02-44bf-ba2e-2b6baf568829	3443245	2418917
nbc2041@yahoo.com	United Arab Emirates	69817e8b-5270-4081-b06b-5f94d1a99c72	3611907	3106440
local1830@gmail.com	United Arab Emirates	62f3d028-08e0-4986-806a-254f0d812c5b	1843617	3141645
throwing1896@protonmail.com	United Arab Emirates	80a97543-fd97-40a3-b8dc-f58e50101abc	1478439	1343867
davidson2081@outlook.com	United Arab Emirates	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2599683	3254889
hospital2060@yahoo.com	United Arab Emirates	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2883724	2883408
peoples2042@protonmail.com	United Arab Emirates	9848ad52-bed1-4791-9352-c779584dcbe7	299574	3239737
journey2091@outlook.com	United Arab Emirates	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1472811	454983
journey2091@outlook.com	United Arab Emirates	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2332943	106626
mature1894@yahoo.com	United Arab Emirates	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3157849	1845328
overall2026@outlook.com	United Arab Emirates	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	447132	372570
absence1941@live.com	United Arab Emirates	c5c41565-02cb-462f-83e5-150521ebde9c	1882071	3485591
vocal2080@protonmail.com	United Arab Emirates	8ec60513-990a-4ce2-a516-8972fdcf9919	536250	1138194
boost1833@gmail.com	United Arab Emirates	68739ab8-38f9-45e5-9e67-fb0fc6139879	3042207	2452289
building2058@yandex.com	United Arab Emirates	ea8636de-62ee-4739-8be2-2028afe303c9	425121	1244558
program2002@yandex.com	United Arab Emirates	ce85ec8a-a207-4929-ba56-2e8376b239ea	33204	618783
peoples2042@protonmail.com	United Arab Emirates	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	372720	131651
webpage2008@yahoo.com	United Arab Emirates	5ed75d07-f129-4210-8934-b5282ab6bf39	2026931	2429620
restoration1945@yahoo.com	United Arab Emirates	c82545f7-d728-4444-aded-9648e5d8c22c	1274298	267101
dont2100@protonmail.com	United Arab Emirates	b207278e-f452-43f3-8e6d-1d55a32497dc	1133123	2933023
mature1894@yahoo.com	United Arab Emirates	e6920268-aba1-48db-8739-415368d962ec	1292713	2477939
building2058@yandex.com	United Arab Emirates	6feb9519-7623-422d-848c-0b9a5723da19	744366	2198410
bind1902@yahoo.com	United Arab Emirates	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2197627	949824
hospital2060@yahoo.com	United Arab Emirates	7408db66-1b96-458c-b4f6-4234b2625afd	3267070	1059563
vocal2080@protonmail.com	United Arab Emirates	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2399622	1880301
absence1941@live.com	United Arab Emirates	0b57e8c3-3a12-44b9-8236-ace791387ba3	879766	1760885
fred1901@live.com	United Arab Emirates	33828361-6656-438a-aeb6-15a2e5ffcf27	2100160	876549
florence2033@protonmail.com	United Arab Emirates	ccde439b-b989-4cd2-aec9-f142c8d948d0	2468558	1281939
fred1901@live.com	United Arab Emirates	57309776-d0f5-43a2-b94e-38372ee07cc6	1143559	3260599
overall2026@outlook.com	United Arab Emirates	436386c2-345f-4570-ba73-582b3437d53e	1723318	779743
navy1800@outlook.com	United Arab Emirates	dccda210-9223-4604-b148-a0a248fb714e	914759	3388380
local1830@gmail.com	United Arab Emirates	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1957698	3533600
sauce2013@yandex.com	United Arab Emirates	495303f4-a868-4fa4-acba-c08667d7bcc8	429958	3191209
despite1900@live.com	United Arab Emirates	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2561033	3081127
dont2100@protonmail.com	United Arab Emirates	c94fd88f-86c3-433a-9d81-b19695d48328	1076010	2710417
nelson2015@protonmail.com	United Arab Emirates	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2457819	1776984
webpage2008@yahoo.com	United Arab Emirates	e88d9503-9bde-473f-9276-3651878e2863	738135	2330139
building2058@yandex.com	United Arab Emirates	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3250011	3202877
only2081@protonmail.com	United Arab Emirates	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2474174	1706878
delight1975@live.com	United Arab Emirates	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2984296	500400
delight1975@live.com	United Arab Emirates	28778fb1-1671-4bad-8284-6a731564a45e	78698	3354502
only2081@protonmail.com	United Arab Emirates	e5a762f6-3052-4384-a92b-b5401e965d25	3531089	1103563
fred1901@live.com	United Arab Emirates	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3544094	2691422
only2081@protonmail.com	United Arab Emirates	642d495a-e016-412f-a53b-dc046cc492a0	2498041	1938430
despite1900@live.com	Guinea	5de74332-bf74-402e-bac8-55b0a378954d	2745990	1541392
facilitate2066@gmail.com	Guinea	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2682907	3531492
only2081@protonmail.com	Guinea	5a00b0a4-db1a-4555-b66c-e47023575e85	704333	3181265
only2081@protonmail.com	Guinea	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	565415	140472
cruise1800@yahoo.com	Guinea	000efc5f-1b50-44ef-92c9-7cd412ba4fca	417987	137434
nelson2015@protonmail.com	Guinea	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2757677	2814274
delight1975@live.com	Guinea	69798bb6-1716-47ee-90ff-0938314cce0c	3401483	3741847
duncan1820@gmail.com	Guinea	9a270672-9e02-44bf-ba2e-2b6baf568829	1839491	835968
overall2026@outlook.com	Guinea	69817e8b-5270-4081-b06b-5f94d1a99c72	3437341	669335
cruise1800@yahoo.com	Guinea	62f3d028-08e0-4986-806a-254f0d812c5b	1169713	3317023
delight1975@live.com	Guinea	80a97543-fd97-40a3-b8dc-f58e50101abc	2258364	2407150
nbc2041@yahoo.com	Guinea	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3815950	1035214
davidson2081@outlook.com	Guinea	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	577145	719462
facilitate2066@gmail.com	Guinea	9848ad52-bed1-4791-9352-c779584dcbe7	1703518	456634
navy1800@outlook.com	Guinea	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3098469	2586474
building2058@yandex.com	Guinea	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3762319	2541199
required1923@outlook.com	Guinea	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1833762	3453607
cruise1800@yahoo.com	Guinea	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1029420	520641
cruise1800@yahoo.com	Guinea	c5c41565-02cb-462f-83e5-150521ebde9c	2124533	2908766
nelson2015@protonmail.com	Guinea	8ec60513-990a-4ce2-a516-8972fdcf9919	3411706	2472582
required1923@outlook.com	Guinea	68739ab8-38f9-45e5-9e67-fb0fc6139879	105921	3277172
officials1972@protonmail.com	Guinea	ea8636de-62ee-4739-8be2-2028afe303c9	1303529	3246052
hormone1827@gmail.com	Guinea	ce85ec8a-a207-4929-ba56-2e8376b239ea	3766528	3367018
officials1972@protonmail.com	Guinea	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1105281	1226693
chance1827@gmail.com	Guinea	5ed75d07-f129-4210-8934-b5282ab6bf39	3037566	994953
delight1975@live.com	Guinea	c82545f7-d728-4444-aded-9648e5d8c22c	1114376	2838654
despite1900@live.com	Guinea	b207278e-f452-43f3-8e6d-1d55a32497dc	3134726	3420503
vocal2080@protonmail.com	Guinea	e6920268-aba1-48db-8739-415368d962ec	2506446	1129237
throwing1896@protonmail.com	Guinea	6feb9519-7623-422d-848c-0b9a5723da19	2146696	3854745
facilitate2066@gmail.com	Guinea	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3179917	1129511
only2081@protonmail.com	Guinea	7408db66-1b96-458c-b4f6-4234b2625afd	2718426	1792976
building2058@yandex.com	Guinea	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3468964	331031
officials1972@protonmail.com	Guinea	0b57e8c3-3a12-44b9-8236-ace791387ba3	3359644	619878
sauce2013@yandex.com	Guinea	33828361-6656-438a-aeb6-15a2e5ffcf27	1333493	2788877
davidson2081@outlook.com	Guinea	ccde439b-b989-4cd2-aec9-f142c8d948d0	2722798	2063732
sauce2013@yandex.com	Guinea	57309776-d0f5-43a2-b94e-38372ee07cc6	590491	618970
building2058@yandex.com	Guinea	436386c2-345f-4570-ba73-582b3437d53e	260125	3274929
navy1800@outlook.com	Guinea	dccda210-9223-4604-b148-a0a248fb714e	2088764	3009572
dont2100@protonmail.com	Guinea	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3573242	584397
chance1827@gmail.com	Guinea	495303f4-a868-4fa4-acba-c08667d7bcc8	680427	2508234
florence2033@protonmail.com	Guinea	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1176125	2965763
mature1894@yahoo.com	Guinea	c94fd88f-86c3-433a-9d81-b19695d48328	1366572	279706
boost1833@gmail.com	Guinea	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2020483	2568369
hormone1827@gmail.com	Guinea	e88d9503-9bde-473f-9276-3651878e2863	652687	1388302
hospital2060@yahoo.com	Guinea	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	281527	3542425
lifetime1925@gmail.com	Guinea	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1536948	1733161
restoration1945@yahoo.com	Guinea	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1014167	186382
boost1833@gmail.com	Guinea	28778fb1-1671-4bad-8284-6a731564a45e	3868063	192257
pda1876@outlook.com	Guinea	e5a762f6-3052-4384-a92b-b5401e965d25	752232	2802264
program2002@yandex.com	Guinea	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1787368	3845625
officials1972@protonmail.com	Guinea	642d495a-e016-412f-a53b-dc046cc492a0	3460813	441793
mature1894@yahoo.com	Gibraltar	5de74332-bf74-402e-bac8-55b0a378954d	3792372	694170
absence1941@live.com	Gibraltar	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5613581	3657273
cruise1800@yahoo.com	Gibraltar	5a00b0a4-db1a-4555-b66c-e47023575e85	4957020	739099
restoration1945@yahoo.com	Gibraltar	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	488600	479073
webpage2008@yahoo.com	Gibraltar	000efc5f-1b50-44ef-92c9-7cd412ba4fca	6000882	509370
lifetime1925@gmail.com	Gibraltar	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5657306	2244032
hospital2060@yahoo.com	Gibraltar	69798bb6-1716-47ee-90ff-0938314cce0c	5147474	1621365
peoples2042@protonmail.com	Gibraltar	9a270672-9e02-44bf-ba2e-2b6baf568829	1081966	1150228
restoration1945@yahoo.com	Gibraltar	69817e8b-5270-4081-b06b-5f94d1a99c72	5621924	213181
mature1894@yahoo.com	Gibraltar	62f3d028-08e0-4986-806a-254f0d812c5b	2654531	5568492
vocal2080@protonmail.com	Gibraltar	80a97543-fd97-40a3-b8dc-f58e50101abc	653686	3894493
nelson2015@protonmail.com	Gibraltar	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2911732	4911133
despite1900@live.com	Gibraltar	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2327770	3982501
despite1900@live.com	Gibraltar	9848ad52-bed1-4791-9352-c779584dcbe7	4831198	3363650
navy1800@outlook.com	Gibraltar	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5945431	5834753
officials1972@protonmail.com	Gibraltar	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	490736	4337831
local1830@gmail.com	Gibraltar	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3784792	2645581
lifetime1925@gmail.com	Gibraltar	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	412149	1105421
pda1876@outlook.com	Gibraltar	c5c41565-02cb-462f-83e5-150521ebde9c	2668996	639439
duncan1820@gmail.com	Gibraltar	8ec60513-990a-4ce2-a516-8972fdcf9919	2748786	5164032
peoples2042@protonmail.com	Gibraltar	68739ab8-38f9-45e5-9e67-fb0fc6139879	4249899	1165377
hospital2060@yahoo.com	Gibraltar	ea8636de-62ee-4739-8be2-2028afe303c9	474553	2383441
program2002@yandex.com	Gibraltar	ce85ec8a-a207-4929-ba56-2e8376b239ea	6080850	4581819
hormone1827@gmail.com	Gibraltar	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2440981	541709
pda1876@outlook.com	Gibraltar	5ed75d07-f129-4210-8934-b5282ab6bf39	4391653	2458648
sauce2013@yandex.com	Gibraltar	c82545f7-d728-4444-aded-9648e5d8c22c	5728210	5724989
bind1902@yahoo.com	Gibraltar	e6920268-aba1-48db-8739-415368d962ec	1802374	3596789
only2081@protonmail.com	Gibraltar	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5905951	159415
duncan1820@gmail.com	Gibraltar	7408db66-1b96-458c-b4f6-4234b2625afd	5766765	5433013
nbc2041@yahoo.com	Gibraltar	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3296553	403168
bookings1998@protonmail.com	Gibraltar	0b57e8c3-3a12-44b9-8236-ace791387ba3	1813931	768358
program2002@yandex.com	Gibraltar	33828361-6656-438a-aeb6-15a2e5ffcf27	1051374	1407272
dont2100@protonmail.com	Gibraltar	ccde439b-b989-4cd2-aec9-f142c8d948d0	1385092	5178907
duncan1820@gmail.com	Gibraltar	57309776-d0f5-43a2-b94e-38372ee07cc6	3949949	264957
peoples2042@protonmail.com	Gibraltar	dccda210-9223-4604-b148-a0a248fb714e	2896725	2196245
bookings1998@protonmail.com	Gibraltar	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1041960	2435732
chance1827@gmail.com	Gibraltar	495303f4-a868-4fa4-acba-c08667d7bcc8	2707068	3300445
fred1901@live.com	Gibraltar	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	807597	4649817
local1830@gmail.com	Gibraltar	c94fd88f-86c3-433a-9d81-b19695d48328	1076458	4684971
required1923@outlook.com	Gibraltar	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4186425	2045277
nbc2041@yahoo.com	Gibraltar	e88d9503-9bde-473f-9276-3651878e2863	3116468	5848926
bind1902@yahoo.com	Gibraltar	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2023939	2613967
peoples2042@protonmail.com	Gibraltar	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1849045	3895220
dont2100@protonmail.com	Gibraltar	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3841117	2432170
cruise1800@yahoo.com	Gibraltar	28778fb1-1671-4bad-8284-6a731564a45e	4711188	1073758
fred1901@live.com	Gibraltar	e5a762f6-3052-4384-a92b-b5401e965d25	3500705	575750
facilitate2066@gmail.com	Gibraltar	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3308217	5172036
building2058@yandex.com	Gibraltar	642d495a-e016-412f-a53b-dc046cc492a0	1359517	1141404
dont2100@protonmail.com	Guam	5de74332-bf74-402e-bac8-55b0a378954d	91025	822070
navy1800@outlook.com	Guam	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	974842	1304434
hormone1827@gmail.com	Guam	5a00b0a4-db1a-4555-b66c-e47023575e85	1016711	1331412
hormone1827@gmail.com	Guam	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	157611	883852
local1830@gmail.com	Guam	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1026031	126884
bookings1998@protonmail.com	Guam	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	581928	767981
mature1894@yahoo.com	Guam	69798bb6-1716-47ee-90ff-0938314cce0c	375365	1017531
program2002@yandex.com	Guam	9a270672-9e02-44bf-ba2e-2b6baf568829	800772	1019980
dont2100@protonmail.com	Guam	69817e8b-5270-4081-b06b-5f94d1a99c72	303820	829491
overall2026@outlook.com	Guam	62f3d028-08e0-4986-806a-254f0d812c5b	30179	966477
florence2033@protonmail.com	Guam	80a97543-fd97-40a3-b8dc-f58e50101abc	954603	1040889
despite1900@live.com	Guam	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1074574	466583
throwing1896@protonmail.com	Guam	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	824793	265250
absence1941@live.com	Guam	9848ad52-bed1-4791-9352-c779584dcbe7	52630	529192
bookings1998@protonmail.com	Guam	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	921400	695618
sauce2013@yandex.com	Guam	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1066245	1285049
hospital2060@yahoo.com	Guam	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	715420	1018831
absence1941@live.com	Guam	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	622825	972263
nbc2041@yahoo.com	Guam	c5c41565-02cb-462f-83e5-150521ebde9c	647006	274231
nelson2015@protonmail.com	Guam	8ec60513-990a-4ce2-a516-8972fdcf9919	1155945	279485
throwing1896@protonmail.com	Guam	68739ab8-38f9-45e5-9e67-fb0fc6139879	1104999	1099172
absence1941@live.com	Guam	ea8636de-62ee-4739-8be2-2028afe303c9	272239	1193236
cruise1800@yahoo.com	Guam	ce85ec8a-a207-4929-ba56-2e8376b239ea	745884	1323129
restoration1945@yahoo.com	Guam	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	449387	1209257
delight1975@live.com	Guam	5ed75d07-f129-4210-8934-b5282ab6bf39	396375	1189055
cruise1800@yahoo.com	Guam	c82545f7-d728-4444-aded-9648e5d8c22c	407221	46892
dont2100@protonmail.com	Guam	b207278e-f452-43f3-8e6d-1d55a32497dc	15745	828614
cruise1800@yahoo.com	Guam	e6920268-aba1-48db-8739-415368d962ec	696351	363408
nbc2041@yahoo.com	Guam	6feb9519-7623-422d-848c-0b9a5723da19	325878	537690
webpage2008@yahoo.com	Guam	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	948850	934234
webpage2008@yahoo.com	Guam	7408db66-1b96-458c-b4f6-4234b2625afd	1186452	217423
webpage2008@yahoo.com	Guam	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1335217	645630
lifetime1925@gmail.com	Guam	0b57e8c3-3a12-44b9-8236-ace791387ba3	996265	114169
chance1827@gmail.com	Guam	33828361-6656-438a-aeb6-15a2e5ffcf27	1130055	1122559
absence1941@live.com	Guam	ccde439b-b989-4cd2-aec9-f142c8d948d0	284231	681081
sauce2013@yandex.com	Guam	57309776-d0f5-43a2-b94e-38372ee07cc6	428417	968334
duncan1820@gmail.com	Guam	436386c2-345f-4570-ba73-582b3437d53e	138868	1106686
webpage2008@yahoo.com	Guam	dccda210-9223-4604-b148-a0a248fb714e	1304253	585306
journey2091@outlook.com	Guam	8acf71b1-5cd5-4010-8a5c-b1265d537e02	485037	885603
dont2100@protonmail.com	Guam	495303f4-a868-4fa4-acba-c08667d7bcc8	1278445	801333
navy1800@outlook.com	Guam	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	990435	1113447
dont2100@protonmail.com	Guam	c94fd88f-86c3-433a-9d81-b19695d48328	231203	469773
program2002@yandex.com	Guam	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	858843	1063208
bookings1998@protonmail.com	Guam	e88d9503-9bde-473f-9276-3651878e2863	601023	1028624
peoples2042@protonmail.com	Guam	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	868690	1200667
hospital2060@yahoo.com	Guam	1ef2eabc-18f9-4869-973e-fa0d7a60446c	725608	480062
boost1833@gmail.com	Guam	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	888298	220019
peoples2042@protonmail.com	Guam	28778fb1-1671-4bad-8284-6a731564a45e	500233	369631
florence2033@protonmail.com	Guam	e5a762f6-3052-4384-a92b-b5401e965d25	709846	870749
cruise1800@yahoo.com	Guam	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	324645	904149
facilitate2066@gmail.com	Guam	642d495a-e016-412f-a53b-dc046cc492a0	1158662	697820
only2081@protonmail.com	Wallis & Futuna	5de74332-bf74-402e-bac8-55b0a378954d	7328949	6862165
delight1975@live.com	Wallis & Futuna	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2279771	3587082
local1830@gmail.com	Wallis & Futuna	5a00b0a4-db1a-4555-b66c-e47023575e85	1741871	59277
only2081@protonmail.com	Wallis & Futuna	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4151095	979450
florence2033@protonmail.com	Wallis & Futuna	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3485727	2598947
lifetime1925@gmail.com	Wallis & Futuna	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1587187	5146080
program2002@yandex.com	Wallis & Futuna	69798bb6-1716-47ee-90ff-0938314cce0c	1410562	3262179
journey2091@outlook.com	Wallis & Futuna	9a270672-9e02-44bf-ba2e-2b6baf568829	2059821	7238785
building2058@yandex.com	Wallis & Futuna	69817e8b-5270-4081-b06b-5f94d1a99c72	2283699	1434654
only2081@protonmail.com	Wallis & Futuna	62f3d028-08e0-4986-806a-254f0d812c5b	2878425	6469509
only2081@protonmail.com	Wallis & Futuna	80a97543-fd97-40a3-b8dc-f58e50101abc	5114783	4345670
florence2033@protonmail.com	Wallis & Futuna	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1400245	4555601
local1830@gmail.com	Wallis & Futuna	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4492517	2795856
boost1833@gmail.com	Wallis & Futuna	9848ad52-bed1-4791-9352-c779584dcbe7	7028105	880280
despite1900@live.com	Wallis & Futuna	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6772228	7196780
duncan1820@gmail.com	Wallis & Futuna	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6081652	7063991
throwing1896@protonmail.com	Wallis & Futuna	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3898738	731064
bind1902@yahoo.com	Wallis & Futuna	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4740649	3965046
mature1894@yahoo.com	Wallis & Futuna	c5c41565-02cb-462f-83e5-150521ebde9c	6846448	4412285
hospital2060@yahoo.com	Wallis & Futuna	8ec60513-990a-4ce2-a516-8972fdcf9919	3138543	1554940
hormone1827@gmail.com	Wallis & Futuna	68739ab8-38f9-45e5-9e67-fb0fc6139879	3588753	1625522
overall2026@outlook.com	Wallis & Futuna	ea8636de-62ee-4739-8be2-2028afe303c9	1934783	7064663
program2002@yandex.com	Wallis & Futuna	ce85ec8a-a207-4929-ba56-2e8376b239ea	2632660	3389630
bind1902@yahoo.com	Wallis & Futuna	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6231098	4492627
building2058@yandex.com	Wallis & Futuna	5ed75d07-f129-4210-8934-b5282ab6bf39	2900406	349068
facilitate2066@gmail.com	Wallis & Futuna	c82545f7-d728-4444-aded-9648e5d8c22c	104105	1999798
florence2033@protonmail.com	Wallis & Futuna	b207278e-f452-43f3-8e6d-1d55a32497dc	3672611	2014474
facilitate2066@gmail.com	Wallis & Futuna	e6920268-aba1-48db-8739-415368d962ec	2042780	4152981
delight1975@live.com	Wallis & Futuna	6feb9519-7623-422d-848c-0b9a5723da19	6302238	1062974
boost1833@gmail.com	Wallis & Futuna	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5479804	4991782
program2002@yandex.com	Wallis & Futuna	7408db66-1b96-458c-b4f6-4234b2625afd	1703657	3333655
absence1941@live.com	Wallis & Futuna	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1205976	1254762
chance1827@gmail.com	Wallis & Futuna	0b57e8c3-3a12-44b9-8236-ace791387ba3	2580829	4752776
fred1901@live.com	Wallis & Futuna	33828361-6656-438a-aeb6-15a2e5ffcf27	1760304	2504642
journey2091@outlook.com	Wallis & Futuna	ccde439b-b989-4cd2-aec9-f142c8d948d0	7062596	2470464
vocal2080@protonmail.com	Wallis & Futuna	57309776-d0f5-43a2-b94e-38372ee07cc6	3151664	3512172
davidson2081@outlook.com	Wallis & Futuna	436386c2-345f-4570-ba73-582b3437d53e	4265465	3429897
journey2091@outlook.com	Wallis & Futuna	dccda210-9223-4604-b148-a0a248fb714e	5391568	453615
program2002@yandex.com	Wallis & Futuna	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1714610	631422
duncan1820@gmail.com	Wallis & Futuna	495303f4-a868-4fa4-acba-c08667d7bcc8	2291359	5886931
throwing1896@protonmail.com	Wallis & Futuna	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6755147	1036586
bind1902@yahoo.com	Wallis & Futuna	c94fd88f-86c3-433a-9d81-b19695d48328	3851120	6516030
delight1975@live.com	Wallis & Futuna	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4631616	4744958
local1830@gmail.com	Wallis & Futuna	e88d9503-9bde-473f-9276-3651878e2863	1395289	5761233
overall2026@outlook.com	Wallis & Futuna	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1720183	7202951
cruise1800@yahoo.com	Wallis & Futuna	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5348505	616486
hospital2060@yahoo.com	Wallis & Futuna	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5875117	1591307
delight1975@live.com	Wallis & Futuna	28778fb1-1671-4bad-8284-6a731564a45e	6085380	1329601
delight1975@live.com	Wallis & Futuna	e5a762f6-3052-4384-a92b-b5401e965d25	609884	3937623
hospital2060@yahoo.com	Wallis & Futuna	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2941702	6527479
nelson2015@protonmail.com	Wallis & Futuna	642d495a-e016-412f-a53b-dc046cc492a0	7263418	2891506
throwing1896@protonmail.com	Moldova	5de74332-bf74-402e-bac8-55b0a378954d	402303	796785
throwing1896@protonmail.com	Moldova	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1539181	923031
pda1876@outlook.com	Moldova	5a00b0a4-db1a-4555-b66c-e47023575e85	737923	409219
journey2091@outlook.com	Moldova	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	599870	1154478
restoration1945@yahoo.com	Moldova	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1607208	1209634
lifetime1925@gmail.com	Moldova	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	376742	1485059
restoration1945@yahoo.com	Moldova	69798bb6-1716-47ee-90ff-0938314cce0c	435363	1331958
nelson2015@protonmail.com	Moldova	9a270672-9e02-44bf-ba2e-2b6baf568829	193046	3095
cruise1800@yahoo.com	Moldova	69817e8b-5270-4081-b06b-5f94d1a99c72	1218324	921113
nelson2015@protonmail.com	Moldova	62f3d028-08e0-4986-806a-254f0d812c5b	283489	1533584
dont2100@protonmail.com	Moldova	80a97543-fd97-40a3-b8dc-f58e50101abc	829651	628700
absence1941@live.com	Moldova	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	250131	297109
journey2091@outlook.com	Moldova	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	670356	1226079
nbc2041@yahoo.com	Moldova	9848ad52-bed1-4791-9352-c779584dcbe7	773155	531306
nbc2041@yahoo.com	Moldova	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	545983	1188800
davidson2081@outlook.com	Moldova	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	331490	486997
officials1972@protonmail.com	Moldova	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1610452	632110
absence1941@live.com	Moldova	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	286440	276529
absence1941@live.com	Moldova	c5c41565-02cb-462f-83e5-150521ebde9c	124111	406878
local1830@gmail.com	Moldova	8ec60513-990a-4ce2-a516-8972fdcf9919	1108079	213610
bookings1998@protonmail.com	Moldova	68739ab8-38f9-45e5-9e67-fb0fc6139879	1202170	671083
officials1972@protonmail.com	Moldova	ea8636de-62ee-4739-8be2-2028afe303c9	1063965	1271508
chance1827@gmail.com	Moldova	ce85ec8a-a207-4929-ba56-2e8376b239ea	1313314	450041
lifetime1925@gmail.com	Moldova	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1367764	838421
fred1901@live.com	Moldova	5ed75d07-f129-4210-8934-b5282ab6bf39	709861	1504087
building2058@yandex.com	Moldova	c82545f7-d728-4444-aded-9648e5d8c22c	1443336	1426423
absence1941@live.com	Moldova	b207278e-f452-43f3-8e6d-1d55a32497dc	572196	1036536
only2081@protonmail.com	Moldova	e6920268-aba1-48db-8739-415368d962ec	1302179	126340
only2081@protonmail.com	Moldova	6feb9519-7623-422d-848c-0b9a5723da19	772965	307427
nelson2015@protonmail.com	Moldova	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1487489	360936
local1830@gmail.com	Moldova	7408db66-1b96-458c-b4f6-4234b2625afd	205987	1551305
dont2100@protonmail.com	Moldova	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1250656	718466
duncan1820@gmail.com	Moldova	0b57e8c3-3a12-44b9-8236-ace791387ba3	611557	1198795
officials1972@protonmail.com	Moldova	33828361-6656-438a-aeb6-15a2e5ffcf27	1634866	1108964
hospital2060@yahoo.com	Moldova	ccde439b-b989-4cd2-aec9-f142c8d948d0	582102	759436
overall2026@outlook.com	Moldova	57309776-d0f5-43a2-b94e-38372ee07cc6	1185999	279203
chance1827@gmail.com	Moldova	436386c2-345f-4570-ba73-582b3437d53e	804281	1378934
sauce2013@yandex.com	Moldova	dccda210-9223-4604-b148-a0a248fb714e	479367	1079262
duncan1820@gmail.com	Moldova	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1437786	1495881
cruise1800@yahoo.com	Moldova	495303f4-a868-4fa4-acba-c08667d7bcc8	6666	939123
local1830@gmail.com	Moldova	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	639322	1235280
despite1900@live.com	Moldova	c94fd88f-86c3-433a-9d81-b19695d48328	1428820	925489
duncan1820@gmail.com	Moldova	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	320160	226826
nelson2015@protonmail.com	Moldova	e88d9503-9bde-473f-9276-3651878e2863	912960	56442
despite1900@live.com	Moldova	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1343564	305822
overall2026@outlook.com	Moldova	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1598986	1519213
boost1833@gmail.com	Moldova	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	85708	1503201
required1923@outlook.com	Moldova	28778fb1-1671-4bad-8284-6a731564a45e	625220	566092
chance1827@gmail.com	Moldova	e5a762f6-3052-4384-a92b-b5401e965d25	1563855	484964
sauce2013@yandex.com	Moldova	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1593431	1615646
fred1901@live.com	Moldova	642d495a-e016-412f-a53b-dc046cc492a0	1566039	1076099
hospital2060@yahoo.com	Brunei	5de74332-bf74-402e-bac8-55b0a378954d	3698942	3667763
mature1894@yahoo.com	Brunei	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3541178	1459069
officials1972@protonmail.com	Brunei	5a00b0a4-db1a-4555-b66c-e47023575e85	2941793	1256532
bookings1998@protonmail.com	Brunei	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3080951	100922
despite1900@live.com	Brunei	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3141820	2782639
cruise1800@yahoo.com	Brunei	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1639322	2291205
bookings1998@protonmail.com	Brunei	69798bb6-1716-47ee-90ff-0938314cce0c	4838768	1166444
florence2033@protonmail.com	Brunei	9a270672-9e02-44bf-ba2e-2b6baf568829	1982963	2728724
lifetime1925@gmail.com	Brunei	69817e8b-5270-4081-b06b-5f94d1a99c72	3259182	1228251
duncan1820@gmail.com	Brunei	62f3d028-08e0-4986-806a-254f0d812c5b	2656235	2935023
bind1902@yahoo.com	Brunei	80a97543-fd97-40a3-b8dc-f58e50101abc	3805071	3751167
local1830@gmail.com	Brunei	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	835132	1930073
davidson2081@outlook.com	Brunei	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2341064	821363
facilitate2066@gmail.com	Brunei	9848ad52-bed1-4791-9352-c779584dcbe7	96118	4252092
boost1833@gmail.com	Brunei	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3193322	276004
chance1827@gmail.com	Brunei	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4404550	2489316
journey2091@outlook.com	Brunei	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3173887	2056814
hospital2060@yahoo.com	Brunei	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1998925	668576
delight1975@live.com	Brunei	c5c41565-02cb-462f-83e5-150521ebde9c	4336887	1328858
hormone1827@gmail.com	Brunei	8ec60513-990a-4ce2-a516-8972fdcf9919	4757781	4397407
journey2091@outlook.com	Brunei	68739ab8-38f9-45e5-9e67-fb0fc6139879	801432	3033981
sauce2013@yandex.com	Brunei	ea8636de-62ee-4739-8be2-2028afe303c9	893470	1904001
hormone1827@gmail.com	Brunei	ce85ec8a-a207-4929-ba56-2e8376b239ea	1636546	4659483
fred1901@live.com	Brunei	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1869256	1077438
overall2026@outlook.com	Brunei	5ed75d07-f129-4210-8934-b5282ab6bf39	270701	4533124
davidson2081@outlook.com	Brunei	c82545f7-d728-4444-aded-9648e5d8c22c	701856	4687559
vocal2080@protonmail.com	Brunei	b207278e-f452-43f3-8e6d-1d55a32497dc	5078035	2639245
vocal2080@protonmail.com	Brunei	e6920268-aba1-48db-8739-415368d962ec	4533258	4077956
sauce2013@yandex.com	Brunei	6feb9519-7623-422d-848c-0b9a5723da19	3421384	1213835
dont2100@protonmail.com	Brunei	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4282342	96904
sauce2013@yandex.com	Brunei	7408db66-1b96-458c-b4f6-4234b2625afd	4750101	3391647
peoples2042@protonmail.com	Brunei	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4507307	2405779
dont2100@protonmail.com	Brunei	0b57e8c3-3a12-44b9-8236-ace791387ba3	1309363	649279
required1923@outlook.com	Brunei	33828361-6656-438a-aeb6-15a2e5ffcf27	3629022	4932643
local1830@gmail.com	Brunei	ccde439b-b989-4cd2-aec9-f142c8d948d0	2161574	3221670
required1923@outlook.com	Brunei	57309776-d0f5-43a2-b94e-38372ee07cc6	4275940	4975468
pda1876@outlook.com	Brunei	436386c2-345f-4570-ba73-582b3437d53e	223025	4767036
vocal2080@protonmail.com	Brunei	dccda210-9223-4604-b148-a0a248fb714e	719655	3461485
journey2091@outlook.com	Brunei	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2366632	1152196
florence2033@protonmail.com	Brunei	495303f4-a868-4fa4-acba-c08667d7bcc8	3283560	1077149
despite1900@live.com	Brunei	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4786830	1258435
required1923@outlook.com	Brunei	c94fd88f-86c3-433a-9d81-b19695d48328	2915777	2960420
navy1800@outlook.com	Brunei	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	310975	2081317
officials1972@protonmail.com	Brunei	e88d9503-9bde-473f-9276-3651878e2863	514604	854512
restoration1945@yahoo.com	Brunei	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1178479	4777823
florence2033@protonmail.com	Brunei	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3100581	1911994
local1830@gmail.com	Brunei	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2927969	198080
absence1941@live.com	Brunei	28778fb1-1671-4bad-8284-6a731564a45e	3351184	871597
peoples2042@protonmail.com	Brunei	e5a762f6-3052-4384-a92b-b5401e965d25	4315780	524782
duncan1820@gmail.com	Brunei	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	816746	1680260
hospital2060@yahoo.com	Brunei	642d495a-e016-412f-a53b-dc046cc492a0	2848936	3633893
despite1900@live.com	Poland	5de74332-bf74-402e-bac8-55b0a378954d	6367951	2782980
hospital2060@yahoo.com	Poland	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1185754	4548743
peoples2042@protonmail.com	Poland	5a00b0a4-db1a-4555-b66c-e47023575e85	7019842	5467714
building2058@yandex.com	Poland	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	5116148	241464
hormone1827@gmail.com	Poland	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5045647	2790424
absence1941@live.com	Poland	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3194928	4626383
davidson2081@outlook.com	Poland	69798bb6-1716-47ee-90ff-0938314cce0c	7977327	3140872
dont2100@protonmail.com	Poland	9a270672-9e02-44bf-ba2e-2b6baf568829	4376327	5288179
local1830@gmail.com	Poland	69817e8b-5270-4081-b06b-5f94d1a99c72	5310446	1003012
pda1876@outlook.com	Poland	62f3d028-08e0-4986-806a-254f0d812c5b	4795462	803814
peoples2042@protonmail.com	Poland	80a97543-fd97-40a3-b8dc-f58e50101abc	7630066	4479525
chance1827@gmail.com	Poland	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	8395476	26710
delight1975@live.com	Poland	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1924419	4794569
dont2100@protonmail.com	Poland	9848ad52-bed1-4791-9352-c779584dcbe7	4366681	7105712
building2058@yandex.com	Poland	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	7384367	6046808
despite1900@live.com	Poland	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2826773	818895
only2081@protonmail.com	Poland	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2483568	4378755
boost1833@gmail.com	Poland	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5091352	2580896
absence1941@live.com	Poland	c5c41565-02cb-462f-83e5-150521ebde9c	1354335	2396903
bind1902@yahoo.com	Poland	8ec60513-990a-4ce2-a516-8972fdcf9919	4157428	4882568
sauce2013@yandex.com	Poland	68739ab8-38f9-45e5-9e67-fb0fc6139879	1101873	5796974
dont2100@protonmail.com	Poland	ea8636de-62ee-4739-8be2-2028afe303c9	4981229	3175043
sauce2013@yandex.com	Poland	ce85ec8a-a207-4929-ba56-2e8376b239ea	6389261	4315858
bookings1998@protonmail.com	Poland	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7519925	8063330
florence2033@protonmail.com	Poland	5ed75d07-f129-4210-8934-b5282ab6bf39	6094240	2656191
webpage2008@yahoo.com	Poland	c82545f7-d728-4444-aded-9648e5d8c22c	5960094	3180881
lifetime1925@gmail.com	Poland	b207278e-f452-43f3-8e6d-1d55a32497dc	8143691	3942007
restoration1945@yahoo.com	Poland	e6920268-aba1-48db-8739-415368d962ec	5238578	6048352
vocal2080@protonmail.com	Poland	6feb9519-7623-422d-848c-0b9a5723da19	3023684	7778705
program2002@yandex.com	Poland	7408db66-1b96-458c-b4f6-4234b2625afd	4436839	4220231
boost1833@gmail.com	Poland	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3198578	2463825
overall2026@outlook.com	Poland	0b57e8c3-3a12-44b9-8236-ace791387ba3	2596449	1356094
bind1902@yahoo.com	Poland	33828361-6656-438a-aeb6-15a2e5ffcf27	2796183	5302852
webpage2008@yahoo.com	Poland	ccde439b-b989-4cd2-aec9-f142c8d948d0	3431278	6161090
restoration1945@yahoo.com	Poland	57309776-d0f5-43a2-b94e-38372ee07cc6	2551718	414857
webpage2008@yahoo.com	Poland	436386c2-345f-4570-ba73-582b3437d53e	6707817	5436867
restoration1945@yahoo.com	Poland	dccda210-9223-4604-b148-a0a248fb714e	4295522	369828
chance1827@gmail.com	Poland	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4937378	3704855
overall2026@outlook.com	Poland	495303f4-a868-4fa4-acba-c08667d7bcc8	3216838	2965103
pda1876@outlook.com	Poland	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6434525	659094
florence2033@protonmail.com	Poland	c94fd88f-86c3-433a-9d81-b19695d48328	1079614	5592497
restoration1945@yahoo.com	Poland	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5858345	5304430
delight1975@live.com	Poland	e88d9503-9bde-473f-9276-3651878e2863	8113106	4187570
building2058@yandex.com	Poland	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1866397	2939730
only2081@protonmail.com	Poland	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4694429	1551660
building2058@yandex.com	Poland	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4291400	45480
bind1902@yahoo.com	Poland	28778fb1-1671-4bad-8284-6a731564a45e	3474189	5322985
sauce2013@yandex.com	Poland	e5a762f6-3052-4384-a92b-b5401e965d25	3085705	5442181
overall2026@outlook.com	Poland	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6612369	2891488
vocal2080@protonmail.com	Poland	642d495a-e016-412f-a53b-dc046cc492a0	7980813	761526
duncan1820@gmail.com	Canary Islands	5de74332-bf74-402e-bac8-55b0a378954d	2125093	956874
bind1902@yahoo.com	Canary Islands	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1712321	1245441
navy1800@outlook.com	Canary Islands	5a00b0a4-db1a-4555-b66c-e47023575e85	2109628	175205
lifetime1925@gmail.com	Canary Islands	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3009126	2403258
chance1827@gmail.com	Canary Islands	000efc5f-1b50-44ef-92c9-7cd412ba4fca	813995	3145072
required1923@outlook.com	Canary Islands	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3270159	455043
webpage2008@yahoo.com	Canary Islands	69798bb6-1716-47ee-90ff-0938314cce0c	1041971	1606900
peoples2042@protonmail.com	Canary Islands	9a270672-9e02-44bf-ba2e-2b6baf568829	1615275	709605
nelson2015@protonmail.com	Canary Islands	69817e8b-5270-4081-b06b-5f94d1a99c72	2616360	1617536
hormone1827@gmail.com	Canary Islands	62f3d028-08e0-4986-806a-254f0d812c5b	1841365	2018210
vocal2080@protonmail.com	Canary Islands	80a97543-fd97-40a3-b8dc-f58e50101abc	1674431	2427359
delight1975@live.com	Canary Islands	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2731005	1831971
florence2033@protonmail.com	Canary Islands	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3197129	2307481
navy1800@outlook.com	Canary Islands	9848ad52-bed1-4791-9352-c779584dcbe7	2271475	766441
webpage2008@yahoo.com	Canary Islands	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	954400	2338998
fred1901@live.com	Canary Islands	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2657492	2570865
only2081@protonmail.com	Canary Islands	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1198838	689074
officials1972@protonmail.com	Canary Islands	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1406976	1544161
webpage2008@yahoo.com	Canary Islands	c5c41565-02cb-462f-83e5-150521ebde9c	2401803	1853509
lifetime1925@gmail.com	Canary Islands	8ec60513-990a-4ce2-a516-8972fdcf9919	2816353	1153429
florence2033@protonmail.com	Canary Islands	68739ab8-38f9-45e5-9e67-fb0fc6139879	1032394	1725724
local1830@gmail.com	Canary Islands	ea8636de-62ee-4739-8be2-2028afe303c9	667636	1737402
boost1833@gmail.com	Canary Islands	ce85ec8a-a207-4929-ba56-2e8376b239ea	767530	381061
nelson2015@protonmail.com	Canary Islands	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1669465	1529727
bookings1998@protonmail.com	Canary Islands	5ed75d07-f129-4210-8934-b5282ab6bf39	311046	645422
duncan1820@gmail.com	Canary Islands	c82545f7-d728-4444-aded-9648e5d8c22c	3201437	1669025
officials1972@protonmail.com	Canary Islands	b207278e-f452-43f3-8e6d-1d55a32497dc	2214129	3196176
bookings1998@protonmail.com	Canary Islands	e6920268-aba1-48db-8739-415368d962ec	2482956	1659702
dont2100@protonmail.com	Canary Islands	6feb9519-7623-422d-848c-0b9a5723da19	425004	174888
building2058@yandex.com	Canary Islands	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3162842	21371
mature1894@yahoo.com	Canary Islands	7408db66-1b96-458c-b4f6-4234b2625afd	535635	819637
required1923@outlook.com	Canary Islands	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2076467	895599
navy1800@outlook.com	Canary Islands	0b57e8c3-3a12-44b9-8236-ace791387ba3	1311811	115781
peoples2042@protonmail.com	Canary Islands	33828361-6656-438a-aeb6-15a2e5ffcf27	1873890	887689
required1923@outlook.com	Canary Islands	ccde439b-b989-4cd2-aec9-f142c8d948d0	616101	204548
pda1876@outlook.com	Canary Islands	57309776-d0f5-43a2-b94e-38372ee07cc6	3059536	1521516
only2081@protonmail.com	Canary Islands	436386c2-345f-4570-ba73-582b3437d53e	3211598	2996139
journey2091@outlook.com	Canary Islands	dccda210-9223-4604-b148-a0a248fb714e	1312061	2904985
throwing1896@protonmail.com	Canary Islands	8acf71b1-5cd5-4010-8a5c-b1265d537e02	492825	954583
nelson2015@protonmail.com	Canary Islands	495303f4-a868-4fa4-acba-c08667d7bcc8	850501	1131825
pda1876@outlook.com	Canary Islands	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1459771	84926
lifetime1925@gmail.com	Canary Islands	c94fd88f-86c3-433a-9d81-b19695d48328	145899	925458
fred1901@live.com	Canary Islands	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	7068	3076793
hormone1827@gmail.com	Canary Islands	e88d9503-9bde-473f-9276-3651878e2863	874280	2254674
vocal2080@protonmail.com	Canary Islands	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1268135	2445398
lifetime1925@gmail.com	Canary Islands	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2967271	1150388
dont2100@protonmail.com	Canary Islands	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2369538	2066446
fred1901@live.com	Canary Islands	28778fb1-1671-4bad-8284-6a731564a45e	913667	1337449
peoples2042@protonmail.com	Canary Islands	e5a762f6-3052-4384-a92b-b5401e965d25	1426001	1636102
nbc2041@yahoo.com	Canary Islands	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1349103	1597120
journey2091@outlook.com	Canary Islands	642d495a-e016-412f-a53b-dc046cc492a0	1345665	548532
navy1800@outlook.com	Latvia	5de74332-bf74-402e-bac8-55b0a378954d	1837322	1192792
officials1972@protonmail.com	Latvia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1410663	1326220
local1830@gmail.com	Latvia	5a00b0a4-db1a-4555-b66c-e47023575e85	2290075	729018
nbc2041@yahoo.com	Latvia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	916208	1639132
pda1876@outlook.com	Latvia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	174512	1283622
mature1894@yahoo.com	Latvia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	704361	960042
throwing1896@protonmail.com	Latvia	69798bb6-1716-47ee-90ff-0938314cce0c	2275792	1682430
cruise1800@yahoo.com	Latvia	9a270672-9e02-44bf-ba2e-2b6baf568829	906648	245110
vocal2080@protonmail.com	Latvia	69817e8b-5270-4081-b06b-5f94d1a99c72	1759778	974917
cruise1800@yahoo.com	Latvia	62f3d028-08e0-4986-806a-254f0d812c5b	1623927	580849
required1923@outlook.com	Latvia	80a97543-fd97-40a3-b8dc-f58e50101abc	1583950	2137809
mature1894@yahoo.com	Latvia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	697388	261888
cruise1800@yahoo.com	Latvia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	232	1143045
boost1833@gmail.com	Latvia	9848ad52-bed1-4791-9352-c779584dcbe7	1425444	1067312
hormone1827@gmail.com	Latvia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1257882	227638
hormone1827@gmail.com	Latvia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1262664	1341855
chance1827@gmail.com	Latvia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	108639	1650925
only2081@protonmail.com	Latvia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1902877	1963134
mature1894@yahoo.com	Latvia	c5c41565-02cb-462f-83e5-150521ebde9c	1463146	1449225
sauce2013@yandex.com	Latvia	8ec60513-990a-4ce2-a516-8972fdcf9919	1532490	1622538
vocal2080@protonmail.com	Latvia	68739ab8-38f9-45e5-9e67-fb0fc6139879	1984723	1701585
fred1901@live.com	Latvia	ea8636de-62ee-4739-8be2-2028afe303c9	1615833	1046335
program2002@yandex.com	Latvia	ce85ec8a-a207-4929-ba56-2e8376b239ea	2169851	1015632
overall2026@outlook.com	Latvia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2335483	1684316
duncan1820@gmail.com	Latvia	5ed75d07-f129-4210-8934-b5282ab6bf39	2119334	1042687
required1923@outlook.com	Latvia	c82545f7-d728-4444-aded-9648e5d8c22c	1128474	1212395
facilitate2066@gmail.com	Latvia	b207278e-f452-43f3-8e6d-1d55a32497dc	2013568	44758
overall2026@outlook.com	Latvia	e6920268-aba1-48db-8739-415368d962ec	661457	1907727
peoples2042@protonmail.com	Latvia	6feb9519-7623-422d-848c-0b9a5723da19	761331	2021098
davidson2081@outlook.com	Latvia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2073863	1273074
vocal2080@protonmail.com	Latvia	7408db66-1b96-458c-b4f6-4234b2625afd	341796	1650019
overall2026@outlook.com	Latvia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2081329	1997179
florence2033@protonmail.com	Latvia	0b57e8c3-3a12-44b9-8236-ace791387ba3	1023914	281684
mature1894@yahoo.com	Latvia	33828361-6656-438a-aeb6-15a2e5ffcf27	1377635	1417722
nbc2041@yahoo.com	Latvia	ccde439b-b989-4cd2-aec9-f142c8d948d0	948688	6108
bind1902@yahoo.com	Latvia	57309776-d0f5-43a2-b94e-38372ee07cc6	279419	1233508
sauce2013@yandex.com	Latvia	436386c2-345f-4570-ba73-582b3437d53e	1888492	1509018
cruise1800@yahoo.com	Latvia	dccda210-9223-4604-b148-a0a248fb714e	5547	1117683
officials1972@protonmail.com	Latvia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	822183	1725192
boost1833@gmail.com	Latvia	495303f4-a868-4fa4-acba-c08667d7bcc8	1680640	201890
bind1902@yahoo.com	Latvia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	560674	1447682
facilitate2066@gmail.com	Latvia	c94fd88f-86c3-433a-9d81-b19695d48328	1073987	857945
peoples2042@protonmail.com	Latvia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	231269	18417
chance1827@gmail.com	Latvia	e88d9503-9bde-473f-9276-3651878e2863	364383	689167
bookings1998@protonmail.com	Latvia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	780633	2122530
local1830@gmail.com	Latvia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	56431	2269855
davidson2081@outlook.com	Latvia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	604801	658629
nelson2015@protonmail.com	Latvia	28778fb1-1671-4bad-8284-6a731564a45e	1901444	866858
local1830@gmail.com	Latvia	e5a762f6-3052-4384-a92b-b5401e965d25	1568778	1014848
despite1900@live.com	Latvia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2192899	1571358
cruise1800@yahoo.com	Latvia	642d495a-e016-412f-a53b-dc046cc492a0	1171926	2240453
dont2100@protonmail.com	St. Helena	5de74332-bf74-402e-bac8-55b0a378954d	1245122	6263214
sauce2013@yandex.com	St. Helena	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6200464	2238531
mature1894@yahoo.com	St. Helena	5a00b0a4-db1a-4555-b66c-e47023575e85	1397495	5069168
journey2091@outlook.com	St. Helena	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	6407887	5721212
only2081@protonmail.com	St. Helena	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3339459	2099364
cruise1800@yahoo.com	St. Helena	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5789577	4479450
despite1900@live.com	St. Helena	69798bb6-1716-47ee-90ff-0938314cce0c	6227056	3917009
chance1827@gmail.com	St. Helena	9a270672-9e02-44bf-ba2e-2b6baf568829	510155	6209943
fred1901@live.com	St. Helena	69817e8b-5270-4081-b06b-5f94d1a99c72	884984	2402309
boost1833@gmail.com	St. Helena	62f3d028-08e0-4986-806a-254f0d812c5b	3353395	5983707
hormone1827@gmail.com	St. Helena	80a97543-fd97-40a3-b8dc-f58e50101abc	6623683	3649417
bind1902@yahoo.com	St. Helena	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2451559	6337735
overall2026@outlook.com	St. Helena	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3308395	6217234
duncan1820@gmail.com	St. Helena	9848ad52-bed1-4791-9352-c779584dcbe7	6799916	1495075
facilitate2066@gmail.com	St. Helena	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3786781	207127
throwing1896@protonmail.com	St. Helena	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3393890	4897618
dont2100@protonmail.com	St. Helena	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1222421	6671657
hormone1827@gmail.com	St. Helena	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	733330	6535962
duncan1820@gmail.com	St. Helena	c5c41565-02cb-462f-83e5-150521ebde9c	6577798	4400695
despite1900@live.com	St. Helena	8ec60513-990a-4ce2-a516-8972fdcf9919	6627850	5949570
mature1894@yahoo.com	St. Helena	68739ab8-38f9-45e5-9e67-fb0fc6139879	1097364	2024786
hormone1827@gmail.com	St. Helena	ea8636de-62ee-4739-8be2-2028afe303c9	4324636	6464661
nbc2041@yahoo.com	St. Helena	ce85ec8a-a207-4929-ba56-2e8376b239ea	3187646	6249995
pda1876@outlook.com	St. Helena	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3556414	5450267
mature1894@yahoo.com	St. Helena	5ed75d07-f129-4210-8934-b5282ab6bf39	5337379	2911570
sauce2013@yandex.com	St. Helena	c82545f7-d728-4444-aded-9648e5d8c22c	1743094	1558631
overall2026@outlook.com	St. Helena	b207278e-f452-43f3-8e6d-1d55a32497dc	5008153	2003000
building2058@yandex.com	St. Helena	e6920268-aba1-48db-8739-415368d962ec	399575	5270414
overall2026@outlook.com	St. Helena	6feb9519-7623-422d-848c-0b9a5723da19	608908	737355
vocal2080@protonmail.com	St. Helena	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	6570232	430359
cruise1800@yahoo.com	St. Helena	7408db66-1b96-458c-b4f6-4234b2625afd	5931225	1919309
cruise1800@yahoo.com	St. Helena	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1270206	6853175
bind1902@yahoo.com	St. Helena	0b57e8c3-3a12-44b9-8236-ace791387ba3	5507325	3668602
restoration1945@yahoo.com	St. Helena	33828361-6656-438a-aeb6-15a2e5ffcf27	3729185	4773662
peoples2042@protonmail.com	St. Helena	ccde439b-b989-4cd2-aec9-f142c8d948d0	1841935	6441030
navy1800@outlook.com	St. Helena	57309776-d0f5-43a2-b94e-38372ee07cc6	3314078	5933213
building2058@yandex.com	St. Helena	436386c2-345f-4570-ba73-582b3437d53e	3586212	2389613
facilitate2066@gmail.com	St. Helena	dccda210-9223-4604-b148-a0a248fb714e	1556888	4100044
cruise1800@yahoo.com	St. Helena	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1041335	4110376
local1830@gmail.com	St. Helena	495303f4-a868-4fa4-acba-c08667d7bcc8	4511404	296026
only2081@protonmail.com	St. Helena	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2498691	2089702
boost1833@gmail.com	St. Helena	c94fd88f-86c3-433a-9d81-b19695d48328	897754	2620253
nbc2041@yahoo.com	St. Helena	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2927636	6170906
davidson2081@outlook.com	St. Helena	e88d9503-9bde-473f-9276-3651878e2863	1630505	126630
nelson2015@protonmail.com	St. Helena	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1463803	2107412
delight1975@live.com	St. Helena	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2064258	6624036
nbc2041@yahoo.com	St. Helena	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	415471	4863158
chance1827@gmail.com	St. Helena	28778fb1-1671-4bad-8284-6a731564a45e	484811	6634524
journey2091@outlook.com	St. Helena	e5a762f6-3052-4384-a92b-b5401e965d25	130908	3607141
fred1901@live.com	St. Helena	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4880490	6549704
officials1972@protonmail.com	St. Helena	642d495a-e016-412f-a53b-dc046cc492a0	3637879	4958430
pda1876@outlook.com	France	5de74332-bf74-402e-bac8-55b0a378954d	1509753	1509945
building2058@yandex.com	France	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1903671	949078
restoration1945@yahoo.com	France	5a00b0a4-db1a-4555-b66c-e47023575e85	166051	886291
peoples2042@protonmail.com	France	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	758011	1198647
despite1900@live.com	France	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2488921	1001529
facilitate2066@gmail.com	France	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2707451	629243
hospital2060@yahoo.com	France	69798bb6-1716-47ee-90ff-0938314cce0c	1384659	1523251
building2058@yandex.com	France	9a270672-9e02-44bf-ba2e-2b6baf568829	206452	2765481
boost1833@gmail.com	France	69817e8b-5270-4081-b06b-5f94d1a99c72	284216	3015236
peoples2042@protonmail.com	France	62f3d028-08e0-4986-806a-254f0d812c5b	2735737	429276
hormone1827@gmail.com	France	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1843331	1939942
chance1827@gmail.com	France	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1256108	415141
required1923@outlook.com	France	9848ad52-bed1-4791-9352-c779584dcbe7	1223575	2575569
throwing1896@protonmail.com	France	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1933566	1152804
vocal2080@protonmail.com	France	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2767422	843862
program2002@yandex.com	France	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	673197	2744469
only2081@protonmail.com	France	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1105906	2493850
sauce2013@yandex.com	France	c5c41565-02cb-462f-83e5-150521ebde9c	1290758	2428654
bookings1998@protonmail.com	France	8ec60513-990a-4ce2-a516-8972fdcf9919	2361880	575298
fred1901@live.com	France	68739ab8-38f9-45e5-9e67-fb0fc6139879	1642308	1363180
webpage2008@yahoo.com	France	ea8636de-62ee-4739-8be2-2028afe303c9	1798629	2940338
webpage2008@yahoo.com	France	ce85ec8a-a207-4929-ba56-2e8376b239ea	28055	474434
overall2026@outlook.com	France	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2356721	2467997
nbc2041@yahoo.com	France	5ed75d07-f129-4210-8934-b5282ab6bf39	940901	742246
sauce2013@yandex.com	France	c82545f7-d728-4444-aded-9648e5d8c22c	1371192	2947316
chance1827@gmail.com	France	b207278e-f452-43f3-8e6d-1d55a32497dc	2853275	398673
vocal2080@protonmail.com	France	e6920268-aba1-48db-8739-415368d962ec	621115	1801112
davidson2081@outlook.com	France	6feb9519-7623-422d-848c-0b9a5723da19	409201	2705854
pda1876@outlook.com	France	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	153284	1896440
webpage2008@yahoo.com	France	7408db66-1b96-458c-b4f6-4234b2625afd	96760	2362175
chance1827@gmail.com	France	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	221674	1449197
absence1941@live.com	France	0b57e8c3-3a12-44b9-8236-ace791387ba3	1133881	530266
davidson2081@outlook.com	France	33828361-6656-438a-aeb6-15a2e5ffcf27	1429896	3027247
facilitate2066@gmail.com	France	ccde439b-b989-4cd2-aec9-f142c8d948d0	2144439	759721
navy1800@outlook.com	France	57309776-d0f5-43a2-b94e-38372ee07cc6	954860	1326376
pda1876@outlook.com	France	436386c2-345f-4570-ba73-582b3437d53e	2204767	171514
required1923@outlook.com	France	dccda210-9223-4604-b148-a0a248fb714e	62706	2162509
overall2026@outlook.com	France	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2579288	940147
bookings1998@protonmail.com	France	495303f4-a868-4fa4-acba-c08667d7bcc8	1171302	2638201
davidson2081@outlook.com	France	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1186644	372773
boost1833@gmail.com	France	c94fd88f-86c3-433a-9d81-b19695d48328	774426	2267616
nbc2041@yahoo.com	France	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	679799	1862497
journey2091@outlook.com	France	e88d9503-9bde-473f-9276-3651878e2863	1307676	2811869
chance1827@gmail.com	France	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	195840	1274801
lifetime1925@gmail.com	France	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2305350	1116588
program2002@yandex.com	France	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	761459	1181986
hormone1827@gmail.com	France	28778fb1-1671-4bad-8284-6a731564a45e	361836	296137
facilitate2066@gmail.com	France	e5a762f6-3052-4384-a92b-b5401e965d25	1854893	2727936
required1923@outlook.com	France	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1640676	2694240
facilitate2066@gmail.com	France	642d495a-e016-412f-a53b-dc046cc492a0	1450317	2922233
mature1894@yahoo.com	Croatia	5de74332-bf74-402e-bac8-55b0a378954d	7131863	3547743
absence1941@live.com	Croatia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5322956	2845105
journey2091@outlook.com	Croatia	5a00b0a4-db1a-4555-b66c-e47023575e85	7051736	522192
hormone1827@gmail.com	Croatia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2648357	6837920
despite1900@live.com	Croatia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2379501	6961858
facilitate2066@gmail.com	Croatia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2673941	2937593
hospital2060@yahoo.com	Croatia	69798bb6-1716-47ee-90ff-0938314cce0c	612556	484951
hormone1827@gmail.com	Croatia	9a270672-9e02-44bf-ba2e-2b6baf568829	5930415	5251920
local1830@gmail.com	Croatia	69817e8b-5270-4081-b06b-5f94d1a99c72	2587098	852526
overall2026@outlook.com	Croatia	62f3d028-08e0-4986-806a-254f0d812c5b	2040708	7363329
nbc2041@yahoo.com	Croatia	80a97543-fd97-40a3-b8dc-f58e50101abc	5416303	829259
chance1827@gmail.com	Croatia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3868668	4378980
only2081@protonmail.com	Croatia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4909248	1901705
nbc2041@yahoo.com	Croatia	9848ad52-bed1-4791-9352-c779584dcbe7	2895414	7837292
despite1900@live.com	Croatia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5721802	6175258
cruise1800@yahoo.com	Croatia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3110081	6802929
delight1975@live.com	Croatia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5101914	7672855
program2002@yandex.com	Croatia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	351267	5661032
peoples2042@protonmail.com	Croatia	c5c41565-02cb-462f-83e5-150521ebde9c	3576074	1436446
building2058@yandex.com	Croatia	8ec60513-990a-4ce2-a516-8972fdcf9919	7186445	6080004
only2081@protonmail.com	Croatia	68739ab8-38f9-45e5-9e67-fb0fc6139879	7931454	7995721
boost1833@gmail.com	Croatia	ea8636de-62ee-4739-8be2-2028afe303c9	5324157	1988146
required1923@outlook.com	Croatia	ce85ec8a-a207-4929-ba56-2e8376b239ea	7691040	5985500
peoples2042@protonmail.com	Croatia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1128944	7202381
despite1900@live.com	Croatia	5ed75d07-f129-4210-8934-b5282ab6bf39	4043553	3620353
duncan1820@gmail.com	Croatia	c82545f7-d728-4444-aded-9648e5d8c22c	7212906	4750482
facilitate2066@gmail.com	Croatia	b207278e-f452-43f3-8e6d-1d55a32497dc	5707748	4795389
bind1902@yahoo.com	Croatia	e6920268-aba1-48db-8739-415368d962ec	1502789	37353
nelson2015@protonmail.com	Croatia	6feb9519-7623-422d-848c-0b9a5723da19	4802750	5103638
hospital2060@yahoo.com	Croatia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5995771	5536229
peoples2042@protonmail.com	Croatia	7408db66-1b96-458c-b4f6-4234b2625afd	7402674	7804343
program2002@yandex.com	Croatia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4711483	5163533
journey2091@outlook.com	Croatia	0b57e8c3-3a12-44b9-8236-ace791387ba3	5458359	7355802
lifetime1925@gmail.com	Croatia	33828361-6656-438a-aeb6-15a2e5ffcf27	5750992	316179
overall2026@outlook.com	Croatia	ccde439b-b989-4cd2-aec9-f142c8d948d0	5808585	1366682
hormone1827@gmail.com	Croatia	57309776-d0f5-43a2-b94e-38372ee07cc6	1431596	5547594
hormone1827@gmail.com	Croatia	436386c2-345f-4570-ba73-582b3437d53e	8217386	4236315
local1830@gmail.com	Croatia	dccda210-9223-4604-b148-a0a248fb714e	1626853	5407643
sauce2013@yandex.com	Croatia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4074780	143707
fred1901@live.com	Croatia	495303f4-a868-4fa4-acba-c08667d7bcc8	6081937	6767204
only2081@protonmail.com	Croatia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1811570	8004595
navy1800@outlook.com	Croatia	c94fd88f-86c3-433a-9d81-b19695d48328	3718733	3220046
overall2026@outlook.com	Croatia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1210507	5390599
boost1833@gmail.com	Croatia	e88d9503-9bde-473f-9276-3651878e2863	4564156	6181404
boost1833@gmail.com	Croatia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5590206	2517313
boost1833@gmail.com	Croatia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1017387	6452051
bookings1998@protonmail.com	Croatia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4235860	3846142
sauce2013@yandex.com	Croatia	28778fb1-1671-4bad-8284-6a731564a45e	2389446	2318640
fred1901@live.com	Croatia	e5a762f6-3052-4384-a92b-b5401e965d25	5388316	1881783
peoples2042@protonmail.com	Croatia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	953763	5323989
hospital2060@yahoo.com	Croatia	642d495a-e016-412f-a53b-dc046cc492a0	5220749	5376972
program2002@yandex.com	North Korea	5de74332-bf74-402e-bac8-55b0a378954d	1641541	741822
sauce2013@yandex.com	North Korea	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	739144	704658
hormone1827@gmail.com	North Korea	5a00b0a4-db1a-4555-b66c-e47023575e85	603305	1523027
officials1972@protonmail.com	North Korea	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	864368	789886
absence1941@live.com	North Korea	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	564410	820813
navy1800@outlook.com	North Korea	69798bb6-1716-47ee-90ff-0938314cce0c	254997	951551
boost1833@gmail.com	North Korea	9a270672-9e02-44bf-ba2e-2b6baf568829	284571	1097154
bind1902@yahoo.com	North Korea	69817e8b-5270-4081-b06b-5f94d1a99c72	1090370	272739
facilitate2066@gmail.com	North Korea	62f3d028-08e0-4986-806a-254f0d812c5b	906123	1063849
despite1900@live.com	North Korea	80a97543-fd97-40a3-b8dc-f58e50101abc	1493327	867281
florence2033@protonmail.com	North Korea	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	25862	1524227
vocal2080@protonmail.com	North Korea	9848ad52-bed1-4791-9352-c779584dcbe7	857082	72736
program2002@yandex.com	North Korea	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1334571	1403636
hormone1827@gmail.com	North Korea	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1811747	1704312
bind1902@yahoo.com	North Korea	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	233184	1084760
dont2100@protonmail.com	North Korea	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1774923	935203
davidson2081@outlook.com	North Korea	c5c41565-02cb-462f-83e5-150521ebde9c	1160452	1084900
officials1972@protonmail.com	North Korea	8ec60513-990a-4ce2-a516-8972fdcf9919	801254	156012
navy1800@outlook.com	North Korea	68739ab8-38f9-45e5-9e67-fb0fc6139879	1388818	1793818
local1830@gmail.com	North Korea	ea8636de-62ee-4739-8be2-2028afe303c9	1190697	1097309
vocal2080@protonmail.com	North Korea	ce85ec8a-a207-4929-ba56-2e8376b239ea	548084	1088133
overall2026@outlook.com	North Korea	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	995637	132402
lifetime1925@gmail.com	North Korea	5ed75d07-f129-4210-8934-b5282ab6bf39	1508105	324210
building2058@yandex.com	North Korea	c82545f7-d728-4444-aded-9648e5d8c22c	1453896	538052
building2058@yandex.com	North Korea	b207278e-f452-43f3-8e6d-1d55a32497dc	1013749	219964
local1830@gmail.com	North Korea	e6920268-aba1-48db-8739-415368d962ec	1680372	913203
only2081@protonmail.com	North Korea	6feb9519-7623-422d-848c-0b9a5723da19	196976	651324
delight1975@live.com	North Korea	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1176519	364139
sauce2013@yandex.com	North Korea	7408db66-1b96-458c-b4f6-4234b2625afd	967320	789899
webpage2008@yahoo.com	North Korea	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	456286	259113
local1830@gmail.com	North Korea	0b57e8c3-3a12-44b9-8236-ace791387ba3	1460328	316425
boost1833@gmail.com	North Korea	33828361-6656-438a-aeb6-15a2e5ffcf27	993093	972900
bind1902@yahoo.com	North Korea	ccde439b-b989-4cd2-aec9-f142c8d948d0	1365908	896861
program2002@yandex.com	North Korea	57309776-d0f5-43a2-b94e-38372ee07cc6	514616	1014216
peoples2042@protonmail.com	North Korea	436386c2-345f-4570-ba73-582b3437d53e	1503216	924501
absence1941@live.com	North Korea	dccda210-9223-4604-b148-a0a248fb714e	776158	932768
vocal2080@protonmail.com	North Korea	8acf71b1-5cd5-4010-8a5c-b1265d537e02	528291	1488012
vocal2080@protonmail.com	North Korea	495303f4-a868-4fa4-acba-c08667d7bcc8	589394	698205
chance1827@gmail.com	North Korea	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1463093	831788
building2058@yandex.com	North Korea	c94fd88f-86c3-433a-9d81-b19695d48328	1754484	612811
cruise1800@yahoo.com	North Korea	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	367637	1606948
overall2026@outlook.com	North Korea	e88d9503-9bde-473f-9276-3651878e2863	417062	50164
overall2026@outlook.com	North Korea	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	525136	117468
dont2100@protonmail.com	North Korea	1ef2eabc-18f9-4869-973e-fa0d7a60446c	835672	1411687
journey2091@outlook.com	North Korea	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	707387	498409
bookings1998@protonmail.com	North Korea	28778fb1-1671-4bad-8284-6a731564a45e	1753827	1329787
required1923@outlook.com	North Korea	e5a762f6-3052-4384-a92b-b5401e965d25	1817722	1734806
navy1800@outlook.com	North Korea	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	258047	261554
hormone1827@gmail.com	North Korea	642d495a-e016-412f-a53b-dc046cc492a0	51794	1306550
fred1901@live.com	Estonia	5de74332-bf74-402e-bac8-55b0a378954d	3269910	2353718
hospital2060@yahoo.com	Estonia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	460298	385684
officials1972@protonmail.com	Estonia	5a00b0a4-db1a-4555-b66c-e47023575e85	1689938	1704286
sauce2013@yandex.com	Estonia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	372310	2974631
mature1894@yahoo.com	Estonia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3209218	3690619
navy1800@outlook.com	Estonia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	442229	3234341
local1830@gmail.com	Estonia	69798bb6-1716-47ee-90ff-0938314cce0c	2329965	1041774
vocal2080@protonmail.com	Estonia	9a270672-9e02-44bf-ba2e-2b6baf568829	3730326	3653500
davidson2081@outlook.com	Estonia	69817e8b-5270-4081-b06b-5f94d1a99c72	1078324	3662900
hospital2060@yahoo.com	Estonia	62f3d028-08e0-4986-806a-254f0d812c5b	3115967	1693423
navy1800@outlook.com	Estonia	80a97543-fd97-40a3-b8dc-f58e50101abc	1276272	2930323
florence2033@protonmail.com	Estonia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3142131	1992747
overall2026@outlook.com	Estonia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1612611	1764910
local1830@gmail.com	Estonia	9848ad52-bed1-4791-9352-c779584dcbe7	173499	3725777
duncan1820@gmail.com	Estonia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1751771	2836708
journey2091@outlook.com	Estonia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2687821	3310247
florence2033@protonmail.com	Estonia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2601254	1022190
nelson2015@protonmail.com	Estonia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1652967	1287322
fred1901@live.com	Estonia	c5c41565-02cb-462f-83e5-150521ebde9c	3751893	2325121
peoples2042@protonmail.com	Estonia	8ec60513-990a-4ce2-a516-8972fdcf9919	1505432	2413625
fred1901@live.com	Estonia	68739ab8-38f9-45e5-9e67-fb0fc6139879	844770	1248492
absence1941@live.com	Estonia	ea8636de-62ee-4739-8be2-2028afe303c9	1388880	1293612
building2058@yandex.com	Estonia	ce85ec8a-a207-4929-ba56-2e8376b239ea	2817250	997926
hormone1827@gmail.com	Estonia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1659887	1703966
pda1876@outlook.com	Estonia	5ed75d07-f129-4210-8934-b5282ab6bf39	3376615	3864794
local1830@gmail.com	Estonia	c82545f7-d728-4444-aded-9648e5d8c22c	3118799	6728
peoples2042@protonmail.com	Estonia	e6920268-aba1-48db-8739-415368d962ec	2176127	2037911
davidson2081@outlook.com	Estonia	6feb9519-7623-422d-848c-0b9a5723da19	610300	1407613
building2058@yandex.com	Estonia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1318469	2033131
mature1894@yahoo.com	Estonia	7408db66-1b96-458c-b4f6-4234b2625afd	626153	2617262
lifetime1925@gmail.com	Estonia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	449796	3390811
local1830@gmail.com	Estonia	0b57e8c3-3a12-44b9-8236-ace791387ba3	3281279	1461606
florence2033@protonmail.com	Estonia	33828361-6656-438a-aeb6-15a2e5ffcf27	2517065	1814836
duncan1820@gmail.com	Estonia	ccde439b-b989-4cd2-aec9-f142c8d948d0	2659475	658447
restoration1945@yahoo.com	Estonia	57309776-d0f5-43a2-b94e-38372ee07cc6	3079753	2411625
required1923@outlook.com	Estonia	436386c2-345f-4570-ba73-582b3437d53e	449429	214821
navy1800@outlook.com	Estonia	dccda210-9223-4604-b148-a0a248fb714e	2439788	2233983
officials1972@protonmail.com	Estonia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1109397	2613135
davidson2081@outlook.com	Estonia	495303f4-a868-4fa4-acba-c08667d7bcc8	3072675	1242381
navy1800@outlook.com	Estonia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	19761	3226314
bind1902@yahoo.com	Estonia	c94fd88f-86c3-433a-9d81-b19695d48328	185970	1080720
davidson2081@outlook.com	Estonia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	897505	2576530
fred1901@live.com	Estonia	e88d9503-9bde-473f-9276-3651878e2863	314588	3534186
lifetime1925@gmail.com	Estonia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2414146	1874548
only2081@protonmail.com	Estonia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3286521	1776803
florence2033@protonmail.com	Estonia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	871626	3688914
overall2026@outlook.com	Estonia	28778fb1-1671-4bad-8284-6a731564a45e	1263961	2597774
hormone1827@gmail.com	Estonia	e5a762f6-3052-4384-a92b-b5401e965d25	3143589	2783996
lifetime1925@gmail.com	Estonia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2564833	2702110
sauce2013@yandex.com	Estonia	642d495a-e016-412f-a53b-dc046cc492a0	1731277	2195254
bookings1998@protonmail.com	Zimbabwe	5de74332-bf74-402e-bac8-55b0a378954d	349801	4113067
nelson2015@protonmail.com	Zimbabwe	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2142879	7071985
fred1901@live.com	Zimbabwe	5a00b0a4-db1a-4555-b66c-e47023575e85	4509284	4319451
building2058@yandex.com	Zimbabwe	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2891036	5275280
building2058@yandex.com	Zimbabwe	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4369084	7162468
delight1975@live.com	Zimbabwe	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5818062	5732103
local1830@gmail.com	Zimbabwe	69798bb6-1716-47ee-90ff-0938314cce0c	860254	2919221
officials1972@protonmail.com	Zimbabwe	9a270672-9e02-44bf-ba2e-2b6baf568829	6122769	6922631
sauce2013@yandex.com	Zimbabwe	69817e8b-5270-4081-b06b-5f94d1a99c72	3540199	4962157
nelson2015@protonmail.com	Zimbabwe	62f3d028-08e0-4986-806a-254f0d812c5b	4107348	785365
despite1900@live.com	Zimbabwe	80a97543-fd97-40a3-b8dc-f58e50101abc	2070159	6449287
bind1902@yahoo.com	Zimbabwe	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	7061921	2508059
throwing1896@protonmail.com	Zimbabwe	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2611089	6533234
navy1800@outlook.com	Zimbabwe	9848ad52-bed1-4791-9352-c779584dcbe7	245213	1814730
required1923@outlook.com	Zimbabwe	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	856700	766308
lifetime1925@gmail.com	Zimbabwe	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7364367	6584655
throwing1896@protonmail.com	Zimbabwe	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	704335	1400330
bookings1998@protonmail.com	Zimbabwe	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2942585	1694246
cruise1800@yahoo.com	Zimbabwe	c5c41565-02cb-462f-83e5-150521ebde9c	3659739	6158913
hormone1827@gmail.com	Zimbabwe	8ec60513-990a-4ce2-a516-8972fdcf9919	2091951	3808199
vocal2080@protonmail.com	Zimbabwe	68739ab8-38f9-45e5-9e67-fb0fc6139879	2011635	3829441
pda1876@outlook.com	Zimbabwe	ea8636de-62ee-4739-8be2-2028afe303c9	1297406	3465820
pda1876@outlook.com	Zimbabwe	ce85ec8a-a207-4929-ba56-2e8376b239ea	2445677	158800
navy1800@outlook.com	Zimbabwe	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7465687	4273288
boost1833@gmail.com	Zimbabwe	5ed75d07-f129-4210-8934-b5282ab6bf39	5474912	3757791
webpage2008@yahoo.com	Zimbabwe	c82545f7-d728-4444-aded-9648e5d8c22c	2510633	1156211
davidson2081@outlook.com	Zimbabwe	b207278e-f452-43f3-8e6d-1d55a32497dc	4098967	3856676
boost1833@gmail.com	Zimbabwe	e6920268-aba1-48db-8739-415368d962ec	2288141	1387603
boost1833@gmail.com	Zimbabwe	6feb9519-7623-422d-848c-0b9a5723da19	4470796	7411491
program2002@yandex.com	Zimbabwe	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2092964	1705477
duncan1820@gmail.com	Zimbabwe	7408db66-1b96-458c-b4f6-4234b2625afd	4411198	3649585
officials1972@protonmail.com	Zimbabwe	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2243065	1834174
davidson2081@outlook.com	Zimbabwe	0b57e8c3-3a12-44b9-8236-ace791387ba3	4712467	1310245
davidson2081@outlook.com	Zimbabwe	33828361-6656-438a-aeb6-15a2e5ffcf27	4668692	4070296
absence1941@live.com	Zimbabwe	ccde439b-b989-4cd2-aec9-f142c8d948d0	974201	3986243
fred1901@live.com	Zimbabwe	57309776-d0f5-43a2-b94e-38372ee07cc6	2805827	1929440
throwing1896@protonmail.com	Zimbabwe	436386c2-345f-4570-ba73-582b3437d53e	5057020	6310015
absence1941@live.com	Zimbabwe	dccda210-9223-4604-b148-a0a248fb714e	2646048	6987576
davidson2081@outlook.com	Zimbabwe	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3313701	6374662
despite1900@live.com	Zimbabwe	495303f4-a868-4fa4-acba-c08667d7bcc8	5169231	4183400
navy1800@outlook.com	Zimbabwe	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6906579	1718187
duncan1820@gmail.com	Zimbabwe	c94fd88f-86c3-433a-9d81-b19695d48328	4712367	224334
delight1975@live.com	Zimbabwe	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2172404	5247792
fred1901@live.com	Zimbabwe	e88d9503-9bde-473f-9276-3651878e2863	3513498	2853387
bookings1998@protonmail.com	Zimbabwe	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2400202	5095124
facilitate2066@gmail.com	Zimbabwe	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1450285	1790555
bind1902@yahoo.com	Zimbabwe	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5418190	1620479
mature1894@yahoo.com	Zimbabwe	28778fb1-1671-4bad-8284-6a731564a45e	796126	7089375
bookings1998@protonmail.com	Zimbabwe	e5a762f6-3052-4384-a92b-b5401e965d25	1200116	2728809
webpage2008@yahoo.com	Zimbabwe	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3904467	5350374
peoples2042@protonmail.com	Zimbabwe	642d495a-e016-412f-a53b-dc046cc492a0	6145272	2774086
building2058@yandex.com	South Africa	5de74332-bf74-402e-bac8-55b0a378954d	16611	213207
despite1900@live.com	South Africa	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	16313	509734
overall2026@outlook.com	South Africa	5a00b0a4-db1a-4555-b66c-e47023575e85	133915	835666
officials1972@protonmail.com	South Africa	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	244316	929450
cruise1800@yahoo.com	South Africa	000efc5f-1b50-44ef-92c9-7cd412ba4fca	406616	416948
sauce2013@yandex.com	South Africa	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	142057	1031429
building2058@yandex.com	South Africa	69798bb6-1716-47ee-90ff-0938314cce0c	845306	189520
lifetime1925@gmail.com	South Africa	9a270672-9e02-44bf-ba2e-2b6baf568829	622309	113128
fred1901@live.com	South Africa	69817e8b-5270-4081-b06b-5f94d1a99c72	270269	137678
absence1941@live.com	South Africa	62f3d028-08e0-4986-806a-254f0d812c5b	417722	1015961
nelson2015@protonmail.com	South Africa	80a97543-fd97-40a3-b8dc-f58e50101abc	40845	19618
vocal2080@protonmail.com	South Africa	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	596308	1061526
dont2100@protonmail.com	South Africa	9848ad52-bed1-4791-9352-c779584dcbe7	845285	209343
nbc2041@yahoo.com	South Africa	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	448044	734339
mature1894@yahoo.com	South Africa	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	814176	595676
mature1894@yahoo.com	South Africa	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	425222	323744
boost1833@gmail.com	South Africa	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	311552	545691
vocal2080@protonmail.com	South Africa	c5c41565-02cb-462f-83e5-150521ebde9c	249669	423788
only2081@protonmail.com	South Africa	8ec60513-990a-4ce2-a516-8972fdcf9919	279513	981270
required1923@outlook.com	South Africa	68739ab8-38f9-45e5-9e67-fb0fc6139879	1005551	86379
pda1876@outlook.com	South Africa	ea8636de-62ee-4739-8be2-2028afe303c9	317458	685271
program2002@yandex.com	South Africa	ce85ec8a-a207-4929-ba56-2e8376b239ea	134874	829624
program2002@yandex.com	South Africa	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	251218	114641
mature1894@yahoo.com	South Africa	5ed75d07-f129-4210-8934-b5282ab6bf39	47604	207562
nbc2041@yahoo.com	South Africa	c82545f7-d728-4444-aded-9648e5d8c22c	155590	746817
davidson2081@outlook.com	South Africa	b207278e-f452-43f3-8e6d-1d55a32497dc	892971	1047153
nbc2041@yahoo.com	South Africa	e6920268-aba1-48db-8739-415368d962ec	471914	605986
journey2091@outlook.com	South Africa	6feb9519-7623-422d-848c-0b9a5723da19	166790	178739
mature1894@yahoo.com	South Africa	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1008301	675971
lifetime1925@gmail.com	South Africa	7408db66-1b96-458c-b4f6-4234b2625afd	925374	827199
bookings1998@protonmail.com	South Africa	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	26444	104420
hospital2060@yahoo.com	South Africa	0b57e8c3-3a12-44b9-8236-ace791387ba3	785502	163738
bind1902@yahoo.com	South Africa	33828361-6656-438a-aeb6-15a2e5ffcf27	475346	1023959
restoration1945@yahoo.com	South Africa	ccde439b-b989-4cd2-aec9-f142c8d948d0	876689	106120
webpage2008@yahoo.com	South Africa	57309776-d0f5-43a2-b94e-38372ee07cc6	63296	946040
nelson2015@protonmail.com	South Africa	436386c2-345f-4570-ba73-582b3437d53e	944333	386319
sauce2013@yandex.com	South Africa	dccda210-9223-4604-b148-a0a248fb714e	682949	555016
fred1901@live.com	South Africa	8acf71b1-5cd5-4010-8a5c-b1265d537e02	391725	407980
duncan1820@gmail.com	South Africa	495303f4-a868-4fa4-acba-c08667d7bcc8	749545	325745
throwing1896@protonmail.com	South Africa	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	360166	845306
dont2100@protonmail.com	South Africa	c94fd88f-86c3-433a-9d81-b19695d48328	367228	957327
mature1894@yahoo.com	South Africa	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1064468	958740
program2002@yandex.com	South Africa	e88d9503-9bde-473f-9276-3651878e2863	187499	356233
fred1901@live.com	South Africa	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	706314	517652
sauce2013@yandex.com	South Africa	1ef2eabc-18f9-4869-973e-fa0d7a60446c	903701	100735
peoples2042@protonmail.com	South Africa	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	970141	407774
lifetime1925@gmail.com	South Africa	28778fb1-1671-4bad-8284-6a731564a45e	950600	408239
peoples2042@protonmail.com	South Africa	e5a762f6-3052-4384-a92b-b5401e965d25	974574	567256
restoration1945@yahoo.com	South Africa	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	648471	495612
delight1975@live.com	South Africa	642d495a-e016-412f-a53b-dc046cc492a0	664730	447212
facilitate2066@gmail.com	Ceuta & Melilla	5de74332-bf74-402e-bac8-55b0a378954d	7882151	4398401
only2081@protonmail.com	Ceuta & Melilla	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	264648	1366385
pda1876@outlook.com	Ceuta & Melilla	5a00b0a4-db1a-4555-b66c-e47023575e85	1922101	1210408
vocal2080@protonmail.com	Ceuta & Melilla	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4690407	3015735
vocal2080@protonmail.com	Ceuta & Melilla	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2400458	5565339
bind1902@yahoo.com	Ceuta & Melilla	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	7590576	4763097
lifetime1925@gmail.com	Ceuta & Melilla	69798bb6-1716-47ee-90ff-0938314cce0c	3868740	3578566
dont2100@protonmail.com	Ceuta & Melilla	9a270672-9e02-44bf-ba2e-2b6baf568829	2297525	4124496
program2002@yandex.com	Ceuta & Melilla	69817e8b-5270-4081-b06b-5f94d1a99c72	7789698	120635
vocal2080@protonmail.com	Ceuta & Melilla	62f3d028-08e0-4986-806a-254f0d812c5b	4453576	4646859
navy1800@outlook.com	Ceuta & Melilla	80a97543-fd97-40a3-b8dc-f58e50101abc	2036666	5798011
davidson2081@outlook.com	Ceuta & Melilla	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	7185325	7813099
dont2100@protonmail.com	Ceuta & Melilla	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2680456	2086104
overall2026@outlook.com	Ceuta & Melilla	9848ad52-bed1-4791-9352-c779584dcbe7	6444218	6120349
vocal2080@protonmail.com	Ceuta & Melilla	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6460391	5592657
nbc2041@yahoo.com	Ceuta & Melilla	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3310160	1667
nelson2015@protonmail.com	Ceuta & Melilla	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5514239	6615899
navy1800@outlook.com	Ceuta & Melilla	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7623700	578906
webpage2008@yahoo.com	Ceuta & Melilla	c5c41565-02cb-462f-83e5-150521ebde9c	4135786	2394766
boost1833@gmail.com	Ceuta & Melilla	8ec60513-990a-4ce2-a516-8972fdcf9919	3394963	716519
peoples2042@protonmail.com	Ceuta & Melilla	68739ab8-38f9-45e5-9e67-fb0fc6139879	4190400	5997912
fred1901@live.com	Ceuta & Melilla	ea8636de-62ee-4739-8be2-2028afe303c9	1543157	5633271
cruise1800@yahoo.com	Ceuta & Melilla	ce85ec8a-a207-4929-ba56-2e8376b239ea	5202387	5537232
overall2026@outlook.com	Ceuta & Melilla	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4750497	7227738
despite1900@live.com	Ceuta & Melilla	5ed75d07-f129-4210-8934-b5282ab6bf39	685764	1545280
bookings1998@protonmail.com	Ceuta & Melilla	c82545f7-d728-4444-aded-9648e5d8c22c	1196156	4455430
bookings1998@protonmail.com	Ceuta & Melilla	b207278e-f452-43f3-8e6d-1d55a32497dc	1131528	4321411
fred1901@live.com	Ceuta & Melilla	e6920268-aba1-48db-8739-415368d962ec	7756693	1947374
hospital2060@yahoo.com	Ceuta & Melilla	6feb9519-7623-422d-848c-0b9a5723da19	4001003	2975412
duncan1820@gmail.com	Ceuta & Melilla	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	985161	5195965
local1830@gmail.com	Ceuta & Melilla	7408db66-1b96-458c-b4f6-4234b2625afd	6243398	4076697
throwing1896@protonmail.com	Ceuta & Melilla	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3504118	5885870
vocal2080@protonmail.com	Ceuta & Melilla	0b57e8c3-3a12-44b9-8236-ace791387ba3	2452762	2952595
fred1901@live.com	Ceuta & Melilla	33828361-6656-438a-aeb6-15a2e5ffcf27	6042217	5173647
webpage2008@yahoo.com	Ceuta & Melilla	ccde439b-b989-4cd2-aec9-f142c8d948d0	4514152	7428389
absence1941@live.com	Ceuta & Melilla	57309776-d0f5-43a2-b94e-38372ee07cc6	3951292	4831561
bookings1998@protonmail.com	Ceuta & Melilla	436386c2-345f-4570-ba73-582b3437d53e	4260685	5402677
journey2091@outlook.com	Ceuta & Melilla	dccda210-9223-4604-b148-a0a248fb714e	588648	111545
only2081@protonmail.com	Ceuta & Melilla	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2768565	1847203
hormone1827@gmail.com	Ceuta & Melilla	495303f4-a868-4fa4-acba-c08667d7bcc8	6353400	7219797
required1923@outlook.com	Ceuta & Melilla	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2907915	5633499
boost1833@gmail.com	Ceuta & Melilla	c94fd88f-86c3-433a-9d81-b19695d48328	6469512	5549322
cruise1800@yahoo.com	Ceuta & Melilla	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1342892	6739480
despite1900@live.com	Ceuta & Melilla	e88d9503-9bde-473f-9276-3651878e2863	3511651	6383657
duncan1820@gmail.com	Ceuta & Melilla	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3695328	5388366
peoples2042@protonmail.com	Ceuta & Melilla	1ef2eabc-18f9-4869-973e-fa0d7a60446c	360165	1125973
florence2033@protonmail.com	Ceuta & Melilla	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5409256	3252030
duncan1820@gmail.com	Ceuta & Melilla	28778fb1-1671-4bad-8284-6a731564a45e	3761210	3946134
webpage2008@yahoo.com	Ceuta & Melilla	e5a762f6-3052-4384-a92b-b5401e965d25	1363292	7400968
sauce2013@yandex.com	Ceuta & Melilla	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	7003977	6095917
mature1894@yahoo.com	Ceuta & Melilla	642d495a-e016-412f-a53b-dc046cc492a0	3287922	5470088
hospital2060@yahoo.com	Guam	5de74332-bf74-402e-bac8-55b0a378954d	5677720	1067984
boost1833@gmail.com	Guam	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1866101	5890994
required1923@outlook.com	Guam	5a00b0a4-db1a-4555-b66c-e47023575e85	2106906	1320919
hospital2060@yahoo.com	Guam	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4383047	3645918
facilitate2066@gmail.com	Guam	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5739796	1455254
overall2026@outlook.com	Guam	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3556321	4477361
cruise1800@yahoo.com	Guam	69798bb6-1716-47ee-90ff-0938314cce0c	6079633	2767329
absence1941@live.com	Guam	9a270672-9e02-44bf-ba2e-2b6baf568829	4474579	683781
bookings1998@protonmail.com	Guam	69817e8b-5270-4081-b06b-5f94d1a99c72	7235954	6095840
webpage2008@yahoo.com	Guam	62f3d028-08e0-4986-806a-254f0d812c5b	2326696	3883223
restoration1945@yahoo.com	Guam	80a97543-fd97-40a3-b8dc-f58e50101abc	1715526	7456988
bookings1998@protonmail.com	Guam	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	5418528	6562378
sauce2013@yandex.com	Guam	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2916577	3185383
pda1876@outlook.com	Guam	9848ad52-bed1-4791-9352-c779584dcbe7	5237449	5228567
only2081@protonmail.com	Guam	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	10894	4686558
cruise1800@yahoo.com	Guam	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	612091	7106684
bookings1998@protonmail.com	Guam	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5063521	5936653
program2002@yandex.com	Guam	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	7308649	2696493
dont2100@protonmail.com	Guam	c5c41565-02cb-462f-83e5-150521ebde9c	737974	795534
nbc2041@yahoo.com	Guam	8ec60513-990a-4ce2-a516-8972fdcf9919	4700538	2482139
fred1901@live.com	Guam	68739ab8-38f9-45e5-9e67-fb0fc6139879	4754891	7369759
restoration1945@yahoo.com	Guam	ea8636de-62ee-4739-8be2-2028afe303c9	484186	3521674
bookings1998@protonmail.com	Guam	ce85ec8a-a207-4929-ba56-2e8376b239ea	2429429	4440101
fred1901@live.com	Guam	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5304138	3154160
pda1876@outlook.com	Guam	5ed75d07-f129-4210-8934-b5282ab6bf39	287688	261103
only2081@protonmail.com	Guam	c82545f7-d728-4444-aded-9648e5d8c22c	2008015	292869
bookings1998@protonmail.com	Guam	b207278e-f452-43f3-8e6d-1d55a32497dc	6032662	209891
delight1975@live.com	Guam	e6920268-aba1-48db-8739-415368d962ec	3950158	6666991
webpage2008@yahoo.com	Guam	6feb9519-7623-422d-848c-0b9a5723da19	3927034	2176721
bookings1998@protonmail.com	Guam	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	6112292	998560
mature1894@yahoo.com	Guam	7408db66-1b96-458c-b4f6-4234b2625afd	5253792	5418089
boost1833@gmail.com	Guam	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1014224	5261114
mature1894@yahoo.com	Guam	0b57e8c3-3a12-44b9-8236-ace791387ba3	2294720	2554551
sauce2013@yandex.com	Guam	33828361-6656-438a-aeb6-15a2e5ffcf27	686914	4857878
bookings1998@protonmail.com	Guam	ccde439b-b989-4cd2-aec9-f142c8d948d0	5150202	2977207
nbc2041@yahoo.com	Guam	57309776-d0f5-43a2-b94e-38372ee07cc6	4103289	714444
fred1901@live.com	Guam	436386c2-345f-4570-ba73-582b3437d53e	4838335	7353006
absence1941@live.com	Guam	dccda210-9223-4604-b148-a0a248fb714e	2684001	631477
overall2026@outlook.com	Guam	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1554092	5116305
hospital2060@yahoo.com	Guam	495303f4-a868-4fa4-acba-c08667d7bcc8	3375100	6245674
cruise1800@yahoo.com	Guam	c94fd88f-86c3-433a-9d81-b19695d48328	6783884	7405194
mature1894@yahoo.com	Guam	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4241734	6208366
boost1833@gmail.com	Guam	e88d9503-9bde-473f-9276-3651878e2863	7030565	190363
only2081@protonmail.com	Guam	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5950872	797819
chance1827@gmail.com	Guam	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2359810	3343439
webpage2008@yahoo.com	Guam	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	7470341	1837046
program2002@yandex.com	Guam	28778fb1-1671-4bad-8284-6a731564a45e	1607636	3750057
webpage2008@yahoo.com	Guam	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1113200	7074751
peoples2042@protonmail.com	Portugal	5de74332-bf74-402e-bac8-55b0a378954d	350989	754301
facilitate2066@gmail.com	Portugal	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	187248	1397984
overall2026@outlook.com	Portugal	5a00b0a4-db1a-4555-b66c-e47023575e85	1235532	908016
overall2026@outlook.com	Portugal	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1164525	1201852
florence2033@protonmail.com	Portugal	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1308683	17833
nelson2015@protonmail.com	Portugal	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1058023	358859
florence2033@protonmail.com	Portugal	69798bb6-1716-47ee-90ff-0938314cce0c	345942	677206
hospital2060@yahoo.com	Portugal	9a270672-9e02-44bf-ba2e-2b6baf568829	1394419	1434671
program2002@yandex.com	Portugal	69817e8b-5270-4081-b06b-5f94d1a99c72	1020574	392396
bind1902@yahoo.com	Portugal	62f3d028-08e0-4986-806a-254f0d812c5b	983075	1233996
journey2091@outlook.com	Portugal	80a97543-fd97-40a3-b8dc-f58e50101abc	863786	1395262
building2058@yandex.com	Portugal	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	652447	947704
florence2033@protonmail.com	Portugal	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	569954	862251
absence1941@live.com	Portugal	9848ad52-bed1-4791-9352-c779584dcbe7	931675	958435
restoration1945@yahoo.com	Portugal	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	927077	1006690
officials1972@protonmail.com	Portugal	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	983703	137402
davidson2081@outlook.com	Portugal	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1183147	58234
sauce2013@yandex.com	Portugal	c5c41565-02cb-462f-83e5-150521ebde9c	50845	1255185
only2081@protonmail.com	Portugal	8ec60513-990a-4ce2-a516-8972fdcf9919	584804	955506
only2081@protonmail.com	Portugal	68739ab8-38f9-45e5-9e67-fb0fc6139879	470005	14161
local1830@gmail.com	Portugal	ea8636de-62ee-4739-8be2-2028afe303c9	1066116	417352
lifetime1925@gmail.com	Portugal	ce85ec8a-a207-4929-ba56-2e8376b239ea	379753	1166582
vocal2080@protonmail.com	Portugal	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1285396	571131
restoration1945@yahoo.com	Portugal	5ed75d07-f129-4210-8934-b5282ab6bf39	641087	471433
fred1901@live.com	Portugal	c82545f7-d728-4444-aded-9648e5d8c22c	1299292	1033189
cruise1800@yahoo.com	Portugal	b207278e-f452-43f3-8e6d-1d55a32497dc	592895	337499
hospital2060@yahoo.com	Portugal	e6920268-aba1-48db-8739-415368d962ec	758424	52642
peoples2042@protonmail.com	Portugal	6feb9519-7623-422d-848c-0b9a5723da19	755990	39580
pda1876@outlook.com	Portugal	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1436915	866319
peoples2042@protonmail.com	Portugal	7408db66-1b96-458c-b4f6-4234b2625afd	350382	424500
hospital2060@yahoo.com	Portugal	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1312782	650416
cruise1800@yahoo.com	Portugal	0b57e8c3-3a12-44b9-8236-ace791387ba3	287227	1421948
duncan1820@gmail.com	Portugal	33828361-6656-438a-aeb6-15a2e5ffcf27	696178	1396179
overall2026@outlook.com	Portugal	ccde439b-b989-4cd2-aec9-f142c8d948d0	941450	462932
hormone1827@gmail.com	Portugal	57309776-d0f5-43a2-b94e-38372ee07cc6	1247352	128937
restoration1945@yahoo.com	Portugal	436386c2-345f-4570-ba73-582b3437d53e	215401	1262822
boost1833@gmail.com	Portugal	dccda210-9223-4604-b148-a0a248fb714e	525575	496593
facilitate2066@gmail.com	Portugal	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1157318	302325
throwing1896@protonmail.com	Portugal	495303f4-a868-4fa4-acba-c08667d7bcc8	1209532	1196326
nbc2041@yahoo.com	Portugal	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	404807	1267003
fred1901@live.com	Portugal	c94fd88f-86c3-433a-9d81-b19695d48328	322547	335694
nelson2015@protonmail.com	Portugal	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	833502	482949
delight1975@live.com	Portugal	e88d9503-9bde-473f-9276-3651878e2863	1045995	461552
dont2100@protonmail.com	Portugal	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1142567	678733
only2081@protonmail.com	Portugal	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1004541	1283805
florence2033@protonmail.com	Portugal	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	626055	1205162
officials1972@protonmail.com	Portugal	28778fb1-1671-4bad-8284-6a731564a45e	544093	1212136
vocal2080@protonmail.com	Portugal	e5a762f6-3052-4384-a92b-b5401e965d25	823572	1062983
sauce2013@yandex.com	Portugal	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	968783	459602
facilitate2066@gmail.com	Portugal	642d495a-e016-412f-a53b-dc046cc492a0	212936	1146571
only2081@protonmail.com	Bhutan	5de74332-bf74-402e-bac8-55b0a378954d	593037	1270100
only2081@protonmail.com	Bhutan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	689554	24797
only2081@protonmail.com	Bhutan	5a00b0a4-db1a-4555-b66c-e47023575e85	2495121	2829916
lifetime1925@gmail.com	Bhutan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	974691	1154873
pda1876@outlook.com	Bhutan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2953673	2298793
journey2091@outlook.com	Bhutan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1651586	40643
facilitate2066@gmail.com	Bhutan	69798bb6-1716-47ee-90ff-0938314cce0c	1926623	2756127
throwing1896@protonmail.com	Bhutan	9a270672-9e02-44bf-ba2e-2b6baf568829	544547	2863336
nbc2041@yahoo.com	Bhutan	69817e8b-5270-4081-b06b-5f94d1a99c72	1677402	527400
delight1975@live.com	Bhutan	62f3d028-08e0-4986-806a-254f0d812c5b	1660889	170118
facilitate2066@gmail.com	Bhutan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3600130	748030
facilitate2066@gmail.com	Bhutan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1294338	88004
restoration1945@yahoo.com	Bhutan	9848ad52-bed1-4791-9352-c779584dcbe7	565899	548938
chance1827@gmail.com	Bhutan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3167165	326970
hospital2060@yahoo.com	Bhutan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2452875	2068063
hospital2060@yahoo.com	Bhutan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	121112	450885
navy1800@outlook.com	Bhutan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1887190	1362133
cruise1800@yahoo.com	Bhutan	c5c41565-02cb-462f-83e5-150521ebde9c	3081303	3565158
cruise1800@yahoo.com	Bhutan	8ec60513-990a-4ce2-a516-8972fdcf9919	1335946	3380592
mature1894@yahoo.com	Bhutan	68739ab8-38f9-45e5-9e67-fb0fc6139879	3242744	2210102
davidson2081@outlook.com	Bhutan	ea8636de-62ee-4739-8be2-2028afe303c9	2913530	2770756
delight1975@live.com	Bhutan	ce85ec8a-a207-4929-ba56-2e8376b239ea	1266309	429827
restoration1945@yahoo.com	Bhutan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3100511	2448584
local1830@gmail.com	Bhutan	5ed75d07-f129-4210-8934-b5282ab6bf39	2448066	1973578
webpage2008@yahoo.com	Bhutan	c82545f7-d728-4444-aded-9648e5d8c22c	297922	2613920
nbc2041@yahoo.com	Bhutan	b207278e-f452-43f3-8e6d-1d55a32497dc	929757	1204661
webpage2008@yahoo.com	Bhutan	e6920268-aba1-48db-8739-415368d962ec	1032679	1674486
building2058@yandex.com	Bhutan	6feb9519-7623-422d-848c-0b9a5723da19	3391460	2241435
absence1941@live.com	Bhutan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1571158	1980574
facilitate2066@gmail.com	Bhutan	7408db66-1b96-458c-b4f6-4234b2625afd	2906896	3274564
peoples2042@protonmail.com	Bhutan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3073912	220270
throwing1896@protonmail.com	Bhutan	0b57e8c3-3a12-44b9-8236-ace791387ba3	1266263	2384922
overall2026@outlook.com	Bhutan	33828361-6656-438a-aeb6-15a2e5ffcf27	807042	1546712
webpage2008@yahoo.com	Bhutan	ccde439b-b989-4cd2-aec9-f142c8d948d0	3530832	1069461
bookings1998@protonmail.com	Bhutan	57309776-d0f5-43a2-b94e-38372ee07cc6	2131673	1609427
chance1827@gmail.com	Bhutan	436386c2-345f-4570-ba73-582b3437d53e	2689979	2236403
mature1894@yahoo.com	Bhutan	dccda210-9223-4604-b148-a0a248fb714e	3726676	2161801
facilitate2066@gmail.com	Bhutan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2830556	2439971
chance1827@gmail.com	Bhutan	495303f4-a868-4fa4-acba-c08667d7bcc8	2657488	777558
florence2033@protonmail.com	Bhutan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3287050	2869981
only2081@protonmail.com	Bhutan	c94fd88f-86c3-433a-9d81-b19695d48328	3519716	1184539
davidson2081@outlook.com	Bhutan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	679284	2465406
lifetime1925@gmail.com	Bhutan	e88d9503-9bde-473f-9276-3651878e2863	1551850	209613
nbc2041@yahoo.com	Bhutan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3578737	1794695
nbc2041@yahoo.com	Bhutan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	7319	2290324
florence2033@protonmail.com	Bhutan	28778fb1-1671-4bad-8284-6a731564a45e	806261	744621
overall2026@outlook.com	Bhutan	e5a762f6-3052-4384-a92b-b5401e965d25	3616176	43805
hospital2060@yahoo.com	Bhutan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2151468	3066261
despite1900@live.com	Bhutan	642d495a-e016-412f-a53b-dc046cc492a0	493664	2657177
absence1941@live.com	Seychelles	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	102836	506412
program2002@yandex.com	Seychelles	5a00b0a4-db1a-4555-b66c-e47023575e85	569126	435478
mature1894@yahoo.com	Seychelles	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	464374	254078
bind1902@yahoo.com	Seychelles	000efc5f-1b50-44ef-92c9-7cd412ba4fca	499359	456863
webpage2008@yahoo.com	Seychelles	69798bb6-1716-47ee-90ff-0938314cce0c	681005	79686
duncan1820@gmail.com	Seychelles	9a270672-9e02-44bf-ba2e-2b6baf568829	151185	432836
required1923@outlook.com	Seychelles	69817e8b-5270-4081-b06b-5f94d1a99c72	23708	494229
local1830@gmail.com	Seychelles	62f3d028-08e0-4986-806a-254f0d812c5b	45689	615245
pda1876@outlook.com	Seychelles	80a97543-fd97-40a3-b8dc-f58e50101abc	483413	276840
vocal2080@protonmail.com	Seychelles	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	108851	505603
absence1941@live.com	Seychelles	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	339531	420066
despite1900@live.com	Seychelles	9848ad52-bed1-4791-9352-c779584dcbe7	595004	62401
nbc2041@yahoo.com	Seychelles	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	413423	471419
journey2091@outlook.com	Seychelles	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	342238	391448
pda1876@outlook.com	Seychelles	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	357066	39533
program2002@yandex.com	Seychelles	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	229182	181658
only2081@protonmail.com	Seychelles	c5c41565-02cb-462f-83e5-150521ebde9c	424939	382407
peoples2042@protonmail.com	Seychelles	8ec60513-990a-4ce2-a516-8972fdcf9919	4818	298252
chance1827@gmail.com	Seychelles	68739ab8-38f9-45e5-9e67-fb0fc6139879	522068	432770
mature1894@yahoo.com	Seychelles	ea8636de-62ee-4739-8be2-2028afe303c9	37807	428741
vocal2080@protonmail.com	Seychelles	ce85ec8a-a207-4929-ba56-2e8376b239ea	520490	78759
duncan1820@gmail.com	Seychelles	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	157972	328241
nelson2015@protonmail.com	Seychelles	5ed75d07-f129-4210-8934-b5282ab6bf39	233803	178949
fred1901@live.com	Seychelles	c82545f7-d728-4444-aded-9648e5d8c22c	281425	175950
facilitate2066@gmail.com	Seychelles	b207278e-f452-43f3-8e6d-1d55a32497dc	118481	526640
throwing1896@protonmail.com	Seychelles	e6920268-aba1-48db-8739-415368d962ec	77886	307182
boost1833@gmail.com	Seychelles	6feb9519-7623-422d-848c-0b9a5723da19	581951	139536
absence1941@live.com	Seychelles	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	672430	231999
sauce2013@yandex.com	Seychelles	7408db66-1b96-458c-b4f6-4234b2625afd	468167	117099
bind1902@yahoo.com	Seychelles	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	316622	378632
throwing1896@protonmail.com	Seychelles	0b57e8c3-3a12-44b9-8236-ace791387ba3	425632	422719
hospital2060@yahoo.com	Seychelles	33828361-6656-438a-aeb6-15a2e5ffcf27	588145	436716
overall2026@outlook.com	Seychelles	ccde439b-b989-4cd2-aec9-f142c8d948d0	695879	176590
building2058@yandex.com	Seychelles	436386c2-345f-4570-ba73-582b3437d53e	353275	189735
dont2100@protonmail.com	Seychelles	dccda210-9223-4604-b148-a0a248fb714e	609823	627590
bind1902@yahoo.com	Seychelles	8acf71b1-5cd5-4010-8a5c-b1265d537e02	238579	617374
required1923@outlook.com	Seychelles	495303f4-a868-4fa4-acba-c08667d7bcc8	386736	520284
dont2100@protonmail.com	Seychelles	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	389043	95045
navy1800@outlook.com	Seychelles	c94fd88f-86c3-433a-9d81-b19695d48328	556878	112425
overall2026@outlook.com	Seychelles	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	627165	372996
facilitate2066@gmail.com	Seychelles	e88d9503-9bde-473f-9276-3651878e2863	720857	652380
hormone1827@gmail.com	Seychelles	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	108993	382029
building2058@yandex.com	Seychelles	1ef2eabc-18f9-4869-973e-fa0d7a60446c	249032	614531
boost1833@gmail.com	Seychelles	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	290564	484619
fred1901@live.com	Seychelles	28778fb1-1671-4bad-8284-6a731564a45e	446001	16024
required1923@outlook.com	Seychelles	e5a762f6-3052-4384-a92b-b5401e965d25	195452	601698
throwing1896@protonmail.com	Seychelles	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	435584	309365
fred1901@live.com	Seychelles	642d495a-e016-412f-a53b-dc046cc492a0	577021	518583
dont2100@protonmail.com	Portugal	5de74332-bf74-402e-bac8-55b0a378954d	1296734	912037
florence2033@protonmail.com	Portugal	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1240257	3614398
pda1876@outlook.com	Portugal	5a00b0a4-db1a-4555-b66c-e47023575e85	505162	1368679
davidson2081@outlook.com	Portugal	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	21147	873642
bookings1998@protonmail.com	Portugal	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4044597	383918
lifetime1925@gmail.com	Portugal	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2993827	1983135
nbc2041@yahoo.com	Portugal	69798bb6-1716-47ee-90ff-0938314cce0c	1666828	1186473
webpage2008@yahoo.com	Portugal	9a270672-9e02-44bf-ba2e-2b6baf568829	3779609	1929732
officials1972@protonmail.com	Portugal	69817e8b-5270-4081-b06b-5f94d1a99c72	2974073	4493946
required1923@outlook.com	Portugal	62f3d028-08e0-4986-806a-254f0d812c5b	1099981	4291691
webpage2008@yahoo.com	Portugal	80a97543-fd97-40a3-b8dc-f58e50101abc	1319726	4299999
nelson2015@protonmail.com	Portugal	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3421278	4108317
sauce2013@yandex.com	Portugal	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3125151	2071545
program2002@yandex.com	Portugal	9848ad52-bed1-4791-9352-c779584dcbe7	762167	2565089
davidson2081@outlook.com	Portugal	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2433343	2853734
nbc2041@yahoo.com	Portugal	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2976925	1812179
vocal2080@protonmail.com	Portugal	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1687570	1422754
only2081@protonmail.com	Portugal	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1942153	4241575
hospital2060@yahoo.com	Portugal	c5c41565-02cb-462f-83e5-150521ebde9c	2240885	3774336
absence1941@live.com	Portugal	8ec60513-990a-4ce2-a516-8972fdcf9919	1143988	2066636
lifetime1925@gmail.com	Portugal	68739ab8-38f9-45e5-9e67-fb0fc6139879	3706647	3336713
lifetime1925@gmail.com	Portugal	ea8636de-62ee-4739-8be2-2028afe303c9	3397202	4550681
boost1833@gmail.com	Portugal	ce85ec8a-a207-4929-ba56-2e8376b239ea	1143517	2650186
cruise1800@yahoo.com	Portugal	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3609697	4320240
program2002@yandex.com	Portugal	5ed75d07-f129-4210-8934-b5282ab6bf39	1295584	1877088
mature1894@yahoo.com	Portugal	c82545f7-d728-4444-aded-9648e5d8c22c	3745922	4335362
hormone1827@gmail.com	Portugal	b207278e-f452-43f3-8e6d-1d55a32497dc	3682653	1199453
hormone1827@gmail.com	Portugal	e6920268-aba1-48db-8739-415368d962ec	3201090	1180438
hormone1827@gmail.com	Portugal	6feb9519-7623-422d-848c-0b9a5723da19	2629144	3294982
chance1827@gmail.com	Portugal	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2391438	1494189
bind1902@yahoo.com	Portugal	7408db66-1b96-458c-b4f6-4234b2625afd	1445958	3155845
pda1876@outlook.com	Portugal	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1263443	4055722
restoration1945@yahoo.com	Portugal	0b57e8c3-3a12-44b9-8236-ace791387ba3	4281733	4546772
nelson2015@protonmail.com	Portugal	ccde439b-b989-4cd2-aec9-f142c8d948d0	3179877	3185155
bind1902@yahoo.com	Portugal	57309776-d0f5-43a2-b94e-38372ee07cc6	3802707	3963022
sauce2013@yandex.com	Portugal	436386c2-345f-4570-ba73-582b3437d53e	954159	1748310
pda1876@outlook.com	Portugal	dccda210-9223-4604-b148-a0a248fb714e	46583	3464677
throwing1896@protonmail.com	Portugal	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3057252	1632680
program2002@yandex.com	Portugal	495303f4-a868-4fa4-acba-c08667d7bcc8	1516403	1712897
hospital2060@yahoo.com	Portugal	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3342456	1225420
navy1800@outlook.com	Portugal	c94fd88f-86c3-433a-9d81-b19695d48328	90681	1702542
sauce2013@yandex.com	Portugal	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2569	2683306
nbc2041@yahoo.com	Portugal	e88d9503-9bde-473f-9276-3651878e2863	1627163	827336
delight1975@live.com	Portugal	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	725200	3201878
delight1975@live.com	Portugal	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2758381	3222639
duncan1820@gmail.com	Portugal	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1177016	2357870
hormone1827@gmail.com	Portugal	28778fb1-1671-4bad-8284-6a731564a45e	4636191	994533
local1830@gmail.com	Portugal	e5a762f6-3052-4384-a92b-b5401e965d25	1355552	2465948
restoration1945@yahoo.com	Portugal	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4647599	1420872
throwing1896@protonmail.com	Portugal	642d495a-e016-412f-a53b-dc046cc492a0	1476703	1466443
required1923@outlook.com	Burkina Faso	5de74332-bf74-402e-bac8-55b0a378954d	1885678	2873900
chance1827@gmail.com	Burkina Faso	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	602621	2723954
nbc2041@yahoo.com	Burkina Faso	5a00b0a4-db1a-4555-b66c-e47023575e85	730632	1900102
only2081@protonmail.com	Burkina Faso	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1032429	1831879
despite1900@live.com	Burkina Faso	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1860648	2610574
fred1901@live.com	Burkina Faso	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3027128	2893516
navy1800@outlook.com	Burkina Faso	69798bb6-1716-47ee-90ff-0938314cce0c	1898282	2510053
sauce2013@yandex.com	Burkina Faso	9a270672-9e02-44bf-ba2e-2b6baf568829	2298213	656206
required1923@outlook.com	Burkina Faso	69817e8b-5270-4081-b06b-5f94d1a99c72	2465962	2571412
delight1975@live.com	Burkina Faso	62f3d028-08e0-4986-806a-254f0d812c5b	1261239	722564
navy1800@outlook.com	Burkina Faso	80a97543-fd97-40a3-b8dc-f58e50101abc	1851851	889437
davidson2081@outlook.com	Burkina Faso	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	666102	702066
chance1827@gmail.com	Burkina Faso	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	675351	2902226
absence1941@live.com	Burkina Faso	9848ad52-bed1-4791-9352-c779584dcbe7	2149060	1066924
hormone1827@gmail.com	Burkina Faso	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1977006	2318555
chance1827@gmail.com	Burkina Faso	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3042560	1576456
bind1902@yahoo.com	Burkina Faso	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	598463	2699897
chance1827@gmail.com	Burkina Faso	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1868299	2277325
bookings1998@protonmail.com	Burkina Faso	c5c41565-02cb-462f-83e5-150521ebde9c	409165	38980
bookings1998@protonmail.com	Burkina Faso	8ec60513-990a-4ce2-a516-8972fdcf9919	824105	1212636
lifetime1925@gmail.com	Burkina Faso	68739ab8-38f9-45e5-9e67-fb0fc6139879	1901522	1656545
restoration1945@yahoo.com	Burkina Faso	ea8636de-62ee-4739-8be2-2028afe303c9	368489	316227
chance1827@gmail.com	Burkina Faso	ce85ec8a-a207-4929-ba56-2e8376b239ea	1466753	985523
absence1941@live.com	Burkina Faso	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	50142	2721227
only2081@protonmail.com	Burkina Faso	5ed75d07-f129-4210-8934-b5282ab6bf39	2419874	683343
local1830@gmail.com	Burkina Faso	c82545f7-d728-4444-aded-9648e5d8c22c	147489	410559
navy1800@outlook.com	Burkina Faso	b207278e-f452-43f3-8e6d-1d55a32497dc	2454440	205224
hospital2060@yahoo.com	Burkina Faso	e6920268-aba1-48db-8739-415368d962ec	1380158	2803371
absence1941@live.com	Burkina Faso	6feb9519-7623-422d-848c-0b9a5723da19	2493382	1361158
absence1941@live.com	Burkina Faso	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	646390	190567
delight1975@live.com	Burkina Faso	7408db66-1b96-458c-b4f6-4234b2625afd	3207411	1352294
local1830@gmail.com	Burkina Faso	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	106110	1183446
restoration1945@yahoo.com	Burkina Faso	0b57e8c3-3a12-44b9-8236-ace791387ba3	424043	2506829
fred1901@live.com	Burkina Faso	33828361-6656-438a-aeb6-15a2e5ffcf27	1075368	662096
fred1901@live.com	Burkina Faso	ccde439b-b989-4cd2-aec9-f142c8d948d0	1126463	2771247
only2081@protonmail.com	Burkina Faso	57309776-d0f5-43a2-b94e-38372ee07cc6	3058601	2848063
overall2026@outlook.com	Burkina Faso	436386c2-345f-4570-ba73-582b3437d53e	3092703	1730814
florence2033@protonmail.com	Burkina Faso	dccda210-9223-4604-b148-a0a248fb714e	3177647	2568742
journey2091@outlook.com	Burkina Faso	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1024818	3131547
sauce2013@yandex.com	Burkina Faso	495303f4-a868-4fa4-acba-c08667d7bcc8	2724968	2631504
required1923@outlook.com	Burkina Faso	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	731648	2973252
hormone1827@gmail.com	Burkina Faso	c94fd88f-86c3-433a-9d81-b19695d48328	901734	2329383
vocal2080@protonmail.com	Burkina Faso	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1064356	728198
dont2100@protonmail.com	Burkina Faso	e88d9503-9bde-473f-9276-3651878e2863	2302884	1731794
bind1902@yahoo.com	Burkina Faso	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2819502	2211483
facilitate2066@gmail.com	Burkina Faso	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1037118	1497130
nelson2015@protonmail.com	Burkina Faso	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2739213	2734546
cruise1800@yahoo.com	Burkina Faso	28778fb1-1671-4bad-8284-6a731564a45e	1034205	3172257
building2058@yandex.com	Burkina Faso	e5a762f6-3052-4384-a92b-b5401e965d25	591138	1119942
boost1833@gmail.com	Burkina Faso	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1178758	108918
nelson2015@protonmail.com	Burkina Faso	642d495a-e016-412f-a53b-dc046cc492a0	2408401	2540113
throwing1896@protonmail.com	Yemen	5de74332-bf74-402e-bac8-55b0a378954d	876447	1042889
cruise1800@yahoo.com	Yemen	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	277280	878253
restoration1945@yahoo.com	Yemen	5a00b0a4-db1a-4555-b66c-e47023575e85	457199	842130
peoples2042@protonmail.com	Yemen	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	319071	1021870
building2058@yandex.com	Yemen	000efc5f-1b50-44ef-92c9-7cd412ba4fca	956774	1592538
hospital2060@yahoo.com	Yemen	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	595992	1118223
building2058@yandex.com	Yemen	69798bb6-1716-47ee-90ff-0938314cce0c	328866	1320138
program2002@yandex.com	Yemen	9a270672-9e02-44bf-ba2e-2b6baf568829	68403	156539
absence1941@live.com	Yemen	69817e8b-5270-4081-b06b-5f94d1a99c72	920670	746763
journey2091@outlook.com	Yemen	62f3d028-08e0-4986-806a-254f0d812c5b	1228742	184695
delight1975@live.com	Yemen	80a97543-fd97-40a3-b8dc-f58e50101abc	1103873	1344478
absence1941@live.com	Yemen	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	936878	646803
hospital2060@yahoo.com	Yemen	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	869423	208940
delight1975@live.com	Yemen	9848ad52-bed1-4791-9352-c779584dcbe7	767578	1188020
officials1972@protonmail.com	Yemen	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1382046	374955
pda1876@outlook.com	Yemen	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	889866	1419611
dont2100@protonmail.com	Yemen	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	561740	1565987
mature1894@yahoo.com	Yemen	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	705893	312883
boost1833@gmail.com	Yemen	c5c41565-02cb-462f-83e5-150521ebde9c	978712	1363483
cruise1800@yahoo.com	Yemen	8ec60513-990a-4ce2-a516-8972fdcf9919	335838	818837
required1923@outlook.com	Yemen	68739ab8-38f9-45e5-9e67-fb0fc6139879	994747	1342712
sauce2013@yandex.com	Yemen	ea8636de-62ee-4739-8be2-2028afe303c9	1448893	102999
required1923@outlook.com	Yemen	ce85ec8a-a207-4929-ba56-2e8376b239ea	256130	337828
webpage2008@yahoo.com	Yemen	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	236255	133829
cruise1800@yahoo.com	Yemen	5ed75d07-f129-4210-8934-b5282ab6bf39	201471	1453664
hospital2060@yahoo.com	Yemen	c82545f7-d728-4444-aded-9648e5d8c22c	559803	1537809
peoples2042@protonmail.com	Yemen	b207278e-f452-43f3-8e6d-1d55a32497dc	251467	1178501
delight1975@live.com	Yemen	e6920268-aba1-48db-8739-415368d962ec	70708	1035089
dont2100@protonmail.com	Yemen	6feb9519-7623-422d-848c-0b9a5723da19	1312123	1110981
hospital2060@yahoo.com	Yemen	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	80509	12295
dont2100@protonmail.com	Yemen	7408db66-1b96-458c-b4f6-4234b2625afd	709136	1394551
despite1900@live.com	Yemen	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	932965	477505
peoples2042@protonmail.com	Yemen	0b57e8c3-3a12-44b9-8236-ace791387ba3	265923	172918
cruise1800@yahoo.com	Yemen	33828361-6656-438a-aeb6-15a2e5ffcf27	818081	476309
facilitate2066@gmail.com	Yemen	ccde439b-b989-4cd2-aec9-f142c8d948d0	286995	89970
nbc2041@yahoo.com	Yemen	57309776-d0f5-43a2-b94e-38372ee07cc6	1025883	1579853
boost1833@gmail.com	Yemen	436386c2-345f-4570-ba73-582b3437d53e	1266177	1563078
bind1902@yahoo.com	Yemen	dccda210-9223-4604-b148-a0a248fb714e	222178	608345
throwing1896@protonmail.com	Yemen	8acf71b1-5cd5-4010-8a5c-b1265d537e02	716048	1050354
throwing1896@protonmail.com	Yemen	495303f4-a868-4fa4-acba-c08667d7bcc8	873264	1236422
webpage2008@yahoo.com	Yemen	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	241267	669347
lifetime1925@gmail.com	Yemen	c94fd88f-86c3-433a-9d81-b19695d48328	927599	451639
nelson2015@protonmail.com	Yemen	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	864039	268585
mature1894@yahoo.com	Yemen	e88d9503-9bde-473f-9276-3651878e2863	778986	1561584
duncan1820@gmail.com	Yemen	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	16700	214107
nbc2041@yahoo.com	Yemen	1ef2eabc-18f9-4869-973e-fa0d7a60446c	559348	595762
bookings1998@protonmail.com	Yemen	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1268602	332475
cruise1800@yahoo.com	Yemen	28778fb1-1671-4bad-8284-6a731564a45e	421215	1373851
lifetime1925@gmail.com	Yemen	e5a762f6-3052-4384-a92b-b5401e965d25	809660	1059466
required1923@outlook.com	Yemen	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	77939	310622
chance1827@gmail.com	Yemen	642d495a-e016-412f-a53b-dc046cc492a0	1129706	132266
peoples2042@protonmail.com	Greece	5de74332-bf74-402e-bac8-55b0a378954d	6906883	766912
vocal2080@protonmail.com	Greece	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	7431333	3266668
nelson2015@protonmail.com	Greece	5a00b0a4-db1a-4555-b66c-e47023575e85	3670601	3458886
building2058@yandex.com	Greece	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1077610	2045346
duncan1820@gmail.com	Greece	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2937428	1357718
throwing1896@protonmail.com	Greece	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6969844	238808
hormone1827@gmail.com	Greece	69798bb6-1716-47ee-90ff-0938314cce0c	5818801	3379868
required1923@outlook.com	Greece	9a270672-9e02-44bf-ba2e-2b6baf568829	2995391	2067488
officials1972@protonmail.com	Greece	69817e8b-5270-4081-b06b-5f94d1a99c72	2617394	4562124
duncan1820@gmail.com	Greece	62f3d028-08e0-4986-806a-254f0d812c5b	6446009	4275963
peoples2042@protonmail.com	Greece	80a97543-fd97-40a3-b8dc-f58e50101abc	159827	6804303
davidson2081@outlook.com	Greece	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	488111	2121565
delight1975@live.com	Greece	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3541629	3141127
nbc2041@yahoo.com	Greece	9848ad52-bed1-4791-9352-c779584dcbe7	3145654	377708
building2058@yandex.com	Greece	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	7628665	481915
officials1972@protonmail.com	Greece	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4936710	3244781
officials1972@protonmail.com	Greece	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	876145	2451443
lifetime1925@gmail.com	Greece	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6869310	3505284
sauce2013@yandex.com	Greece	c5c41565-02cb-462f-83e5-150521ebde9c	2436441	5007342
cruise1800@yahoo.com	Greece	8ec60513-990a-4ce2-a516-8972fdcf9919	3650836	5617057
bookings1998@protonmail.com	Greece	68739ab8-38f9-45e5-9e67-fb0fc6139879	6941653	1038302
required1923@outlook.com	Greece	ea8636de-62ee-4739-8be2-2028afe303c9	2950637	4480168
overall2026@outlook.com	Greece	ce85ec8a-a207-4929-ba56-2e8376b239ea	7440343	2293661
davidson2081@outlook.com	Greece	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1425726	3997231
webpage2008@yahoo.com	Greece	5ed75d07-f129-4210-8934-b5282ab6bf39	2965276	7123169
building2058@yandex.com	Greece	c82545f7-d728-4444-aded-9648e5d8c22c	696003	954959
building2058@yandex.com	Greece	b207278e-f452-43f3-8e6d-1d55a32497dc	6234120	2188919
fred1901@live.com	Greece	e6920268-aba1-48db-8739-415368d962ec	3826017	2840955
officials1972@protonmail.com	Greece	6feb9519-7623-422d-848c-0b9a5723da19	1246878	5975429
overall2026@outlook.com	Greece	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1310431	5904473
only2081@protonmail.com	Greece	7408db66-1b96-458c-b4f6-4234b2625afd	2401688	1680230
cruise1800@yahoo.com	Greece	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3220670	6733873
vocal2080@protonmail.com	Greece	0b57e8c3-3a12-44b9-8236-ace791387ba3	3266292	3269551
peoples2042@protonmail.com	Greece	33828361-6656-438a-aeb6-15a2e5ffcf27	145196	4075586
peoples2042@protonmail.com	Greece	ccde439b-b989-4cd2-aec9-f142c8d948d0	5573695	3638532
overall2026@outlook.com	Greece	57309776-d0f5-43a2-b94e-38372ee07cc6	3611993	5994095
navy1800@outlook.com	Greece	436386c2-345f-4570-ba73-582b3437d53e	5820245	3813736
fred1901@live.com	Greece	dccda210-9223-4604-b148-a0a248fb714e	7602420	6738903
dont2100@protonmail.com	Greece	8acf71b1-5cd5-4010-8a5c-b1265d537e02	7485944	3788345
nbc2041@yahoo.com	Greece	495303f4-a868-4fa4-acba-c08667d7bcc8	5892503	895950
bind1902@yahoo.com	Greece	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2501517	6392885
required1923@outlook.com	Greece	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3361806	189785
hospital2060@yahoo.com	Greece	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6214738	6271207
facilitate2066@gmail.com	Greece	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3821886	6404320
local1830@gmail.com	Greece	28778fb1-1671-4bad-8284-6a731564a45e	2961743	2020859
boost1833@gmail.com	Greece	e5a762f6-3052-4384-a92b-b5401e965d25	6376169	2278963
journey2091@outlook.com	Greece	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2818703	5792309
bookings1998@protonmail.com	Greece	642d495a-e016-412f-a53b-dc046cc492a0	4631097	277620
davidson2081@outlook.com	Bahrain	5de74332-bf74-402e-bac8-55b0a378954d	2306949	1400282
throwing1896@protonmail.com	Bahrain	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4417798	915412
hormone1827@gmail.com	Bahrain	5a00b0a4-db1a-4555-b66c-e47023575e85	1997269	633039
absence1941@live.com	Bahrain	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4896757	877484
hormone1827@gmail.com	Bahrain	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2551242	3186788
delight1975@live.com	Bahrain	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5376202	621158
vocal2080@protonmail.com	Bahrain	69798bb6-1716-47ee-90ff-0938314cce0c	3331903	3147719
overall2026@outlook.com	Bahrain	9a270672-9e02-44bf-ba2e-2b6baf568829	3583612	3004226
delight1975@live.com	Bahrain	69817e8b-5270-4081-b06b-5f94d1a99c72	6206645	6519691
fred1901@live.com	Bahrain	62f3d028-08e0-4986-806a-254f0d812c5b	3297811	4233283
peoples2042@protonmail.com	Bahrain	80a97543-fd97-40a3-b8dc-f58e50101abc	2879521	4627083
navy1800@outlook.com	Bahrain	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1581121	5362785
peoples2042@protonmail.com	Bahrain	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1535215	1684526
nbc2041@yahoo.com	Bahrain	9848ad52-bed1-4791-9352-c779584dcbe7	1524675	387617
fred1901@live.com	Bahrain	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5664250	2761682
program2002@yandex.com	Bahrain	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3091892	5328003
overall2026@outlook.com	Bahrain	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	6595080	4574348
despite1900@live.com	Bahrain	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6305490	5257347
navy1800@outlook.com	Bahrain	c5c41565-02cb-462f-83e5-150521ebde9c	487724	6047441
lifetime1925@gmail.com	Bahrain	8ec60513-990a-4ce2-a516-8972fdcf9919	2890916	3703174
mature1894@yahoo.com	Bahrain	68739ab8-38f9-45e5-9e67-fb0fc6139879	3574699	994642
required1923@outlook.com	Bahrain	ea8636de-62ee-4739-8be2-2028afe303c9	5238468	6637654
navy1800@outlook.com	Bahrain	ce85ec8a-a207-4929-ba56-2e8376b239ea	1014366	534913
nelson2015@protonmail.com	Bahrain	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6284690	189672
navy1800@outlook.com	Bahrain	5ed75d07-f129-4210-8934-b5282ab6bf39	1032605	1385212
sauce2013@yandex.com	Bahrain	b207278e-f452-43f3-8e6d-1d55a32497dc	5150676	6384662
peoples2042@protonmail.com	Bahrain	e6920268-aba1-48db-8739-415368d962ec	6259576	2608698
hospital2060@yahoo.com	Bahrain	6feb9519-7623-422d-848c-0b9a5723da19	312238	1904177
program2002@yandex.com	Bahrain	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4968310	2892039
nelson2015@protonmail.com	Bahrain	7408db66-1b96-458c-b4f6-4234b2625afd	1752813	1355168
hormone1827@gmail.com	Bahrain	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4402596	4954481
boost1833@gmail.com	Bahrain	0b57e8c3-3a12-44b9-8236-ace791387ba3	4767960	3835439
vocal2080@protonmail.com	Bahrain	33828361-6656-438a-aeb6-15a2e5ffcf27	1793957	3747446
nelson2015@protonmail.com	Bahrain	ccde439b-b989-4cd2-aec9-f142c8d948d0	5741890	5511557
hormone1827@gmail.com	Bahrain	57309776-d0f5-43a2-b94e-38372ee07cc6	4862289	2464151
program2002@yandex.com	Bahrain	436386c2-345f-4570-ba73-582b3437d53e	4900659	5789784
program2002@yandex.com	Bahrain	dccda210-9223-4604-b148-a0a248fb714e	4422107	3183422
sauce2013@yandex.com	Bahrain	8acf71b1-5cd5-4010-8a5c-b1265d537e02	5675381	5753955
absence1941@live.com	Bahrain	495303f4-a868-4fa4-acba-c08667d7bcc8	5038637	1400513
facilitate2066@gmail.com	Bahrain	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6017418	2318256
mature1894@yahoo.com	Bahrain	c94fd88f-86c3-433a-9d81-b19695d48328	5608294	2672073
davidson2081@outlook.com	Bahrain	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	899254	4725974
vocal2080@protonmail.com	Bahrain	e88d9503-9bde-473f-9276-3651878e2863	2789989	3041629
vocal2080@protonmail.com	Bahrain	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1458182	894580
peoples2042@protonmail.com	Bahrain	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5836447	4745156
required1923@outlook.com	Bahrain	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2432337	4421503
pda1876@outlook.com	Bahrain	28778fb1-1671-4bad-8284-6a731564a45e	2544809	517954
required1923@outlook.com	Bahrain	e5a762f6-3052-4384-a92b-b5401e965d25	3052441	4441918
lifetime1925@gmail.com	Bahrain	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2177063	291073
vocal2080@protonmail.com	Bahrain	642d495a-e016-412f-a53b-dc046cc492a0	5113971	1914907
dont2100@protonmail.com	Jersey	5de74332-bf74-402e-bac8-55b0a378954d	4395216	1233713
only2081@protonmail.com	Jersey	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	7343714	3446959
chance1827@gmail.com	Jersey	5a00b0a4-db1a-4555-b66c-e47023575e85	5550275	1271004
absence1941@live.com	Jersey	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	924905	5981323
delight1975@live.com	Jersey	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3109386	3869613
hospital2060@yahoo.com	Jersey	69798bb6-1716-47ee-90ff-0938314cce0c	663609	3493702
davidson2081@outlook.com	Jersey	9a270672-9e02-44bf-ba2e-2b6baf568829	9227750	2093656
florence2033@protonmail.com	Jersey	69817e8b-5270-4081-b06b-5f94d1a99c72	8209891	4493483
chance1827@gmail.com	Jersey	62f3d028-08e0-4986-806a-254f0d812c5b	3523603	4475002
navy1800@outlook.com	Jersey	80a97543-fd97-40a3-b8dc-f58e50101abc	8508194	2447255
bind1902@yahoo.com	Jersey	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	9188152	457745
chance1827@gmail.com	Jersey	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5138485	6344232
bind1902@yahoo.com	Jersey	9848ad52-bed1-4791-9352-c779584dcbe7	6409074	7496696
absence1941@live.com	Jersey	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	9453719	8041310
bind1902@yahoo.com	Jersey	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4988589	7014851
fred1901@live.com	Jersey	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	6156354	3003069
delight1975@live.com	Jersey	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4074610	5821885
bookings1998@protonmail.com	Jersey	c5c41565-02cb-462f-83e5-150521ebde9c	4695895	6307187
hormone1827@gmail.com	Jersey	8ec60513-990a-4ce2-a516-8972fdcf9919	6588835	4341744
boost1833@gmail.com	Jersey	68739ab8-38f9-45e5-9e67-fb0fc6139879	2095622	856478
hospital2060@yahoo.com	Jersey	ea8636de-62ee-4739-8be2-2028afe303c9	1597342	5869936
webpage2008@yahoo.com	Jersey	ce85ec8a-a207-4929-ba56-2e8376b239ea	5618749	7202521
bookings1998@protonmail.com	Jersey	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5592329	6004557
journey2091@outlook.com	Jersey	5ed75d07-f129-4210-8934-b5282ab6bf39	681853	9181367
only2081@protonmail.com	Jersey	c82545f7-d728-4444-aded-9648e5d8c22c	8710341	2407704
webpage2008@yahoo.com	Jersey	b207278e-f452-43f3-8e6d-1d55a32497dc	1563387	5978191
bookings1998@protonmail.com	Jersey	e6920268-aba1-48db-8739-415368d962ec	4858905	1573191
dont2100@protonmail.com	Jersey	6feb9519-7623-422d-848c-0b9a5723da19	6296393	7915396
despite1900@live.com	Jersey	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	56410	9000376
peoples2042@protonmail.com	Jersey	7408db66-1b96-458c-b4f6-4234b2625afd	9331619	4061134
bookings1998@protonmail.com	Jersey	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1799694	125491
bind1902@yahoo.com	Jersey	0b57e8c3-3a12-44b9-8236-ace791387ba3	3821084	4595652
florence2033@protonmail.com	Jersey	33828361-6656-438a-aeb6-15a2e5ffcf27	5499846	4469285
only2081@protonmail.com	Jersey	57309776-d0f5-43a2-b94e-38372ee07cc6	1868761	6190602
duncan1820@gmail.com	Jersey	436386c2-345f-4570-ba73-582b3437d53e	2006048	8157034
bookings1998@protonmail.com	Jersey	dccda210-9223-4604-b148-a0a248fb714e	5241387	7681125
cruise1800@yahoo.com	Jersey	8acf71b1-5cd5-4010-8a5c-b1265d537e02	6411773	8033729
program2002@yandex.com	Jersey	495303f4-a868-4fa4-acba-c08667d7bcc8	5302919	3582578
bookings1998@protonmail.com	Jersey	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	8744052	5331716
journey2091@outlook.com	Jersey	c94fd88f-86c3-433a-9d81-b19695d48328	6603733	8607708
throwing1896@protonmail.com	Jersey	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2983362	5966525
building2058@yandex.com	Jersey	e88d9503-9bde-473f-9276-3651878e2863	6088674	934965
overall2026@outlook.com	Jersey	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4787173	4869457
journey2091@outlook.com	Jersey	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6908370	8151027
journey2091@outlook.com	Jersey	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3737390	1950025
lifetime1925@gmail.com	Jersey	28778fb1-1671-4bad-8284-6a731564a45e	6968945	2746475
vocal2080@protonmail.com	Jersey	e5a762f6-3052-4384-a92b-b5401e965d25	40879	9120557
journey2091@outlook.com	Jersey	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	7928345	3331339
program2002@yandex.com	Jersey	642d495a-e016-412f-a53b-dc046cc492a0	3569195	6087819
boost1833@gmail.com	Finland	5de74332-bf74-402e-bac8-55b0a378954d	1263047	1890858
mature1894@yahoo.com	Finland	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1638720	2616030
nelson2015@protonmail.com	Finland	5a00b0a4-db1a-4555-b66c-e47023575e85	2398829	2971822
navy1800@outlook.com	Finland	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3425172	3193711
lifetime1925@gmail.com	Finland	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3526962	2953764
only2081@protonmail.com	Finland	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	472150	1316480
hormone1827@gmail.com	Finland	69798bb6-1716-47ee-90ff-0938314cce0c	894305	551345
navy1800@outlook.com	Finland	9a270672-9e02-44bf-ba2e-2b6baf568829	2083453	1682667
nelson2015@protonmail.com	Finland	69817e8b-5270-4081-b06b-5f94d1a99c72	2936394	920012
peoples2042@protonmail.com	Finland	62f3d028-08e0-4986-806a-254f0d812c5b	940682	3264795
duncan1820@gmail.com	Finland	80a97543-fd97-40a3-b8dc-f58e50101abc	2912117	1742150
fred1901@live.com	Finland	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1501684	941991
duncan1820@gmail.com	Finland	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2307166	13929
overall2026@outlook.com	Finland	9848ad52-bed1-4791-9352-c779584dcbe7	2534934	18205
nbc2041@yahoo.com	Finland	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2782362	3379447
throwing1896@protonmail.com	Finland	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1524842	1092830
local1830@gmail.com	Finland	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	752700	2346840
davidson2081@outlook.com	Finland	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	634648	24372
boost1833@gmail.com	Finland	c5c41565-02cb-462f-83e5-150521ebde9c	694335	3174163
pda1876@outlook.com	Finland	8ec60513-990a-4ce2-a516-8972fdcf9919	3623677	53761
hormone1827@gmail.com	Finland	68739ab8-38f9-45e5-9e67-fb0fc6139879	850921	2901134
building2058@yandex.com	Finland	ea8636de-62ee-4739-8be2-2028afe303c9	1692904	27293
cruise1800@yahoo.com	Finland	ce85ec8a-a207-4929-ba56-2e8376b239ea	1698291	2903025
throwing1896@protonmail.com	Finland	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2053052	1924090
overall2026@outlook.com	Finland	5ed75d07-f129-4210-8934-b5282ab6bf39	742060	3570097
nbc2041@yahoo.com	Finland	c82545f7-d728-4444-aded-9648e5d8c22c	2029968	1855792
boost1833@gmail.com	Finland	b207278e-f452-43f3-8e6d-1d55a32497dc	2735116	1021094
restoration1945@yahoo.com	Finland	e6920268-aba1-48db-8739-415368d962ec	2452120	3034701
webpage2008@yahoo.com	Finland	6feb9519-7623-422d-848c-0b9a5723da19	140831	728601
sauce2013@yandex.com	Finland	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1002137	3693080
nelson2015@protonmail.com	Finland	7408db66-1b96-458c-b4f6-4234b2625afd	1548296	183817
throwing1896@protonmail.com	Finland	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3633560	3262467
florence2033@protonmail.com	Finland	0b57e8c3-3a12-44b9-8236-ace791387ba3	3627665	3775938
navy1800@outlook.com	Finland	33828361-6656-438a-aeb6-15a2e5ffcf27	3039918	1022199
program2002@yandex.com	Finland	ccde439b-b989-4cd2-aec9-f142c8d948d0	358146	1837188
florence2033@protonmail.com	Finland	57309776-d0f5-43a2-b94e-38372ee07cc6	2382655	185247
nelson2015@protonmail.com	Finland	436386c2-345f-4570-ba73-582b3437d53e	1292217	2834138
dont2100@protonmail.com	Finland	dccda210-9223-4604-b148-a0a248fb714e	1984652	1002352
throwing1896@protonmail.com	Finland	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3427993	1516668
nbc2041@yahoo.com	Finland	495303f4-a868-4fa4-acba-c08667d7bcc8	2742252	3168624
pda1876@outlook.com	Finland	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2254055	1558932
officials1972@protonmail.com	Finland	c94fd88f-86c3-433a-9d81-b19695d48328	3599662	666152
despite1900@live.com	Finland	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2050568	239788
boost1833@gmail.com	Finland	e88d9503-9bde-473f-9276-3651878e2863	3399655	162487
restoration1945@yahoo.com	Finland	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	89849	198959
fred1901@live.com	Finland	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3648718	1762056
only2081@protonmail.com	Finland	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2814673	1357135
bookings1998@protonmail.com	Finland	28778fb1-1671-4bad-8284-6a731564a45e	3097418	2004986
hormone1827@gmail.com	Finland	e5a762f6-3052-4384-a92b-b5401e965d25	2438208	1145355
despite1900@live.com	Finland	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3473275	3451390
facilitate2066@gmail.com	Finland	642d495a-e016-412f-a53b-dc046cc492a0	3597991	715450
absence1941@live.com	Canada	5de74332-bf74-402e-bac8-55b0a378954d	3240749	2432436
bookings1998@protonmail.com	Canada	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1145071	3999784
boost1833@gmail.com	Canada	5a00b0a4-db1a-4555-b66c-e47023575e85	921362	1821300
boost1833@gmail.com	Canada	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	786127	1941758
sauce2013@yandex.com	Canada	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1775353	4161738
florence2033@protonmail.com	Canada	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	28854	302824
despite1900@live.com	Canada	69798bb6-1716-47ee-90ff-0938314cce0c	859846	4008139
bookings1998@protonmail.com	Canada	9a270672-9e02-44bf-ba2e-2b6baf568829	3424419	3141656
program2002@yandex.com	Canada	69817e8b-5270-4081-b06b-5f94d1a99c72	4036053	581612
bind1902@yahoo.com	Canada	62f3d028-08e0-4986-806a-254f0d812c5b	1435116	3560632
required1923@outlook.com	Canada	80a97543-fd97-40a3-b8dc-f58e50101abc	3186004	1042936
required1923@outlook.com	Canada	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3029367	710851
facilitate2066@gmail.com	Canada	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	741998	1372853
boost1833@gmail.com	Canada	9848ad52-bed1-4791-9352-c779584dcbe7	4694727	3036591
vocal2080@protonmail.com	Canada	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	378011	4888375
building2058@yandex.com	Canada	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1044052	927886
program2002@yandex.com	Canada	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2820435	3463975
boost1833@gmail.com	Canada	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4966833	4944277
dont2100@protonmail.com	Canada	c5c41565-02cb-462f-83e5-150521ebde9c	3172046	1150108
lifetime1925@gmail.com	Canada	8ec60513-990a-4ce2-a516-8972fdcf9919	1045258	3267359
officials1972@protonmail.com	Canada	68739ab8-38f9-45e5-9e67-fb0fc6139879	447399	3308410
sauce2013@yandex.com	Canada	ea8636de-62ee-4739-8be2-2028afe303c9	3581264	3164481
mature1894@yahoo.com	Canada	ce85ec8a-a207-4929-ba56-2e8376b239ea	1915180	4567038
only2081@protonmail.com	Canada	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1515416	2874312
overall2026@outlook.com	Canada	5ed75d07-f129-4210-8934-b5282ab6bf39	2553518	1724788
hormone1827@gmail.com	Canada	c82545f7-d728-4444-aded-9648e5d8c22c	2093802	2150461
mature1894@yahoo.com	Canada	b207278e-f452-43f3-8e6d-1d55a32497dc	3846108	4078128
sauce2013@yandex.com	Canada	e6920268-aba1-48db-8739-415368d962ec	3610718	754815
building2058@yandex.com	Canada	6feb9519-7623-422d-848c-0b9a5723da19	2297577	756416
hospital2060@yahoo.com	Canada	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2784558	4698717
duncan1820@gmail.com	Canada	7408db66-1b96-458c-b4f6-4234b2625afd	4875580	5020092
local1830@gmail.com	Canada	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1350627	3889960
program2002@yandex.com	Canada	0b57e8c3-3a12-44b9-8236-ace791387ba3	1605777	84305
hormone1827@gmail.com	Canada	33828361-6656-438a-aeb6-15a2e5ffcf27	3369766	2689643
program2002@yandex.com	Canada	ccde439b-b989-4cd2-aec9-f142c8d948d0	3506492	113169
navy1800@outlook.com	Canada	57309776-d0f5-43a2-b94e-38372ee07cc6	1338154	902390
nbc2041@yahoo.com	Canada	436386c2-345f-4570-ba73-582b3437d53e	2245050	2113114
absence1941@live.com	Canada	dccda210-9223-4604-b148-a0a248fb714e	3504056	4563216
despite1900@live.com	Canada	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4711558	4092067
absence1941@live.com	Canada	495303f4-a868-4fa4-acba-c08667d7bcc8	521143	1994849
required1923@outlook.com	Canada	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1223148	1012377
mature1894@yahoo.com	Canada	c94fd88f-86c3-433a-9d81-b19695d48328	3814155	1128982
mature1894@yahoo.com	Canada	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1540717	3674616
navy1800@outlook.com	Canada	e88d9503-9bde-473f-9276-3651878e2863	4879071	1904009
absence1941@live.com	Canada	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1546620	4842015
pda1876@outlook.com	Canada	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2572930	480388
vocal2080@protonmail.com	Canada	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1919862	2028540
local1830@gmail.com	Canada	28778fb1-1671-4bad-8284-6a731564a45e	154569	4279433
boost1833@gmail.com	Canada	e5a762f6-3052-4384-a92b-b5401e965d25	4122043	1556653
hospital2060@yahoo.com	Canada	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4317699	2953530
webpage2008@yahoo.com	Canada	642d495a-e016-412f-a53b-dc046cc492a0	624902	2226425
dont2100@protonmail.com	San Marino	5de74332-bf74-402e-bac8-55b0a378954d	2525078	849587
delight1975@live.com	San Marino	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	709006	2492017
program2002@yandex.com	San Marino	5a00b0a4-db1a-4555-b66c-e47023575e85	3027131	4045304
overall2026@outlook.com	San Marino	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2062510	3523696
navy1800@outlook.com	San Marino	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2819796	158667
nelson2015@protonmail.com	San Marino	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3912091	3979870
required1923@outlook.com	San Marino	69798bb6-1716-47ee-90ff-0938314cce0c	260615	3747192
sauce2013@yandex.com	San Marino	9a270672-9e02-44bf-ba2e-2b6baf568829	894972	522816
local1830@gmail.com	San Marino	69817e8b-5270-4081-b06b-5f94d1a99c72	3357888	1751766
dont2100@protonmail.com	San Marino	62f3d028-08e0-4986-806a-254f0d812c5b	1564416	1470010
delight1975@live.com	San Marino	80a97543-fd97-40a3-b8dc-f58e50101abc	245435	1075085
nbc2041@yahoo.com	San Marino	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2523729	2075292
peoples2042@protonmail.com	San Marino	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	368460	2353676
building2058@yandex.com	San Marino	9848ad52-bed1-4791-9352-c779584dcbe7	304073	255606
despite1900@live.com	San Marino	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2556210	2278920
local1830@gmail.com	San Marino	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	270827	941846
bookings1998@protonmail.com	San Marino	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	791162	285445
delight1975@live.com	San Marino	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1740135	3276783
chance1827@gmail.com	San Marino	c5c41565-02cb-462f-83e5-150521ebde9c	219843	1792187
cruise1800@yahoo.com	San Marino	8ec60513-990a-4ce2-a516-8972fdcf9919	3449432	3015196
throwing1896@protonmail.com	San Marino	68739ab8-38f9-45e5-9e67-fb0fc6139879	379376	2728136
chance1827@gmail.com	San Marino	ea8636de-62ee-4739-8be2-2028afe303c9	1038824	2550948
bind1902@yahoo.com	San Marino	ce85ec8a-a207-4929-ba56-2e8376b239ea	4034148	2836308
absence1941@live.com	San Marino	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	752410	1279709
mature1894@yahoo.com	San Marino	5ed75d07-f129-4210-8934-b5282ab6bf39	2513067	1915127
chance1827@gmail.com	San Marino	c82545f7-d728-4444-aded-9648e5d8c22c	3569225	941110
davidson2081@outlook.com	San Marino	b207278e-f452-43f3-8e6d-1d55a32497dc	1267774	296336
boost1833@gmail.com	San Marino	e6920268-aba1-48db-8739-415368d962ec	1163170	672016
required1923@outlook.com	San Marino	6feb9519-7623-422d-848c-0b9a5723da19	2101248	3331347
peoples2042@protonmail.com	San Marino	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	705966	586762
davidson2081@outlook.com	San Marino	7408db66-1b96-458c-b4f6-4234b2625afd	1933972	327446
journey2091@outlook.com	San Marino	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2391978	600672
pda1876@outlook.com	San Marino	0b57e8c3-3a12-44b9-8236-ace791387ba3	1460815	3942824
throwing1896@protonmail.com	San Marino	33828361-6656-438a-aeb6-15a2e5ffcf27	2521527	3650238
facilitate2066@gmail.com	San Marino	ccde439b-b989-4cd2-aec9-f142c8d948d0	988636	2279532
davidson2081@outlook.com	San Marino	57309776-d0f5-43a2-b94e-38372ee07cc6	2569498	1492791
sauce2013@yandex.com	San Marino	436386c2-345f-4570-ba73-582b3437d53e	2688753	1397209
florence2033@protonmail.com	San Marino	dccda210-9223-4604-b148-a0a248fb714e	3899686	3663213
restoration1945@yahoo.com	San Marino	8acf71b1-5cd5-4010-8a5c-b1265d537e02	804992	2379146
despite1900@live.com	San Marino	495303f4-a868-4fa4-acba-c08667d7bcc8	3550754	3729564
webpage2008@yahoo.com	San Marino	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	811651	302687
nbc2041@yahoo.com	San Marino	c94fd88f-86c3-433a-9d81-b19695d48328	4045625	3874533
dont2100@protonmail.com	San Marino	e88d9503-9bde-473f-9276-3651878e2863	861902	1508237
fred1901@live.com	San Marino	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3351234	3690745
building2058@yandex.com	San Marino	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1400401	2379017
journey2091@outlook.com	San Marino	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2992231	1184880
absence1941@live.com	San Marino	28778fb1-1671-4bad-8284-6a731564a45e	3804673	1422208
local1830@gmail.com	San Marino	e5a762f6-3052-4384-a92b-b5401e965d25	3453003	917467
throwing1896@protonmail.com	San Marino	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2545731	2476812
hormone1827@gmail.com	San Marino	642d495a-e016-412f-a53b-dc046cc492a0	1739445	3421892
hospital2060@yahoo.com	Nigeria	5de74332-bf74-402e-bac8-55b0a378954d	4793266	3138461
absence1941@live.com	Nigeria	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2974654	4250084
journey2091@outlook.com	Nigeria	5a00b0a4-db1a-4555-b66c-e47023575e85	1391937	3241366
restoration1945@yahoo.com	Nigeria	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	663456	737475
vocal2080@protonmail.com	Nigeria	000efc5f-1b50-44ef-92c9-7cd412ba4fca	38939	3755068
vocal2080@protonmail.com	Nigeria	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3606863	2114455
dont2100@protonmail.com	Nigeria	69798bb6-1716-47ee-90ff-0938314cce0c	665144	2201810
restoration1945@yahoo.com	Nigeria	9a270672-9e02-44bf-ba2e-2b6baf568829	4933649	3009861
boost1833@gmail.com	Nigeria	69817e8b-5270-4081-b06b-5f94d1a99c72	2214246	4846037
hospital2060@yahoo.com	Nigeria	62f3d028-08e0-4986-806a-254f0d812c5b	2828498	6009163
mature1894@yahoo.com	Nigeria	80a97543-fd97-40a3-b8dc-f58e50101abc	534840	1830489
pda1876@outlook.com	Nigeria	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1500871	5922809
webpage2008@yahoo.com	Nigeria	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2988621	1928309
throwing1896@protonmail.com	Nigeria	9848ad52-bed1-4791-9352-c779584dcbe7	1783936	3926064
absence1941@live.com	Nigeria	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4319595	3750969
building2058@yandex.com	Nigeria	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2792423	902630
absence1941@live.com	Nigeria	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5629330	2226959
overall2026@outlook.com	Nigeria	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1550699	1963390
mature1894@yahoo.com	Nigeria	c5c41565-02cb-462f-83e5-150521ebde9c	4372278	3109934
building2058@yandex.com	Nigeria	8ec60513-990a-4ce2-a516-8972fdcf9919	2187405	3328585
chance1827@gmail.com	Nigeria	68739ab8-38f9-45e5-9e67-fb0fc6139879	4224540	3998053
despite1900@live.com	Nigeria	ea8636de-62ee-4739-8be2-2028afe303c9	4083453	76941
cruise1800@yahoo.com	Nigeria	ce85ec8a-a207-4929-ba56-2e8376b239ea	4479763	5156735
facilitate2066@gmail.com	Nigeria	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4904675	868468
vocal2080@protonmail.com	Nigeria	5ed75d07-f129-4210-8934-b5282ab6bf39	583490	384918
lifetime1925@gmail.com	Nigeria	c82545f7-d728-4444-aded-9648e5d8c22c	5173079	2013430
dont2100@protonmail.com	Nigeria	b207278e-f452-43f3-8e6d-1d55a32497dc	2136202	2045076
chance1827@gmail.com	Nigeria	e6920268-aba1-48db-8739-415368d962ec	2706401	4039244
sauce2013@yandex.com	Nigeria	6feb9519-7623-422d-848c-0b9a5723da19	1994377	2558723
throwing1896@protonmail.com	Nigeria	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5170032	2380672
overall2026@outlook.com	Nigeria	7408db66-1b96-458c-b4f6-4234b2625afd	4306075	4623694
peoples2042@protonmail.com	Nigeria	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3809839	3166036
journey2091@outlook.com	Nigeria	0b57e8c3-3a12-44b9-8236-ace791387ba3	4756976	1295000
peoples2042@protonmail.com	Nigeria	33828361-6656-438a-aeb6-15a2e5ffcf27	4123920	4206712
pda1876@outlook.com	Nigeria	ccde439b-b989-4cd2-aec9-f142c8d948d0	5344473	2086385
peoples2042@protonmail.com	Nigeria	57309776-d0f5-43a2-b94e-38372ee07cc6	4588685	1494367
despite1900@live.com	Nigeria	436386c2-345f-4570-ba73-582b3437d53e	2586649	1959378
bookings1998@protonmail.com	Nigeria	dccda210-9223-4604-b148-a0a248fb714e	935610	4106117
absence1941@live.com	Nigeria	8acf71b1-5cd5-4010-8a5c-b1265d537e02	5136907	5364676
hormone1827@gmail.com	Nigeria	495303f4-a868-4fa4-acba-c08667d7bcc8	385497	5368060
hormone1827@gmail.com	Nigeria	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1318783	1932425
webpage2008@yahoo.com	Nigeria	c94fd88f-86c3-433a-9d81-b19695d48328	1816571	4481409
peoples2042@protonmail.com	Nigeria	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2790162	1896901
peoples2042@protonmail.com	Nigeria	e88d9503-9bde-473f-9276-3651878e2863	5670229	1737028
absence1941@live.com	Nigeria	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	368566	2775625
dont2100@protonmail.com	Nigeria	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3766972	5343960
peoples2042@protonmail.com	Nigeria	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6019969	3646540
hospital2060@yahoo.com	Nigeria	28778fb1-1671-4bad-8284-6a731564a45e	3453570	2625386
webpage2008@yahoo.com	Nigeria	e5a762f6-3052-4384-a92b-b5401e965d25	3344832	4638756
delight1975@live.com	Nigeria	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4075008	904624
boost1833@gmail.com	Nigeria	642d495a-e016-412f-a53b-dc046cc492a0	5393504	1890455
dont2100@protonmail.com	Trinidad & Tobago	5de74332-bf74-402e-bac8-55b0a378954d	233252	842417
officials1972@protonmail.com	Trinidad & Tobago	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1151527	1548912
davidson2081@outlook.com	Trinidad & Tobago	5a00b0a4-db1a-4555-b66c-e47023575e85	87134	1100732
vocal2080@protonmail.com	Trinidad & Tobago	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	392714	1791074
duncan1820@gmail.com	Trinidad & Tobago	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2461407	2798927
program2002@yandex.com	Trinidad & Tobago	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1954157	702569
hormone1827@gmail.com	Trinidad & Tobago	69798bb6-1716-47ee-90ff-0938314cce0c	618669	124267
hospital2060@yahoo.com	Trinidad & Tobago	9a270672-9e02-44bf-ba2e-2b6baf568829	2297964	553753
restoration1945@yahoo.com	Trinidad & Tobago	69817e8b-5270-4081-b06b-5f94d1a99c72	1726285	1362815
cruise1800@yahoo.com	Trinidad & Tobago	62f3d028-08e0-4986-806a-254f0d812c5b	2045615	1012830
fred1901@live.com	Trinidad & Tobago	80a97543-fd97-40a3-b8dc-f58e50101abc	1197125	500456
despite1900@live.com	Trinidad & Tobago	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2808115	1951699
local1830@gmail.com	Trinidad & Tobago	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	304284	2321932
cruise1800@yahoo.com	Trinidad & Tobago	9848ad52-bed1-4791-9352-c779584dcbe7	818761	2882523
chance1827@gmail.com	Trinidad & Tobago	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	390110	2283470
required1923@outlook.com	Trinidad & Tobago	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	772565	1670281
officials1972@protonmail.com	Trinidad & Tobago	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1909538	2111655
vocal2080@protonmail.com	Trinidad & Tobago	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1395500	2518301
delight1975@live.com	Trinidad & Tobago	c5c41565-02cb-462f-83e5-150521ebde9c	1869653	2122191
only2081@protonmail.com	Trinidad & Tobago	8ec60513-990a-4ce2-a516-8972fdcf9919	2105142	1937671
despite1900@live.com	Trinidad & Tobago	68739ab8-38f9-45e5-9e67-fb0fc6139879	88189	2720750
officials1972@protonmail.com	Trinidad & Tobago	ea8636de-62ee-4739-8be2-2028afe303c9	2826360	2422184
throwing1896@protonmail.com	Trinidad & Tobago	ce85ec8a-a207-4929-ba56-2e8376b239ea	105110	2287399
navy1800@outlook.com	Trinidad & Tobago	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	707103	2469653
lifetime1925@gmail.com	Trinidad & Tobago	5ed75d07-f129-4210-8934-b5282ab6bf39	1258690	2532874
vocal2080@protonmail.com	Trinidad & Tobago	c82545f7-d728-4444-aded-9648e5d8c22c	62352	1180201
davidson2081@outlook.com	Trinidad & Tobago	b207278e-f452-43f3-8e6d-1d55a32497dc	2509545	954534
journey2091@outlook.com	Trinidad & Tobago	e6920268-aba1-48db-8739-415368d962ec	2539735	664722
only2081@protonmail.com	Trinidad & Tobago	6feb9519-7623-422d-848c-0b9a5723da19	2744584	1961905
only2081@protonmail.com	Trinidad & Tobago	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	314988	2772678
vocal2080@protonmail.com	Trinidad & Tobago	7408db66-1b96-458c-b4f6-4234b2625afd	948718	1424860
chance1827@gmail.com	Trinidad & Tobago	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1680080	2623217
throwing1896@protonmail.com	Trinidad & Tobago	0b57e8c3-3a12-44b9-8236-ace791387ba3	433776	2133484
program2002@yandex.com	Trinidad & Tobago	33828361-6656-438a-aeb6-15a2e5ffcf27	1224375	2647800
only2081@protonmail.com	Trinidad & Tobago	ccde439b-b989-4cd2-aec9-f142c8d948d0	1130033	2036991
sauce2013@yandex.com	Trinidad & Tobago	57309776-d0f5-43a2-b94e-38372ee07cc6	121360	36863
nbc2041@yahoo.com	Trinidad & Tobago	436386c2-345f-4570-ba73-582b3437d53e	1279384	712592
absence1941@live.com	Trinidad & Tobago	dccda210-9223-4604-b148-a0a248fb714e	2111138	2881567
florence2033@protonmail.com	Trinidad & Tobago	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1408105	627440
throwing1896@protonmail.com	Trinidad & Tobago	495303f4-a868-4fa4-acba-c08667d7bcc8	771194	1160933
boost1833@gmail.com	Trinidad & Tobago	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	604117	1215809
navy1800@outlook.com	Trinidad & Tobago	c94fd88f-86c3-433a-9d81-b19695d48328	1358183	1766561
only2081@protonmail.com	Trinidad & Tobago	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2472024	1951418
sauce2013@yandex.com	Trinidad & Tobago	e88d9503-9bde-473f-9276-3651878e2863	2012654	661923
program2002@yandex.com	Trinidad & Tobago	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	859066	2814884
dont2100@protonmail.com	Trinidad & Tobago	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2012035	433572
throwing1896@protonmail.com	Trinidad & Tobago	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2462661	719908
cruise1800@yahoo.com	Trinidad & Tobago	28778fb1-1671-4bad-8284-6a731564a45e	2162601	1557873
bind1902@yahoo.com	Trinidad & Tobago	e5a762f6-3052-4384-a92b-b5401e965d25	2129677	2849999
building2058@yandex.com	Trinidad & Tobago	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1279433	1430936
despite1900@live.com	Trinidad & Tobago	642d495a-e016-412f-a53b-dc046cc492a0	1552427	1863930
sauce2013@yandex.com	Guadeloupe	5de74332-bf74-402e-bac8-55b0a378954d	3747876	503799
hormone1827@gmail.com	Guadeloupe	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2652988	1103955
hormone1827@gmail.com	Guadeloupe	5a00b0a4-db1a-4555-b66c-e47023575e85	4265824	1525803
boost1833@gmail.com	Guadeloupe	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2216492	120593
duncan1820@gmail.com	Guadeloupe	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2597638	4359576
peoples2042@protonmail.com	Guadeloupe	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2265012	4968215
cruise1800@yahoo.com	Guadeloupe	69798bb6-1716-47ee-90ff-0938314cce0c	3962974	3012920
delight1975@live.com	Guadeloupe	9a270672-9e02-44bf-ba2e-2b6baf568829	1191402	2579067
despite1900@live.com	Guadeloupe	69817e8b-5270-4081-b06b-5f94d1a99c72	2876216	5117264
vocal2080@protonmail.com	Guadeloupe	62f3d028-08e0-4986-806a-254f0d812c5b	3644806	1269861
cruise1800@yahoo.com	Guadeloupe	80a97543-fd97-40a3-b8dc-f58e50101abc	15263	3017097
bind1902@yahoo.com	Guadeloupe	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4902674	4094922
overall2026@outlook.com	Guadeloupe	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1552941	4007464
webpage2008@yahoo.com	Guadeloupe	9848ad52-bed1-4791-9352-c779584dcbe7	1906589	3267045
davidson2081@outlook.com	Guadeloupe	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	273096	5513614
program2002@yandex.com	Guadeloupe	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1588213	3846048
hospital2060@yahoo.com	Guadeloupe	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1524335	17106
overall2026@outlook.com	Guadeloupe	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3175671	1969427
absence1941@live.com	Guadeloupe	c5c41565-02cb-462f-83e5-150521ebde9c	196161	2059938
cruise1800@yahoo.com	Guadeloupe	8ec60513-990a-4ce2-a516-8972fdcf9919	1592476	3729948
chance1827@gmail.com	Guadeloupe	68739ab8-38f9-45e5-9e67-fb0fc6139879	952526	4786761
delight1975@live.com	Guadeloupe	ea8636de-62ee-4739-8be2-2028afe303c9	999725	3253335
overall2026@outlook.com	Guadeloupe	ce85ec8a-a207-4929-ba56-2e8376b239ea	5514055	4724530
lifetime1925@gmail.com	Guadeloupe	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5739968	3539792
despite1900@live.com	Guadeloupe	5ed75d07-f129-4210-8934-b5282ab6bf39	4774475	1201547
mature1894@yahoo.com	Guadeloupe	c82545f7-d728-4444-aded-9648e5d8c22c	2826763	2790384
pda1876@outlook.com	Guadeloupe	b207278e-f452-43f3-8e6d-1d55a32497dc	4237301	5688231
mature1894@yahoo.com	Guadeloupe	e6920268-aba1-48db-8739-415368d962ec	2671633	1631282
despite1900@live.com	Guadeloupe	6feb9519-7623-422d-848c-0b9a5723da19	2824210	3274440
hospital2060@yahoo.com	Guadeloupe	7408db66-1b96-458c-b4f6-4234b2625afd	1456855	582942
cruise1800@yahoo.com	Guadeloupe	0b57e8c3-3a12-44b9-8236-ace791387ba3	4343408	3896516
davidson2081@outlook.com	Guadeloupe	ccde439b-b989-4cd2-aec9-f142c8d948d0	4997349	5087359
nbc2041@yahoo.com	Guadeloupe	57309776-d0f5-43a2-b94e-38372ee07cc6	116399	59243
hospital2060@yahoo.com	Guadeloupe	436386c2-345f-4570-ba73-582b3437d53e	3320902	131469
building2058@yandex.com	Guadeloupe	dccda210-9223-4604-b148-a0a248fb714e	2689467	4216469
mature1894@yahoo.com	Guadeloupe	8acf71b1-5cd5-4010-8a5c-b1265d537e02	5855817	2666423
boost1833@gmail.com	Guadeloupe	495303f4-a868-4fa4-acba-c08667d7bcc8	3273440	5575559
mature1894@yahoo.com	Guadeloupe	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2884616	2210834
davidson2081@outlook.com	Guadeloupe	c94fd88f-86c3-433a-9d81-b19695d48328	1044165	2785470
only2081@protonmail.com	Guadeloupe	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	71865	1040526
cruise1800@yahoo.com	Guadeloupe	e88d9503-9bde-473f-9276-3651878e2863	1045699	3005045
fred1901@live.com	Guadeloupe	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3645763	1149100
absence1941@live.com	Guadeloupe	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4065613	3393374
vocal2080@protonmail.com	Guadeloupe	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4827874	2009736
only2081@protonmail.com	Guadeloupe	e5a762f6-3052-4384-a92b-b5401e965d25	558698	4187341
florence2033@protonmail.com	Guadeloupe	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	5671570	6026338
program2002@yandex.com	Kyrgyzstan	5de74332-bf74-402e-bac8-55b0a378954d	8262628	6571254
pda1876@outlook.com	Kyrgyzstan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1953714	6321577
required1923@outlook.com	Kyrgyzstan	5a00b0a4-db1a-4555-b66c-e47023575e85	8062872	7259024
local1830@gmail.com	Kyrgyzstan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	6924806	9537024
cruise1800@yahoo.com	Kyrgyzstan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5533855	7045666
florence2033@protonmail.com	Kyrgyzstan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1686459	8052471
despite1900@live.com	Kyrgyzstan	69798bb6-1716-47ee-90ff-0938314cce0c	8083392	5189404
davidson2081@outlook.com	Kyrgyzstan	9a270672-9e02-44bf-ba2e-2b6baf568829	3805106	3209957
local1830@gmail.com	Kyrgyzstan	69817e8b-5270-4081-b06b-5f94d1a99c72	3083591	7429709
restoration1945@yahoo.com	Kyrgyzstan	62f3d028-08e0-4986-806a-254f0d812c5b	6083716	403336
nelson2015@protonmail.com	Kyrgyzstan	80a97543-fd97-40a3-b8dc-f58e50101abc	8908293	851936
nelson2015@protonmail.com	Kyrgyzstan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2645423	8116589
sauce2013@yandex.com	Kyrgyzstan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2564225	4344501
facilitate2066@gmail.com	Kyrgyzstan	9848ad52-bed1-4791-9352-c779584dcbe7	4455842	683335
restoration1945@yahoo.com	Kyrgyzstan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6139871	5250355
cruise1800@yahoo.com	Kyrgyzstan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7048979	2371937
local1830@gmail.com	Kyrgyzstan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1112387	3364466
cruise1800@yahoo.com	Kyrgyzstan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2705368	6071973
bind1902@yahoo.com	Kyrgyzstan	c5c41565-02cb-462f-83e5-150521ebde9c	70600	6705011
bind1902@yahoo.com	Kyrgyzstan	8ec60513-990a-4ce2-a516-8972fdcf9919	8459961	2663836
lifetime1925@gmail.com	Kyrgyzstan	68739ab8-38f9-45e5-9e67-fb0fc6139879	2053336	4559073
duncan1820@gmail.com	Kyrgyzstan	ea8636de-62ee-4739-8be2-2028afe303c9	2835116	3106821
peoples2042@protonmail.com	Kyrgyzstan	ce85ec8a-a207-4929-ba56-2e8376b239ea	6039889	2305473
facilitate2066@gmail.com	Kyrgyzstan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3676238	455119
pda1876@outlook.com	Kyrgyzstan	5ed75d07-f129-4210-8934-b5282ab6bf39	8446203	7123615
throwing1896@protonmail.com	Kyrgyzstan	c82545f7-d728-4444-aded-9648e5d8c22c	5868700	6741943
hospital2060@yahoo.com	Kyrgyzstan	b207278e-f452-43f3-8e6d-1d55a32497dc	2685189	5074970
boost1833@gmail.com	Kyrgyzstan	e6920268-aba1-48db-8739-415368d962ec	6146675	227654
throwing1896@protonmail.com	Kyrgyzstan	6feb9519-7623-422d-848c-0b9a5723da19	5356786	1577171
chance1827@gmail.com	Kyrgyzstan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2665845	8788266
vocal2080@protonmail.com	Kyrgyzstan	7408db66-1b96-458c-b4f6-4234b2625afd	3348206	7674582
required1923@outlook.com	Kyrgyzstan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2317787	5264135
overall2026@outlook.com	Kyrgyzstan	0b57e8c3-3a12-44b9-8236-ace791387ba3	5810267	3108202
bookings1998@protonmail.com	Kyrgyzstan	33828361-6656-438a-aeb6-15a2e5ffcf27	7967043	2966599
duncan1820@gmail.com	Kyrgyzstan	ccde439b-b989-4cd2-aec9-f142c8d948d0	2173070	1044670
pda1876@outlook.com	Kyrgyzstan	57309776-d0f5-43a2-b94e-38372ee07cc6	4731339	763940
program2002@yandex.com	Kyrgyzstan	436386c2-345f-4570-ba73-582b3437d53e	214242	7666002
program2002@yandex.com	Kyrgyzstan	dccda210-9223-4604-b148-a0a248fb714e	5597966	5525337
absence1941@live.com	Kyrgyzstan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	6912106	6884567
bind1902@yahoo.com	Kyrgyzstan	495303f4-a868-4fa4-acba-c08667d7bcc8	5285407	2499001
journey2091@outlook.com	Kyrgyzstan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3255727	2384829
nbc2041@yahoo.com	Kyrgyzstan	c94fd88f-86c3-433a-9d81-b19695d48328	1210495	9416158
nbc2041@yahoo.com	Kyrgyzstan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2741608	8315528
restoration1945@yahoo.com	Kyrgyzstan	e88d9503-9bde-473f-9276-3651878e2863	8616714	1032468
only2081@protonmail.com	Kyrgyzstan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2533646	7829733
only2081@protonmail.com	Kyrgyzstan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2328884	9638563
peoples2042@protonmail.com	Kyrgyzstan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4802834	7568337
webpage2008@yahoo.com	Kyrgyzstan	28778fb1-1671-4bad-8284-6a731564a45e	6474612	4352905
peoples2042@protonmail.com	Kyrgyzstan	e5a762f6-3052-4384-a92b-b5401e965d25	6007794	4079314
program2002@yandex.com	Kyrgyzstan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6616681	2764993
dont2100@protonmail.com	Kyrgyzstan	642d495a-e016-412f-a53b-dc046cc492a0	6008483	7035160
cruise1800@yahoo.com	Guinea-Bissau	5de74332-bf74-402e-bac8-55b0a378954d	2478892	3700684
required1923@outlook.com	Guinea-Bissau	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2563597	1466469
davidson2081@outlook.com	Guinea-Bissau	5a00b0a4-db1a-4555-b66c-e47023575e85	1526796	415561
bookings1998@protonmail.com	Guinea-Bissau	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4240227	4756777
fred1901@live.com	Guinea-Bissau	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4683194	4237383
webpage2008@yahoo.com	Guinea-Bissau	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3443364	5876337
davidson2081@outlook.com	Guinea-Bissau	69798bb6-1716-47ee-90ff-0938314cce0c	1635471	2695405
nbc2041@yahoo.com	Guinea-Bissau	9a270672-9e02-44bf-ba2e-2b6baf568829	696020	4473621
hormone1827@gmail.com	Guinea-Bissau	69817e8b-5270-4081-b06b-5f94d1a99c72	2751657	5201397
facilitate2066@gmail.com	Guinea-Bissau	62f3d028-08e0-4986-806a-254f0d812c5b	5821860	5778168
fred1901@live.com	Guinea-Bissau	80a97543-fd97-40a3-b8dc-f58e50101abc	5120583	833452
cruise1800@yahoo.com	Guinea-Bissau	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2553746	3263655
florence2033@protonmail.com	Guinea-Bissau	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	592128	3216956
davidson2081@outlook.com	Guinea-Bissau	9848ad52-bed1-4791-9352-c779584dcbe7	635471	6484580
journey2091@outlook.com	Guinea-Bissau	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2634307	4542157
nelson2015@protonmail.com	Guinea-Bissau	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3306077	3615435
webpage2008@yahoo.com	Guinea-Bissau	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5472251	3536495
local1830@gmail.com	Guinea-Bissau	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5507195	481305
dont2100@protonmail.com	Guinea-Bissau	c5c41565-02cb-462f-83e5-150521ebde9c	779142	5556071
overall2026@outlook.com	Guinea-Bissau	8ec60513-990a-4ce2-a516-8972fdcf9919	3333104	4280464
peoples2042@protonmail.com	Guinea-Bissau	68739ab8-38f9-45e5-9e67-fb0fc6139879	5273674	1964318
despite1900@live.com	Guinea-Bissau	ea8636de-62ee-4739-8be2-2028afe303c9	1395202	4032351
pda1876@outlook.com	Guinea-Bissau	ce85ec8a-a207-4929-ba56-2e8376b239ea	5903565	4310732
duncan1820@gmail.com	Guinea-Bissau	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3986569	253327
bind1902@yahoo.com	Guinea-Bissau	5ed75d07-f129-4210-8934-b5282ab6bf39	5641541	669660
nelson2015@protonmail.com	Guinea-Bissau	c82545f7-d728-4444-aded-9648e5d8c22c	5732639	867856
facilitate2066@gmail.com	Guinea-Bissau	b207278e-f452-43f3-8e6d-1d55a32497dc	2922170	4204553
navy1800@outlook.com	Guinea-Bissau	e6920268-aba1-48db-8739-415368d962ec	6199054	976814
nbc2041@yahoo.com	Guinea-Bissau	6feb9519-7623-422d-848c-0b9a5723da19	4451537	3160584
peoples2042@protonmail.com	Guinea-Bissau	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4686826	4127567
only2081@protonmail.com	Guinea-Bissau	7408db66-1b96-458c-b4f6-4234b2625afd	1645554	1710281
boost1833@gmail.com	Guinea-Bissau	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2140454	1723713
officials1972@protonmail.com	Guinea-Bissau	0b57e8c3-3a12-44b9-8236-ace791387ba3	6317505	5989453
chance1827@gmail.com	Guinea-Bissau	33828361-6656-438a-aeb6-15a2e5ffcf27	5705225	4225183
florence2033@protonmail.com	Guinea-Bissau	ccde439b-b989-4cd2-aec9-f142c8d948d0	3526628	3096647
journey2091@outlook.com	Guinea-Bissau	57309776-d0f5-43a2-b94e-38372ee07cc6	3555951	2478768
lifetime1925@gmail.com	Guinea-Bissau	436386c2-345f-4570-ba73-582b3437d53e	441325	888809
restoration1945@yahoo.com	Guinea-Bissau	dccda210-9223-4604-b148-a0a248fb714e	2200361	379070
nbc2041@yahoo.com	Guinea-Bissau	8acf71b1-5cd5-4010-8a5c-b1265d537e02	704145	6225433
hormone1827@gmail.com	Guinea-Bissau	495303f4-a868-4fa4-acba-c08667d7bcc8	480286	1879529
sauce2013@yandex.com	Guinea-Bissau	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6611711	3574689
navy1800@outlook.com	Guinea-Bissau	c94fd88f-86c3-433a-9d81-b19695d48328	2966817	288774
dont2100@protonmail.com	Guinea-Bissau	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4440675	6347319
building2058@yandex.com	Guinea-Bissau	e88d9503-9bde-473f-9276-3651878e2863	1686049	6431070
chance1827@gmail.com	Guinea-Bissau	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5489809	2721809
bookings1998@protonmail.com	Guinea-Bissau	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5356981	4469782
fred1901@live.com	Guinea-Bissau	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4701314	5858676
lifetime1925@gmail.com	Guinea-Bissau	28778fb1-1671-4bad-8284-6a731564a45e	4634585	1487355
vocal2080@protonmail.com	Guinea-Bissau	e5a762f6-3052-4384-a92b-b5401e965d25	2102099	4770677
hospital2060@yahoo.com	Guinea-Bissau	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	162018	4195148
program2002@yandex.com	Guinea-Bissau	642d495a-e016-412f-a53b-dc046cc492a0	1537713	1641011
fred1901@live.com	Micronesia	5de74332-bf74-402e-bac8-55b0a378954d	111878	1153555
only2081@protonmail.com	Micronesia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1023575	411051
officials1972@protonmail.com	Micronesia	5a00b0a4-db1a-4555-b66c-e47023575e85	299715	864074
peoples2042@protonmail.com	Micronesia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	982087	452889
bind1902@yahoo.com	Micronesia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	174252	1433819
despite1900@live.com	Micronesia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1038193	399249
bookings1998@protonmail.com	Micronesia	69798bb6-1716-47ee-90ff-0938314cce0c	478041	932044
local1830@gmail.com	Micronesia	9a270672-9e02-44bf-ba2e-2b6baf568829	1435274	269946
building2058@yandex.com	Micronesia	69817e8b-5270-4081-b06b-5f94d1a99c72	1510754	129136
delight1975@live.com	Micronesia	62f3d028-08e0-4986-806a-254f0d812c5b	882489	1520876
nelson2015@protonmail.com	Micronesia	80a97543-fd97-40a3-b8dc-f58e50101abc	339998	966890
hospital2060@yahoo.com	Micronesia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	760280	860519
florence2033@protonmail.com	Micronesia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	355859	1215209
pda1876@outlook.com	Micronesia	9848ad52-bed1-4791-9352-c779584dcbe7	380857	534279
facilitate2066@gmail.com	Micronesia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	435649	1181878
sauce2013@yandex.com	Micronesia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1335007	648962
webpage2008@yahoo.com	Micronesia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	325714	280438
lifetime1925@gmail.com	Micronesia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1341351	380001
bookings1998@protonmail.com	Micronesia	c5c41565-02cb-462f-83e5-150521ebde9c	936874	417173
required1923@outlook.com	Micronesia	8ec60513-990a-4ce2-a516-8972fdcf9919	772156	159650
restoration1945@yahoo.com	Micronesia	68739ab8-38f9-45e5-9e67-fb0fc6139879	665724	1133934
restoration1945@yahoo.com	Micronesia	ea8636de-62ee-4739-8be2-2028afe303c9	1244580	262528
peoples2042@protonmail.com	Micronesia	ce85ec8a-a207-4929-ba56-2e8376b239ea	375132	801152
sauce2013@yandex.com	Micronesia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1516736	426713
absence1941@live.com	Micronesia	5ed75d07-f129-4210-8934-b5282ab6bf39	29422	280738
program2002@yandex.com	Micronesia	c82545f7-d728-4444-aded-9648e5d8c22c	498765	463743
florence2033@protonmail.com	Micronesia	b207278e-f452-43f3-8e6d-1d55a32497dc	517909	1297117
bind1902@yahoo.com	Micronesia	e6920268-aba1-48db-8739-415368d962ec	652672	339116
hospital2060@yahoo.com	Micronesia	6feb9519-7623-422d-848c-0b9a5723da19	872948	302488
navy1800@outlook.com	Micronesia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1458427	582423
vocal2080@protonmail.com	Micronesia	7408db66-1b96-458c-b4f6-4234b2625afd	639322	1217051
lifetime1925@gmail.com	Micronesia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	501528	834625
mature1894@yahoo.com	Micronesia	0b57e8c3-3a12-44b9-8236-ace791387ba3	1407775	1440614
overall2026@outlook.com	Micronesia	33828361-6656-438a-aeb6-15a2e5ffcf27	1297191	1098213
mature1894@yahoo.com	Micronesia	ccde439b-b989-4cd2-aec9-f142c8d948d0	720923	133324
throwing1896@protonmail.com	Micronesia	57309776-d0f5-43a2-b94e-38372ee07cc6	1255597	1227311
local1830@gmail.com	Micronesia	436386c2-345f-4570-ba73-582b3437d53e	1533188	1445802
building2058@yandex.com	Micronesia	dccda210-9223-4604-b148-a0a248fb714e	963674	1045448
program2002@yandex.com	Micronesia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1512	119556
absence1941@live.com	Micronesia	495303f4-a868-4fa4-acba-c08667d7bcc8	568418	91584
sauce2013@yandex.com	Micronesia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	287313	405961
dont2100@protonmail.com	Micronesia	c94fd88f-86c3-433a-9d81-b19695d48328	839642	674997
sauce2013@yandex.com	Micronesia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1463212	1340616
vocal2080@protonmail.com	Micronesia	e88d9503-9bde-473f-9276-3651878e2863	704679	502002
davidson2081@outlook.com	Micronesia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	611581	521994
boost1833@gmail.com	Micronesia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	128453	615254
bind1902@yahoo.com	Micronesia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	810072	467997
duncan1820@gmail.com	Micronesia	28778fb1-1671-4bad-8284-6a731564a45e	47124	1230154
absence1941@live.com	Micronesia	e5a762f6-3052-4384-a92b-b5401e965d25	1103810	231298
chance1827@gmail.com	Micronesia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	470626	1506724
bookings1998@protonmail.com	Micronesia	642d495a-e016-412f-a53b-dc046cc492a0	689170	461535
despite1900@live.com	Equatorial Guinea	5de74332-bf74-402e-bac8-55b0a378954d	10313	1869890
chance1827@gmail.com	Equatorial Guinea	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	237006	1573969
throwing1896@protonmail.com	Equatorial Guinea	5a00b0a4-db1a-4555-b66c-e47023575e85	1629872	453024
program2002@yandex.com	Equatorial Guinea	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	902693	1966795
journey2091@outlook.com	Equatorial Guinea	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1166132	1599222
mature1894@yahoo.com	Equatorial Guinea	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1206815	2097974
program2002@yandex.com	Equatorial Guinea	69798bb6-1716-47ee-90ff-0938314cce0c	378437	1174415
pda1876@outlook.com	Equatorial Guinea	9a270672-9e02-44bf-ba2e-2b6baf568829	1313385	62544
program2002@yandex.com	Equatorial Guinea	69817e8b-5270-4081-b06b-5f94d1a99c72	1861299	152227
nelson2015@protonmail.com	Equatorial Guinea	62f3d028-08e0-4986-806a-254f0d812c5b	537222	227910
bind1902@yahoo.com	Niger	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	491210	198636
delight1975@live.com	Equatorial Guinea	80a97543-fd97-40a3-b8dc-f58e50101abc	599441	898231
local1830@gmail.com	Equatorial Guinea	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1828389	1508320
throwing1896@protonmail.com	Equatorial Guinea	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	177691	781881
mature1894@yahoo.com	Equatorial Guinea	9848ad52-bed1-4791-9352-c779584dcbe7	808340	1202988
boost1833@gmail.com	Equatorial Guinea	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2075411	2055026
vocal2080@protonmail.com	Equatorial Guinea	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	949372	1558538
overall2026@outlook.com	Equatorial Guinea	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2256723	661735
duncan1820@gmail.com	Equatorial Guinea	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	124963	860771
despite1900@live.com	Equatorial Guinea	c5c41565-02cb-462f-83e5-150521ebde9c	432199	535640
throwing1896@protonmail.com	Equatorial Guinea	8ec60513-990a-4ce2-a516-8972fdcf9919	48277	1442645
dont2100@protonmail.com	Equatorial Guinea	68739ab8-38f9-45e5-9e67-fb0fc6139879	1886954	691149
lifetime1925@gmail.com	Equatorial Guinea	ea8636de-62ee-4739-8be2-2028afe303c9	1278089	1336135
officials1972@protonmail.com	Equatorial Guinea	ce85ec8a-a207-4929-ba56-2e8376b239ea	2061683	1140144
hospital2060@yahoo.com	Equatorial Guinea	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1046341	2130231
davidson2081@outlook.com	Equatorial Guinea	5ed75d07-f129-4210-8934-b5282ab6bf39	1986626	529137
nelson2015@protonmail.com	Equatorial Guinea	c82545f7-d728-4444-aded-9648e5d8c22c	1327986	1694183
cruise1800@yahoo.com	Equatorial Guinea	b207278e-f452-43f3-8e6d-1d55a32497dc	2057933	91068
journey2091@outlook.com	Equatorial Guinea	e6920268-aba1-48db-8739-415368d962ec	702313	400670
officials1972@protonmail.com	Equatorial Guinea	6feb9519-7623-422d-848c-0b9a5723da19	651697	867274
local1830@gmail.com	Equatorial Guinea	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	927998	1400478
absence1941@live.com	Equatorial Guinea	7408db66-1b96-458c-b4f6-4234b2625afd	1007709	319516
lifetime1925@gmail.com	Equatorial Guinea	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	608545	1916264
building2058@yandex.com	Equatorial Guinea	0b57e8c3-3a12-44b9-8236-ace791387ba3	606274	1448050
vocal2080@protonmail.com	Equatorial Guinea	33828361-6656-438a-aeb6-15a2e5ffcf27	419591	688026
restoration1945@yahoo.com	Equatorial Guinea	ccde439b-b989-4cd2-aec9-f142c8d948d0	1293233	201592
bind1902@yahoo.com	Equatorial Guinea	57309776-d0f5-43a2-b94e-38372ee07cc6	1439820	1847783
duncan1820@gmail.com	Equatorial Guinea	436386c2-345f-4570-ba73-582b3437d53e	1618266	2088383
lifetime1925@gmail.com	Equatorial Guinea	dccda210-9223-4604-b148-a0a248fb714e	1559853	1515463
journey2091@outlook.com	Equatorial Guinea	8acf71b1-5cd5-4010-8a5c-b1265d537e02	877298	589064
bind1902@yahoo.com	Equatorial Guinea	495303f4-a868-4fa4-acba-c08667d7bcc8	1238718	1641187
bind1902@yahoo.com	Equatorial Guinea	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1485382	784201
building2058@yandex.com	Equatorial Guinea	c94fd88f-86c3-433a-9d81-b19695d48328	1193974	1890231
lifetime1925@gmail.com	Equatorial Guinea	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	624217	1427729
sauce2013@yandex.com	Equatorial Guinea	e88d9503-9bde-473f-9276-3651878e2863	1241681	1249706
davidson2081@outlook.com	Equatorial Guinea	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	805920	1575785
pda1876@outlook.com	Equatorial Guinea	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1627534	1919399
nbc2041@yahoo.com	Equatorial Guinea	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	917802	596780
webpage2008@yahoo.com	Equatorial Guinea	28778fb1-1671-4bad-8284-6a731564a45e	1842906	1582510
nelson2015@protonmail.com	Equatorial Guinea	e5a762f6-3052-4384-a92b-b5401e965d25	1469746	30753
journey2091@outlook.com	Equatorial Guinea	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1380402	1330741
webpage2008@yahoo.com	Equatorial Guinea	642d495a-e016-412f-a53b-dc046cc492a0	848901	243085
officials1972@protonmail.com	Monaco	5de74332-bf74-402e-bac8-55b0a378954d	5308849	5524530
facilitate2066@gmail.com	Monaco	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	244916	2901256
restoration1945@yahoo.com	Monaco	5a00b0a4-db1a-4555-b66c-e47023575e85	5225051	3836739
required1923@outlook.com	Monaco	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2967389	5979355
facilitate2066@gmail.com	Monaco	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1004436	3694849
sauce2013@yandex.com	Monaco	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1367217	5671024
mature1894@yahoo.com	Monaco	69798bb6-1716-47ee-90ff-0938314cce0c	3672832	4830283
lifetime1925@gmail.com	Monaco	9a270672-9e02-44bf-ba2e-2b6baf568829	5913550	4038654
davidson2081@outlook.com	Monaco	69817e8b-5270-4081-b06b-5f94d1a99c72	4704652	723710
bind1902@yahoo.com	Monaco	62f3d028-08e0-4986-806a-254f0d812c5b	4006987	575874
sauce2013@yandex.com	Monaco	80a97543-fd97-40a3-b8dc-f58e50101abc	4337368	337443
despite1900@live.com	Monaco	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	5021335	1236451
fred1901@live.com	Monaco	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5851465	4133241
officials1972@protonmail.com	Monaco	9848ad52-bed1-4791-9352-c779584dcbe7	2041259	1956293
hormone1827@gmail.com	Monaco	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3409156	2105077
bind1902@yahoo.com	Monaco	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2172642	3849189
vocal2080@protonmail.com	Monaco	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3028674	548305
florence2033@protonmail.com	Monaco	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4452868	2194248
journey2091@outlook.com	Monaco	c5c41565-02cb-462f-83e5-150521ebde9c	3251300	456719
boost1833@gmail.com	Monaco	8ec60513-990a-4ce2-a516-8972fdcf9919	4495168	2191745
required1923@outlook.com	Monaco	68739ab8-38f9-45e5-9e67-fb0fc6139879	2168454	4578114
nelson2015@protonmail.com	Monaco	ea8636de-62ee-4739-8be2-2028afe303c9	4436901	4281684
nbc2041@yahoo.com	Monaco	ce85ec8a-a207-4929-ba56-2e8376b239ea	3093002	994020
delight1975@live.com	Monaco	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1387668	1115342
nelson2015@protonmail.com	Monaco	5ed75d07-f129-4210-8934-b5282ab6bf39	67759	1148853
restoration1945@yahoo.com	Monaco	c82545f7-d728-4444-aded-9648e5d8c22c	432540	4213877
duncan1820@gmail.com	Monaco	b207278e-f452-43f3-8e6d-1d55a32497dc	2622076	3861220
davidson2081@outlook.com	Monaco	e6920268-aba1-48db-8739-415368d962ec	3398409	1368391
nbc2041@yahoo.com	Monaco	6feb9519-7623-422d-848c-0b9a5723da19	1515347	3598837
peoples2042@protonmail.com	Monaco	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	735298	5519906
vocal2080@protonmail.com	Monaco	7408db66-1b96-458c-b4f6-4234b2625afd	5793888	4767962
bookings1998@protonmail.com	Monaco	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5214370	2777805
vocal2080@protonmail.com	Monaco	0b57e8c3-3a12-44b9-8236-ace791387ba3	3337116	5720769
lifetime1925@gmail.com	Monaco	33828361-6656-438a-aeb6-15a2e5ffcf27	5096046	5973054
nelson2015@protonmail.com	Monaco	ccde439b-b989-4cd2-aec9-f142c8d948d0	250284	3844167
delight1975@live.com	Monaco	57309776-d0f5-43a2-b94e-38372ee07cc6	3242251	3064693
restoration1945@yahoo.com	Monaco	436386c2-345f-4570-ba73-582b3437d53e	4405286	4248274
davidson2081@outlook.com	Monaco	dccda210-9223-4604-b148-a0a248fb714e	224716	3520249
nelson2015@protonmail.com	Monaco	8acf71b1-5cd5-4010-8a5c-b1265d537e02	945113	4301073
lifetime1925@gmail.com	Monaco	495303f4-a868-4fa4-acba-c08667d7bcc8	2312062	3458455
delight1975@live.com	Monaco	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3503587	5783669
overall2026@outlook.com	Monaco	c94fd88f-86c3-433a-9d81-b19695d48328	3500121	3506518
boost1833@gmail.com	Monaco	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2401333	2065306
building2058@yandex.com	Monaco	e88d9503-9bde-473f-9276-3651878e2863	6108674	2161771
cruise1800@yahoo.com	Monaco	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1442044	2106982
building2058@yandex.com	Monaco	1ef2eabc-18f9-4869-973e-fa0d7a60446c	4870938	1287910
facilitate2066@gmail.com	Monaco	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1456442	451073
building2058@yandex.com	Monaco	28778fb1-1671-4bad-8284-6a731564a45e	459598	699021
nbc2041@yahoo.com	Monaco	e5a762f6-3052-4384-a92b-b5401e965d25	103391	1839936
nelson2015@protonmail.com	Monaco	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3606811	4452388
delight1975@live.com	Monaco	642d495a-e016-412f-a53b-dc046cc492a0	5957267	4571639
journey2091@outlook.com	Tuvalu	5de74332-bf74-402e-bac8-55b0a378954d	1257107	4724240
lifetime1925@gmail.com	Tuvalu	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2343847	5351508
mature1894@yahoo.com	Tuvalu	5a00b0a4-db1a-4555-b66c-e47023575e85	4205112	1372222
overall2026@outlook.com	Tuvalu	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4051375	5274798
sauce2013@yandex.com	Tuvalu	000efc5f-1b50-44ef-92c9-7cd412ba4fca	96741	2261020
fred1901@live.com	Tuvalu	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3316680	21700
duncan1820@gmail.com	Tuvalu	69798bb6-1716-47ee-90ff-0938314cce0c	1589286	3710083
throwing1896@protonmail.com	Tuvalu	9a270672-9e02-44bf-ba2e-2b6baf568829	1072949	5888596
cruise1800@yahoo.com	Tuvalu	69817e8b-5270-4081-b06b-5f94d1a99c72	1003160	2998964
bind1902@yahoo.com	Tuvalu	62f3d028-08e0-4986-806a-254f0d812c5b	2163811	5084524
dont2100@protonmail.com	Tuvalu	80a97543-fd97-40a3-b8dc-f58e50101abc	2680896	2743202
peoples2042@protonmail.com	Tuvalu	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6545503	7069529
boost1833@gmail.com	Tuvalu	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3031721	1683811
mature1894@yahoo.com	Tuvalu	9848ad52-bed1-4791-9352-c779584dcbe7	2592	6232463
facilitate2066@gmail.com	Tuvalu	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5539954	3964059
required1923@outlook.com	Tuvalu	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6672795	4042393
dont2100@protonmail.com	Tuvalu	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4055748	2486652
hormone1827@gmail.com	Tuvalu	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3502030	6440447
davidson2081@outlook.com	Tuvalu	c5c41565-02cb-462f-83e5-150521ebde9c	3958176	3237820
nbc2041@yahoo.com	Tuvalu	8ec60513-990a-4ce2-a516-8972fdcf9919	1520385	4517884
absence1941@live.com	Tuvalu	68739ab8-38f9-45e5-9e67-fb0fc6139879	114489	5621300
sauce2013@yandex.com	Tuvalu	ea8636de-62ee-4739-8be2-2028afe303c9	6564388	6707542
throwing1896@protonmail.com	Tuvalu	ce85ec8a-a207-4929-ba56-2e8376b239ea	6222476	4553939
chance1827@gmail.com	Tuvalu	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6688598	4144145
hormone1827@gmail.com	Tuvalu	5ed75d07-f129-4210-8934-b5282ab6bf39	6864530	2804021
delight1975@live.com	Tuvalu	c82545f7-d728-4444-aded-9648e5d8c22c	6572270	4382531
facilitate2066@gmail.com	Tuvalu	b207278e-f452-43f3-8e6d-1d55a32497dc	7147483	5528400
bind1902@yahoo.com	Tuvalu	e6920268-aba1-48db-8739-415368d962ec	715301	5159833
bookings1998@protonmail.com	Tuvalu	6feb9519-7623-422d-848c-0b9a5723da19	2503766	2727039
local1830@gmail.com	Tuvalu	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	159404	5322250
absence1941@live.com	Tuvalu	7408db66-1b96-458c-b4f6-4234b2625afd	7138275	3842772
nbc2041@yahoo.com	Tuvalu	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3779892	5747815
required1923@outlook.com	Tuvalu	0b57e8c3-3a12-44b9-8236-ace791387ba3	3156159	101333
dont2100@protonmail.com	Tuvalu	33828361-6656-438a-aeb6-15a2e5ffcf27	530101	5899474
sauce2013@yandex.com	Tuvalu	ccde439b-b989-4cd2-aec9-f142c8d948d0	2594071	6414433
peoples2042@protonmail.com	Tuvalu	57309776-d0f5-43a2-b94e-38372ee07cc6	1512930	1758517
mature1894@yahoo.com	Tuvalu	436386c2-345f-4570-ba73-582b3437d53e	5572311	2852897
hospital2060@yahoo.com	Tuvalu	dccda210-9223-4604-b148-a0a248fb714e	545780	4893127
absence1941@live.com	Tuvalu	8acf71b1-5cd5-4010-8a5c-b1265d537e02	545087	5248597
sauce2013@yandex.com	Tuvalu	495303f4-a868-4fa4-acba-c08667d7bcc8	1856066	1453898
hospital2060@yahoo.com	Tuvalu	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6779333	1633200
vocal2080@protonmail.com	Tuvalu	c94fd88f-86c3-433a-9d81-b19695d48328	5666651	1433209
throwing1896@protonmail.com	Tuvalu	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3897161	728560
bind1902@yahoo.com	Tuvalu	e88d9503-9bde-473f-9276-3651878e2863	5087479	5787720
program2002@yandex.com	Tuvalu	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	6677585	1156110
only2081@protonmail.com	Tuvalu	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3049235	76697
throwing1896@protonmail.com	Tuvalu	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6209984	6933170
chance1827@gmail.com	Tuvalu	28778fb1-1671-4bad-8284-6a731564a45e	4595549	2340522
program2002@yandex.com	Tuvalu	e5a762f6-3052-4384-a92b-b5401e965d25	2504602	2190180
building2058@yandex.com	Tuvalu	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3157793	3474724
boost1833@gmail.com	Tuvalu	642d495a-e016-412f-a53b-dc046cc492a0	5573649	7019141
lifetime1925@gmail.com	Niger	5de74332-bf74-402e-bac8-55b0a378954d	1523197	233572
hospital2060@yahoo.com	Niger	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1453140	1025300
mature1894@yahoo.com	Niger	5a00b0a4-db1a-4555-b66c-e47023575e85	766947	1502096
local1830@gmail.com	Niger	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	510274	1728310
despite1900@live.com	Niger	000efc5f-1b50-44ef-92c9-7cd412ba4fca	274586	1151009
absence1941@live.com	Niger	69798bb6-1716-47ee-90ff-0938314cce0c	76210	1799886
bookings1998@protonmail.com	Niger	9a270672-9e02-44bf-ba2e-2b6baf568829	878826	1657505
building2058@yandex.com	Niger	69817e8b-5270-4081-b06b-5f94d1a99c72	17927	1048225
bind1902@yahoo.com	Niger	62f3d028-08e0-4986-806a-254f0d812c5b	272190	1911062
despite1900@live.com	Niger	80a97543-fd97-40a3-b8dc-f58e50101abc	1150541	1885640
nbc2041@yahoo.com	Niger	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1236503	1442722
mature1894@yahoo.com	Niger	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	84532	824144
facilitate2066@gmail.com	Niger	9848ad52-bed1-4791-9352-c779584dcbe7	1056842	1876460
nbc2041@yahoo.com	Niger	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	972455	959593
mature1894@yahoo.com	Niger	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	735546	1183731
bookings1998@protonmail.com	Niger	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	487165	1532846
nbc2041@yahoo.com	Niger	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1510750	317537
dont2100@protonmail.com	Niger	c5c41565-02cb-462f-83e5-150521ebde9c	1082324	757717
mature1894@yahoo.com	Niger	8ec60513-990a-4ce2-a516-8972fdcf9919	1875352	1625524
hospital2060@yahoo.com	Niger	68739ab8-38f9-45e5-9e67-fb0fc6139879	1238236	516012
nelson2015@protonmail.com	Niger	ea8636de-62ee-4739-8be2-2028afe303c9	1645753	1055701
building2058@yandex.com	Niger	ce85ec8a-a207-4929-ba56-2e8376b239ea	106098	42143
absence1941@live.com	Niger	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	678995	79660
davidson2081@outlook.com	Niger	5ed75d07-f129-4210-8934-b5282ab6bf39	355934	1273121
bind1902@yahoo.com	Niger	c82545f7-d728-4444-aded-9648e5d8c22c	511717	79533
required1923@outlook.com	Niger	b207278e-f452-43f3-8e6d-1d55a32497dc	1743800	1463684
overall2026@outlook.com	Niger	e6920268-aba1-48db-8739-415368d962ec	782007	909224
program2002@yandex.com	Niger	6feb9519-7623-422d-848c-0b9a5723da19	1899445	1751172
boost1833@gmail.com	Niger	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	341707	436204
dont2100@protonmail.com	Niger	7408db66-1b96-458c-b4f6-4234b2625afd	453506	1782553
restoration1945@yahoo.com	Niger	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1046878	1540193
nelson2015@protonmail.com	Niger	0b57e8c3-3a12-44b9-8236-ace791387ba3	111079	1185562
cruise1800@yahoo.com	Niger	33828361-6656-438a-aeb6-15a2e5ffcf27	374025	1179898
program2002@yandex.com	Niger	ccde439b-b989-4cd2-aec9-f142c8d948d0	305689	297742
bind1902@yahoo.com	Niger	57309776-d0f5-43a2-b94e-38372ee07cc6	755077	191903
navy1800@outlook.com	Niger	436386c2-345f-4570-ba73-582b3437d53e	396780	1246158
hormone1827@gmail.com	Niger	dccda210-9223-4604-b148-a0a248fb714e	27068	799129
program2002@yandex.com	Niger	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1468014	1439228
mature1894@yahoo.com	Niger	495303f4-a868-4fa4-acba-c08667d7bcc8	1874691	310908
restoration1945@yahoo.com	Niger	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1433607	834999
lifetime1925@gmail.com	Niger	c94fd88f-86c3-433a-9d81-b19695d48328	1258288	536019
navy1800@outlook.com	Niger	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1911741	1677195
navy1800@outlook.com	Niger	e88d9503-9bde-473f-9276-3651878e2863	1872009	151386
nelson2015@protonmail.com	Niger	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	986017	1747921
throwing1896@protonmail.com	Niger	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1875851	223636
navy1800@outlook.com	Niger	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1607925	426266
vocal2080@protonmail.com	Niger	28778fb1-1671-4bad-8284-6a731564a45e	413422	974494
delight1975@live.com	Niger	e5a762f6-3052-4384-a92b-b5401e965d25	751177	1528517
nelson2015@protonmail.com	Niger	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	744698	633176
restoration1945@yahoo.com	Niger	642d495a-e016-412f-a53b-dc046cc492a0	1576313	591277
webpage2008@yahoo.com	Cameroon	5de74332-bf74-402e-bac8-55b0a378954d	1216509	1195271
peoples2042@protonmail.com	Cameroon	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1841339	1291000
facilitate2066@gmail.com	Cameroon	5a00b0a4-db1a-4555-b66c-e47023575e85	2024789	1380134
program2002@yandex.com	Cameroon	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1634566	886450
davidson2081@outlook.com	Cameroon	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1294682	268405
restoration1945@yahoo.com	Cameroon	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1210956	1753787
boost1833@gmail.com	Cameroon	69798bb6-1716-47ee-90ff-0938314cce0c	1060263	215782
officials1972@protonmail.com	Cameroon	9a270672-9e02-44bf-ba2e-2b6baf568829	331016	211260
overall2026@outlook.com	Cameroon	69817e8b-5270-4081-b06b-5f94d1a99c72	1365426	476023
boost1833@gmail.com	Cameroon	62f3d028-08e0-4986-806a-254f0d812c5b	20977	1472099
boost1833@gmail.com	Cameroon	80a97543-fd97-40a3-b8dc-f58e50101abc	526923	486199
davidson2081@outlook.com	Cameroon	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1957763	964471
nbc2041@yahoo.com	Cameroon	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1099346	1787974
nelson2015@protonmail.com	Cameroon	9848ad52-bed1-4791-9352-c779584dcbe7	885802	8784
facilitate2066@gmail.com	Cameroon	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	100477	419602
only2081@protonmail.com	Cameroon	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	356538	45090
hormone1827@gmail.com	Cameroon	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	254607	1475029
overall2026@outlook.com	Cameroon	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1524635	180162
program2002@yandex.com	Cameroon	c5c41565-02cb-462f-83e5-150521ebde9c	283970	833725
sauce2013@yandex.com	Cameroon	8ec60513-990a-4ce2-a516-8972fdcf9919	1551921	961069
florence2033@protonmail.com	Cameroon	68739ab8-38f9-45e5-9e67-fb0fc6139879	25286	1202951
delight1975@live.com	Cameroon	ea8636de-62ee-4739-8be2-2028afe303c9	1634739	148377
navy1800@outlook.com	Cameroon	ce85ec8a-a207-4929-ba56-2e8376b239ea	1985288	796880
sauce2013@yandex.com	Cameroon	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1936019	607443
local1830@gmail.com	Cameroon	5ed75d07-f129-4210-8934-b5282ab6bf39	1304212	1901035
pda1876@outlook.com	Cameroon	c82545f7-d728-4444-aded-9648e5d8c22c	1221794	1590462
peoples2042@protonmail.com	Cameroon	b207278e-f452-43f3-8e6d-1d55a32497dc	813505	1287117
overall2026@outlook.com	Cameroon	e6920268-aba1-48db-8739-415368d962ec	1253124	975915
local1830@gmail.com	Cameroon	6feb9519-7623-422d-848c-0b9a5723da19	1272520	108097
absence1941@live.com	Cameroon	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	972857	731430
delight1975@live.com	Cameroon	7408db66-1b96-458c-b4f6-4234b2625afd	1013564	606588
chance1827@gmail.com	Cameroon	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	712743	616923
nbc2041@yahoo.com	Cameroon	0b57e8c3-3a12-44b9-8236-ace791387ba3	1439963	1675956
journey2091@outlook.com	Cameroon	33828361-6656-438a-aeb6-15a2e5ffcf27	1360361	242186
duncan1820@gmail.com	Cameroon	ccde439b-b989-4cd2-aec9-f142c8d948d0	1568952	757452
chance1827@gmail.com	Cameroon	57309776-d0f5-43a2-b94e-38372ee07cc6	868755	277838
vocal2080@protonmail.com	Cameroon	436386c2-345f-4570-ba73-582b3437d53e	1593769	412841
cruise1800@yahoo.com	Cameroon	dccda210-9223-4604-b148-a0a248fb714e	262235	417383
davidson2081@outlook.com	Cameroon	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1740712	759697
despite1900@live.com	Cameroon	495303f4-a868-4fa4-acba-c08667d7bcc8	1499390	87845
despite1900@live.com	Cameroon	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	549760	1229886
lifetime1925@gmail.com	Cameroon	c94fd88f-86c3-433a-9d81-b19695d48328	457001	365664
hormone1827@gmail.com	Cameroon	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1604961	1942762
restoration1945@yahoo.com	Cameroon	e88d9503-9bde-473f-9276-3651878e2863	622564	208570
fred1901@live.com	Cameroon	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	747950	533422
overall2026@outlook.com	Cameroon	1ef2eabc-18f9-4869-973e-fa0d7a60446c	49846	1081791
mature1894@yahoo.com	Cameroon	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1635124	680222
officials1972@protonmail.com	Cameroon	28778fb1-1671-4bad-8284-6a731564a45e	2037468	1304502
duncan1820@gmail.com	Cameroon	e5a762f6-3052-4384-a92b-b5401e965d25	1805979	1915210
building2058@yandex.com	Cameroon	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1655766	1814203
vocal2080@protonmail.com	Cameroon	642d495a-e016-412f-a53b-dc046cc492a0	1126595	189759
mature1894@yahoo.com	Cook Islands	5de74332-bf74-402e-bac8-55b0a378954d	169916	346049
cruise1800@yahoo.com	Cook Islands	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	304996	244792
hormone1827@gmail.com	Cook Islands	5a00b0a4-db1a-4555-b66c-e47023575e85	128762	41096
facilitate2066@gmail.com	Cook Islands	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	309031	67993
dont2100@protonmail.com	Cook Islands	000efc5f-1b50-44ef-92c9-7cd412ba4fca	102275	234754
fred1901@live.com	Cook Islands	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	46698	254086
bind1902@yahoo.com	Cook Islands	69798bb6-1716-47ee-90ff-0938314cce0c	163414	39484
officials1972@protonmail.com	Cook Islands	9a270672-9e02-44bf-ba2e-2b6baf568829	351399	41578
mature1894@yahoo.com	Cook Islands	69817e8b-5270-4081-b06b-5f94d1a99c72	30136	203614
lifetime1925@gmail.com	Cook Islands	62f3d028-08e0-4986-806a-254f0d812c5b	122498	256213
cruise1800@yahoo.com	Cook Islands	80a97543-fd97-40a3-b8dc-f58e50101abc	101636	92044
only2081@protonmail.com	Cook Islands	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	53003	194247
overall2026@outlook.com	Cook Islands	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	191577	262574
duncan1820@gmail.com	Cook Islands	9848ad52-bed1-4791-9352-c779584dcbe7	222970	251059
lifetime1925@gmail.com	Cook Islands	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	278967	11385
peoples2042@protonmail.com	Cook Islands	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	37666	169125
mature1894@yahoo.com	Cook Islands	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	38028	77082
delight1975@live.com	Cook Islands	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	144459	116831
mature1894@yahoo.com	Cook Islands	c5c41565-02cb-462f-83e5-150521ebde9c	271955	124512
required1923@outlook.com	Cook Islands	8ec60513-990a-4ce2-a516-8972fdcf9919	248109	362705
delight1975@live.com	Cook Islands	68739ab8-38f9-45e5-9e67-fb0fc6139879	92826	187415
hospital2060@yahoo.com	Cook Islands	ea8636de-62ee-4739-8be2-2028afe303c9	29365	133513
local1830@gmail.com	Cook Islands	ce85ec8a-a207-4929-ba56-2e8376b239ea	344305	168625
hospital2060@yahoo.com	Cook Islands	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	179146	318844
mature1894@yahoo.com	Cook Islands	5ed75d07-f129-4210-8934-b5282ab6bf39	200660	93826
officials1972@protonmail.com	Cook Islands	c82545f7-d728-4444-aded-9648e5d8c22c	8894	96656
cruise1800@yahoo.com	Cook Islands	b207278e-f452-43f3-8e6d-1d55a32497dc	113460	103805
pda1876@outlook.com	Cook Islands	e6920268-aba1-48db-8739-415368d962ec	27968	122136
facilitate2066@gmail.com	Cook Islands	6feb9519-7623-422d-848c-0b9a5723da19	352156	42570
despite1900@live.com	Cook Islands	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	213618	175835
nelson2015@protonmail.com	Cook Islands	7408db66-1b96-458c-b4f6-4234b2625afd	317420	73223
absence1941@live.com	Cook Islands	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	284425	12803
vocal2080@protonmail.com	Cook Islands	0b57e8c3-3a12-44b9-8236-ace791387ba3	215799	298428
hormone1827@gmail.com	Cook Islands	33828361-6656-438a-aeb6-15a2e5ffcf27	295582	191851
restoration1945@yahoo.com	Cook Islands	ccde439b-b989-4cd2-aec9-f142c8d948d0	68846	11821
nbc2041@yahoo.com	Cook Islands	57309776-d0f5-43a2-b94e-38372ee07cc6	157649	83537
bind1902@yahoo.com	Cook Islands	436386c2-345f-4570-ba73-582b3437d53e	280097	324570
duncan1820@gmail.com	Cook Islands	dccda210-9223-4604-b148-a0a248fb714e	352722	339552
facilitate2066@gmail.com	Cook Islands	8acf71b1-5cd5-4010-8a5c-b1265d537e02	128883	172933
building2058@yandex.com	Cook Islands	495303f4-a868-4fa4-acba-c08667d7bcc8	101697	50613
mature1894@yahoo.com	Cook Islands	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	72107	326788
local1830@gmail.com	Cook Islands	c94fd88f-86c3-433a-9d81-b19695d48328	273109	245238
required1923@outlook.com	Cook Islands	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	197670	67997
journey2091@outlook.com	Cook Islands	e88d9503-9bde-473f-9276-3651878e2863	30325	234963
vocal2080@protonmail.com	Cook Islands	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	25098	79742
boost1833@gmail.com	Cook Islands	1ef2eabc-18f9-4869-973e-fa0d7a60446c	105107	270639
boost1833@gmail.com	Cook Islands	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	137631	97868
nelson2015@protonmail.com	Cook Islands	28778fb1-1671-4bad-8284-6a731564a45e	314474	111898
building2058@yandex.com	Cook Islands	e5a762f6-3052-4384-a92b-b5401e965d25	210617	7540
building2058@yandex.com	Cook Islands	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	209223	15797
fred1901@live.com	Cook Islands	642d495a-e016-412f-a53b-dc046cc492a0	273559	362115
restoration1945@yahoo.com	Vanuatu	5de74332-bf74-402e-bac8-55b0a378954d	600446	1159135
facilitate2066@gmail.com	Vanuatu	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	415535	849678
fred1901@live.com	Chad	5ed75d07-f129-4210-8934-b5282ab6bf39	187372	7474727
lifetime1925@gmail.com	Vanuatu	5a00b0a4-db1a-4555-b66c-e47023575e85	2034159	249672
peoples2042@protonmail.com	Vanuatu	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1275672	80624
program2002@yandex.com	Vanuatu	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1646495	1468846
nelson2015@protonmail.com	Vanuatu	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	990206	1201736
building2058@yandex.com	Vanuatu	69798bb6-1716-47ee-90ff-0938314cce0c	937026	2165303
building2058@yandex.com	Vanuatu	9a270672-9e02-44bf-ba2e-2b6baf568829	117087	1008373
program2002@yandex.com	Vanuatu	69817e8b-5270-4081-b06b-5f94d1a99c72	1055211	832762
absence1941@live.com	Vanuatu	62f3d028-08e0-4986-806a-254f0d812c5b	1715174	1917838
required1923@outlook.com	Vanuatu	80a97543-fd97-40a3-b8dc-f58e50101abc	1501381	1985203
bind1902@yahoo.com	Vanuatu	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1278950	2059702
local1830@gmail.com	Vanuatu	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1446652	597735
bookings1998@protonmail.com	Vanuatu	9848ad52-bed1-4791-9352-c779584dcbe7	667069	400039
throwing1896@protonmail.com	Vanuatu	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1451873	1087419
fred1901@live.com	Vanuatu	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	9247	2078770
nbc2041@yahoo.com	Vanuatu	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	790207	880359
peoples2042@protonmail.com	Vanuatu	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1899278	71173
facilitate2066@gmail.com	Vanuatu	c5c41565-02cb-462f-83e5-150521ebde9c	801680	1374224
local1830@gmail.com	Vanuatu	8ec60513-990a-4ce2-a516-8972fdcf9919	2098906	1971264
peoples2042@protonmail.com	Vanuatu	68739ab8-38f9-45e5-9e67-fb0fc6139879	758417	789932
overall2026@outlook.com	Vanuatu	ea8636de-62ee-4739-8be2-2028afe303c9	863671	1188811
pda1876@outlook.com	Vanuatu	ce85ec8a-a207-4929-ba56-2e8376b239ea	1633506	2030138
cruise1800@yahoo.com	Vanuatu	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1062751	614057
sauce2013@yandex.com	Vanuatu	5ed75d07-f129-4210-8934-b5282ab6bf39	1842217	740437
facilitate2066@gmail.com	Vanuatu	c82545f7-d728-4444-aded-9648e5d8c22c	1105322	1433524
bind1902@yahoo.com	Vanuatu	b207278e-f452-43f3-8e6d-1d55a32497dc	1084612	288786
journey2091@outlook.com	Vanuatu	e6920268-aba1-48db-8739-415368d962ec	236409	107640
navy1800@outlook.com	Vanuatu	6feb9519-7623-422d-848c-0b9a5723da19	2015877	638555
peoples2042@protonmail.com	Vanuatu	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1902868	856868
officials1972@protonmail.com	Vanuatu	7408db66-1b96-458c-b4f6-4234b2625afd	516668	739746
boost1833@gmail.com	Vanuatu	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1272373	1678708
bind1902@yahoo.com	Vanuatu	0b57e8c3-3a12-44b9-8236-ace791387ba3	501065	647850
program2002@yandex.com	Vanuatu	33828361-6656-438a-aeb6-15a2e5ffcf27	127962	987040
bind1902@yahoo.com	Vanuatu	ccde439b-b989-4cd2-aec9-f142c8d948d0	1728925	702697
florence2033@protonmail.com	Vanuatu	57309776-d0f5-43a2-b94e-38372ee07cc6	1750254	727461
hospital2060@yahoo.com	Vanuatu	436386c2-345f-4570-ba73-582b3437d53e	985449	1387360
only2081@protonmail.com	Vanuatu	dccda210-9223-4604-b148-a0a248fb714e	1974809	1224687
hospital2060@yahoo.com	Vanuatu	8acf71b1-5cd5-4010-8a5c-b1265d537e02	999772	1177037
bookings1998@protonmail.com	Vanuatu	495303f4-a868-4fa4-acba-c08667d7bcc8	2067276	1135759
local1830@gmail.com	Vanuatu	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	120194	1293354
mature1894@yahoo.com	Vanuatu	c94fd88f-86c3-433a-9d81-b19695d48328	525657	758286
lifetime1925@gmail.com	Vanuatu	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1512596	742062
lifetime1925@gmail.com	Vanuatu	e88d9503-9bde-473f-9276-3651878e2863	41242	326383
boost1833@gmail.com	Vanuatu	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	936571	1977476
only2081@protonmail.com	Vanuatu	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1099769	649894
florence2033@protonmail.com	Vanuatu	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	852144	1320692
webpage2008@yahoo.com	Vanuatu	28778fb1-1671-4bad-8284-6a731564a45e	1738340	1945848
hospital2060@yahoo.com	Vanuatu	e5a762f6-3052-4384-a92b-b5401e965d25	1370942	1350074
journey2091@outlook.com	Vanuatu	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2056125	1090341
nbc2041@yahoo.com	Vanuatu	642d495a-e016-412f-a53b-dc046cc492a0	149846	1252547
vocal2080@protonmail.com	Moldova	5de74332-bf74-402e-bac8-55b0a378954d	863279	3495354
bookings1998@protonmail.com	Moldova	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4493252	2170784
navy1800@outlook.com	Moldova	5a00b0a4-db1a-4555-b66c-e47023575e85	2179590	3937923
lifetime1925@gmail.com	Moldova	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2554265	966251
mature1894@yahoo.com	Moldova	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4817648	795883
vocal2080@protonmail.com	Moldova	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	544434	5792469
webpage2008@yahoo.com	Moldova	9a270672-9e02-44bf-ba2e-2b6baf568829	5997718	3534952
program2002@yandex.com	Moldova	69817e8b-5270-4081-b06b-5f94d1a99c72	4137727	4414139
navy1800@outlook.com	Moldova	62f3d028-08e0-4986-806a-254f0d812c5b	2689595	460647
nelson2015@protonmail.com	Moldova	80a97543-fd97-40a3-b8dc-f58e50101abc	5350260	2006864
nbc2041@yahoo.com	Moldova	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1664062	882060
florence2033@protonmail.com	Moldova	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	3821889	4701058
facilitate2066@gmail.com	Moldova	9848ad52-bed1-4791-9352-c779584dcbe7	900286	3446983
lifetime1925@gmail.com	Moldova	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5123312	5245832
mature1894@yahoo.com	Moldova	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2876838	929569
throwing1896@protonmail.com	Moldova	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	987972	224637
cruise1800@yahoo.com	Moldova	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2361037	1590865
mature1894@yahoo.com	Moldova	c5c41565-02cb-462f-83e5-150521ebde9c	1717149	397034
nbc2041@yahoo.com	Moldova	8ec60513-990a-4ce2-a516-8972fdcf9919	1079731	3184271
overall2026@outlook.com	Moldova	68739ab8-38f9-45e5-9e67-fb0fc6139879	1945430	682120
sauce2013@yandex.com	Moldova	ea8636de-62ee-4739-8be2-2028afe303c9	682031	1385656
throwing1896@protonmail.com	Moldova	ce85ec8a-a207-4929-ba56-2e8376b239ea	492073	740452
only2081@protonmail.com	Moldova	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2839416	1646398
bind1902@yahoo.com	Moldova	5ed75d07-f129-4210-8934-b5282ab6bf39	449729	2975995
lifetime1925@gmail.com	Moldova	c82545f7-d728-4444-aded-9648e5d8c22c	4122181	1127141
only2081@protonmail.com	Moldova	b207278e-f452-43f3-8e6d-1d55a32497dc	4709264	5849580
officials1972@protonmail.com	Moldova	e6920268-aba1-48db-8739-415368d962ec	1507498	3751435
nelson2015@protonmail.com	Moldova	6feb9519-7623-422d-848c-0b9a5723da19	2316576	1295095
nbc2041@yahoo.com	Moldova	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4508426	176173
journey2091@outlook.com	Moldova	7408db66-1b96-458c-b4f6-4234b2625afd	4712555	5455806
required1923@outlook.com	Moldova	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3655271	650651
local1830@gmail.com	Moldova	0b57e8c3-3a12-44b9-8236-ace791387ba3	2756864	251038
davidson2081@outlook.com	Moldova	33828361-6656-438a-aeb6-15a2e5ffcf27	3395759	870280
lifetime1925@gmail.com	Moldova	ccde439b-b989-4cd2-aec9-f142c8d948d0	5801960	4614735
dont2100@protonmail.com	Moldova	57309776-d0f5-43a2-b94e-38372ee07cc6	4004222	3425807
vocal2080@protonmail.com	Moldova	436386c2-345f-4570-ba73-582b3437d53e	6020213	1357799
absence1941@live.com	Moldova	dccda210-9223-4604-b148-a0a248fb714e	5093349	3713443
required1923@outlook.com	Moldova	8acf71b1-5cd5-4010-8a5c-b1265d537e02	371437	3133149
duncan1820@gmail.com	Moldova	495303f4-a868-4fa4-acba-c08667d7bcc8	1723131	4166321
sauce2013@yandex.com	Moldova	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4216193	2394291
hormone1827@gmail.com	Moldova	c94fd88f-86c3-433a-9d81-b19695d48328	4579923	3850568
lifetime1925@gmail.com	Moldova	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2056187	1081117
building2058@yandex.com	Moldova	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2589373	3896034
journey2091@outlook.com	Moldova	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1396124	4714475
vocal2080@protonmail.com	Moldova	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5373814	3006875
absence1941@live.com	Moldova	28778fb1-1671-4bad-8284-6a731564a45e	3842170	5059073
vocal2080@protonmail.com	Moldova	e5a762f6-3052-4384-a92b-b5401e965d25	5472464	914671
facilitate2066@gmail.com	Moldova	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	5256913	2282257
only2081@protonmail.com	Moldova	642d495a-e016-412f-a53b-dc046cc492a0	5490242	5337221
boost1833@gmail.com	United Arab Emirates	5de74332-bf74-402e-bac8-55b0a378954d	567115	990771
required1923@outlook.com	United Arab Emirates	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	361411	14830
overall2026@outlook.com	United Arab Emirates	5a00b0a4-db1a-4555-b66c-e47023575e85	1445712	1181840
vocal2080@protonmail.com	United Arab Emirates	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	498304	2390373
duncan1820@gmail.com	United Arab Emirates	000efc5f-1b50-44ef-92c9-7cd412ba4fca	285424	1140069
hormone1827@gmail.com	United Arab Emirates	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1998438	1247421
vocal2080@protonmail.com	United Arab Emirates	69798bb6-1716-47ee-90ff-0938314cce0c	1562704	377157
hormone1827@gmail.com	United Arab Emirates	9a270672-9e02-44bf-ba2e-2b6baf568829	1087868	567652
peoples2042@protonmail.com	United Arab Emirates	69817e8b-5270-4081-b06b-5f94d1a99c72	125773	315260
delight1975@live.com	United Arab Emirates	62f3d028-08e0-4986-806a-254f0d812c5b	1049099	1116735
building2058@yandex.com	United Arab Emirates	80a97543-fd97-40a3-b8dc-f58e50101abc	1919717	2355900
davidson2081@outlook.com	United Arab Emirates	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	547614	94711
nbc2041@yahoo.com	United Arab Emirates	9848ad52-bed1-4791-9352-c779584dcbe7	292819	349437
delight1975@live.com	United Arab Emirates	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1583423	601073
sauce2013@yandex.com	United Arab Emirates	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2150837	168723
only2081@protonmail.com	United Arab Emirates	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2280970	569466
webpage2008@yahoo.com	United Arab Emirates	c5c41565-02cb-462f-83e5-150521ebde9c	2279682	83976
hormone1827@gmail.com	United Arab Emirates	8ec60513-990a-4ce2-a516-8972fdcf9919	2209902	1387166
chance1827@gmail.com	United Arab Emirates	68739ab8-38f9-45e5-9e67-fb0fc6139879	815233	2286460
facilitate2066@gmail.com	United Arab Emirates	ea8636de-62ee-4739-8be2-2028afe303c9	981645	377095
mature1894@yahoo.com	United Arab Emirates	ce85ec8a-a207-4929-ba56-2e8376b239ea	925291	1363399
journey2091@outlook.com	United Arab Emirates	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2249741	677117
building2058@yandex.com	United Arab Emirates	5ed75d07-f129-4210-8934-b5282ab6bf39	1529858	1296991
hormone1827@gmail.com	United Arab Emirates	c82545f7-d728-4444-aded-9648e5d8c22c	779717	665122
cruise1800@yahoo.com	United Arab Emirates	b207278e-f452-43f3-8e6d-1d55a32497dc	1219383	1613589
sauce2013@yandex.com	United Arab Emirates	e6920268-aba1-48db-8739-415368d962ec	473845	2230113
cruise1800@yahoo.com	United Arab Emirates	6feb9519-7623-422d-848c-0b9a5723da19	1176404	320925
program2002@yandex.com	United Arab Emirates	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1453756	147901
officials1972@protonmail.com	United Arab Emirates	7408db66-1b96-458c-b4f6-4234b2625afd	1860392	2225293
delight1975@live.com	United Arab Emirates	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1674304	1136886
florence2033@protonmail.com	United Arab Emirates	0b57e8c3-3a12-44b9-8236-ace791387ba3	244183	1391461
lifetime1925@gmail.com	United Arab Emirates	33828361-6656-438a-aeb6-15a2e5ffcf27	705088	1965380
dont2100@protonmail.com	United Arab Emirates	ccde439b-b989-4cd2-aec9-f142c8d948d0	2035108	1694431
absence1941@live.com	United Arab Emirates	57309776-d0f5-43a2-b94e-38372ee07cc6	515415	541334
webpage2008@yahoo.com	United Arab Emirates	436386c2-345f-4570-ba73-582b3437d53e	1125565	727218
florence2033@protonmail.com	United Arab Emirates	dccda210-9223-4604-b148-a0a248fb714e	209124	477212
journey2091@outlook.com	United Arab Emirates	8acf71b1-5cd5-4010-8a5c-b1265d537e02	166115	1106272
absence1941@live.com	United Arab Emirates	495303f4-a868-4fa4-acba-c08667d7bcc8	2320756	894050
nbc2041@yahoo.com	United Arab Emirates	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2091981	1355616
cruise1800@yahoo.com	United Arab Emirates	c94fd88f-86c3-433a-9d81-b19695d48328	184271	2095105
overall2026@outlook.com	United Arab Emirates	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2118767	1459454
officials1972@protonmail.com	United Arab Emirates	e88d9503-9bde-473f-9276-3651878e2863	135143	1686588
navy1800@outlook.com	United Arab Emirates	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2052900	1833996
vocal2080@protonmail.com	United Arab Emirates	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	307534	1681691
cruise1800@yahoo.com	United Arab Emirates	28778fb1-1671-4bad-8284-6a731564a45e	1049436	2315593
despite1900@live.com	United Arab Emirates	e5a762f6-3052-4384-a92b-b5401e965d25	836451	2261258
cruise1800@yahoo.com	United Arab Emirates	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	812893	1552294
bookings1998@protonmail.com	United Arab Emirates	642d495a-e016-412f-a53b-dc046cc492a0	440580	2233970
dont2100@protonmail.com	Panama	5de74332-bf74-402e-bac8-55b0a378954d	6389416	4385310
navy1800@outlook.com	Panama	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6195412	5532004
webpage2008@yahoo.com	Panama	5a00b0a4-db1a-4555-b66c-e47023575e85	6567	1513510
program2002@yandex.com	Panama	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1084408	3777884
vocal2080@protonmail.com	Panama	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1934955	1181027
absence1941@live.com	Panama	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	42300	1223120
despite1900@live.com	Panama	69798bb6-1716-47ee-90ff-0938314cce0c	764091	1247472
webpage2008@yahoo.com	Panama	9a270672-9e02-44bf-ba2e-2b6baf568829	6214302	1216911
peoples2042@protonmail.com	Panama	69817e8b-5270-4081-b06b-5f94d1a99c72	1090883	6347273
navy1800@outlook.com	Panama	62f3d028-08e0-4986-806a-254f0d812c5b	6398633	1408615
cruise1800@yahoo.com	Panama	80a97543-fd97-40a3-b8dc-f58e50101abc	5622853	4124996
officials1972@protonmail.com	Panama	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1804846	5773314
vocal2080@protonmail.com	Panama	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4964774	3408215
despite1900@live.com	Panama	9848ad52-bed1-4791-9352-c779584dcbe7	5286863	3132030
hormone1827@gmail.com	Panama	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3698332	642847
hospital2060@yahoo.com	Panama	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3692976	3668569
despite1900@live.com	Panama	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	5406783	4918770
florence2033@protonmail.com	Panama	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6229409	5070269
building2058@yandex.com	Panama	c5c41565-02cb-462f-83e5-150521ebde9c	5325719	2352493
florence2033@protonmail.com	Panama	8ec60513-990a-4ce2-a516-8972fdcf9919	2836956	1192486
fred1901@live.com	Panama	68739ab8-38f9-45e5-9e67-fb0fc6139879	6418631	5773566
bookings1998@protonmail.com	Panama	ea8636de-62ee-4739-8be2-2028afe303c9	6356591	476712
florence2033@protonmail.com	Panama	ce85ec8a-a207-4929-ba56-2e8376b239ea	755465	2676789
only2081@protonmail.com	Panama	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2778941	2371325
cruise1800@yahoo.com	Panama	5ed75d07-f129-4210-8934-b5282ab6bf39	2385612	704387
facilitate2066@gmail.com	Panama	c82545f7-d728-4444-aded-9648e5d8c22c	4984852	2645114
local1830@gmail.com	Panama	b207278e-f452-43f3-8e6d-1d55a32497dc	4816863	5088620
nelson2015@protonmail.com	Panama	e6920268-aba1-48db-8739-415368d962ec	6311117	5893621
lifetime1925@gmail.com	Panama	6feb9519-7623-422d-848c-0b9a5723da19	4447947	6736830
peoples2042@protonmail.com	Panama	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3687788	3733774
nelson2015@protonmail.com	Panama	7408db66-1b96-458c-b4f6-4234b2625afd	4054017	4546107
duncan1820@gmail.com	Panama	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4146139	5244561
peoples2042@protonmail.com	Panama	0b57e8c3-3a12-44b9-8236-ace791387ba3	3883463	1777496
duncan1820@gmail.com	Panama	33828361-6656-438a-aeb6-15a2e5ffcf27	10977	5767536
delight1975@live.com	Panama	ccde439b-b989-4cd2-aec9-f142c8d948d0	1299018	6474572
bind1902@yahoo.com	Panama	57309776-d0f5-43a2-b94e-38372ee07cc6	1145446	80839
webpage2008@yahoo.com	Panama	436386c2-345f-4570-ba73-582b3437d53e	6337961	5254667
bookings1998@protonmail.com	Panama	dccda210-9223-4604-b148-a0a248fb714e	4169186	3594139
officials1972@protonmail.com	Panama	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2139603	5728138
hormone1827@gmail.com	Panama	495303f4-a868-4fa4-acba-c08667d7bcc8	568718	321802
hormone1827@gmail.com	Panama	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5485897	4114476
throwing1896@protonmail.com	Panama	c94fd88f-86c3-433a-9d81-b19695d48328	787217	2682779
bind1902@yahoo.com	Panama	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6606550	1648799
vocal2080@protonmail.com	Panama	e88d9503-9bde-473f-9276-3651878e2863	1958609	355612
mature1894@yahoo.com	Panama	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4516082	6456998
duncan1820@gmail.com	Panama	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5998622	1265297
florence2033@protonmail.com	Panama	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1508995	250489
pda1876@outlook.com	Panama	28778fb1-1671-4bad-8284-6a731564a45e	400275	4305682
nelson2015@protonmail.com	Panama	e5a762f6-3052-4384-a92b-b5401e965d25	3384367	3135633
nbc2041@yahoo.com	Panama	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3152045	1012465
facilitate2066@gmail.com	Panama	642d495a-e016-412f-a53b-dc046cc492a0	828329	5604850
peoples2042@protonmail.com	Chad	5de74332-bf74-402e-bac8-55b0a378954d	6169336	5982325
despite1900@live.com	Chad	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5471947	8741186
boost1833@gmail.com	Chad	5a00b0a4-db1a-4555-b66c-e47023575e85	4562554	3574091
dont2100@protonmail.com	Chad	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2533305	3820201
mature1894@yahoo.com	Chad	000efc5f-1b50-44ef-92c9-7cd412ba4fca	7645748	5749866
journey2091@outlook.com	Chad	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	6939224	6233399
nbc2041@yahoo.com	Chad	69798bb6-1716-47ee-90ff-0938314cce0c	4058799	6104573
required1923@outlook.com	Chad	9a270672-9e02-44bf-ba2e-2b6baf568829	3152954	3679493
florence2033@protonmail.com	Chad	69817e8b-5270-4081-b06b-5f94d1a99c72	4289863	7599998
sauce2013@yandex.com	Chad	62f3d028-08e0-4986-806a-254f0d812c5b	5722175	1173562
hormone1827@gmail.com	Chad	80a97543-fd97-40a3-b8dc-f58e50101abc	412876	3176879
chance1827@gmail.com	Chad	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	7938042	7752736
pda1876@outlook.com	Chad	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2195041	6757957
nelson2015@protonmail.com	Chad	9848ad52-bed1-4791-9352-c779584dcbe7	754876	7789595
vocal2080@protonmail.com	Chad	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4607560	9511098
absence1941@live.com	Chad	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6489786	8089495
program2002@yandex.com	Chad	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1901247	1716759
local1830@gmail.com	Chad	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	4237089	8064679
cruise1800@yahoo.com	Chad	c5c41565-02cb-462f-83e5-150521ebde9c	3623174	782734
hospital2060@yahoo.com	Chad	8ec60513-990a-4ce2-a516-8972fdcf9919	7816073	7060279
delight1975@live.com	Chad	68739ab8-38f9-45e5-9e67-fb0fc6139879	3580499	1430524
pda1876@outlook.com	Chad	ea8636de-62ee-4739-8be2-2028afe303c9	9035216	5743783
program2002@yandex.com	Chad	ce85ec8a-a207-4929-ba56-2e8376b239ea	7743675	6133645
officials1972@protonmail.com	Chad	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7236387	8053
florence2033@protonmail.com	Chad	c82545f7-d728-4444-aded-9648e5d8c22c	3647800	439130
building2058@yandex.com	Chad	b207278e-f452-43f3-8e6d-1d55a32497dc	1605849	4085304
only2081@protonmail.com	Chad	e6920268-aba1-48db-8739-415368d962ec	9033126	9447765
chance1827@gmail.com	Chad	6feb9519-7623-422d-848c-0b9a5723da19	3540818	7131081
davidson2081@outlook.com	Chad	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5208475	6195105
pda1876@outlook.com	Chad	7408db66-1b96-458c-b4f6-4234b2625afd	2519100	5128792
boost1833@gmail.com	Chad	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4829676	5151064
bookings1998@protonmail.com	Chad	0b57e8c3-3a12-44b9-8236-ace791387ba3	8284977	4229382
hormone1827@gmail.com	Chad	33828361-6656-438a-aeb6-15a2e5ffcf27	9445558	9144406
navy1800@outlook.com	Chad	ccde439b-b989-4cd2-aec9-f142c8d948d0	49060	4576475
sauce2013@yandex.com	Chad	57309776-d0f5-43a2-b94e-38372ee07cc6	1126984	4016834
absence1941@live.com	Chad	436386c2-345f-4570-ba73-582b3437d53e	6938096	7396283
local1830@gmail.com	Chad	dccda210-9223-4604-b148-a0a248fb714e	7626927	7609252
throwing1896@protonmail.com	Chad	8acf71b1-5cd5-4010-8a5c-b1265d537e02	9613099	3468003
despite1900@live.com	Chad	495303f4-a868-4fa4-acba-c08667d7bcc8	4161679	9514744
throwing1896@protonmail.com	Chad	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6773985	2201985
despite1900@live.com	Chad	c94fd88f-86c3-433a-9d81-b19695d48328	4444481	7249617
fred1901@live.com	Chad	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	8871407	1936597
delight1975@live.com	Chad	e88d9503-9bde-473f-9276-3651878e2863	2408822	2224785
cruise1800@yahoo.com	Chad	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	8274863	1217898
webpage2008@yahoo.com	Chad	1ef2eabc-18f9-4869-973e-fa0d7a60446c	896654	6169495
lifetime1925@gmail.com	Chad	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4111818	4760701
local1830@gmail.com	Chad	28778fb1-1671-4bad-8284-6a731564a45e	5627684	3292436
facilitate2066@gmail.com	Chad	e5a762f6-3052-4384-a92b-b5401e965d25	6415339	2951539
journey2091@outlook.com	Chad	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2504028	1230699
hospital2060@yahoo.com	Chad	642d495a-e016-412f-a53b-dc046cc492a0	8456019	1832135
bookings1998@protonmail.com	Christmas Island	5de74332-bf74-402e-bac8-55b0a378954d	160680	301013
delight1975@live.com	Christmas Island	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	36669	213406
required1923@outlook.com	Christmas Island	5a00b0a4-db1a-4555-b66c-e47023575e85	130880	114434
local1830@gmail.com	Christmas Island	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	279576	292019
fred1901@live.com	Christmas Island	000efc5f-1b50-44ef-92c9-7cd412ba4fca	172708	114493
delight1975@live.com	Christmas Island	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	279406	194472
throwing1896@protonmail.com	Christmas Island	69798bb6-1716-47ee-90ff-0938314cce0c	30929	312312
required1923@outlook.com	Christmas Island	9a270672-9e02-44bf-ba2e-2b6baf568829	112958	174239
restoration1945@yahoo.com	Christmas Island	69817e8b-5270-4081-b06b-5f94d1a99c72	316905	261591
sauce2013@yandex.com	Christmas Island	62f3d028-08e0-4986-806a-254f0d812c5b	194142	42433
absence1941@live.com	Christmas Island	80a97543-fd97-40a3-b8dc-f58e50101abc	2489	30330
sauce2013@yandex.com	Christmas Island	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	247647	241787
duncan1820@gmail.com	Christmas Island	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	303305	62959
boost1833@gmail.com	Christmas Island	9848ad52-bed1-4791-9352-c779584dcbe7	112899	16785
cruise1800@yahoo.com	Christmas Island	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	195871	68238
boost1833@gmail.com	Christmas Island	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	304599	30993
hormone1827@gmail.com	Christmas Island	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	231928	17717
building2058@yandex.com	Christmas Island	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	318655	131517
journey2091@outlook.com	Christmas Island	c5c41565-02cb-462f-83e5-150521ebde9c	170017	320845
mature1894@yahoo.com	Christmas Island	8ec60513-990a-4ce2-a516-8972fdcf9919	63044	206739
davidson2081@outlook.com	Christmas Island	68739ab8-38f9-45e5-9e67-fb0fc6139879	6635	18783
nbc2041@yahoo.com	Christmas Island	ea8636de-62ee-4739-8be2-2028afe303c9	90041	63599
building2058@yandex.com	Christmas Island	ce85ec8a-a207-4929-ba56-2e8376b239ea	29238	219715
fred1901@live.com	Christmas Island	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	162789	244156
fred1901@live.com	Christmas Island	5ed75d07-f129-4210-8934-b5282ab6bf39	66796	88451
despite1900@live.com	Christmas Island	c82545f7-d728-4444-aded-9648e5d8c22c	37004	242746
overall2026@outlook.com	Christmas Island	b207278e-f452-43f3-8e6d-1d55a32497dc	42041	230646
mature1894@yahoo.com	Christmas Island	e6920268-aba1-48db-8739-415368d962ec	288205	204939
navy1800@outlook.com	Christmas Island	6feb9519-7623-422d-848c-0b9a5723da19	16573	97232
duncan1820@gmail.com	Christmas Island	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	301753	77711
sauce2013@yandex.com	Christmas Island	7408db66-1b96-458c-b4f6-4234b2625afd	204002	283989
journey2091@outlook.com	Christmas Island	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	110807	229160
hospital2060@yahoo.com	Christmas Island	0b57e8c3-3a12-44b9-8236-ace791387ba3	175863	109986
vocal2080@protonmail.com	Christmas Island	33828361-6656-438a-aeb6-15a2e5ffcf27	200119	103961
hospital2060@yahoo.com	Christmas Island	ccde439b-b989-4cd2-aec9-f142c8d948d0	125965	47170
davidson2081@outlook.com	Christmas Island	57309776-d0f5-43a2-b94e-38372ee07cc6	307145	74015
boost1833@gmail.com	Christmas Island	436386c2-345f-4570-ba73-582b3437d53e	247959	175912
duncan1820@gmail.com	Christmas Island	dccda210-9223-4604-b148-a0a248fb714e	320612	36869
peoples2042@protonmail.com	Christmas Island	8acf71b1-5cd5-4010-8a5c-b1265d537e02	136375	219509
sauce2013@yandex.com	Christmas Island	495303f4-a868-4fa4-acba-c08667d7bcc8	135302	154174
hospital2060@yahoo.com	Christmas Island	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	245483	127062
only2081@protonmail.com	Christmas Island	c94fd88f-86c3-433a-9d81-b19695d48328	280542	303151
sauce2013@yandex.com	Christmas Island	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	184320	8376
program2002@yandex.com	Christmas Island	e88d9503-9bde-473f-9276-3651878e2863	39657	271943
bookings1998@protonmail.com	Christmas Island	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	260777	125555
restoration1945@yahoo.com	Christmas Island	1ef2eabc-18f9-4869-973e-fa0d7a60446c	249080	189935
throwing1896@protonmail.com	Christmas Island	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	251107	77214
absence1941@live.com	Christmas Island	28778fb1-1671-4bad-8284-6a731564a45e	289045	24176
pda1876@outlook.com	Christmas Island	e5a762f6-3052-4384-a92b-b5401e965d25	214010	302682
pda1876@outlook.com	Christmas Island	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	211492	34618
delight1975@live.com	Christmas Island	642d495a-e016-412f-a53b-dc046cc492a0	241566	243257
only2081@protonmail.com	Antigua & Barbuda	5de74332-bf74-402e-bac8-55b0a378954d	782074	1117442
building2058@yandex.com	Antigua & Barbuda	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	366333	278424
navy1800@outlook.com	Antigua & Barbuda	5a00b0a4-db1a-4555-b66c-e47023575e85	353014	51310
pda1876@outlook.com	Antigua & Barbuda	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	89713	506857
despite1900@live.com	Antigua & Barbuda	000efc5f-1b50-44ef-92c9-7cd412ba4fca	242948	1020863
program2002@yandex.com	Antigua & Barbuda	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	482267	651645
vocal2080@protonmail.com	Antigua & Barbuda	69798bb6-1716-47ee-90ff-0938314cce0c	545712	1127307
vocal2080@protonmail.com	Antigua & Barbuda	9a270672-9e02-44bf-ba2e-2b6baf568829	622681	1024885
cruise1800@yahoo.com	Antigua & Barbuda	69817e8b-5270-4081-b06b-5f94d1a99c72	346493	974705
despite1900@live.com	Antigua & Barbuda	62f3d028-08e0-4986-806a-254f0d812c5b	986663	774491
chance1827@gmail.com	Antigua & Barbuda	80a97543-fd97-40a3-b8dc-f58e50101abc	544113	265845
hospital2060@yahoo.com	Antigua & Barbuda	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	570229	1049003
bookings1998@protonmail.com	Antigua & Barbuda	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	888659	397856
absence1941@live.com	Antigua & Barbuda	9848ad52-bed1-4791-9352-c779584dcbe7	54233	1055313
bookings1998@protonmail.com	Antigua & Barbuda	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	629862	47472
chance1827@gmail.com	Antigua & Barbuda	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	848625	922
program2002@yandex.com	Antigua & Barbuda	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1095019	436314
sauce2013@yandex.com	Antigua & Barbuda	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	469401	917349
mature1894@yahoo.com	Antigua & Barbuda	c5c41565-02cb-462f-83e5-150521ebde9c	117724	860438
local1830@gmail.com	Antigua & Barbuda	8ec60513-990a-4ce2-a516-8972fdcf9919	1110104	139698
restoration1945@yahoo.com	Antigua & Barbuda	68739ab8-38f9-45e5-9e67-fb0fc6139879	790762	192158
despite1900@live.com	Antigua & Barbuda	ea8636de-62ee-4739-8be2-2028afe303c9	1128995	842521
delight1975@live.com	Antigua & Barbuda	ce85ec8a-a207-4929-ba56-2e8376b239ea	175951	1091117
webpage2008@yahoo.com	Antigua & Barbuda	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	734849	871273
vocal2080@protonmail.com	Antigua & Barbuda	5ed75d07-f129-4210-8934-b5282ab6bf39	738168	564876
sauce2013@yandex.com	Antigua & Barbuda	c82545f7-d728-4444-aded-9648e5d8c22c	577103	609371
lifetime1925@gmail.com	Antigua & Barbuda	b207278e-f452-43f3-8e6d-1d55a32497dc	961994	383114
dont2100@protonmail.com	Antigua & Barbuda	e6920268-aba1-48db-8739-415368d962ec	836074	585209
peoples2042@protonmail.com	Antigua & Barbuda	6feb9519-7623-422d-848c-0b9a5723da19	1047178	994390
mature1894@yahoo.com	Antigua & Barbuda	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2898	990219
program2002@yandex.com	Antigua & Barbuda	7408db66-1b96-458c-b4f6-4234b2625afd	738429	810685
throwing1896@protonmail.com	Antigua & Barbuda	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1096738	1128672
florence2033@protonmail.com	Antigua & Barbuda	0b57e8c3-3a12-44b9-8236-ace791387ba3	132007	45160
bind1902@yahoo.com	Antigua & Barbuda	33828361-6656-438a-aeb6-15a2e5ffcf27	855575	1069393
boost1833@gmail.com	Antigua & Barbuda	ccde439b-b989-4cd2-aec9-f142c8d948d0	854579	89488
despite1900@live.com	Antigua & Barbuda	57309776-d0f5-43a2-b94e-38372ee07cc6	60177	476810
davidson2081@outlook.com	Antigua & Barbuda	436386c2-345f-4570-ba73-582b3437d53e	304038	825256
nbc2041@yahoo.com	Antigua & Barbuda	dccda210-9223-4604-b148-a0a248fb714e	537753	1018269
officials1972@protonmail.com	Antigua & Barbuda	8acf71b1-5cd5-4010-8a5c-b1265d537e02	145268	735763
facilitate2066@gmail.com	Antigua & Barbuda	495303f4-a868-4fa4-acba-c08667d7bcc8	896645	83620
navy1800@outlook.com	Antigua & Barbuda	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	149308	208686
nbc2041@yahoo.com	Antigua & Barbuda	c94fd88f-86c3-433a-9d81-b19695d48328	983299	811805
cruise1800@yahoo.com	Antigua & Barbuda	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	198192	450634
davidson2081@outlook.com	Antigua & Barbuda	e88d9503-9bde-473f-9276-3651878e2863	342725	459214
cruise1800@yahoo.com	Antigua & Barbuda	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	229860	23396
webpage2008@yahoo.com	Antigua & Barbuda	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1026964	933880
bind1902@yahoo.com	Antigua & Barbuda	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1096153	133764
bind1902@yahoo.com	Antigua & Barbuda	28778fb1-1671-4bad-8284-6a731564a45e	203583	105443
lifetime1925@gmail.com	Antigua & Barbuda	e5a762f6-3052-4384-a92b-b5401e965d25	273883	820576
building2058@yandex.com	Antigua & Barbuda	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	120790	538668
journey2091@outlook.com	Antigua & Barbuda	642d495a-e016-412f-a53b-dc046cc492a0	912848	329602
lifetime1925@gmail.com	Congo - Brazzaville	5de74332-bf74-402e-bac8-55b0a378954d	516936	5844614
navy1800@outlook.com	Congo - Brazzaville	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6872926	2864045
peoples2042@protonmail.com	Congo - Brazzaville	5a00b0a4-db1a-4555-b66c-e47023575e85	5863964	6647777
cruise1800@yahoo.com	Congo - Brazzaville	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	307832	303767
throwing1896@protonmail.com	Congo - Brazzaville	000efc5f-1b50-44ef-92c9-7cd412ba4fca	819501	3107390
pda1876@outlook.com	Congo - Brazzaville	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3417906	6456503
davidson2081@outlook.com	Congo - Brazzaville	69798bb6-1716-47ee-90ff-0938314cce0c	4546269	6876542
program2002@yandex.com	Congo - Brazzaville	9a270672-9e02-44bf-ba2e-2b6baf568829	3490247	6875755
despite1900@live.com	Congo - Brazzaville	69817e8b-5270-4081-b06b-5f94d1a99c72	7216656	1872599
nbc2041@yahoo.com	Congo - Brazzaville	62f3d028-08e0-4986-806a-254f0d812c5b	1586742	1691101
nbc2041@yahoo.com	Congo - Brazzaville	80a97543-fd97-40a3-b8dc-f58e50101abc	2712105	4363388
fred1901@live.com	Congo - Brazzaville	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6633319	8437878
required1923@outlook.com	Congo - Brazzaville	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2932317	3217514
despite1900@live.com	Congo - Brazzaville	9848ad52-bed1-4791-9352-c779584dcbe7	3411314	4227282
duncan1820@gmail.com	Congo - Brazzaville	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6523176	8130166
throwing1896@protonmail.com	Congo - Brazzaville	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5652453	1561148
pda1876@outlook.com	Congo - Brazzaville	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	8224675	3453467
hospital2060@yahoo.com	Congo - Brazzaville	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3088450	6360501
nbc2041@yahoo.com	Congo - Brazzaville	c5c41565-02cb-462f-83e5-150521ebde9c	4668622	6043611
officials1972@protonmail.com	Congo - Brazzaville	8ec60513-990a-4ce2-a516-8972fdcf9919	3253459	3596702
bookings1998@protonmail.com	Congo - Brazzaville	68739ab8-38f9-45e5-9e67-fb0fc6139879	1802610	8240674
delight1975@live.com	Congo - Brazzaville	ea8636de-62ee-4739-8be2-2028afe303c9	6198123	7394205
sauce2013@yandex.com	Congo - Brazzaville	ce85ec8a-a207-4929-ba56-2e8376b239ea	728036	5329357
hormone1827@gmail.com	Congo - Brazzaville	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7522596	4930921
delight1975@live.com	Congo - Brazzaville	5ed75d07-f129-4210-8934-b5282ab6bf39	3155472	8446129
chance1827@gmail.com	Congo - Brazzaville	c82545f7-d728-4444-aded-9648e5d8c22c	2859072	5568738
throwing1896@protonmail.com	Congo - Brazzaville	b207278e-f452-43f3-8e6d-1d55a32497dc	340848	2808414
fred1901@live.com	Congo - Brazzaville	e6920268-aba1-48db-8739-415368d962ec	4496179	8527153
webpage2008@yahoo.com	Congo - Brazzaville	6feb9519-7623-422d-848c-0b9a5723da19	513235	2822205
cruise1800@yahoo.com	Congo - Brazzaville	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3725195	3818672
hospital2060@yahoo.com	Congo - Brazzaville	7408db66-1b96-458c-b4f6-4234b2625afd	3635858	5308369
throwing1896@protonmail.com	Congo - Brazzaville	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	6270193	2433391
lifetime1925@gmail.com	Congo - Brazzaville	0b57e8c3-3a12-44b9-8236-ace791387ba3	7191813	1783108
mature1894@yahoo.com	Congo - Brazzaville	33828361-6656-438a-aeb6-15a2e5ffcf27	6551048	8468576
nelson2015@protonmail.com	Congo - Brazzaville	ccde439b-b989-4cd2-aec9-f142c8d948d0	5785760	2431869
officials1972@protonmail.com	Congo - Brazzaville	57309776-d0f5-43a2-b94e-38372ee07cc6	4930696	1898748
only2081@protonmail.com	Congo - Brazzaville	436386c2-345f-4570-ba73-582b3437d53e	4246574	7726585
journey2091@outlook.com	Congo - Brazzaville	dccda210-9223-4604-b148-a0a248fb714e	4145834	1186419
facilitate2066@gmail.com	Congo - Brazzaville	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2255119	2507337
chance1827@gmail.com	Congo - Brazzaville	495303f4-a868-4fa4-acba-c08667d7bcc8	7313547	3493486
bookings1998@protonmail.com	Congo - Brazzaville	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3241991	4998243
mature1894@yahoo.com	Congo - Brazzaville	c94fd88f-86c3-433a-9d81-b19695d48328	1846624	5611211
nbc2041@yahoo.com	Congo - Brazzaville	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2432938	8043439
davidson2081@outlook.com	Congo - Brazzaville	e88d9503-9bde-473f-9276-3651878e2863	7674672	2822202
florence2033@protonmail.com	Congo - Brazzaville	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2539575	5605263
mature1894@yahoo.com	Congo - Brazzaville	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3307940	4549892
local1830@gmail.com	Congo - Brazzaville	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	6976264	6747023
despite1900@live.com	Congo - Brazzaville	28778fb1-1671-4bad-8284-6a731564a45e	523082	8004047
local1830@gmail.com	Congo - Brazzaville	e5a762f6-3052-4384-a92b-b5401e965d25	3240920	5734272
journey2091@outlook.com	Congo - Brazzaville	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	8484094	7193944
throwing1896@protonmail.com	Congo - Brazzaville	642d495a-e016-412f-a53b-dc046cc492a0	2530262	7225619
program2002@yandex.com	Moldova	5de74332-bf74-402e-bac8-55b0a378954d	32439	19278
bind1902@yahoo.com	Moldova	5a00b0a4-db1a-4555-b66c-e47023575e85	53992	49483
dont2100@protonmail.com	Moldova	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	57321	20197
chance1827@gmail.com	Moldova	000efc5f-1b50-44ef-92c9-7cd412ba4fca	57327	21673
dont2100@protonmail.com	Moldova	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	21654	58309
nelson2015@protonmail.com	Moldova	69798bb6-1716-47ee-90ff-0938314cce0c	62027	71869
journey2091@outlook.com	Moldova	9a270672-9e02-44bf-ba2e-2b6baf568829	73406	39351
vocal2080@protonmail.com	Moldova	69817e8b-5270-4081-b06b-5f94d1a99c72	35803	54630
mature1894@yahoo.com	Moldova	62f3d028-08e0-4986-806a-254f0d812c5b	67364	12040
hormone1827@gmail.com	Moldova	80a97543-fd97-40a3-b8dc-f58e50101abc	30434	22665
only2081@protonmail.com	Moldova	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4656	6432
lifetime1925@gmail.com	Moldova	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	18681	47963
bookings1998@protonmail.com	Moldova	9848ad52-bed1-4791-9352-c779584dcbe7	30489	29748
nbc2041@yahoo.com	Moldova	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	14930	64871
absence1941@live.com	Moldova	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	34855	52845
restoration1945@yahoo.com	Moldova	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	66226	68241
bind1902@yahoo.com	Moldova	c5c41565-02cb-462f-83e5-150521ebde9c	82753	21550
bind1902@yahoo.com	Moldova	8ec60513-990a-4ce2-a516-8972fdcf9919	11719	46718
davidson2081@outlook.com	Moldova	68739ab8-38f9-45e5-9e67-fb0fc6139879	78926	19800
pda1876@outlook.com	Moldova	ea8636de-62ee-4739-8be2-2028afe303c9	11968	76250
pda1876@outlook.com	Moldova	ce85ec8a-a207-4929-ba56-2e8376b239ea	37927	21551
facilitate2066@gmail.com	Moldova	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	23169	83429
local1830@gmail.com	Moldova	5ed75d07-f129-4210-8934-b5282ab6bf39	46649	35758
sauce2013@yandex.com	Moldova	c82545f7-d728-4444-aded-9648e5d8c22c	76257	55370
cruise1800@yahoo.com	Moldova	b207278e-f452-43f3-8e6d-1d55a32497dc	56953	37323
fred1901@live.com	Moldova	e6920268-aba1-48db-8739-415368d962ec	65904	22822
overall2026@outlook.com	Moldova	6feb9519-7623-422d-848c-0b9a5723da19	73631	9498
pda1876@outlook.com	Moldova	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	79315	67863
required1923@outlook.com	Moldova	7408db66-1b96-458c-b4f6-4234b2625afd	1783	69755
hospital2060@yahoo.com	Moldova	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	77671	28732
vocal2080@protonmail.com	Moldova	0b57e8c3-3a12-44b9-8236-ace791387ba3	62033	29880
program2002@yandex.com	Moldova	ccde439b-b989-4cd2-aec9-f142c8d948d0	43954	51686
navy1800@outlook.com	Moldova	57309776-d0f5-43a2-b94e-38372ee07cc6	39149	34085
fred1901@live.com	Moldova	436386c2-345f-4570-ba73-582b3437d53e	48457	15133
overall2026@outlook.com	Moldova	dccda210-9223-4604-b148-a0a248fb714e	14981	83357
dont2100@protonmail.com	Moldova	8acf71b1-5cd5-4010-8a5c-b1265d537e02	31359	62766
vocal2080@protonmail.com	Moldova	495303f4-a868-4fa4-acba-c08667d7bcc8	68076	70795
cruise1800@yahoo.com	Moldova	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	40315	30464
journey2091@outlook.com	Moldova	c94fd88f-86c3-433a-9d81-b19695d48328	82893	53203
facilitate2066@gmail.com	Moldova	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	71305	29169
davidson2081@outlook.com	Moldova	e88d9503-9bde-473f-9276-3651878e2863	45096	81614
journey2091@outlook.com	Moldova	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	22817	23116
bind1902@yahoo.com	Moldova	1ef2eabc-18f9-4869-973e-fa0d7a60446c	44991	19908
nelson2015@protonmail.com	Moldova	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	19682	1981
delight1975@live.com	Moldova	28778fb1-1671-4bad-8284-6a731564a45e	66164	14761
facilitate2066@gmail.com	Moldova	e5a762f6-3052-4384-a92b-b5401e965d25	18619	8847
building2058@yandex.com	Moldova	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	18103	68725
davidson2081@outlook.com	Moldova	642d495a-e016-412f-a53b-dc046cc492a0	65804	21807
fred1901@live.com	Western Sahara	5de74332-bf74-402e-bac8-55b0a378954d	45395	5732
nelson2015@protonmail.com	Western Sahara	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	8209	1698
chance1827@gmail.com	Western Sahara	5a00b0a4-db1a-4555-b66c-e47023575e85	21771	7660
hormone1827@gmail.com	Western Sahara	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3342	36769
program2002@yandex.com	Western Sahara	000efc5f-1b50-44ef-92c9-7cd412ba4fca	40750	36390
building2058@yandex.com	Western Sahara	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	49217	55289
delight1975@live.com	Western Sahara	69798bb6-1716-47ee-90ff-0938314cce0c	38929	57289
navy1800@outlook.com	Western Sahara	9a270672-9e02-44bf-ba2e-2b6baf568829	52282	10733
vocal2080@protonmail.com	Western Sahara	69817e8b-5270-4081-b06b-5f94d1a99c72	8413	22881
dont2100@protonmail.com	Western Sahara	62f3d028-08e0-4986-806a-254f0d812c5b	7187	54184
fred1901@live.com	Western Sahara	80a97543-fd97-40a3-b8dc-f58e50101abc	23147	52098
mature1894@yahoo.com	Western Sahara	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	24706	49285
building2058@yandex.com	Western Sahara	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	42156	57639
davidson2081@outlook.com	Western Sahara	9848ad52-bed1-4791-9352-c779584dcbe7	38236	32137
florence2033@protonmail.com	Western Sahara	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	32725	17814
officials1972@protonmail.com	Western Sahara	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	20271	40585
vocal2080@protonmail.com	Western Sahara	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	36722	44617
fred1901@live.com	Western Sahara	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	379	13776
delight1975@live.com	Western Sahara	c5c41565-02cb-462f-83e5-150521ebde9c	13831	7879
webpage2008@yahoo.com	Western Sahara	8ec60513-990a-4ce2-a516-8972fdcf9919	13917	27696
program2002@yandex.com	Western Sahara	68739ab8-38f9-45e5-9e67-fb0fc6139879	3511	47351
officials1972@protonmail.com	Western Sahara	ea8636de-62ee-4739-8be2-2028afe303c9	44399	19562
program2002@yandex.com	Western Sahara	ce85ec8a-a207-4929-ba56-2e8376b239ea	52930	5963
chance1827@gmail.com	Western Sahara	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3562	6419
boost1833@gmail.com	Western Sahara	5ed75d07-f129-4210-8934-b5282ab6bf39	21976	16286
pda1876@outlook.com	Western Sahara	c82545f7-d728-4444-aded-9648e5d8c22c	24544	25735
throwing1896@protonmail.com	Western Sahara	b207278e-f452-43f3-8e6d-1d55a32497dc	38677	50684
lifetime1925@gmail.com	Western Sahara	e6920268-aba1-48db-8739-415368d962ec	35994	14073
navy1800@outlook.com	Western Sahara	6feb9519-7623-422d-848c-0b9a5723da19	56315	52093
cruise1800@yahoo.com	Western Sahara	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	407	38572
florence2033@protonmail.com	Western Sahara	7408db66-1b96-458c-b4f6-4234b2625afd	3185	31310
program2002@yandex.com	Western Sahara	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	55072	56930
restoration1945@yahoo.com	Western Sahara	0b57e8c3-3a12-44b9-8236-ace791387ba3	56444	8026
delight1975@live.com	Western Sahara	33828361-6656-438a-aeb6-15a2e5ffcf27	42670	48531
nelson2015@protonmail.com	Western Sahara	ccde439b-b989-4cd2-aec9-f142c8d948d0	18012	37647
fred1901@live.com	Western Sahara	57309776-d0f5-43a2-b94e-38372ee07cc6	50448	55052
bind1902@yahoo.com	Western Sahara	436386c2-345f-4570-ba73-582b3437d53e	1423	32138
sauce2013@yandex.com	Western Sahara	dccda210-9223-4604-b148-a0a248fb714e	23042	46392
restoration1945@yahoo.com	Western Sahara	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4813	44248
despite1900@live.com	Western Sahara	495303f4-a868-4fa4-acba-c08667d7bcc8	23292	1511
officials1972@protonmail.com	Western Sahara	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	14702	11154
facilitate2066@gmail.com	Western Sahara	c94fd88f-86c3-433a-9d81-b19695d48328	51792	26666
nbc2041@yahoo.com	Western Sahara	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	19482	57190
local1830@gmail.com	Western Sahara	e88d9503-9bde-473f-9276-3651878e2863	58294	15617
boost1833@gmail.com	Western Sahara	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5443	14168
bind1902@yahoo.com	Western Sahara	1ef2eabc-18f9-4869-973e-fa0d7a60446c	20846	34984
navy1800@outlook.com	Western Sahara	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	47945	56033
duncan1820@gmail.com	Western Sahara	28778fb1-1671-4bad-8284-6a731564a45e	6741	17520
only2081@protonmail.com	Western Sahara	e5a762f6-3052-4384-a92b-b5401e965d25	17256	24691
peoples2042@protonmail.com	Western Sahara	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	49078	42235
fred1901@live.com	Western Sahara	642d495a-e016-412f-a53b-dc046cc492a0	47423	7232
restoration1945@yahoo.com	Cuba	5de74332-bf74-402e-bac8-55b0a378954d	883531	863595
chance1827@gmail.com	Cuba	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	254601	513860
bookings1998@protonmail.com	Cuba	5a00b0a4-db1a-4555-b66c-e47023575e85	374027	1062041
absence1941@live.com	Cuba	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	639654	1000059
delight1975@live.com	Cuba	000efc5f-1b50-44ef-92c9-7cd412ba4fca	560510	352755
duncan1820@gmail.com	Cuba	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	951261	1080387
program2002@yandex.com	Cuba	69798bb6-1716-47ee-90ff-0938314cce0c	61570	609262
cruise1800@yahoo.com	Cuba	9a270672-9e02-44bf-ba2e-2b6baf568829	675379	86364
cruise1800@yahoo.com	Cuba	69817e8b-5270-4081-b06b-5f94d1a99c72	703761	548186
nelson2015@protonmail.com	Cuba	62f3d028-08e0-4986-806a-254f0d812c5b	992956	661282
required1923@outlook.com	Cuba	80a97543-fd97-40a3-b8dc-f58e50101abc	679260	344229
cruise1800@yahoo.com	Cuba	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	305020	943170
building2058@yandex.com	Cuba	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	138752	744513
boost1833@gmail.com	Cuba	9848ad52-bed1-4791-9352-c779584dcbe7	198700	325061
sauce2013@yandex.com	Cuba	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	156546	963529
restoration1945@yahoo.com	Cuba	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	17777	1011545
mature1894@yahoo.com	Cuba	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	753478	420491
despite1900@live.com	Cuba	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1107181	944346
florence2033@protonmail.com	Cuba	c5c41565-02cb-462f-83e5-150521ebde9c	153286	786325
absence1941@live.com	Cuba	8ec60513-990a-4ce2-a516-8972fdcf9919	45471	668160
restoration1945@yahoo.com	Cuba	68739ab8-38f9-45e5-9e67-fb0fc6139879	517053	90626
webpage2008@yahoo.com	Cuba	ea8636de-62ee-4739-8be2-2028afe303c9	1059195	472243
bind1902@yahoo.com	Cuba	ce85ec8a-a207-4929-ba56-2e8376b239ea	413281	917226
local1830@gmail.com	Cuba	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	43794	571203
restoration1945@yahoo.com	Cuba	5ed75d07-f129-4210-8934-b5282ab6bf39	105414	64499
vocal2080@protonmail.com	Cuba	c82545f7-d728-4444-aded-9648e5d8c22c	872355	764050
vocal2080@protonmail.com	Cuba	b207278e-f452-43f3-8e6d-1d55a32497dc	1026593	693011
hormone1827@gmail.com	Cuba	e6920268-aba1-48db-8739-415368d962ec	429613	879921
mature1894@yahoo.com	Cuba	6feb9519-7623-422d-848c-0b9a5723da19	159860	278169
journey2091@outlook.com	Cuba	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	598270	217008
local1830@gmail.com	Cuba	7408db66-1b96-458c-b4f6-4234b2625afd	12674	328887
hospital2060@yahoo.com	Cuba	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	886633	756571
building2058@yandex.com	Cuba	0b57e8c3-3a12-44b9-8236-ace791387ba3	101089	456754
navy1800@outlook.com	Cuba	33828361-6656-438a-aeb6-15a2e5ffcf27	812106	1062177
fred1901@live.com	Cuba	ccde439b-b989-4cd2-aec9-f142c8d948d0	773782	434359
building2058@yandex.com	Cuba	57309776-d0f5-43a2-b94e-38372ee07cc6	79196	735615
restoration1945@yahoo.com	Cuba	436386c2-345f-4570-ba73-582b3437d53e	963207	51604
despite1900@live.com	Cuba	dccda210-9223-4604-b148-a0a248fb714e	1024745	1131419
nelson2015@protonmail.com	Cuba	8acf71b1-5cd5-4010-8a5c-b1265d537e02	167920	904167
pda1876@outlook.com	Cuba	495303f4-a868-4fa4-acba-c08667d7bcc8	1056887	1113791
required1923@outlook.com	Cuba	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	933246	747363
vocal2080@protonmail.com	Cuba	c94fd88f-86c3-433a-9d81-b19695d48328	864039	848201
only2081@protonmail.com	Cuba	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	371252	669608
program2002@yandex.com	Cuba	e88d9503-9bde-473f-9276-3651878e2863	806260	965176
peoples2042@protonmail.com	Cuba	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	616199	1097442
building2058@yandex.com	Cuba	1ef2eabc-18f9-4869-973e-fa0d7a60446c	993333	1137964
only2081@protonmail.com	Cuba	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	688009	201038
overall2026@outlook.com	Cuba	28778fb1-1671-4bad-8284-6a731564a45e	411312	351679
duncan1820@gmail.com	Cuba	e5a762f6-3052-4384-a92b-b5401e965d25	940862	611193
chance1827@gmail.com	Cuba	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	573103	193570
dont2100@protonmail.com	Cuba	642d495a-e016-412f-a53b-dc046cc492a0	1001605	668896
despite1900@live.com	Nigeria	5de74332-bf74-402e-bac8-55b0a378954d	3376300	1161128
bind1902@yahoo.com	Nigeria	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1313439	3639950
facilitate2066@gmail.com	Nigeria	5a00b0a4-db1a-4555-b66c-e47023575e85	5413065	4836798
nelson2015@protonmail.com	Nigeria	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1228735	2779461
boost1833@gmail.com	Nigeria	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5859403	5489377
overall2026@outlook.com	Nigeria	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	451899	6131363
required1923@outlook.com	Nigeria	9a270672-9e02-44bf-ba2e-2b6baf568829	4263367	4977460
hormone1827@gmail.com	Nigeria	69817e8b-5270-4081-b06b-5f94d1a99c72	2172970	1940081
absence1941@live.com	Nigeria	62f3d028-08e0-4986-806a-254f0d812c5b	1456761	6370138
pda1876@outlook.com	Nigeria	80a97543-fd97-40a3-b8dc-f58e50101abc	1622365	2704159
only2081@protonmail.com	Nigeria	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4229062	586087
overall2026@outlook.com	Nigeria	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2573616	458209
bookings1998@protonmail.com	Nigeria	9848ad52-bed1-4791-9352-c779584dcbe7	5680186	3768794
despite1900@live.com	Nigeria	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1419653	5638763
local1830@gmail.com	Nigeria	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4539246	577280
hospital2060@yahoo.com	Nigeria	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	6358408	5574230
bookings1998@protonmail.com	Nigeria	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2134953	5727619
local1830@gmail.com	Nigeria	c5c41565-02cb-462f-83e5-150521ebde9c	5751253	5104100
lifetime1925@gmail.com	Nigeria	8ec60513-990a-4ce2-a516-8972fdcf9919	292419	6329500
pda1876@outlook.com	Nigeria	68739ab8-38f9-45e5-9e67-fb0fc6139879	3187053	1134993
building2058@yandex.com	Nigeria	ea8636de-62ee-4739-8be2-2028afe303c9	889862	1978906
boost1833@gmail.com	Nigeria	ce85ec8a-a207-4929-ba56-2e8376b239ea	479523	301612
hormone1827@gmail.com	Nigeria	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2141391	4782148
navy1800@outlook.com	Nigeria	5ed75d07-f129-4210-8934-b5282ab6bf39	4167672	1579091
bind1902@yahoo.com	Nigeria	c82545f7-d728-4444-aded-9648e5d8c22c	554498	319725
davidson2081@outlook.com	Nigeria	b207278e-f452-43f3-8e6d-1d55a32497dc	3139922	2956533
hormone1827@gmail.com	Nigeria	e6920268-aba1-48db-8739-415368d962ec	5700792	257397
chance1827@gmail.com	Nigeria	6feb9519-7623-422d-848c-0b9a5723da19	1016713	628545
lifetime1925@gmail.com	Nigeria	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2185447	3699687
davidson2081@outlook.com	Nigeria	7408db66-1b96-458c-b4f6-4234b2625afd	5095038	5674236
florence2033@protonmail.com	Nigeria	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2637725	3040437
facilitate2066@gmail.com	Nigeria	0b57e8c3-3a12-44b9-8236-ace791387ba3	3604508	5122503
delight1975@live.com	Nigeria	33828361-6656-438a-aeb6-15a2e5ffcf27	1770375	4102244
bind1902@yahoo.com	Nigeria	ccde439b-b989-4cd2-aec9-f142c8d948d0	3263601	1117541
despite1900@live.com	Libya	28778fb1-1671-4bad-8284-6a731564a45e	139275	2813380
florence2033@protonmail.com	Nigeria	57309776-d0f5-43a2-b94e-38372ee07cc6	4779845	1419091
bind1902@yahoo.com	Nigeria	436386c2-345f-4570-ba73-582b3437d53e	5542129	5749589
delight1975@live.com	Nigeria	dccda210-9223-4604-b148-a0a248fb714e	984382	1815179
overall2026@outlook.com	Nigeria	8acf71b1-5cd5-4010-8a5c-b1265d537e02	944591	3311034
cruise1800@yahoo.com	Nigeria	495303f4-a868-4fa4-acba-c08667d7bcc8	2612368	3018542
facilitate2066@gmail.com	Nigeria	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	6362741	1806125
boost1833@gmail.com	Nigeria	c94fd88f-86c3-433a-9d81-b19695d48328	1516693	3110652
local1830@gmail.com	Nigeria	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	6059025	1852946
webpage2008@yahoo.com	Nigeria	e88d9503-9bde-473f-9276-3651878e2863	2269807	5780440
local1830@gmail.com	Nigeria	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2990661	4186343
pda1876@outlook.com	Nigeria	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6065744	5501478
nelson2015@protonmail.com	Nigeria	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4857037	4118738
sauce2013@yandex.com	Nigeria	28778fb1-1671-4bad-8284-6a731564a45e	4229519	4688687
program2002@yandex.com	Nigeria	e5a762f6-3052-4384-a92b-b5401e965d25	2310704	4025429
nbc2041@yahoo.com	Nigeria	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	298024	3427914
chance1827@gmail.com	Nigeria	642d495a-e016-412f-a53b-dc046cc492a0	750837	3392070
required1923@outlook.com	Turks & Caicos Islands	5de74332-bf74-402e-bac8-55b0a378954d	3223616	1821439
overall2026@outlook.com	Turks & Caicos Islands	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4900016	696470
journey2091@outlook.com	Turks & Caicos Islands	5a00b0a4-db1a-4555-b66c-e47023575e85	2854636	558107
mature1894@yahoo.com	Turks & Caicos Islands	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3847928	3712948
absence1941@live.com	Turks & Caicos Islands	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4455247	4564090
only2081@protonmail.com	Turks & Caicos Islands	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3447647	3433871
program2002@yandex.com	Turks & Caicos Islands	69798bb6-1716-47ee-90ff-0938314cce0c	3775770	1130972
local1830@gmail.com	Turks & Caicos Islands	9a270672-9e02-44bf-ba2e-2b6baf568829	259779	2010428
building2058@yandex.com	Turks & Caicos Islands	69817e8b-5270-4081-b06b-5f94d1a99c72	4874600	1678660
pda1876@outlook.com	Turks & Caicos Islands	62f3d028-08e0-4986-806a-254f0d812c5b	4856156	643206
throwing1896@protonmail.com	Turks & Caicos Islands	80a97543-fd97-40a3-b8dc-f58e50101abc	1211266	215209
overall2026@outlook.com	Turks & Caicos Islands	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	621207	5716423
required1923@outlook.com	Turks & Caicos Islands	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1032525	4022896
restoration1945@yahoo.com	Turks & Caicos Islands	9848ad52-bed1-4791-9352-c779584dcbe7	2739683	3026218
vocal2080@protonmail.com	Turks & Caicos Islands	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	5739623	3358309
restoration1945@yahoo.com	Turks & Caicos Islands	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	862955	952911
journey2091@outlook.com	Turks & Caicos Islands	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1366859	5301429
peoples2042@protonmail.com	Turks & Caicos Islands	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2339405	5860124
duncan1820@gmail.com	Turks & Caicos Islands	c5c41565-02cb-462f-83e5-150521ebde9c	2982487	932528
nbc2041@yahoo.com	Turks & Caicos Islands	8ec60513-990a-4ce2-a516-8972fdcf9919	4643393	2499786
required1923@outlook.com	Turks & Caicos Islands	68739ab8-38f9-45e5-9e67-fb0fc6139879	5214197	2146019
throwing1896@protonmail.com	Turks & Caicos Islands	ea8636de-62ee-4739-8be2-2028afe303c9	4341569	5214263
vocal2080@protonmail.com	Turks & Caicos Islands	ce85ec8a-a207-4929-ba56-2e8376b239ea	5246408	4315788
peoples2042@protonmail.com	Turks & Caicos Islands	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2372128	2608211
nelson2015@protonmail.com	Turks & Caicos Islands	5ed75d07-f129-4210-8934-b5282ab6bf39	5155245	2822088
florence2033@protonmail.com	Turks & Caicos Islands	c82545f7-d728-4444-aded-9648e5d8c22c	1136417	2456917
throwing1896@protonmail.com	Turks & Caicos Islands	b207278e-f452-43f3-8e6d-1d55a32497dc	1198362	415893
cruise1800@yahoo.com	Turks & Caicos Islands	e6920268-aba1-48db-8739-415368d962ec	1664974	3618600
davidson2081@outlook.com	Turks & Caicos Islands	6feb9519-7623-422d-848c-0b9a5723da19	5561047	3147791
hormone1827@gmail.com	Turks & Caicos Islands	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3205021	1281316
dont2100@protonmail.com	Turks & Caicos Islands	7408db66-1b96-458c-b4f6-4234b2625afd	2401767	1051057
davidson2081@outlook.com	Turks & Caicos Islands	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3557278	4742441
journey2091@outlook.com	Turks & Caicos Islands	0b57e8c3-3a12-44b9-8236-ace791387ba3	5213713	2674123
nbc2041@yahoo.com	Turks & Caicos Islands	33828361-6656-438a-aeb6-15a2e5ffcf27	3418198	3425285
sauce2013@yandex.com	Turks & Caicos Islands	ccde439b-b989-4cd2-aec9-f142c8d948d0	3406492	269418
pda1876@outlook.com	Turks & Caicos Islands	57309776-d0f5-43a2-b94e-38372ee07cc6	3602979	1496270
nelson2015@protonmail.com	Turks & Caicos Islands	436386c2-345f-4570-ba73-582b3437d53e	5681604	3313307
nelson2015@protonmail.com	Turks & Caicos Islands	dccda210-9223-4604-b148-a0a248fb714e	3218953	3770180
bookings1998@protonmail.com	Turks & Caicos Islands	8acf71b1-5cd5-4010-8a5c-b1265d537e02	359163	3271272
dont2100@protonmail.com	Turks & Caicos Islands	495303f4-a868-4fa4-acba-c08667d7bcc8	2767733	2074148
peoples2042@protonmail.com	Turks & Caicos Islands	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5824369	499345
peoples2042@protonmail.com	Turks & Caicos Islands	c94fd88f-86c3-433a-9d81-b19695d48328	5360752	4882229
cruise1800@yahoo.com	Turks & Caicos Islands	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1948245	830864
hormone1827@gmail.com	Turks & Caicos Islands	e88d9503-9bde-473f-9276-3651878e2863	3086173	3360113
dont2100@protonmail.com	Turks & Caicos Islands	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2176908	2464827
officials1972@protonmail.com	Turks & Caicos Islands	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2351743	2579000
webpage2008@yahoo.com	Turks & Caicos Islands	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1974504	5118267
bind1902@yahoo.com	Turks & Caicos Islands	28778fb1-1671-4bad-8284-6a731564a45e	501450	4224861
fred1901@live.com	Turks & Caicos Islands	e5a762f6-3052-4384-a92b-b5401e965d25	3723301	3027371
throwing1896@protonmail.com	Turks & Caicos Islands	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3700464	619910
nbc2041@yahoo.com	Turks & Caicos Islands	642d495a-e016-412f-a53b-dc046cc492a0	5164136	3841932
lifetime1925@gmail.com	Antarctica	5de74332-bf74-402e-bac8-55b0a378954d	692811	310118
fred1901@live.com	Antarctica	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	841268	215157
mature1894@yahoo.com	Antarctica	5a00b0a4-db1a-4555-b66c-e47023575e85	378385	412111
only2081@protonmail.com	Antarctica	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	613351	527702
pda1876@outlook.com	Antarctica	000efc5f-1b50-44ef-92c9-7cd412ba4fca	498094	664575
facilitate2066@gmail.com	Antarctica	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	605089	595267
lifetime1925@gmail.com	Antarctica	69798bb6-1716-47ee-90ff-0938314cce0c	691928	404048
nelson2015@protonmail.com	Antarctica	9a270672-9e02-44bf-ba2e-2b6baf568829	778415	753165
only2081@protonmail.com	Antarctica	69817e8b-5270-4081-b06b-5f94d1a99c72	489358	833907
officials1972@protonmail.com	Antarctica	62f3d028-08e0-4986-806a-254f0d812c5b	806195	116669
fred1901@live.com	Antarctica	80a97543-fd97-40a3-b8dc-f58e50101abc	90084	735387
dont2100@protonmail.com	Antarctica	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	581985	506230
peoples2042@protonmail.com	Antarctica	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	375466	205239
pda1876@outlook.com	Antarctica	9848ad52-bed1-4791-9352-c779584dcbe7	344999	396792
fred1901@live.com	Antarctica	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	853983	82642
mature1894@yahoo.com	Antarctica	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	810920	270423
program2002@yandex.com	Antarctica	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	727229	275084
restoration1945@yahoo.com	Antarctica	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	321949	557607
program2002@yandex.com	Antarctica	c5c41565-02cb-462f-83e5-150521ebde9c	710932	258135
boost1833@gmail.com	Antarctica	8ec60513-990a-4ce2-a516-8972fdcf9919	603350	179320
hospital2060@yahoo.com	Antarctica	68739ab8-38f9-45e5-9e67-fb0fc6139879	4080	731208
restoration1945@yahoo.com	Antarctica	ea8636de-62ee-4739-8be2-2028afe303c9	710037	467422
local1830@gmail.com	Antarctica	ce85ec8a-a207-4929-ba56-2e8376b239ea	591247	354265
fred1901@live.com	Antarctica	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	268004	284729
program2002@yandex.com	Antarctica	5ed75d07-f129-4210-8934-b5282ab6bf39	179222	252308
hospital2060@yahoo.com	Antarctica	c82545f7-d728-4444-aded-9648e5d8c22c	479232	231742
mature1894@yahoo.com	Antarctica	b207278e-f452-43f3-8e6d-1d55a32497dc	814329	858389
nelson2015@protonmail.com	Antarctica	e6920268-aba1-48db-8739-415368d962ec	678207	153616
required1923@outlook.com	Antarctica	6feb9519-7623-422d-848c-0b9a5723da19	530090	526116
overall2026@outlook.com	Antarctica	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	750606	133013
restoration1945@yahoo.com	Antarctica	7408db66-1b96-458c-b4f6-4234b2625afd	62064	296005
restoration1945@yahoo.com	Antarctica	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	28725	446304
only2081@protonmail.com	Antarctica	0b57e8c3-3a12-44b9-8236-ace791387ba3	319467	423900
absence1941@live.com	Antarctica	33828361-6656-438a-aeb6-15a2e5ffcf27	135705	158529
local1830@gmail.com	Antarctica	ccde439b-b989-4cd2-aec9-f142c8d948d0	809483	393483
fred1901@live.com	Antarctica	57309776-d0f5-43a2-b94e-38372ee07cc6	867171	50947
local1830@gmail.com	Antarctica	436386c2-345f-4570-ba73-582b3437d53e	251723	95439
journey2091@outlook.com	Antarctica	dccda210-9223-4604-b148-a0a248fb714e	478419	832808
davidson2081@outlook.com	Antarctica	8acf71b1-5cd5-4010-8a5c-b1265d537e02	183553	78151
bind1902@yahoo.com	Antarctica	495303f4-a868-4fa4-acba-c08667d7bcc8	783974	775873
pda1876@outlook.com	Antarctica	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	412889	782470
absence1941@live.com	Antarctica	c94fd88f-86c3-433a-9d81-b19695d48328	283592	49595
fred1901@live.com	Antarctica	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	719042	734081
building2058@yandex.com	Antarctica	e88d9503-9bde-473f-9276-3651878e2863	849086	190910
required1923@outlook.com	Antarctica	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1375	671031
only2081@protonmail.com	Antarctica	1ef2eabc-18f9-4869-973e-fa0d7a60446c	338480	433205
required1923@outlook.com	Antarctica	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	755024	803835
delight1975@live.com	Antarctica	28778fb1-1671-4bad-8284-6a731564a45e	895363	570043
vocal2080@protonmail.com	Antarctica	e5a762f6-3052-4384-a92b-b5401e965d25	732267	228505
mature1894@yahoo.com	Antarctica	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	149715	279583
davidson2081@outlook.com	Antarctica	642d495a-e016-412f-a53b-dc046cc492a0	577658	601310
bind1902@yahoo.com	Bosnia & Herzegovina	5de74332-bf74-402e-bac8-55b0a378954d	3947889	3385269
fred1901@live.com	Bosnia & Herzegovina	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5359828	6400636
throwing1896@protonmail.com	Bosnia & Herzegovina	5a00b0a4-db1a-4555-b66c-e47023575e85	6041412	3010958
hospital2060@yahoo.com	Bosnia & Herzegovina	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4639342	8060691
cruise1800@yahoo.com	Bosnia & Herzegovina	000efc5f-1b50-44ef-92c9-7cd412ba4fca	188885	3233852
dont2100@protonmail.com	Bosnia & Herzegovina	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2660607	7164564
lifetime1925@gmail.com	Bosnia & Herzegovina	69798bb6-1716-47ee-90ff-0938314cce0c	5573640	7418706
boost1833@gmail.com	Bosnia & Herzegovina	9a270672-9e02-44bf-ba2e-2b6baf568829	3097069	2243339
facilitate2066@gmail.com	Bosnia & Herzegovina	69817e8b-5270-4081-b06b-5f94d1a99c72	8436814	741549
vocal2080@protonmail.com	Bosnia & Herzegovina	62f3d028-08e0-4986-806a-254f0d812c5b	7894460	6630776
program2002@yandex.com	Bosnia & Herzegovina	80a97543-fd97-40a3-b8dc-f58e50101abc	4011733	8588841
bookings1998@protonmail.com	Bosnia & Herzegovina	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2740810	4224416
navy1800@outlook.com	Bosnia & Herzegovina	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	8361950	4292742
hormone1827@gmail.com	Bosnia & Herzegovina	9848ad52-bed1-4791-9352-c779584dcbe7	9034868	9168521
peoples2042@protonmail.com	Bosnia & Herzegovina	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	7059619	8531525
fred1901@live.com	Bosnia & Herzegovina	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	3218242	5356140
davidson2081@outlook.com	Bosnia & Herzegovina	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3333528	5508883
absence1941@live.com	Bosnia & Herzegovina	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6303240	6359175
only2081@protonmail.com	Bosnia & Herzegovina	c5c41565-02cb-462f-83e5-150521ebde9c	4198714	4441374
local1830@gmail.com	Bosnia & Herzegovina	8ec60513-990a-4ce2-a516-8972fdcf9919	2224845	5037511
sauce2013@yandex.com	Bosnia & Herzegovina	68739ab8-38f9-45e5-9e67-fb0fc6139879	3171363	7138717
officials1972@protonmail.com	Bosnia & Herzegovina	ea8636de-62ee-4739-8be2-2028afe303c9	6133861	2093134
nelson2015@protonmail.com	Bosnia & Herzegovina	ce85ec8a-a207-4929-ba56-2e8376b239ea	1107414	5625025
lifetime1925@gmail.com	Bosnia & Herzegovina	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	7387999	5958312
bookings1998@protonmail.com	Bosnia & Herzegovina	5ed75d07-f129-4210-8934-b5282ab6bf39	5200601	562729
throwing1896@protonmail.com	Bosnia & Herzegovina	c82545f7-d728-4444-aded-9648e5d8c22c	438305	4753139
dont2100@protonmail.com	Bosnia & Herzegovina	b207278e-f452-43f3-8e6d-1d55a32497dc	4711695	6067405
local1830@gmail.com	Bosnia & Herzegovina	e6920268-aba1-48db-8739-415368d962ec	473294	3525115
building2058@yandex.com	Bosnia & Herzegovina	6feb9519-7623-422d-848c-0b9a5723da19	1698636	4028535
navy1800@outlook.com	Bosnia & Herzegovina	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	6625215	4981399
officials1972@protonmail.com	Bosnia & Herzegovina	7408db66-1b96-458c-b4f6-4234b2625afd	1343563	8210210
boost1833@gmail.com	Bosnia & Herzegovina	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2425605	3102134
pda1876@outlook.com	Bosnia & Herzegovina	0b57e8c3-3a12-44b9-8236-ace791387ba3	1112686	640600
journey2091@outlook.com	Bosnia & Herzegovina	33828361-6656-438a-aeb6-15a2e5ffcf27	8365438	3985113
navy1800@outlook.com	Bosnia & Herzegovina	ccde439b-b989-4cd2-aec9-f142c8d948d0	1847490	2469902
hormone1827@gmail.com	Bosnia & Herzegovina	57309776-d0f5-43a2-b94e-38372ee07cc6	3560605	8583507
chance1827@gmail.com	Bosnia & Herzegovina	436386c2-345f-4570-ba73-582b3437d53e	2831510	385330
nbc2041@yahoo.com	Bosnia & Herzegovina	dccda210-9223-4604-b148-a0a248fb714e	4863577	1575190
journey2091@outlook.com	Bosnia & Herzegovina	8acf71b1-5cd5-4010-8a5c-b1265d537e02	9001299	6588461
absence1941@live.com	Bosnia & Herzegovina	495303f4-a868-4fa4-acba-c08667d7bcc8	7535556	2123229
program2002@yandex.com	Bosnia & Herzegovina	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1014605	6655645
navy1800@outlook.com	Bosnia & Herzegovina	c94fd88f-86c3-433a-9d81-b19695d48328	8752798	2855394
cruise1800@yahoo.com	Bosnia & Herzegovina	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1564598	5060229
davidson2081@outlook.com	Bosnia & Herzegovina	e88d9503-9bde-473f-9276-3651878e2863	4108381	3834269
despite1900@live.com	Bosnia & Herzegovina	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5259807	3293968
florence2033@protonmail.com	Bosnia & Herzegovina	1ef2eabc-18f9-4869-973e-fa0d7a60446c	7104359	1313984
mature1894@yahoo.com	Bosnia & Herzegovina	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5342159	4538342
only2081@protonmail.com	Bosnia & Herzegovina	28778fb1-1671-4bad-8284-6a731564a45e	9207473	6498839
program2002@yandex.com	Bosnia & Herzegovina	e5a762f6-3052-4384-a92b-b5401e965d25	4216351	616032
officials1972@protonmail.com	Bosnia & Herzegovina	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1983097	4159585
webpage2008@yahoo.com	Bosnia & Herzegovina	642d495a-e016-412f-a53b-dc046cc492a0	6973433	3138913
dont2100@protonmail.com	Sudan	5de74332-bf74-402e-bac8-55b0a378954d	644091	39816
fred1901@live.com	Sudan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1912004	1304957
despite1900@live.com	Sudan	5a00b0a4-db1a-4555-b66c-e47023575e85	2285603	2217904
fred1901@live.com	Sudan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2709774	2420421
journey2091@outlook.com	Sudan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1999472	1415223
officials1972@protonmail.com	Sudan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1784442	1804891
overall2026@outlook.com	Sudan	69798bb6-1716-47ee-90ff-0938314cce0c	2307140	2279981
boost1833@gmail.com	Sudan	9a270672-9e02-44bf-ba2e-2b6baf568829	1129202	443255
despite1900@live.com	Sudan	69817e8b-5270-4081-b06b-5f94d1a99c72	420048	629980
hospital2060@yahoo.com	Sudan	62f3d028-08e0-4986-806a-254f0d812c5b	2000155	783929
davidson2081@outlook.com	Sudan	80a97543-fd97-40a3-b8dc-f58e50101abc	141158	495628
cruise1800@yahoo.com	Sudan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	66850	1261563
florence2033@protonmail.com	Sudan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	90330	2208169
peoples2042@protonmail.com	Sudan	9848ad52-bed1-4791-9352-c779584dcbe7	2605778	400296
facilitate2066@gmail.com	Sudan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1145170	1016400
mature1894@yahoo.com	Sudan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1491750	1045120
required1923@outlook.com	Sudan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1659181	1674975
journey2091@outlook.com	Sudan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1405838	1366518
building2058@yandex.com	Sudan	c5c41565-02cb-462f-83e5-150521ebde9c	1117754	415399
boost1833@gmail.com	Sudan	8ec60513-990a-4ce2-a516-8972fdcf9919	1402411	1924930
hormone1827@gmail.com	Sudan	68739ab8-38f9-45e5-9e67-fb0fc6139879	1108705	2857398
restoration1945@yahoo.com	Sudan	ea8636de-62ee-4739-8be2-2028afe303c9	1002301	1906192
absence1941@live.com	Sudan	ce85ec8a-a207-4929-ba56-2e8376b239ea	2298549	2224570
local1830@gmail.com	Sudan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2497581	1259828
restoration1945@yahoo.com	Sudan	5ed75d07-f129-4210-8934-b5282ab6bf39	129773	2303134
facilitate2066@gmail.com	Sudan	c82545f7-d728-4444-aded-9648e5d8c22c	2281719	2056041
lifetime1925@gmail.com	Sudan	b207278e-f452-43f3-8e6d-1d55a32497dc	2830951	818048
nbc2041@yahoo.com	Sudan	e6920268-aba1-48db-8739-415368d962ec	2290587	743884
dont2100@protonmail.com	Sudan	6feb9519-7623-422d-848c-0b9a5723da19	1127391	2341992
pda1876@outlook.com	Sudan	7408db66-1b96-458c-b4f6-4234b2625afd	2305533	529086
peoples2042@protonmail.com	Sudan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1264719	327274
peoples2042@protonmail.com	Sudan	0b57e8c3-3a12-44b9-8236-ace791387ba3	1189039	520414
facilitate2066@gmail.com	Sudan	33828361-6656-438a-aeb6-15a2e5ffcf27	1120256	607301
bookings1998@protonmail.com	Sudan	ccde439b-b989-4cd2-aec9-f142c8d948d0	375785	1777766
duncan1820@gmail.com	Sudan	57309776-d0f5-43a2-b94e-38372ee07cc6	1988258	622707
duncan1820@gmail.com	Sudan	436386c2-345f-4570-ba73-582b3437d53e	2650621	1574140
building2058@yandex.com	Sudan	dccda210-9223-4604-b148-a0a248fb714e	597439	2249886
dont2100@protonmail.com	Sudan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	792192	1429373
florence2033@protonmail.com	Sudan	495303f4-a868-4fa4-acba-c08667d7bcc8	2291859	1448963
hospital2060@yahoo.com	Sudan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	600411	2669920
absence1941@live.com	Sudan	c94fd88f-86c3-433a-9d81-b19695d48328	512081	2019516
nbc2041@yahoo.com	Sudan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1939819	3371
chance1827@gmail.com	Sudan	e88d9503-9bde-473f-9276-3651878e2863	2665035	851736
journey2091@outlook.com	Sudan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2639816	2884454
overall2026@outlook.com	Sudan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1356144	1938645
peoples2042@protonmail.com	Sudan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	1615410	770454
hospital2060@yahoo.com	Sudan	28778fb1-1671-4bad-8284-6a731564a45e	174285	36264
bind1902@yahoo.com	Sudan	e5a762f6-3052-4384-a92b-b5401e965d25	1357130	410174
hormone1827@gmail.com	Sudan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1951049	1971344
required1923@outlook.com	Sudan	642d495a-e016-412f-a53b-dc046cc492a0	1703956	1212440
mature1894@yahoo.com	Algeria	5de74332-bf74-402e-bac8-55b0a378954d	4273647	1632180
peoples2042@protonmail.com	Algeria	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2386436	1693244
boost1833@gmail.com	Algeria	5a00b0a4-db1a-4555-b66c-e47023575e85	310205	3724204
vocal2080@protonmail.com	Algeria	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4443511	3554313
throwing1896@protonmail.com	Algeria	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2094414	5195493
bind1902@yahoo.com	Algeria	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1716859	3069447
required1923@outlook.com	Algeria	69798bb6-1716-47ee-90ff-0938314cce0c	4814696	1989890
bind1902@yahoo.com	Algeria	9a270672-9e02-44bf-ba2e-2b6baf568829	426427	4641562
absence1941@live.com	Algeria	69817e8b-5270-4081-b06b-5f94d1a99c72	4809511	2404018
absence1941@live.com	Algeria	62f3d028-08e0-4986-806a-254f0d812c5b	16620	4418944
florence2033@protonmail.com	Algeria	80a97543-fd97-40a3-b8dc-f58e50101abc	2644776	5605966
throwing1896@protonmail.com	Algeria	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	5046516	1068391
boost1833@gmail.com	Algeria	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1196856	6103556
throwing1896@protonmail.com	Algeria	9848ad52-bed1-4791-9352-c779584dcbe7	3487447	4596621
cruise1800@yahoo.com	Algeria	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2744912	4569858
absence1941@live.com	Algeria	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6181720	1671279
chance1827@gmail.com	Algeria	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	198477	310023
webpage2008@yahoo.com	Algeria	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3171906	862122
facilitate2066@gmail.com	Algeria	c5c41565-02cb-462f-83e5-150521ebde9c	1742692	352032
officials1972@protonmail.com	Algeria	8ec60513-990a-4ce2-a516-8972fdcf9919	1961023	649799
webpage2008@yahoo.com	Algeria	68739ab8-38f9-45e5-9e67-fb0fc6139879	4007779	3059932
restoration1945@yahoo.com	Algeria	ea8636de-62ee-4739-8be2-2028afe303c9	1458251	4813139
navy1800@outlook.com	Algeria	ce85ec8a-a207-4929-ba56-2e8376b239ea	2535861	1868720
hospital2060@yahoo.com	Algeria	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5740830	1861534
boost1833@gmail.com	Algeria	5ed75d07-f129-4210-8934-b5282ab6bf39	2927520	3484691
required1923@outlook.com	Algeria	c82545f7-d728-4444-aded-9648e5d8c22c	3671460	6134967
overall2026@outlook.com	Algeria	b207278e-f452-43f3-8e6d-1d55a32497dc	2053411	4595123
pda1876@outlook.com	Algeria	e6920268-aba1-48db-8739-415368d962ec	6178412	1341225
lifetime1925@gmail.com	Algeria	6feb9519-7623-422d-848c-0b9a5723da19	826502	1285935
absence1941@live.com	Algeria	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2929537	3735113
mature1894@yahoo.com	Algeria	7408db66-1b96-458c-b4f6-4234b2625afd	1873010	3669868
only2081@protonmail.com	Algeria	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3929191	460943
boost1833@gmail.com	Algeria	0b57e8c3-3a12-44b9-8236-ace791387ba3	3859113	2184221
throwing1896@protonmail.com	Algeria	33828361-6656-438a-aeb6-15a2e5ffcf27	1300732	884841
bind1902@yahoo.com	Algeria	ccde439b-b989-4cd2-aec9-f142c8d948d0	4646670	5173084
nelson2015@protonmail.com	Algeria	57309776-d0f5-43a2-b94e-38372ee07cc6	722149	2907108
only2081@protonmail.com	Algeria	436386c2-345f-4570-ba73-582b3437d53e	2059402	4870075
peoples2042@protonmail.com	Algeria	dccda210-9223-4604-b148-a0a248fb714e	5380878	2814250
throwing1896@protonmail.com	Algeria	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4564146	2959631
navy1800@outlook.com	Algeria	495303f4-a868-4fa4-acba-c08667d7bcc8	4406962	1681066
officials1972@protonmail.com	Algeria	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2698647	3648391
webpage2008@yahoo.com	Algeria	c94fd88f-86c3-433a-9d81-b19695d48328	1483069	4656283
throwing1896@protonmail.com	Algeria	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	698649	5201537
restoration1945@yahoo.com	Algeria	e88d9503-9bde-473f-9276-3651878e2863	5367333	6100101
officials1972@protonmail.com	Algeria	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1596149	5216912
lifetime1925@gmail.com	Algeria	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1627029	6109429
journey2091@outlook.com	Algeria	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4637482	4572829
dont2100@protonmail.com	Algeria	28778fb1-1671-4bad-8284-6a731564a45e	4621967	5030051
officials1972@protonmail.com	Algeria	e5a762f6-3052-4384-a92b-b5401e965d25	4930390	2131276
vocal2080@protonmail.com	Algeria	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	784818	966161
absence1941@live.com	Algeria	642d495a-e016-412f-a53b-dc046cc492a0	2190192	3688088
chance1827@gmail.com	Albania	5de74332-bf74-402e-bac8-55b0a378954d	870289	1185638
dont2100@protonmail.com	Albania	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	546642	5095636
despite1900@live.com	Albania	5a00b0a4-db1a-4555-b66c-e47023575e85	4437138	4782315
florence2033@protonmail.com	Albania	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2814858	4713275
restoration1945@yahoo.com	Albania	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1647598	3543582
bookings1998@protonmail.com	Albania	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5399654	3173181
peoples2042@protonmail.com	Albania	69798bb6-1716-47ee-90ff-0938314cce0c	6013887	1145649
nelson2015@protonmail.com	Albania	9a270672-9e02-44bf-ba2e-2b6baf568829	984465	4907993
boost1833@gmail.com	Albania	69817e8b-5270-4081-b06b-5f94d1a99c72	5059792	6753129
mature1894@yahoo.com	Albania	62f3d028-08e0-4986-806a-254f0d812c5b	6181748	6115924
only2081@protonmail.com	Albania	80a97543-fd97-40a3-b8dc-f58e50101abc	2493490	796770
bind1902@yahoo.com	Albania	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6973003	2031486
cruise1800@yahoo.com	Albania	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	434869	3124276
officials1972@protonmail.com	Albania	9848ad52-bed1-4791-9352-c779584dcbe7	1105303	4020270
lifetime1925@gmail.com	Albania	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	6240064	4094714
bind1902@yahoo.com	Albania	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2642127	2346181
journey2091@outlook.com	Albania	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2592744	3069148
lifetime1925@gmail.com	Albania	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6209047	990105
sauce2013@yandex.com	Albania	c5c41565-02cb-462f-83e5-150521ebde9c	2806496	6709806
program2002@yandex.com	Albania	8ec60513-990a-4ce2-a516-8972fdcf9919	4202658	5576663
davidson2081@outlook.com	Albania	68739ab8-38f9-45e5-9e67-fb0fc6139879	1443110	6596468
building2058@yandex.com	Albania	ea8636de-62ee-4739-8be2-2028afe303c9	4305412	1200604
officials1972@protonmail.com	Albania	ce85ec8a-a207-4929-ba56-2e8376b239ea	4268598	3947598
restoration1945@yahoo.com	Albania	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	984546	974851
journey2091@outlook.com	Albania	5ed75d07-f129-4210-8934-b5282ab6bf39	1929009	4487223
program2002@yandex.com	Albania	c82545f7-d728-4444-aded-9648e5d8c22c	6136952	5440086
vocal2080@protonmail.com	Albania	b207278e-f452-43f3-8e6d-1d55a32497dc	4887064	3390824
webpage2008@yahoo.com	Albania	e6920268-aba1-48db-8739-415368d962ec	5735077	5275056
program2002@yandex.com	Albania	6feb9519-7623-422d-848c-0b9a5723da19	3204443	3140865
hospital2060@yahoo.com	Albania	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1167356	5327177
nbc2041@yahoo.com	Albania	7408db66-1b96-458c-b4f6-4234b2625afd	2932171	1330427
building2058@yandex.com	Albania	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3348479	705147
fred1901@live.com	Albania	0b57e8c3-3a12-44b9-8236-ace791387ba3	6927106	4092850
davidson2081@outlook.com	Albania	33828361-6656-438a-aeb6-15a2e5ffcf27	692062	4996274
peoples2042@protonmail.com	Albania	ccde439b-b989-4cd2-aec9-f142c8d948d0	3659847	2989000
boost1833@gmail.com	Albania	57309776-d0f5-43a2-b94e-38372ee07cc6	126250	1663348
required1923@outlook.com	Albania	436386c2-345f-4570-ba73-582b3437d53e	5192104	1349234
despite1900@live.com	Albania	dccda210-9223-4604-b148-a0a248fb714e	3177187	4920218
lifetime1925@gmail.com	Albania	8acf71b1-5cd5-4010-8a5c-b1265d537e02	6260814	767594
boost1833@gmail.com	Albania	495303f4-a868-4fa4-acba-c08667d7bcc8	5748692	664156
davidson2081@outlook.com	Albania	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4555915	1890069
local1830@gmail.com	Albania	c94fd88f-86c3-433a-9d81-b19695d48328	3639327	1681711
facilitate2066@gmail.com	Albania	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1791128	5886733
florence2033@protonmail.com	Albania	e88d9503-9bde-473f-9276-3651878e2863	3802145	353992
lifetime1925@gmail.com	Albania	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	4400244	3911420
florence2033@protonmail.com	Albania	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2832723	3219973
restoration1945@yahoo.com	Albania	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2734749	2755399
required1923@outlook.com	Albania	28778fb1-1671-4bad-8284-6a731564a45e	741702	5926248
throwing1896@protonmail.com	Albania	e5a762f6-3052-4384-a92b-b5401e965d25	1842359	5379852
florence2033@protonmail.com	Albania	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4010067	831212
dont2100@protonmail.com	Albania	642d495a-e016-412f-a53b-dc046cc492a0	1230622	2970855
peoples2042@protonmail.com	Bosnia & Herzegovina	5de74332-bf74-402e-bac8-55b0a378954d	790943	2139139
restoration1945@yahoo.com	Bosnia & Herzegovina	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2936879	1343254
sauce2013@yandex.com	Bosnia & Herzegovina	5a00b0a4-db1a-4555-b66c-e47023575e85	1189944	511538
restoration1945@yahoo.com	Bosnia & Herzegovina	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1822087	2234650
delight1975@live.com	Bosnia & Herzegovina	000efc5f-1b50-44ef-92c9-7cd412ba4fca	131978	854857
bookings1998@protonmail.com	Bosnia & Herzegovina	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	286660	1252189
hormone1827@gmail.com	Bosnia & Herzegovina	69798bb6-1716-47ee-90ff-0938314cce0c	390292	187678
required1923@outlook.com	Bosnia & Herzegovina	9a270672-9e02-44bf-ba2e-2b6baf568829	711645	1089840
duncan1820@gmail.com	Bosnia & Herzegovina	69817e8b-5270-4081-b06b-5f94d1a99c72	157041	993897
throwing1896@protonmail.com	Bosnia & Herzegovina	62f3d028-08e0-4986-806a-254f0d812c5b	2064936	493463
throwing1896@protonmail.com	Bosnia & Herzegovina	80a97543-fd97-40a3-b8dc-f58e50101abc	2324907	2232909
peoples2042@protonmail.com	Bosnia & Herzegovina	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	59614	976739
pda1876@outlook.com	Bosnia & Herzegovina	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2392779	2603528
program2002@yandex.com	Bosnia & Herzegovina	9848ad52-bed1-4791-9352-c779584dcbe7	2200023	1539808
davidson2081@outlook.com	Bosnia & Herzegovina	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2709692	1209680
hormone1827@gmail.com	Bosnia & Herzegovina	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2710748	1821810
facilitate2066@gmail.com	Bosnia & Herzegovina	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	915701	2514905
facilitate2066@gmail.com	Bosnia & Herzegovina	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2354480	1601894
bookings1998@protonmail.com	Bosnia & Herzegovina	c5c41565-02cb-462f-83e5-150521ebde9c	1110654	2714301
bookings1998@protonmail.com	Bosnia & Herzegovina	8ec60513-990a-4ce2-a516-8972fdcf9919	2574769	724583
despite1900@live.com	Bosnia & Herzegovina	68739ab8-38f9-45e5-9e67-fb0fc6139879	1294879	1148272
nbc2041@yahoo.com	Bosnia & Herzegovina	ea8636de-62ee-4739-8be2-2028afe303c9	15948	2365340
navy1800@outlook.com	Bosnia & Herzegovina	ce85ec8a-a207-4929-ba56-2e8376b239ea	588203	2077861
mature1894@yahoo.com	Bosnia & Herzegovina	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	2064368	1837718
webpage2008@yahoo.com	Bosnia & Herzegovina	5ed75d07-f129-4210-8934-b5282ab6bf39	361516	996726
delight1975@live.com	Bosnia & Herzegovina	c82545f7-d728-4444-aded-9648e5d8c22c	287658	1556696
throwing1896@protonmail.com	Bosnia & Herzegovina	b207278e-f452-43f3-8e6d-1d55a32497dc	2379468	1808655
officials1972@protonmail.com	Bosnia & Herzegovina	e6920268-aba1-48db-8739-415368d962ec	2377726	1869138
nbc2041@yahoo.com	Bosnia & Herzegovina	6feb9519-7623-422d-848c-0b9a5723da19	254172	1501732
chance1827@gmail.com	Bosnia & Herzegovina	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2102686	1294793
building2058@yandex.com	Bosnia & Herzegovina	7408db66-1b96-458c-b4f6-4234b2625afd	2165673	932612
nelson2015@protonmail.com	Bosnia & Herzegovina	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	993760	961215
duncan1820@gmail.com	Bosnia & Herzegovina	0b57e8c3-3a12-44b9-8236-ace791387ba3	1554619	1932583
navy1800@outlook.com	Bosnia & Herzegovina	33828361-6656-438a-aeb6-15a2e5ffcf27	1652319	1724690
throwing1896@protonmail.com	Bosnia & Herzegovina	ccde439b-b989-4cd2-aec9-f142c8d948d0	1366714	2204756
cruise1800@yahoo.com	Bosnia & Herzegovina	57309776-d0f5-43a2-b94e-38372ee07cc6	95687	1542070
delight1975@live.com	Bosnia & Herzegovina	436386c2-345f-4570-ba73-582b3437d53e	2242005	2438624
webpage2008@yahoo.com	Bosnia & Herzegovina	dccda210-9223-4604-b148-a0a248fb714e	607274	1660004
facilitate2066@gmail.com	Bosnia & Herzegovina	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2524123	3100272
facilitate2066@gmail.com	Bosnia & Herzegovina	495303f4-a868-4fa4-acba-c08667d7bcc8	1087743	2943861
bookings1998@protonmail.com	Bosnia & Herzegovina	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1899110	1430184
bind1902@yahoo.com	Bosnia & Herzegovina	c94fd88f-86c3-433a-9d81-b19695d48328	2956617	1257743
journey2091@outlook.com	Bosnia & Herzegovina	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2038836	1789359
chance1827@gmail.com	Bosnia & Herzegovina	e88d9503-9bde-473f-9276-3651878e2863	275554	1347686
bookings1998@protonmail.com	Bosnia & Herzegovina	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	742382	2093818
absence1941@live.com	Bosnia & Herzegovina	1ef2eabc-18f9-4869-973e-fa0d7a60446c	311585	1479405
peoples2042@protonmail.com	Bosnia & Herzegovina	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2016277	3009115
fred1901@live.com	Bosnia & Herzegovina	28778fb1-1671-4bad-8284-6a731564a45e	1283358	863120
webpage2008@yahoo.com	Bosnia & Herzegovina	e5a762f6-3052-4384-a92b-b5401e965d25	1803846	493049
restoration1945@yahoo.com	Bosnia & Herzegovina	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	464005	2373289
florence2033@protonmail.com	Bosnia & Herzegovina	642d495a-e016-412f-a53b-dc046cc492a0	292272	920673
dont2100@protonmail.com	Myanmar	5de74332-bf74-402e-bac8-55b0a378954d	770208	1325834
chance1827@gmail.com	Myanmar	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1373640	783923
hormone1827@gmail.com	Myanmar	5a00b0a4-db1a-4555-b66c-e47023575e85	1797897	2372782
davidson2081@outlook.com	Myanmar	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	913732	547783
building2058@yandex.com	Myanmar	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1548224	1722102
program2002@yandex.com	Myanmar	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2512052	719040
chance1827@gmail.com	Myanmar	69798bb6-1716-47ee-90ff-0938314cce0c	2898096	2549894
bind1902@yahoo.com	Myanmar	9a270672-9e02-44bf-ba2e-2b6baf568829	2165826	2536371
restoration1945@yahoo.com	Myanmar	69817e8b-5270-4081-b06b-5f94d1a99c72	877764	3047796
journey2091@outlook.com	Myanmar	62f3d028-08e0-4986-806a-254f0d812c5b	3381734	2894013
peoples2042@protonmail.com	Myanmar	80a97543-fd97-40a3-b8dc-f58e50101abc	2732718	1576160
fred1901@live.com	Myanmar	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	216555	2743000
building2058@yandex.com	Myanmar	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2632808	1147929
hospital2060@yahoo.com	Myanmar	9848ad52-bed1-4791-9352-c779584dcbe7	463173	3045598
vocal2080@protonmail.com	Myanmar	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3298929	3353450
nbc2041@yahoo.com	Myanmar	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1900819	2401786
delight1975@live.com	Myanmar	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	102863	1579919
nbc2041@yahoo.com	Myanmar	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1082985	1198425
sauce2013@yandex.com	Myanmar	c5c41565-02cb-462f-83e5-150521ebde9c	3119901	2898286
officials1972@protonmail.com	Myanmar	8ec60513-990a-4ce2-a516-8972fdcf9919	2561378	876395
hormone1827@gmail.com	Myanmar	68739ab8-38f9-45e5-9e67-fb0fc6139879	755034	1031294
restoration1945@yahoo.com	Myanmar	ea8636de-62ee-4739-8be2-2028afe303c9	1909013	1193090
peoples2042@protonmail.com	Myanmar	ce85ec8a-a207-4929-ba56-2e8376b239ea	2985573	962566
journey2091@outlook.com	Myanmar	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1259915	704369
despite1900@live.com	Myanmar	5ed75d07-f129-4210-8934-b5282ab6bf39	599818	1547610
sauce2013@yandex.com	Myanmar	c82545f7-d728-4444-aded-9648e5d8c22c	549197	2607897
absence1941@live.com	Myanmar	b207278e-f452-43f3-8e6d-1d55a32497dc	2959334	1898215
overall2026@outlook.com	Myanmar	e6920268-aba1-48db-8739-415368d962ec	2972289	3430080
program2002@yandex.com	Myanmar	6feb9519-7623-422d-848c-0b9a5723da19	2292404	931326
lifetime1925@gmail.com	Myanmar	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	352616	452479
restoration1945@yahoo.com	Myanmar	7408db66-1b96-458c-b4f6-4234b2625afd	1729809	2856765
bookings1998@protonmail.com	Myanmar	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1181222	1189587
building2058@yandex.com	Myanmar	0b57e8c3-3a12-44b9-8236-ace791387ba3	344433	1186798
program2002@yandex.com	Myanmar	33828361-6656-438a-aeb6-15a2e5ffcf27	2781009	2516223
only2081@protonmail.com	Myanmar	ccde439b-b989-4cd2-aec9-f142c8d948d0	1631713	2901952
officials1972@protonmail.com	Myanmar	57309776-d0f5-43a2-b94e-38372ee07cc6	1781004	1924809
mature1894@yahoo.com	Myanmar	436386c2-345f-4570-ba73-582b3437d53e	507882	3592712
program2002@yandex.com	Myanmar	dccda210-9223-4604-b148-a0a248fb714e	1736436	1463072
building2058@yandex.com	Myanmar	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3461518	2787030
chance1827@gmail.com	Myanmar	495303f4-a868-4fa4-acba-c08667d7bcc8	1439961	795948
lifetime1925@gmail.com	Myanmar	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	212589	3004219
delight1975@live.com	Myanmar	c94fd88f-86c3-433a-9d81-b19695d48328	2692299	1428294
pda1876@outlook.com	Myanmar	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1752247	3090703
webpage2008@yahoo.com	Myanmar	e88d9503-9bde-473f-9276-3651878e2863	1640049	2662814
nbc2041@yahoo.com	Myanmar	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1687531	382497
bookings1998@protonmail.com	Myanmar	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3029786	1977247
program2002@yandex.com	Myanmar	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3490585	2279074
bookings1998@protonmail.com	Myanmar	28778fb1-1671-4bad-8284-6a731564a45e	2602588	741368
restoration1945@yahoo.com	Myanmar	e5a762f6-3052-4384-a92b-b5401e965d25	1556858	1101883
pda1876@outlook.com	Myanmar	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	800366	2932709
facilitate2066@gmail.com	Myanmar	642d495a-e016-412f-a53b-dc046cc492a0	1794080	2047747
dont2100@protonmail.com	Mauritania	5de74332-bf74-402e-bac8-55b0a378954d	5331321	4681932
only2081@protonmail.com	Mauritania	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	888450	7178177
davidson2081@outlook.com	Mauritania	5a00b0a4-db1a-4555-b66c-e47023575e85	7230103	4246397
sauce2013@yandex.com	Mauritania	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	5833947	8181395
local1830@gmail.com	Mauritania	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4901430	7069559
facilitate2066@gmail.com	Mauritania	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	7122869	1799887
nbc2041@yahoo.com	Mauritania	69798bb6-1716-47ee-90ff-0938314cce0c	254133	7906180
dont2100@protonmail.com	Mauritania	9a270672-9e02-44bf-ba2e-2b6baf568829	7716429	7646355
delight1975@live.com	Mauritania	69817e8b-5270-4081-b06b-5f94d1a99c72	7671199	5837843
chance1827@gmail.com	Mauritania	62f3d028-08e0-4986-806a-254f0d812c5b	4351315	451843
despite1900@live.com	Mauritania	80a97543-fd97-40a3-b8dc-f58e50101abc	2783637	8365351
restoration1945@yahoo.com	Mauritania	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3147129	4557737
cruise1800@yahoo.com	Mauritania	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	5710278	172868
hospital2060@yahoo.com	Mauritania	9848ad52-bed1-4791-9352-c779584dcbe7	7824379	569568
bookings1998@protonmail.com	Mauritania	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4998326	5798642
boost1833@gmail.com	Mauritania	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6580940	3853563
overall2026@outlook.com	Mauritania	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4939198	5731341
boost1833@gmail.com	Mauritania	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	8527018	1022360
facilitate2066@gmail.com	Mauritania	c5c41565-02cb-462f-83e5-150521ebde9c	4713339	7262845
restoration1945@yahoo.com	Mauritania	8ec60513-990a-4ce2-a516-8972fdcf9919	8150117	6350124
navy1800@outlook.com	Mauritania	68739ab8-38f9-45e5-9e67-fb0fc6139879	824228	8467583
bookings1998@protonmail.com	Mauritania	ea8636de-62ee-4739-8be2-2028afe303c9	2689573	6593626
program2002@yandex.com	Mauritania	ce85ec8a-a207-4929-ba56-2e8376b239ea	6293598	1898164
davidson2081@outlook.com	Mauritania	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3328642	4208669
cruise1800@yahoo.com	Mauritania	5ed75d07-f129-4210-8934-b5282ab6bf39	2793765	3084281
mature1894@yahoo.com	Mauritania	c82545f7-d728-4444-aded-9648e5d8c22c	838726	6059612
bind1902@yahoo.com	Mauritania	b207278e-f452-43f3-8e6d-1d55a32497dc	3090940	7642688
navy1800@outlook.com	Mauritania	e6920268-aba1-48db-8739-415368d962ec	5204025	625679
local1830@gmail.com	Mauritania	6feb9519-7623-422d-848c-0b9a5723da19	1803022	5461850
bookings1998@protonmail.com	Mauritania	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	997730	5151443
boost1833@gmail.com	Mauritania	7408db66-1b96-458c-b4f6-4234b2625afd	596768	3437487
duncan1820@gmail.com	Mauritania	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	362573	7021740
required1923@outlook.com	Mauritania	0b57e8c3-3a12-44b9-8236-ace791387ba3	5691557	6861680
florence2033@protonmail.com	Mauritania	33828361-6656-438a-aeb6-15a2e5ffcf27	740658	3314703
only2081@protonmail.com	Mauritania	ccde439b-b989-4cd2-aec9-f142c8d948d0	6739462	6529955
boost1833@gmail.com	Mauritania	57309776-d0f5-43a2-b94e-38372ee07cc6	4862566	1579643
bind1902@yahoo.com	Mauritania	436386c2-345f-4570-ba73-582b3437d53e	669150	1623056
webpage2008@yahoo.com	Mauritania	dccda210-9223-4604-b148-a0a248fb714e	5927759	2347
florence2033@protonmail.com	Mauritania	8acf71b1-5cd5-4010-8a5c-b1265d537e02	7932137	867357
boost1833@gmail.com	Mauritania	495303f4-a868-4fa4-acba-c08667d7bcc8	5112313	3877496
hormone1827@gmail.com	Mauritania	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5832278	5225659
restoration1945@yahoo.com	Mauritania	c94fd88f-86c3-433a-9d81-b19695d48328	5062125	6881940
journey2091@outlook.com	Mauritania	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	7109627	7972234
required1923@outlook.com	Mauritania	e88d9503-9bde-473f-9276-3651878e2863	6293729	6803578
pda1876@outlook.com	Mauritania	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	6205322	8463361
overall2026@outlook.com	Mauritania	1ef2eabc-18f9-4869-973e-fa0d7a60446c	7627566	5270448
cruise1800@yahoo.com	Mauritania	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5453415	5657880
bookings1998@protonmail.com	Mauritania	28778fb1-1671-4bad-8284-6a731564a45e	1132881	4568674
overall2026@outlook.com	Mauritania	e5a762f6-3052-4384-a92b-b5401e965d25	3220806	1076048
facilitate2066@gmail.com	Mauritania	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1551967	3307031
bind1902@yahoo.com	Mauritania	642d495a-e016-412f-a53b-dc046cc492a0	8085461	8406574
pda1876@outlook.com	Belgium	5de74332-bf74-402e-bac8-55b0a378954d	7258687	1875962
bookings1998@protonmail.com	Belgium	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6393218	1692405
nbc2041@yahoo.com	Belgium	5a00b0a4-db1a-4555-b66c-e47023575e85	2696198	7325344
absence1941@live.com	Belgium	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1574887	5329552
only2081@protonmail.com	Belgium	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5134807	3902048
only2081@protonmail.com	Belgium	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	695429	7156704
florence2033@protonmail.com	Belgium	69798bb6-1716-47ee-90ff-0938314cce0c	5818305	3913807
chance1827@gmail.com	Belgium	9a270672-9e02-44bf-ba2e-2b6baf568829	6929844	397404
dont2100@protonmail.com	Belgium	69817e8b-5270-4081-b06b-5f94d1a99c72	3202647	3292979
dont2100@protonmail.com	Belgium	62f3d028-08e0-4986-806a-254f0d812c5b	2805599	1725530
officials1972@protonmail.com	Belgium	80a97543-fd97-40a3-b8dc-f58e50101abc	4094323	2345649
only2081@protonmail.com	Belgium	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4680559	4720055
hormone1827@gmail.com	Belgium	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	7240916	5928638
cruise1800@yahoo.com	Belgium	9848ad52-bed1-4791-9352-c779584dcbe7	1755037	5099459
boost1833@gmail.com	Belgium	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4732081	1599349
boost1833@gmail.com	Belgium	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4738743	4747366
mature1894@yahoo.com	Belgium	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4779881	4374776
restoration1945@yahoo.com	Belgium	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2823659	5132001
local1830@gmail.com	Belgium	c5c41565-02cb-462f-83e5-150521ebde9c	1833700	3198087
despite1900@live.com	Belgium	8ec60513-990a-4ce2-a516-8972fdcf9919	6676395	1857342
nelson2015@protonmail.com	Belgium	68739ab8-38f9-45e5-9e67-fb0fc6139879	6488810	970916
throwing1896@protonmail.com	Belgium	ea8636de-62ee-4739-8be2-2028afe303c9	3684050	3381891
peoples2042@protonmail.com	Belgium	ce85ec8a-a207-4929-ba56-2e8376b239ea	4137773	279060
nbc2041@yahoo.com	Belgium	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6188734	3282880
cruise1800@yahoo.com	Belgium	5ed75d07-f129-4210-8934-b5282ab6bf39	4904648	4385859
building2058@yandex.com	Belgium	c82545f7-d728-4444-aded-9648e5d8c22c	7342557	5184260
local1830@gmail.com	Belgium	b207278e-f452-43f3-8e6d-1d55a32497dc	5345664	7310916
journey2091@outlook.com	Belgium	e6920268-aba1-48db-8739-415368d962ec	5435411	955628
hospital2060@yahoo.com	Belgium	6feb9519-7623-422d-848c-0b9a5723da19	1142119	1347660
navy1800@outlook.com	Belgium	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3851513	6989814
absence1941@live.com	Belgium	7408db66-1b96-458c-b4f6-4234b2625afd	4032638	527647
lifetime1925@gmail.com	Belgium	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3437874	4061920
journey2091@outlook.com	Belgium	0b57e8c3-3a12-44b9-8236-ace791387ba3	3419710	2646113
facilitate2066@gmail.com	Belgium	33828361-6656-438a-aeb6-15a2e5ffcf27	4127083	4698922
davidson2081@outlook.com	Belgium	ccde439b-b989-4cd2-aec9-f142c8d948d0	5769926	106205
lifetime1925@gmail.com	Belgium	57309776-d0f5-43a2-b94e-38372ee07cc6	3036928	5598165
program2002@yandex.com	Belgium	436386c2-345f-4570-ba73-582b3437d53e	4222937	5928484
chance1827@gmail.com	Belgium	dccda210-9223-4604-b148-a0a248fb714e	835857	2719804
hormone1827@gmail.com	Belgium	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2396633	6847557
officials1972@protonmail.com	Belgium	495303f4-a868-4fa4-acba-c08667d7bcc8	4614118	503706
building2058@yandex.com	Belgium	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	427057	6362120
required1923@outlook.com	Belgium	c94fd88f-86c3-433a-9d81-b19695d48328	1239970	5334217
cruise1800@yahoo.com	Belgium	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4242520	4309330
journey2091@outlook.com	Belgium	e88d9503-9bde-473f-9276-3651878e2863	71199	3836588
florence2033@protonmail.com	Belgium	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	982228	3999365
cruise1800@yahoo.com	Belgium	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2924104	3504325
duncan1820@gmail.com	Belgium	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4091212	2275428
officials1972@protonmail.com	Belgium	28778fb1-1671-4bad-8284-6a731564a45e	4287352	5670363
peoples2042@protonmail.com	Belgium	e5a762f6-3052-4384-a92b-b5401e965d25	3716356	598775
required1923@outlook.com	Belgium	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4183072	2091103
officials1972@protonmail.com	Belgium	642d495a-e016-412f-a53b-dc046cc492a0	2062228	4195276
local1830@gmail.com	Tajikistan	5de74332-bf74-402e-bac8-55b0a378954d	139240	142015
hospital2060@yahoo.com	Tajikistan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	397765	3943543
hospital2060@yahoo.com	Tajikistan	5a00b0a4-db1a-4555-b66c-e47023575e85	838416	2166293
fred1901@live.com	Tajikistan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4417924	3861557
cruise1800@yahoo.com	Tajikistan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	935798	4617246
navy1800@outlook.com	Tajikistan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4495508	2302469
peoples2042@protonmail.com	Tajikistan	69798bb6-1716-47ee-90ff-0938314cce0c	1488524	2287084
cruise1800@yahoo.com	Tajikistan	9a270672-9e02-44bf-ba2e-2b6baf568829	3352470	5375300
florence2033@protonmail.com	Tajikistan	69817e8b-5270-4081-b06b-5f94d1a99c72	3365916	4733851
local1830@gmail.com	Tajikistan	62f3d028-08e0-4986-806a-254f0d812c5b	5026488	934549
program2002@yandex.com	Tajikistan	80a97543-fd97-40a3-b8dc-f58e50101abc	1745849	3894476
davidson2081@outlook.com	Tajikistan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2846020	5290986
delight1975@live.com	Tajikistan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1712322	5270718
local1830@gmail.com	Tajikistan	9848ad52-bed1-4791-9352-c779584dcbe7	4386629	2648784
chance1827@gmail.com	Tajikistan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4805009	4244067
boost1833@gmail.com	Tajikistan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	593507	1795366
required1923@outlook.com	Tajikistan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3264451	1138860
throwing1896@protonmail.com	Tajikistan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2623345	5183924
despite1900@live.com	Tajikistan	c5c41565-02cb-462f-83e5-150521ebde9c	4570071	4570311
bind1902@yahoo.com	Tajikistan	8ec60513-990a-4ce2-a516-8972fdcf9919	3938598	3221555
webpage2008@yahoo.com	Tajikistan	68739ab8-38f9-45e5-9e67-fb0fc6139879	4807	3146615
absence1941@live.com	Tajikistan	ea8636de-62ee-4739-8be2-2028afe303c9	2113273	1500020
davidson2081@outlook.com	Tajikistan	ce85ec8a-a207-4929-ba56-2e8376b239ea	3201353	2255092
hospital2060@yahoo.com	Tajikistan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	749564	5141154
cruise1800@yahoo.com	Tajikistan	5ed75d07-f129-4210-8934-b5282ab6bf39	1070667	4525255
nbc2041@yahoo.com	Tajikistan	c82545f7-d728-4444-aded-9648e5d8c22c	695658	1985094
facilitate2066@gmail.com	Tajikistan	b207278e-f452-43f3-8e6d-1d55a32497dc	1788006	884699
duncan1820@gmail.com	Tajikistan	e6920268-aba1-48db-8739-415368d962ec	1554370	2575518
mature1894@yahoo.com	Tajikistan	6feb9519-7623-422d-848c-0b9a5723da19	2572262	2244025
navy1800@outlook.com	Tajikistan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2414207	2217851
chance1827@gmail.com	Tajikistan	7408db66-1b96-458c-b4f6-4234b2625afd	4385990	5438638
vocal2080@protonmail.com	Tajikistan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3118344	4545852
journey2091@outlook.com	Tajikistan	0b57e8c3-3a12-44b9-8236-ace791387ba3	1515548	1664470
hormone1827@gmail.com	Tajikistan	33828361-6656-438a-aeb6-15a2e5ffcf27	3000917	3839396
nelson2015@protonmail.com	Tajikistan	ccde439b-b989-4cd2-aec9-f142c8d948d0	5176226	5164075
bookings1998@protonmail.com	Tajikistan	57309776-d0f5-43a2-b94e-38372ee07cc6	5246591	2347879
throwing1896@protonmail.com	Tajikistan	436386c2-345f-4570-ba73-582b3437d53e	533682	5370938
vocal2080@protonmail.com	Tajikistan	dccda210-9223-4604-b148-a0a248fb714e	5237069	3792952
boost1833@gmail.com	Tajikistan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2600407	1245919
overall2026@outlook.com	Tajikistan	495303f4-a868-4fa4-acba-c08667d7bcc8	1439780	2430882
davidson2081@outlook.com	Tajikistan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5119405	4376233
overall2026@outlook.com	Tajikistan	c94fd88f-86c3-433a-9d81-b19695d48328	612662	5156279
vocal2080@protonmail.com	Tajikistan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1142717	4493246
cruise1800@yahoo.com	Tajikistan	e88d9503-9bde-473f-9276-3651878e2863	4178292	3290910
local1830@gmail.com	Tajikistan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	673898	3729952
required1923@outlook.com	Tajikistan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1295415	2831239
building2058@yandex.com	Tajikistan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	4269036	1956531
facilitate2066@gmail.com	Tajikistan	28778fb1-1671-4bad-8284-6a731564a45e	1219018	1264963
davidson2081@outlook.com	Tajikistan	e5a762f6-3052-4384-a92b-b5401e965d25	4462582	4291368
hospital2060@yahoo.com	Tajikistan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1704322	3600354
webpage2008@yahoo.com	Tajikistan	642d495a-e016-412f-a53b-dc046cc492a0	5359706	1217294
throwing1896@protonmail.com	El Salvador	5de74332-bf74-402e-bac8-55b0a378954d	3890254	2743019
sauce2013@yandex.com	El Salvador	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5042485	1713456
officials1972@protonmail.com	El Salvador	5a00b0a4-db1a-4555-b66c-e47023575e85	686364	1992203
navy1800@outlook.com	El Salvador	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	614323	1428083
building2058@yandex.com	El Salvador	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4014454	4109650
program2002@yandex.com	El Salvador	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2641693	4612760
absence1941@live.com	El Salvador	69798bb6-1716-47ee-90ff-0938314cce0c	3096471	1384574
vocal2080@protonmail.com	El Salvador	9a270672-9e02-44bf-ba2e-2b6baf568829	2599294	1759825
vocal2080@protonmail.com	El Salvador	69817e8b-5270-4081-b06b-5f94d1a99c72	674972	2162422
program2002@yandex.com	El Salvador	62f3d028-08e0-4986-806a-254f0d812c5b	2027302	3798320
navy1800@outlook.com	El Salvador	80a97543-fd97-40a3-b8dc-f58e50101abc	3352247	1871864
building2058@yandex.com	El Salvador	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	253099	2484927
duncan1820@gmail.com	El Salvador	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1732358	2679067
officials1972@protonmail.com	El Salvador	9848ad52-bed1-4791-9352-c779584dcbe7	2968715	4804107
pda1876@outlook.com	El Salvador	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3394364	364053
florence2033@protonmail.com	El Salvador	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4061471	4571640
florence2033@protonmail.com	El Salvador	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2696037	4426388
chance1827@gmail.com	El Salvador	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2427063	2547595
navy1800@outlook.com	El Salvador	c5c41565-02cb-462f-83e5-150521ebde9c	3674857	4047037
bookings1998@protonmail.com	El Salvador	8ec60513-990a-4ce2-a516-8972fdcf9919	237352	3366618
throwing1896@protonmail.com	El Salvador	68739ab8-38f9-45e5-9e67-fb0fc6139879	1846675	1167611
building2058@yandex.com	El Salvador	ea8636de-62ee-4739-8be2-2028afe303c9	4407460	3836943
boost1833@gmail.com	El Salvador	ce85ec8a-a207-4929-ba56-2e8376b239ea	3494138	1306597
fred1901@live.com	El Salvador	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4870472	929374
webpage2008@yahoo.com	El Salvador	5ed75d07-f129-4210-8934-b5282ab6bf39	104210	789660
officials1972@protonmail.com	El Salvador	c82545f7-d728-4444-aded-9648e5d8c22c	3580204	4474358
building2058@yandex.com	El Salvador	b207278e-f452-43f3-8e6d-1d55a32497dc	1047815	4347359
nelson2015@protonmail.com	El Salvador	e6920268-aba1-48db-8739-415368d962ec	3619463	4471034
only2081@protonmail.com	El Salvador	6feb9519-7623-422d-848c-0b9a5723da19	550132	1291949
building2058@yandex.com	El Salvador	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	48909	1278521
nelson2015@protonmail.com	El Salvador	7408db66-1b96-458c-b4f6-4234b2625afd	3699753	2061961
duncan1820@gmail.com	El Salvador	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1849651	1783909
hormone1827@gmail.com	El Salvador	0b57e8c3-3a12-44b9-8236-ace791387ba3	1683512	288386
vocal2080@protonmail.com	El Salvador	33828361-6656-438a-aeb6-15a2e5ffcf27	3575003	2655108
dont2100@protonmail.com	El Salvador	ccde439b-b989-4cd2-aec9-f142c8d948d0	4907132	1631277
florence2033@protonmail.com	El Salvador	57309776-d0f5-43a2-b94e-38372ee07cc6	3441843	3667297
cruise1800@yahoo.com	El Salvador	436386c2-345f-4570-ba73-582b3437d53e	3491856	3124249
hospital2060@yahoo.com	El Salvador	dccda210-9223-4604-b148-a0a248fb714e	2407937	3243164
pda1876@outlook.com	El Salvador	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3397445	772571
delight1975@live.com	El Salvador	495303f4-a868-4fa4-acba-c08667d7bcc8	2354088	2688344
absence1941@live.com	El Salvador	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4615605	1765594
hormone1827@gmail.com	El Salvador	c94fd88f-86c3-433a-9d81-b19695d48328	2604117	1746443
pda1876@outlook.com	El Salvador	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4955818	3918614
nbc2041@yahoo.com	El Salvador	e88d9503-9bde-473f-9276-3651878e2863	3754588	419082
dont2100@protonmail.com	El Salvador	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2557927	1857034
florence2033@protonmail.com	El Salvador	1ef2eabc-18f9-4869-973e-fa0d7a60446c	278483	4220382
only2081@protonmail.com	El Salvador	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3677459	4113452
program2002@yandex.com	El Salvador	28778fb1-1671-4bad-8284-6a731564a45e	150029	3159980
mature1894@yahoo.com	El Salvador	e5a762f6-3052-4384-a92b-b5401e965d25	210317	4899587
officials1972@protonmail.com	El Salvador	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1668364	53799
nbc2041@yahoo.com	El Salvador	642d495a-e016-412f-a53b-dc046cc492a0	4932330	2258019
officials1972@protonmail.com	Namibia	5de74332-bf74-402e-bac8-55b0a378954d	3257723	2303056
davidson2081@outlook.com	Namibia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5901189	2716275
building2058@yandex.com	Namibia	5a00b0a4-db1a-4555-b66c-e47023575e85	1866654	3731572
absence1941@live.com	Namibia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3018908	114575
nelson2015@protonmail.com	Namibia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5799805	3793165
local1830@gmail.com	Namibia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1631282	1278410
throwing1896@protonmail.com	Namibia	69798bb6-1716-47ee-90ff-0938314cce0c	5268238	2110033
throwing1896@protonmail.com	Namibia	9a270672-9e02-44bf-ba2e-2b6baf568829	3133020	3873151
nelson2015@protonmail.com	Namibia	69817e8b-5270-4081-b06b-5f94d1a99c72	783684	4235634
building2058@yandex.com	Namibia	62f3d028-08e0-4986-806a-254f0d812c5b	598135	1821579
sauce2013@yandex.com	Namibia	80a97543-fd97-40a3-b8dc-f58e50101abc	2509266	3075049
fred1901@live.com	Namibia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4580815	5046398
bind1902@yahoo.com	Namibia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	6254186	1421415
restoration1945@yahoo.com	Namibia	9848ad52-bed1-4791-9352-c779584dcbe7	2688178	4580903
required1923@outlook.com	Namibia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	409814	5168023
peoples2042@protonmail.com	Namibia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	6347022	1140420
local1830@gmail.com	Namibia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	4459288	4220367
navy1800@outlook.com	Namibia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	6713736	657574
delight1975@live.com	Namibia	c5c41565-02cb-462f-83e5-150521ebde9c	2245068	1623264
bookings1998@protonmail.com	Namibia	8ec60513-990a-4ce2-a516-8972fdcf9919	1852915	3204007
delight1975@live.com	Namibia	68739ab8-38f9-45e5-9e67-fb0fc6139879	2985533	2658949
chance1827@gmail.com	Namibia	ea8636de-62ee-4739-8be2-2028afe303c9	6504149	1029711
delight1975@live.com	Namibia	ce85ec8a-a207-4929-ba56-2e8376b239ea	402737	400753
dont2100@protonmail.com	Namibia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5295027	3724803
webpage2008@yahoo.com	Namibia	5ed75d07-f129-4210-8934-b5282ab6bf39	3014719	2427240
boost1833@gmail.com	Namibia	b207278e-f452-43f3-8e6d-1d55a32497dc	4118337	6201161
overall2026@outlook.com	Namibia	e6920268-aba1-48db-8739-415368d962ec	2842512	3471351
throwing1896@protonmail.com	Namibia	6feb9519-7623-422d-848c-0b9a5723da19	3427084	6328238
lifetime1925@gmail.com	Namibia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	6683152	37280
restoration1945@yahoo.com	Namibia	7408db66-1b96-458c-b4f6-4234b2625afd	4745498	2957185
navy1800@outlook.com	Namibia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	5820570	6338834
hormone1827@gmail.com	Namibia	0b57e8c3-3a12-44b9-8236-ace791387ba3	3075877	1625797
throwing1896@protonmail.com	Namibia	33828361-6656-438a-aeb6-15a2e5ffcf27	163400	2392349
officials1972@protonmail.com	Namibia	ccde439b-b989-4cd2-aec9-f142c8d948d0	1484662	4768189
nelson2015@protonmail.com	Namibia	57309776-d0f5-43a2-b94e-38372ee07cc6	491459	4169783
webpage2008@yahoo.com	Namibia	436386c2-345f-4570-ba73-582b3437d53e	3472696	5787663
pda1876@outlook.com	Namibia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	656754	1713942
nelson2015@protonmail.com	Namibia	495303f4-a868-4fa4-acba-c08667d7bcc8	894961	3317780
hospital2060@yahoo.com	Namibia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4593222	2019118
bind1902@yahoo.com	Namibia	c94fd88f-86c3-433a-9d81-b19695d48328	2263571	858798
overall2026@outlook.com	Namibia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3818012	2207312
nbc2041@yahoo.com	Namibia	e88d9503-9bde-473f-9276-3651878e2863	5569019	5301773
nelson2015@protonmail.com	Namibia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3479781	6634819
peoples2042@protonmail.com	Namibia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5677038	4484184
only2081@protonmail.com	Namibia	28778fb1-1671-4bad-8284-6a731564a45e	2994546	2507707
boost1833@gmail.com	Namibia	e5a762f6-3052-4384-a92b-b5401e965d25	764546	114656
facilitate2066@gmail.com	Namibia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	6292228	4779354
throwing1896@protonmail.com	Namibia	642d495a-e016-412f-a53b-dc046cc492a0	5220653	6719873
sauce2013@yandex.com	Oman	5de74332-bf74-402e-bac8-55b0a378954d	1246419	5139874
despite1900@live.com	Oman	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3858801	3208880
florence2033@protonmail.com	Oman	5a00b0a4-db1a-4555-b66c-e47023575e85	1007566	1861580
webpage2008@yahoo.com	Oman	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	5148838	4779304
journey2091@outlook.com	Oman	000efc5f-1b50-44ef-92c9-7cd412ba4fca	926912	1373725
nbc2041@yahoo.com	Oman	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1711618	2143465
facilitate2066@gmail.com	Oman	69798bb6-1716-47ee-90ff-0938314cce0c	2652483	2377766
navy1800@outlook.com	Oman	9a270672-9e02-44bf-ba2e-2b6baf568829	1454293	250788
delight1975@live.com	Oman	69817e8b-5270-4081-b06b-5f94d1a99c72	2969008	3762875
program2002@yandex.com	Oman	62f3d028-08e0-4986-806a-254f0d812c5b	112326	5084810
cruise1800@yahoo.com	Oman	80a97543-fd97-40a3-b8dc-f58e50101abc	5205390	4714346
hormone1827@gmail.com	Oman	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4165898	2124785
peoples2042@protonmail.com	Oman	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2756220	822275
local1830@gmail.com	Oman	9848ad52-bed1-4791-9352-c779584dcbe7	4445067	5185020
vocal2080@protonmail.com	Oman	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4158636	2633672
fred1901@live.com	Oman	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	478705	3541814
pda1876@outlook.com	Oman	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2908620	4352585
florence2033@protonmail.com	Oman	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	882952	430735
bookings1998@protonmail.com	Oman	c5c41565-02cb-462f-83e5-150521ebde9c	2841513	3887925
journey2091@outlook.com	Oman	8ec60513-990a-4ce2-a516-8972fdcf9919	408426	4425815
facilitate2066@gmail.com	Oman	68739ab8-38f9-45e5-9e67-fb0fc6139879	2765221	1920759
nelson2015@protonmail.com	Oman	ea8636de-62ee-4739-8be2-2028afe303c9	4298740	2384436
nelson2015@protonmail.com	Oman	ce85ec8a-a207-4929-ba56-2e8376b239ea	2719330	1283124
chance1827@gmail.com	Oman	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	4700548	566873
dont2100@protonmail.com	Oman	5ed75d07-f129-4210-8934-b5282ab6bf39	4946200	4799441
cruise1800@yahoo.com	Oman	c82545f7-d728-4444-aded-9648e5d8c22c	1660227	647239
despite1900@live.com	Oman	b207278e-f452-43f3-8e6d-1d55a32497dc	1616687	1448600
davidson2081@outlook.com	Oman	e6920268-aba1-48db-8739-415368d962ec	1487392	594413
cruise1800@yahoo.com	Oman	6feb9519-7623-422d-848c-0b9a5723da19	1858948	3699205
bind1902@yahoo.com	Oman	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4477827	4678697
navy1800@outlook.com	Oman	7408db66-1b96-458c-b4f6-4234b2625afd	1877188	3038293
journey2091@outlook.com	Oman	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1310857	4938748
lifetime1925@gmail.com	Oman	0b57e8c3-3a12-44b9-8236-ace791387ba3	3825439	5040005
bind1902@yahoo.com	Oman	33828361-6656-438a-aeb6-15a2e5ffcf27	710625	1202383
delight1975@live.com	Oman	ccde439b-b989-4cd2-aec9-f142c8d948d0	366591	4442972
boost1833@gmail.com	Oman	57309776-d0f5-43a2-b94e-38372ee07cc6	4183539	2107487
delight1975@live.com	Oman	436386c2-345f-4570-ba73-582b3437d53e	1662933	1423081
hormone1827@gmail.com	Oman	dccda210-9223-4604-b148-a0a248fb714e	3305426	2163257
bookings1998@protonmail.com	Oman	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1746349	2075998
officials1972@protonmail.com	Oman	495303f4-a868-4fa4-acba-c08667d7bcc8	969302	2937192
throwing1896@protonmail.com	Oman	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3686071	2107662
building2058@yandex.com	Oman	c94fd88f-86c3-433a-9d81-b19695d48328	4034104	49359
sauce2013@yandex.com	Oman	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5294717	2281613
boost1833@gmail.com	Oman	e88d9503-9bde-473f-9276-3651878e2863	4054722	5250901
bookings1998@protonmail.com	Oman	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3671141	2171541
peoples2042@protonmail.com	Oman	1ef2eabc-18f9-4869-973e-fa0d7a60446c	1377185	2656059
boost1833@gmail.com	Oman	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2875617	3073530
sauce2013@yandex.com	Oman	28778fb1-1671-4bad-8284-6a731564a45e	5259931	4735778
nbc2041@yahoo.com	Oman	e5a762f6-3052-4384-a92b-b5401e965d25	1850574	162806
absence1941@live.com	Oman	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3417171	554148
despite1900@live.com	Oman	642d495a-e016-412f-a53b-dc046cc492a0	4418997	3923420
program2002@yandex.com	Falkland Islands	5de74332-bf74-402e-bac8-55b0a378954d	42306	2188018
pda1876@outlook.com	Falkland Islands	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2799918	434167
nbc2041@yahoo.com	Falkland Islands	5a00b0a4-db1a-4555-b66c-e47023575e85	2635733	927649
journey2091@outlook.com	Falkland Islands	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1693198	2008442
hospital2060@yahoo.com	Falkland Islands	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2001768	1880320
pda1876@outlook.com	Falkland Islands	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	260607	643165
peoples2042@protonmail.com	Falkland Islands	69798bb6-1716-47ee-90ff-0938314cce0c	1795989	2585193
duncan1820@gmail.com	Falkland Islands	9a270672-9e02-44bf-ba2e-2b6baf568829	201234	4009733
only2081@protonmail.com	Falkland Islands	69817e8b-5270-4081-b06b-5f94d1a99c72	2761252	1067322
florence2033@protonmail.com	Falkland Islands	62f3d028-08e0-4986-806a-254f0d812c5b	3538221	2169878
duncan1820@gmail.com	Falkland Islands	80a97543-fd97-40a3-b8dc-f58e50101abc	4037138	3289712
vocal2080@protonmail.com	Falkland Islands	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2957756	3650899
overall2026@outlook.com	Falkland Islands	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2419694	1519024
required1923@outlook.com	Falkland Islands	9848ad52-bed1-4791-9352-c779584dcbe7	2202152	1316709
vocal2080@protonmail.com	Falkland Islands	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2692876	311428
davidson2081@outlook.com	Falkland Islands	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2476732	1545918
bookings1998@protonmail.com	Falkland Islands	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	360746	3753690
pda1876@outlook.com	Falkland Islands	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1504030	924311
restoration1945@yahoo.com	Falkland Islands	c5c41565-02cb-462f-83e5-150521ebde9c	468140	2902530
required1923@outlook.com	Falkland Islands	8ec60513-990a-4ce2-a516-8972fdcf9919	2109310	2476299
nelson2015@protonmail.com	Falkland Islands	68739ab8-38f9-45e5-9e67-fb0fc6139879	4056599	565156
nelson2015@protonmail.com	Falkland Islands	ea8636de-62ee-4739-8be2-2028afe303c9	3203366	3125075
lifetime1925@gmail.com	Falkland Islands	ce85ec8a-a207-4929-ba56-2e8376b239ea	3611500	1269445
dont2100@protonmail.com	Falkland Islands	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	348151	2807362
bind1902@yahoo.com	Falkland Islands	5ed75d07-f129-4210-8934-b5282ab6bf39	3478430	3932007
hospital2060@yahoo.com	Falkland Islands	c82545f7-d728-4444-aded-9648e5d8c22c	1108843	2468207
journey2091@outlook.com	Falkland Islands	b207278e-f452-43f3-8e6d-1d55a32497dc	1255950	3460268
cruise1800@yahoo.com	Falkland Islands	e6920268-aba1-48db-8739-415368d962ec	969468	256010
dont2100@protonmail.com	Falkland Islands	6feb9519-7623-422d-848c-0b9a5723da19	4033949	2157396
program2002@yandex.com	Falkland Islands	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4043137	2331480
sauce2013@yandex.com	Falkland Islands	7408db66-1b96-458c-b4f6-4234b2625afd	9172	2523732
facilitate2066@gmail.com	Falkland Islands	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	90593	1117031
officials1972@protonmail.com	Falkland Islands	0b57e8c3-3a12-44b9-8236-ace791387ba3	1094131	3641672
nelson2015@protonmail.com	Falkland Islands	33828361-6656-438a-aeb6-15a2e5ffcf27	2766163	2774525
journey2091@outlook.com	Falkland Islands	ccde439b-b989-4cd2-aec9-f142c8d948d0	1233755	2369552
facilitate2066@gmail.com	Falkland Islands	57309776-d0f5-43a2-b94e-38372ee07cc6	2325600	949444
throwing1896@protonmail.com	Falkland Islands	436386c2-345f-4570-ba73-582b3437d53e	779612	4007295
restoration1945@yahoo.com	Falkland Islands	dccda210-9223-4604-b148-a0a248fb714e	3961115	2061307
navy1800@outlook.com	Falkland Islands	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2032841	1404354
peoples2042@protonmail.com	Falkland Islands	495303f4-a868-4fa4-acba-c08667d7bcc8	1428479	2764024
duncan1820@gmail.com	Falkland Islands	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1462941	3624393
lifetime1925@gmail.com	Falkland Islands	c94fd88f-86c3-433a-9d81-b19695d48328	1184174	1881246
officials1972@protonmail.com	Falkland Islands	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2357792	2229162
peoples2042@protonmail.com	Falkland Islands	e88d9503-9bde-473f-9276-3651878e2863	2468207	43211
overall2026@outlook.com	Falkland Islands	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2524142	122829
only2081@protonmail.com	Falkland Islands	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2636001	3798162
throwing1896@protonmail.com	Falkland Islands	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	963203	80539
webpage2008@yahoo.com	Falkland Islands	28778fb1-1671-4bad-8284-6a731564a45e	2322676	976566
peoples2042@protonmail.com	Falkland Islands	e5a762f6-3052-4384-a92b-b5401e965d25	3891807	3844993
despite1900@live.com	Falkland Islands	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4138041	1692034
nelson2015@protonmail.com	Falkland Islands	642d495a-e016-412f-a53b-dc046cc492a0	267344	1784957
officials1972@protonmail.com	Gibraltar	5de74332-bf74-402e-bac8-55b0a378954d	294363	8730
throwing1896@protonmail.com	Gibraltar	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	135877	133695
dont2100@protonmail.com	Gibraltar	5a00b0a4-db1a-4555-b66c-e47023575e85	214161	102990
local1830@gmail.com	Gibraltar	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	86104	16019
chance1827@gmail.com	Gibraltar	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	158136	163339
local1830@gmail.com	Gibraltar	9a270672-9e02-44bf-ba2e-2b6baf568829	68268	154083
local1830@gmail.com	Gibraltar	69817e8b-5270-4081-b06b-5f94d1a99c72	181978	96454
bind1902@yahoo.com	Gibraltar	62f3d028-08e0-4986-806a-254f0d812c5b	274006	211367
duncan1820@gmail.com	Gibraltar	80a97543-fd97-40a3-b8dc-f58e50101abc	263296	229307
only2081@protonmail.com	Gibraltar	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	221491	64267
cruise1800@yahoo.com	Gibraltar	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	186469	231555
nbc2041@yahoo.com	Gibraltar	9848ad52-bed1-4791-9352-c779584dcbe7	80906	126532
hormone1827@gmail.com	Gibraltar	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	30315	302686
pda1876@outlook.com	Gibraltar	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	34489	251253
officials1972@protonmail.com	Gibraltar	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	40311	223732
navy1800@outlook.com	Gibraltar	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	299998	125802
bind1902@yahoo.com	Gibraltar	c5c41565-02cb-462f-83e5-150521ebde9c	200638	192997
officials1972@protonmail.com	Gibraltar	8ec60513-990a-4ce2-a516-8972fdcf9919	303426	126377
bind1902@yahoo.com	Gibraltar	68739ab8-38f9-45e5-9e67-fb0fc6139879	136115	278998
fred1901@live.com	Gibraltar	ea8636de-62ee-4739-8be2-2028afe303c9	298123	129786
cruise1800@yahoo.com	Gibraltar	ce85ec8a-a207-4929-ba56-2e8376b239ea	141039	77450
hospital2060@yahoo.com	Gibraltar	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	137269	197861
mature1894@yahoo.com	Gibraltar	5ed75d07-f129-4210-8934-b5282ab6bf39	179930	254892
journey2091@outlook.com	Gibraltar	c82545f7-d728-4444-aded-9648e5d8c22c	260706	112641
hospital2060@yahoo.com	Gibraltar	b207278e-f452-43f3-8e6d-1d55a32497dc	154001	280346
navy1800@outlook.com	Gibraltar	e6920268-aba1-48db-8739-415368d962ec	261969	60125
despite1900@live.com	Gibraltar	6feb9519-7623-422d-848c-0b9a5723da19	128627	160954
nbc2041@yahoo.com	Gibraltar	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	303005	127780
mature1894@yahoo.com	Gibraltar	7408db66-1b96-458c-b4f6-4234b2625afd	142236	113589
peoples2042@protonmail.com	Gibraltar	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	301310	213784
mature1894@yahoo.com	Gibraltar	0b57e8c3-3a12-44b9-8236-ace791387ba3	123506	119496
nelson2015@protonmail.com	Gibraltar	33828361-6656-438a-aeb6-15a2e5ffcf27	271775	174470
hospital2060@yahoo.com	Gibraltar	ccde439b-b989-4cd2-aec9-f142c8d948d0	296928	224525
program2002@yandex.com	Gibraltar	57309776-d0f5-43a2-b94e-38372ee07cc6	223413	70351
throwing1896@protonmail.com	Gibraltar	436386c2-345f-4570-ba73-582b3437d53e	38622	135868
fred1901@live.com	Gibraltar	dccda210-9223-4604-b148-a0a248fb714e	199694	245571
lifetime1925@gmail.com	Gibraltar	8acf71b1-5cd5-4010-8a5c-b1265d537e02	121510	192010
required1923@outlook.com	Gibraltar	495303f4-a868-4fa4-acba-c08667d7bcc8	216164	141027
pda1876@outlook.com	Gibraltar	c94fd88f-86c3-433a-9d81-b19695d48328	278622	77160
davidson2081@outlook.com	Gibraltar	e88d9503-9bde-473f-9276-3651878e2863	184911	137110
overall2026@outlook.com	Gibraltar	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	194464	214687
navy1800@outlook.com	Gibraltar	1ef2eabc-18f9-4869-973e-fa0d7a60446c	10961	296292
journey2091@outlook.com	Gibraltar	28778fb1-1671-4bad-8284-6a731564a45e	245943	257818
absence1941@live.com	Gibraltar	e5a762f6-3052-4384-a92b-b5401e965d25	56532	159028
nbc2041@yahoo.com	Gibraltar	642d495a-e016-412f-a53b-dc046cc492a0	245188	155969
officials1972@protonmail.com	St. Barthélemy	5de74332-bf74-402e-bac8-55b0a378954d	7933179	4960183
hormone1827@gmail.com	St. Barthélemy	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	6156590	5234425
fred1901@live.com	St. Barthélemy	5a00b0a4-db1a-4555-b66c-e47023575e85	7597611	7263741
absence1941@live.com	St. Barthélemy	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4520805	2452619
despite1900@live.com	St. Barthélemy	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4899988	5826243
cruise1800@yahoo.com	St. Barthélemy	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3420023	6671251
overall2026@outlook.com	St. Barthélemy	69798bb6-1716-47ee-90ff-0938314cce0c	1272970	3962957
officials1972@protonmail.com	St. Barthélemy	9a270672-9e02-44bf-ba2e-2b6baf568829	7678864	972225
local1830@gmail.com	St. Barthélemy	69817e8b-5270-4081-b06b-5f94d1a99c72	6730458	8911901
absence1941@live.com	St. Barthélemy	62f3d028-08e0-4986-806a-254f0d812c5b	1308902	6916136
mature1894@yahoo.com	St. Barthélemy	80a97543-fd97-40a3-b8dc-f58e50101abc	9097642	7162003
absence1941@live.com	St. Barthélemy	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3566254	6040605
chance1827@gmail.com	St. Barthélemy	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	8635553	6874976
duncan1820@gmail.com	St. Barthélemy	9848ad52-bed1-4791-9352-c779584dcbe7	5083766	8134601
absence1941@live.com	St. Barthélemy	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2485141	4991380
duncan1820@gmail.com	St. Barthélemy	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	5679352	6963736
chance1827@gmail.com	St. Barthélemy	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3269952	417069
nbc2041@yahoo.com	St. Barthélemy	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2495557	7427472
nelson2015@protonmail.com	St. Barthélemy	c5c41565-02cb-462f-83e5-150521ebde9c	6491173	8057346
officials1972@protonmail.com	St. Barthélemy	8ec60513-990a-4ce2-a516-8972fdcf9919	5013213	7976457
cruise1800@yahoo.com	St. Barthélemy	68739ab8-38f9-45e5-9e67-fb0fc6139879	4100824	2743570
only2081@protonmail.com	St. Barthélemy	ea8636de-62ee-4739-8be2-2028afe303c9	7854693	4204648
sauce2013@yandex.com	St. Barthélemy	ce85ec8a-a207-4929-ba56-2e8376b239ea	8726096	4379113
duncan1820@gmail.com	St. Barthélemy	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6174672	3527938
hospital2060@yahoo.com	St. Barthélemy	5ed75d07-f129-4210-8934-b5282ab6bf39	9067920	8899271
nelson2015@protonmail.com	St. Barthélemy	c82545f7-d728-4444-aded-9648e5d8c22c	4381991	236126
nbc2041@yahoo.com	St. Barthélemy	b207278e-f452-43f3-8e6d-1d55a32497dc	9119057	4134593
local1830@gmail.com	St. Barthélemy	e6920268-aba1-48db-8739-415368d962ec	189736	6228023
program2002@yandex.com	St. Barthélemy	6feb9519-7623-422d-848c-0b9a5723da19	4866089	5090687
local1830@gmail.com	St. Barthélemy	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5689403	2516768
peoples2042@protonmail.com	St. Barthélemy	7408db66-1b96-458c-b4f6-4234b2625afd	743183	7810259
required1923@outlook.com	St. Barthélemy	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	6928785	6178527
officials1972@protonmail.com	St. Barthélemy	0b57e8c3-3a12-44b9-8236-ace791387ba3	6530483	6570544
bind1902@yahoo.com	St. Barthélemy	33828361-6656-438a-aeb6-15a2e5ffcf27	7487674	3127176
delight1975@live.com	St. Barthélemy	ccde439b-b989-4cd2-aec9-f142c8d948d0	2643221	2185100
cruise1800@yahoo.com	St. Barthélemy	57309776-d0f5-43a2-b94e-38372ee07cc6	1945078	7025438
despite1900@live.com	St. Barthélemy	436386c2-345f-4570-ba73-582b3437d53e	6746318	2374924
cruise1800@yahoo.com	St. Barthélemy	dccda210-9223-4604-b148-a0a248fb714e	6532368	4002947
lifetime1925@gmail.com	St. Barthélemy	8acf71b1-5cd5-4010-8a5c-b1265d537e02	701646	8732346
mature1894@yahoo.com	St. Barthélemy	495303f4-a868-4fa4-acba-c08667d7bcc8	7589670	2021358
hormone1827@gmail.com	St. Barthélemy	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2513838	2736357
navy1800@outlook.com	St. Barthélemy	c94fd88f-86c3-433a-9d81-b19695d48328	7370801	8663008
building2058@yandex.com	St. Barthélemy	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4040065	7576840
peoples2042@protonmail.com	St. Barthélemy	e88d9503-9bde-473f-9276-3651878e2863	2507551	6474274
navy1800@outlook.com	St. Barthélemy	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	6242666	9163938
only2081@protonmail.com	St. Barthélemy	1ef2eabc-18f9-4869-973e-fa0d7a60446c	9122963	3613163
officials1972@protonmail.com	St. Barthélemy	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	7427108	3861453
hospital2060@yahoo.com	St. Barthélemy	28778fb1-1671-4bad-8284-6a731564a45e	3654608	7953525
bind1902@yahoo.com	St. Barthélemy	e5a762f6-3052-4384-a92b-b5401e965d25	4613276	3159719
local1830@gmail.com	St. Barthélemy	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2651072	7551707
florence2033@protonmail.com	St. Barthélemy	642d495a-e016-412f-a53b-dc046cc492a0	3775807	8690742
officials1972@protonmail.com	Philippines	5de74332-bf74-402e-bac8-55b0a378954d	2690361	1029356
program2002@yandex.com	Philippines	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	244694	837756
davidson2081@outlook.com	Philippines	5a00b0a4-db1a-4555-b66c-e47023575e85	2562169	152719
bind1902@yahoo.com	Philippines	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	3423766	2722334
officials1972@protonmail.com	Philippines	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3025195	3374149
restoration1945@yahoo.com	Philippines	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	855080	2731311
bind1902@yahoo.com	Philippines	69798bb6-1716-47ee-90ff-0938314cce0c	2556220	3010525
hormone1827@gmail.com	Philippines	9a270672-9e02-44bf-ba2e-2b6baf568829	1261543	1529068
required1923@outlook.com	Philippines	69817e8b-5270-4081-b06b-5f94d1a99c72	415560	518904
officials1972@protonmail.com	Philippines	62f3d028-08e0-4986-806a-254f0d812c5b	2212101	2024668
duncan1820@gmail.com	Philippines	80a97543-fd97-40a3-b8dc-f58e50101abc	2096171	3472824
only2081@protonmail.com	Philippines	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1837414	1773346
throwing1896@protonmail.com	Philippines	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2003333	2651708
hormone1827@gmail.com	Philippines	9848ad52-bed1-4791-9352-c779584dcbe7	2570215	310264
mature1894@yahoo.com	Philippines	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1282108	1067544
restoration1945@yahoo.com	Philippines	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	91084	1471686
restoration1945@yahoo.com	Philippines	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	746555	2929457
pda1876@outlook.com	Philippines	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2514368	638058
davidson2081@outlook.com	Philippines	c5c41565-02cb-462f-83e5-150521ebde9c	1926304	1269050
duncan1820@gmail.com	Philippines	8ec60513-990a-4ce2-a516-8972fdcf9919	672884	234209
bookings1998@protonmail.com	Philippines	68739ab8-38f9-45e5-9e67-fb0fc6139879	950072	2996451
facilitate2066@gmail.com	Philippines	ea8636de-62ee-4739-8be2-2028afe303c9	855761	2461245
program2002@yandex.com	Philippines	ce85ec8a-a207-4929-ba56-2e8376b239ea	251913	2764301
facilitate2066@gmail.com	Philippines	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3110274	2871229
florence2033@protonmail.com	Philippines	5ed75d07-f129-4210-8934-b5282ab6bf39	686965	3108055
bookings1998@protonmail.com	Philippines	c82545f7-d728-4444-aded-9648e5d8c22c	3437655	1095061
sauce2013@yandex.com	Philippines	b207278e-f452-43f3-8e6d-1d55a32497dc	297870	2207875
pda1876@outlook.com	Philippines	e6920268-aba1-48db-8739-415368d962ec	2911212	2736350
pda1876@outlook.com	Philippines	6feb9519-7623-422d-848c-0b9a5723da19	3526748	3280145
program2002@yandex.com	Philippines	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2478012	1095596
chance1827@gmail.com	Philippines	7408db66-1b96-458c-b4f6-4234b2625afd	985797	3215888
officials1972@protonmail.com	Philippines	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	357642	2178820
officials1972@protonmail.com	Philippines	0b57e8c3-3a12-44b9-8236-ace791387ba3	2557133	3412149
absence1941@live.com	Philippines	33828361-6656-438a-aeb6-15a2e5ffcf27	3331424	3427809
hormone1827@gmail.com	Philippines	ccde439b-b989-4cd2-aec9-f142c8d948d0	2410942	2549386
boost1833@gmail.com	Philippines	57309776-d0f5-43a2-b94e-38372ee07cc6	3185696	2230639
bookings1998@protonmail.com	Philippines	436386c2-345f-4570-ba73-582b3437d53e	1683316	3283943
boost1833@gmail.com	Philippines	dccda210-9223-4604-b148-a0a248fb714e	2665603	149139
peoples2042@protonmail.com	Philippines	8acf71b1-5cd5-4010-8a5c-b1265d537e02	695575	868641
chance1827@gmail.com	Philippines	495303f4-a868-4fa4-acba-c08667d7bcc8	2170319	1909482
required1923@outlook.com	Philippines	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1609415	1150469
facilitate2066@gmail.com	Philippines	c94fd88f-86c3-433a-9d81-b19695d48328	328790	1403284
pda1876@outlook.com	Philippines	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	585801	1286381
lifetime1925@gmail.com	Philippines	e88d9503-9bde-473f-9276-3651878e2863	2006489	1408480
bind1902@yahoo.com	Philippines	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2524881	994554
despite1900@live.com	Philippines	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3167215	1843558
peoples2042@protonmail.com	Philippines	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2572162	3353365
local1830@gmail.com	Philippines	28778fb1-1671-4bad-8284-6a731564a45e	562422	3234930
facilitate2066@gmail.com	Philippines	e5a762f6-3052-4384-a92b-b5401e965d25	2744303	2873746
sauce2013@yandex.com	Philippines	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	815761	2163425
program2002@yandex.com	Philippines	642d495a-e016-412f-a53b-dc046cc492a0	134661	1412248
webpage2008@yahoo.com	Luxembourg	5de74332-bf74-402e-bac8-55b0a378954d	636157	3133265
davidson2081@outlook.com	Luxembourg	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3808745	5054898
despite1900@live.com	Luxembourg	5a00b0a4-db1a-4555-b66c-e47023575e85	2559847	1500846
lifetime1925@gmail.com	Luxembourg	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	522951	2956674
nbc2041@yahoo.com	Luxembourg	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4819754	4094560
lifetime1925@gmail.com	Luxembourg	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	5388231	3385662
dont2100@protonmail.com	Luxembourg	69798bb6-1716-47ee-90ff-0938314cce0c	4956562	1151590
journey2091@outlook.com	Luxembourg	9a270672-9e02-44bf-ba2e-2b6baf568829	2990905	2324605
navy1800@outlook.com	Luxembourg	69817e8b-5270-4081-b06b-5f94d1a99c72	2309094	4676565
hospital2060@yahoo.com	Luxembourg	62f3d028-08e0-4986-806a-254f0d812c5b	2808825	3014183
required1923@outlook.com	Luxembourg	80a97543-fd97-40a3-b8dc-f58e50101abc	5254442	92800
delight1975@live.com	Luxembourg	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2385120	2027013
hormone1827@gmail.com	Luxembourg	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4124289	2568145
dont2100@protonmail.com	Luxembourg	9848ad52-bed1-4791-9352-c779584dcbe7	2436117	1982017
delight1975@live.com	Luxembourg	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2030606	2029973
fred1901@live.com	Luxembourg	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	324628	5484115
overall2026@outlook.com	Luxembourg	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2026682	2236547
local1830@gmail.com	Luxembourg	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5577241	1491415
delight1975@live.com	Luxembourg	c5c41565-02cb-462f-83e5-150521ebde9c	1383624	3104866
facilitate2066@gmail.com	Luxembourg	8ec60513-990a-4ce2-a516-8972fdcf9919	2507394	3994960
florence2033@protonmail.com	Luxembourg	68739ab8-38f9-45e5-9e67-fb0fc6139879	453534	948502
officials1972@protonmail.com	Luxembourg	ea8636de-62ee-4739-8be2-2028afe303c9	571543	779011
journey2091@outlook.com	Luxembourg	ce85ec8a-a207-4929-ba56-2e8376b239ea	5202424	3494155
navy1800@outlook.com	Luxembourg	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	48933	1748799
webpage2008@yahoo.com	Luxembourg	5ed75d07-f129-4210-8934-b5282ab6bf39	655105	4327929
sauce2013@yandex.com	Luxembourg	c82545f7-d728-4444-aded-9648e5d8c22c	2859957	4646258
despite1900@live.com	Luxembourg	b207278e-f452-43f3-8e6d-1d55a32497dc	2403542	2001331
delight1975@live.com	Luxembourg	e6920268-aba1-48db-8739-415368d962ec	2568089	5452819
restoration1945@yahoo.com	Luxembourg	6feb9519-7623-422d-848c-0b9a5723da19	1571317	2072079
peoples2042@protonmail.com	Luxembourg	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	574043	3690784
florence2033@protonmail.com	Luxembourg	7408db66-1b96-458c-b4f6-4234b2625afd	1097592	5534458
building2058@yandex.com	Luxembourg	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4192786	373894
program2002@yandex.com	Luxembourg	0b57e8c3-3a12-44b9-8236-ace791387ba3	1446567	3061317
local1830@gmail.com	Luxembourg	33828361-6656-438a-aeb6-15a2e5ffcf27	222437	3515104
journey2091@outlook.com	Luxembourg	ccde439b-b989-4cd2-aec9-f142c8d948d0	5323127	4773922
despite1900@live.com	Luxembourg	57309776-d0f5-43a2-b94e-38372ee07cc6	1812679	37025
fred1901@live.com	Luxembourg	436386c2-345f-4570-ba73-582b3437d53e	4437934	3782093
cruise1800@yahoo.com	Luxembourg	dccda210-9223-4604-b148-a0a248fb714e	899119	3880610
duncan1820@gmail.com	Luxembourg	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4630105	4426548
florence2033@protonmail.com	Luxembourg	495303f4-a868-4fa4-acba-c08667d7bcc8	4610759	121318
only2081@protonmail.com	Luxembourg	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1266402	3282247
davidson2081@outlook.com	Luxembourg	c94fd88f-86c3-433a-9d81-b19695d48328	4481421	3692719
building2058@yandex.com	Luxembourg	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3567643	1099427
davidson2081@outlook.com	Luxembourg	e88d9503-9bde-473f-9276-3651878e2863	1126979	4658382
dont2100@protonmail.com	Luxembourg	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1987603	2503766
dont2100@protonmail.com	Luxembourg	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2357696	5620351
delight1975@live.com	Luxembourg	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2207999	2990206
local1830@gmail.com	Luxembourg	28778fb1-1671-4bad-8284-6a731564a45e	5427864	3958954
bookings1998@protonmail.com	Luxembourg	e5a762f6-3052-4384-a92b-b5401e965d25	4882804	722936
navy1800@outlook.com	Luxembourg	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4888758	3577734
bookings1998@protonmail.com	Luxembourg	642d495a-e016-412f-a53b-dc046cc492a0	1446375	1913464
fred1901@live.com	Kyrgyzstan	5de74332-bf74-402e-bac8-55b0a378954d	3491239	376452
required1923@outlook.com	Kyrgyzstan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1388005	2363168
overall2026@outlook.com	Kyrgyzstan	5a00b0a4-db1a-4555-b66c-e47023575e85	3911910	3318046
absence1941@live.com	Kyrgyzstan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1992898	3291548
duncan1820@gmail.com	Kyrgyzstan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3898974	2011805
facilitate2066@gmail.com	Kyrgyzstan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3442705	1316280
hormone1827@gmail.com	Kyrgyzstan	69798bb6-1716-47ee-90ff-0938314cce0c	2829907	1879068
bookings1998@protonmail.com	Kyrgyzstan	9a270672-9e02-44bf-ba2e-2b6baf568829	2677024	3115778
required1923@outlook.com	Kyrgyzstan	69817e8b-5270-4081-b06b-5f94d1a99c72	1276734	3677036
officials1972@protonmail.com	Kyrgyzstan	62f3d028-08e0-4986-806a-254f0d812c5b	1412452	3294615
local1830@gmail.com	Kyrgyzstan	80a97543-fd97-40a3-b8dc-f58e50101abc	730817	3352858
despite1900@live.com	Kyrgyzstan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3126328	1123413
duncan1820@gmail.com	Kyrgyzstan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2907441	3480281
officials1972@protonmail.com	Kyrgyzstan	9848ad52-bed1-4791-9352-c779584dcbe7	1030602	1263231
nelson2015@protonmail.com	Kyrgyzstan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	488187	1132965
program2002@yandex.com	Kyrgyzstan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1568611	3605944
despite1900@live.com	Kyrgyzstan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2091837	2706149
webpage2008@yahoo.com	Kyrgyzstan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3771467	2429828
dont2100@protonmail.com	Kyrgyzstan	c5c41565-02cb-462f-83e5-150521ebde9c	3147864	146931
florence2033@protonmail.com	Kyrgyzstan	68739ab8-38f9-45e5-9e67-fb0fc6139879	3587010	1191515
bind1902@yahoo.com	Kyrgyzstan	ea8636de-62ee-4739-8be2-2028afe303c9	3919878	2402648
lifetime1925@gmail.com	Kyrgyzstan	ce85ec8a-a207-4929-ba56-2e8376b239ea	3485878	2686137
lifetime1925@gmail.com	Kyrgyzstan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	965516	3742385
throwing1896@protonmail.com	Kyrgyzstan	5ed75d07-f129-4210-8934-b5282ab6bf39	3988794	3014514
overall2026@outlook.com	Kyrgyzstan	c82545f7-d728-4444-aded-9648e5d8c22c	474724	3629505
webpage2008@yahoo.com	Kyrgyzstan	b207278e-f452-43f3-8e6d-1d55a32497dc	3963023	826266
mature1894@yahoo.com	Kyrgyzstan	e6920268-aba1-48db-8739-415368d962ec	1760513	204290
lifetime1925@gmail.com	Kyrgyzstan	6feb9519-7623-422d-848c-0b9a5723da19	3628693	2113268
duncan1820@gmail.com	Kyrgyzstan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3615978	25818
bind1902@yahoo.com	Kyrgyzstan	7408db66-1b96-458c-b4f6-4234b2625afd	1505431	1619862
peoples2042@protonmail.com	Kyrgyzstan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2479777	1620017
webpage2008@yahoo.com	Kyrgyzstan	0b57e8c3-3a12-44b9-8236-ace791387ba3	253031	4028723
lifetime1925@gmail.com	Kyrgyzstan	33828361-6656-438a-aeb6-15a2e5ffcf27	590448	2272978
lifetime1925@gmail.com	Kyrgyzstan	ccde439b-b989-4cd2-aec9-f142c8d948d0	24824	2575683
program2002@yandex.com	Kyrgyzstan	57309776-d0f5-43a2-b94e-38372ee07cc6	3190022	1024870
bind1902@yahoo.com	Kyrgyzstan	436386c2-345f-4570-ba73-582b3437d53e	2450096	270514
delight1975@live.com	Kyrgyzstan	dccda210-9223-4604-b148-a0a248fb714e	2999786	2278428
required1923@outlook.com	Kyrgyzstan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	632722	2639115
required1923@outlook.com	Kyrgyzstan	495303f4-a868-4fa4-acba-c08667d7bcc8	2986467	252439
nelson2015@protonmail.com	Kyrgyzstan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3121886	2894869
florence2033@protonmail.com	Kyrgyzstan	c94fd88f-86c3-433a-9d81-b19695d48328	2665771	1824816
mature1894@yahoo.com	Kyrgyzstan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	3186157	127215
delight1975@live.com	Kyrgyzstan	e88d9503-9bde-473f-9276-3651878e2863	1179752	1765666
hospital2060@yahoo.com	Kyrgyzstan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	808703	2430455
local1830@gmail.com	Kyrgyzstan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2624005	1984001
davidson2081@outlook.com	Kyrgyzstan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2789479	2633128
program2002@yandex.com	Kyrgyzstan	28778fb1-1671-4bad-8284-6a731564a45e	946776	242245
nbc2041@yahoo.com	Kyrgyzstan	e5a762f6-3052-4384-a92b-b5401e965d25	1779533	799436
overall2026@outlook.com	Kyrgyzstan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	969771	1736120
duncan1820@gmail.com	Kyrgyzstan	642d495a-e016-412f-a53b-dc046cc492a0	1629625	774215
nbc2041@yahoo.com	Nigeria	5de74332-bf74-402e-bac8-55b0a378954d	299119	5289422
vocal2080@protonmail.com	Nigeria	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	5873879	1197508
mature1894@yahoo.com	Nigeria	5a00b0a4-db1a-4555-b66c-e47023575e85	401684	5417848
chance1827@gmail.com	Nigeria	000efc5f-1b50-44ef-92c9-7cd412ba4fca	4406274	5146974
fred1901@live.com	Nigeria	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4116994	3473274
cruise1800@yahoo.com	Nigeria	69798bb6-1716-47ee-90ff-0938314cce0c	3646910	3286804
fred1901@live.com	Nigeria	9a270672-9e02-44bf-ba2e-2b6baf568829	4255284	2495831
overall2026@outlook.com	Nigeria	69817e8b-5270-4081-b06b-5f94d1a99c72	3878608	6143606
officials1972@protonmail.com	Nigeria	62f3d028-08e0-4986-806a-254f0d812c5b	6124840	828484
vocal2080@protonmail.com	Nigeria	80a97543-fd97-40a3-b8dc-f58e50101abc	5842003	1546234
duncan1820@gmail.com	Nigeria	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4116293	3100382
chance1827@gmail.com	Nigeria	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1287789	3753983
bind1902@yahoo.com	Nigeria	9848ad52-bed1-4791-9352-c779584dcbe7	6485458	5743655
nelson2015@protonmail.com	Nigeria	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3454905	6483963
dont2100@protonmail.com	Nigeria	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2519885	781924
required1923@outlook.com	Nigeria	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3384774	2026046
boost1833@gmail.com	Nigeria	c5c41565-02cb-462f-83e5-150521ebde9c	5746790	6213934
restoration1945@yahoo.com	Nigeria	8ec60513-990a-4ce2-a516-8972fdcf9919	4038942	6568764
building2058@yandex.com	Nigeria	68739ab8-38f9-45e5-9e67-fb0fc6139879	3107806	3911975
nbc2041@yahoo.com	Nigeria	ce85ec8a-a207-4929-ba56-2e8376b239ea	3362897	6806721
mature1894@yahoo.com	Nigeria	5ed75d07-f129-4210-8934-b5282ab6bf39	3985471	206365
nbc2041@yahoo.com	Nigeria	c82545f7-d728-4444-aded-9648e5d8c22c	3131944	1490494
sauce2013@yandex.com	Nigeria	b207278e-f452-43f3-8e6d-1d55a32497dc	2178430	2018688
hospital2060@yahoo.com	Nigeria	e6920268-aba1-48db-8739-415368d962ec	3248677	4714974
absence1941@live.com	Nigeria	6feb9519-7623-422d-848c-0b9a5723da19	5432689	5048528
davidson2081@outlook.com	Nigeria	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1181719	5573422
fred1901@live.com	Nigeria	7408db66-1b96-458c-b4f6-4234b2625afd	1620027	4449216
nbc2041@yahoo.com	Nigeria	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3665177	2387425
nelson2015@protonmail.com	Nigeria	0b57e8c3-3a12-44b9-8236-ace791387ba3	3920517	679745
boost1833@gmail.com	Nigeria	33828361-6656-438a-aeb6-15a2e5ffcf27	4705403	4762645
overall2026@outlook.com	Nigeria	ccde439b-b989-4cd2-aec9-f142c8d948d0	6689715	2170993
delight1975@live.com	Nigeria	57309776-d0f5-43a2-b94e-38372ee07cc6	4104537	5989843
mature1894@yahoo.com	Nigeria	436386c2-345f-4570-ba73-582b3437d53e	6688649	4062537
program2002@yandex.com	Nigeria	dccda210-9223-4604-b148-a0a248fb714e	3653296	5752562
nelson2015@protonmail.com	Nigeria	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1315006	5362717
chance1827@gmail.com	Nigeria	495303f4-a868-4fa4-acba-c08667d7bcc8	4646379	3692899
restoration1945@yahoo.com	Nigeria	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	3356842	2097193
absence1941@live.com	Nigeria	c94fd88f-86c3-433a-9d81-b19695d48328	4770861	3489221
lifetime1925@gmail.com	Nigeria	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5368882	5684125
davidson2081@outlook.com	Nigeria	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3367950	1532983
sauce2013@yandex.com	Nigeria	1ef2eabc-18f9-4869-973e-fa0d7a60446c	6142197	6493762
cruise1800@yahoo.com	Nigeria	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5653252	1296913
building2058@yandex.com	Nigeria	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	5123255	1799708
program2002@yandex.com	Nigeria	642d495a-e016-412f-a53b-dc046cc492a0	746535	6011055
florence2033@protonmail.com	Wallis & Futuna	5de74332-bf74-402e-bac8-55b0a378954d	1609390	1277067
building2058@yandex.com	Wallis & Futuna	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	2851445	2715764
only2081@protonmail.com	Wallis & Futuna	5a00b0a4-db1a-4555-b66c-e47023575e85	2884038	1647637
facilitate2066@gmail.com	Wallis & Futuna	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2655473	768040
required1923@outlook.com	Wallis & Futuna	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2182769	3472230
required1923@outlook.com	Wallis & Futuna	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	78119	2927441
florence2033@protonmail.com	Wallis & Futuna	69798bb6-1716-47ee-90ff-0938314cce0c	1967821	2259343
peoples2042@protonmail.com	Wallis & Futuna	9a270672-9e02-44bf-ba2e-2b6baf568829	2930046	46557
sauce2013@yandex.com	Wallis & Futuna	69817e8b-5270-4081-b06b-5f94d1a99c72	585734	3572079
delight1975@live.com	Wallis & Futuna	62f3d028-08e0-4986-806a-254f0d812c5b	633629	989046
overall2026@outlook.com	Wallis & Futuna	80a97543-fd97-40a3-b8dc-f58e50101abc	3971027	781075
building2058@yandex.com	Wallis & Futuna	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3871805	2169877
duncan1820@gmail.com	Wallis & Futuna	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	654210	452916
pda1876@outlook.com	Wallis & Futuna	9848ad52-bed1-4791-9352-c779584dcbe7	2971285	2305285
bind1902@yahoo.com	Wallis & Futuna	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	3834101	134321
facilitate2066@gmail.com	Wallis & Futuna	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	620756	3929578
local1830@gmail.com	Wallis & Futuna	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1967488	3975169
webpage2008@yahoo.com	Wallis & Futuna	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	2854865	3124384
journey2091@outlook.com	Wallis & Futuna	c5c41565-02cb-462f-83e5-150521ebde9c	2392477	201778
bind1902@yahoo.com	Wallis & Futuna	8ec60513-990a-4ce2-a516-8972fdcf9919	3237835	2906667
cruise1800@yahoo.com	Wallis & Futuna	68739ab8-38f9-45e5-9e67-fb0fc6139879	1071679	1446636
hormone1827@gmail.com	Wallis & Futuna	ea8636de-62ee-4739-8be2-2028afe303c9	3654709	3670967
florence2033@protonmail.com	Wallis & Futuna	ce85ec8a-a207-4929-ba56-2e8376b239ea	1597930	2108742
webpage2008@yahoo.com	Wallis & Futuna	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1504567	1751052
nbc2041@yahoo.com	Wallis & Futuna	5ed75d07-f129-4210-8934-b5282ab6bf39	1528644	11038
bookings1998@protonmail.com	Wallis & Futuna	c82545f7-d728-4444-aded-9648e5d8c22c	3080771	2527676
mature1894@yahoo.com	Wallis & Futuna	b207278e-f452-43f3-8e6d-1d55a32497dc	459688	3888292
fred1901@live.com	Wallis & Futuna	e6920268-aba1-48db-8739-415368d962ec	1757775	1844972
officials1972@protonmail.com	Wallis & Futuna	6feb9519-7623-422d-848c-0b9a5723da19	2349400	1156026
hormone1827@gmail.com	Wallis & Futuna	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	3156000	2177952
bookings1998@protonmail.com	Wallis & Futuna	7408db66-1b96-458c-b4f6-4234b2625afd	311571	1736492
chance1827@gmail.com	Wallis & Futuna	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	845883	2511745
nelson2015@protonmail.com	Wallis & Futuna	0b57e8c3-3a12-44b9-8236-ace791387ba3	1024476	38036
peoples2042@protonmail.com	Wallis & Futuna	33828361-6656-438a-aeb6-15a2e5ffcf27	263192	3849216
facilitate2066@gmail.com	Wallis & Futuna	ccde439b-b989-4cd2-aec9-f142c8d948d0	3213941	1288341
nbc2041@yahoo.com	Wallis & Futuna	57309776-d0f5-43a2-b94e-38372ee07cc6	3460175	2485850
facilitate2066@gmail.com	Wallis & Futuna	436386c2-345f-4570-ba73-582b3437d53e	185993	204759
absence1941@live.com	Wallis & Futuna	dccda210-9223-4604-b148-a0a248fb714e	25170	3115496
journey2091@outlook.com	Wallis & Futuna	8acf71b1-5cd5-4010-8a5c-b1265d537e02	680015	2738595
vocal2080@protonmail.com	Wallis & Futuna	495303f4-a868-4fa4-acba-c08667d7bcc8	943871	17221
bookings1998@protonmail.com	Wallis & Futuna	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	478690	1342373
peoples2042@protonmail.com	Wallis & Futuna	c94fd88f-86c3-433a-9d81-b19695d48328	1030450	1030626
mature1894@yahoo.com	Wallis & Futuna	e88d9503-9bde-473f-9276-3651878e2863	513188	1105303
davidson2081@outlook.com	Wallis & Futuna	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	3181672	477906
required1923@outlook.com	Wallis & Futuna	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2132485	3889388
florence2033@protonmail.com	Wallis & Futuna	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3285693	3910187
officials1972@protonmail.com	Wallis & Futuna	28778fb1-1671-4bad-8284-6a731564a45e	3669471	1490088
davidson2081@outlook.com	Wallis & Futuna	e5a762f6-3052-4384-a92b-b5401e965d25	521822	579758
only2081@protonmail.com	Wallis & Futuna	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2729031	455891
only2081@protonmail.com	Wallis & Futuna	642d495a-e016-412f-a53b-dc046cc492a0	3732861	3292306
vocal2080@protonmail.com	Libya	5de74332-bf74-402e-bac8-55b0a378954d	2005125	2007972
mature1894@yahoo.com	Libya	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	4202581	3576107
only2081@protonmail.com	Libya	5a00b0a4-db1a-4555-b66c-e47023575e85	5320874	3292559
bind1902@yahoo.com	Libya	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	2209987	3608460
duncan1820@gmail.com	Libya	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3621024	4739285
hormone1827@gmail.com	Libya	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1318103	4022509
sauce2013@yandex.com	Libya	69798bb6-1716-47ee-90ff-0938314cce0c	526604	1444075
navy1800@outlook.com	Libya	9a270672-9e02-44bf-ba2e-2b6baf568829	4447530	2896499
required1923@outlook.com	Libya	69817e8b-5270-4081-b06b-5f94d1a99c72	3579653	2791396
boost1833@gmail.com	Libya	62f3d028-08e0-4986-806a-254f0d812c5b	81381	133585
webpage2008@yahoo.com	Libya	80a97543-fd97-40a3-b8dc-f58e50101abc	5627155	358370
fred1901@live.com	Libya	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1983589	2983354
boost1833@gmail.com	Libya	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1470882	2063723
navy1800@outlook.com	Libya	9848ad52-bed1-4791-9352-c779584dcbe7	1720357	5385524
webpage2008@yahoo.com	Libya	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4305532	3070967
navy1800@outlook.com	Libya	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1561469	929450
chance1827@gmail.com	Libya	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	3980962	460167
facilitate2066@gmail.com	Libya	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5142467	4098345
bind1902@yahoo.com	Libya	c5c41565-02cb-462f-83e5-150521ebde9c	273882	4528399
local1830@gmail.com	Libya	8ec60513-990a-4ce2-a516-8972fdcf9919	2300406	2872327
chance1827@gmail.com	Libya	68739ab8-38f9-45e5-9e67-fb0fc6139879	1802785	1095858
officials1972@protonmail.com	Libya	ea8636de-62ee-4739-8be2-2028afe303c9	2030204	2245336
absence1941@live.com	Libya	ce85ec8a-a207-4929-ba56-2e8376b239ea	2302417	2059930
hormone1827@gmail.com	Libya	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	5984570	1919251
navy1800@outlook.com	Libya	5ed75d07-f129-4210-8934-b5282ab6bf39	3727248	3446910
hormone1827@gmail.com	Libya	c82545f7-d728-4444-aded-9648e5d8c22c	6019058	17733
bind1902@yahoo.com	Libya	b207278e-f452-43f3-8e6d-1d55a32497dc	3655306	4325357
duncan1820@gmail.com	Libya	e6920268-aba1-48db-8739-415368d962ec	4444144	3273443
officials1972@protonmail.com	Libya	6feb9519-7623-422d-848c-0b9a5723da19	2188316	2001221
navy1800@outlook.com	Libya	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1630201	5827653
florence2033@protonmail.com	Libya	7408db66-1b96-458c-b4f6-4234b2625afd	4219528	5272493
pda1876@outlook.com	Libya	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1885176	1464271
mature1894@yahoo.com	Libya	0b57e8c3-3a12-44b9-8236-ace791387ba3	1495659	4975063
bind1902@yahoo.com	Libya	33828361-6656-438a-aeb6-15a2e5ffcf27	5341412	2171583
absence1941@live.com	Libya	ccde439b-b989-4cd2-aec9-f142c8d948d0	1629822	1732718
nbc2041@yahoo.com	Libya	57309776-d0f5-43a2-b94e-38372ee07cc6	5313608	3940437
vocal2080@protonmail.com	Libya	436386c2-345f-4570-ba73-582b3437d53e	2037868	5807517
pda1876@outlook.com	Libya	dccda210-9223-4604-b148-a0a248fb714e	5820433	2206147
local1830@gmail.com	Libya	8acf71b1-5cd5-4010-8a5c-b1265d537e02	4282713	3223182
hormone1827@gmail.com	Libya	495303f4-a868-4fa4-acba-c08667d7bcc8	3993247	3318054
florence2033@protonmail.com	Libya	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	2978143	256964
chance1827@gmail.com	Libya	c94fd88f-86c3-433a-9d81-b19695d48328	3784902	3758800
cruise1800@yahoo.com	Libya	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	4158559	3041787
absence1941@live.com	Libya	e88d9503-9bde-473f-9276-3651878e2863	4280247	3759178
nelson2015@protonmail.com	Libya	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	5967648	2374832
navy1800@outlook.com	Libya	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3191094	1247261
duncan1820@gmail.com	Libya	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	5220237	4254540
davidson2081@outlook.com	Libya	e5a762f6-3052-4384-a92b-b5401e965d25	2123324	4729666
pda1876@outlook.com	Libya	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	932877	4326437
duncan1820@gmail.com	Libya	642d495a-e016-412f-a53b-dc046cc492a0	6236509	5077660
duncan1820@gmail.com	Hong Kong SAR China	5de74332-bf74-402e-bac8-55b0a378954d	2364898	1219928
florence2033@protonmail.com	Hong Kong SAR China	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	391255	6106907
vocal2080@protonmail.com	Hong Kong SAR China	5a00b0a4-db1a-4555-b66c-e47023575e85	1288151	3023915
chance1827@gmail.com	Hong Kong SAR China	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	4660669	1456606
sauce2013@yandex.com	Hong Kong SAR China	000efc5f-1b50-44ef-92c9-7cd412ba4fca	3018003	5401073
florence2033@protonmail.com	Hong Kong SAR China	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2531435	4597301
bookings1998@protonmail.com	Hong Kong SAR China	69798bb6-1716-47ee-90ff-0938314cce0c	1570291	108226
nbc2041@yahoo.com	Hong Kong SAR China	9a270672-9e02-44bf-ba2e-2b6baf568829	3472828	5685031
hospital2060@yahoo.com	Hong Kong SAR China	69817e8b-5270-4081-b06b-5f94d1a99c72	4589492	1988085
facilitate2066@gmail.com	Hong Kong SAR China	62f3d028-08e0-4986-806a-254f0d812c5b	5986098	2059089
lifetime1925@gmail.com	Hong Kong SAR China	80a97543-fd97-40a3-b8dc-f58e50101abc	794795	5487523
sauce2013@yandex.com	Hong Kong SAR China	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	3378552	871337
boost1833@gmail.com	Hong Kong SAR China	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4622058	1731147
chance1827@gmail.com	Hong Kong SAR China	9848ad52-bed1-4791-9352-c779584dcbe7	4346042	580475
restoration1945@yahoo.com	Hong Kong SAR China	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	4561656	1184080
officials1972@protonmail.com	Hong Kong SAR China	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	4536317	2131490
davidson2081@outlook.com	Hong Kong SAR China	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1058297	2931788
florence2033@protonmail.com	Hong Kong SAR China	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	575711	5660332
sauce2013@yandex.com	Hong Kong SAR China	c5c41565-02cb-462f-83e5-150521ebde9c	838414	6005764
despite1900@live.com	Hong Kong SAR China	8ec60513-990a-4ce2-a516-8972fdcf9919	2978248	2687866
building2058@yandex.com	Hong Kong SAR China	68739ab8-38f9-45e5-9e67-fb0fc6139879	4642961	4556075
overall2026@outlook.com	Hong Kong SAR China	ea8636de-62ee-4739-8be2-2028afe303c9	3162617	5462516
program2002@yandex.com	Hong Kong SAR China	ce85ec8a-a207-4929-ba56-2e8376b239ea	2469392	5680981
overall2026@outlook.com	Hong Kong SAR China	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3582141	4749832
navy1800@outlook.com	Hong Kong SAR China	5ed75d07-f129-4210-8934-b5282ab6bf39	4399665	3244205
hormone1827@gmail.com	Hong Kong SAR China	c82545f7-d728-4444-aded-9648e5d8c22c	4508969	2384507
chance1827@gmail.com	Hong Kong SAR China	b207278e-f452-43f3-8e6d-1d55a32497dc	281026	227567
webpage2008@yahoo.com	Hong Kong SAR China	e6920268-aba1-48db-8739-415368d962ec	3907134	3828819
delight1975@live.com	Hong Kong SAR China	6feb9519-7623-422d-848c-0b9a5723da19	5740468	4173384
journey2091@outlook.com	Hong Kong SAR China	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5662219	1482717
florence2033@protonmail.com	Hong Kong SAR China	7408db66-1b96-458c-b4f6-4234b2625afd	5088996	3006245
nelson2015@protonmail.com	Hong Kong SAR China	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1945263	5825818
peoples2042@protonmail.com	Hong Kong SAR China	0b57e8c3-3a12-44b9-8236-ace791387ba3	3928544	2663943
dont2100@protonmail.com	Hong Kong SAR China	33828361-6656-438a-aeb6-15a2e5ffcf27	5719081	1963799
lifetime1925@gmail.com	Hong Kong SAR China	ccde439b-b989-4cd2-aec9-f142c8d948d0	4336075	1110756
officials1972@protonmail.com	Hong Kong SAR China	57309776-d0f5-43a2-b94e-38372ee07cc6	3613238	545579
program2002@yandex.com	Hong Kong SAR China	436386c2-345f-4570-ba73-582b3437d53e	5910230	1859774
chance1827@gmail.com	Hong Kong SAR China	dccda210-9223-4604-b148-a0a248fb714e	4830782	5419525
chance1827@gmail.com	Hong Kong SAR China	8acf71b1-5cd5-4010-8a5c-b1265d537e02	3140537	3415607
restoration1945@yahoo.com	Hong Kong SAR China	495303f4-a868-4fa4-acba-c08667d7bcc8	2543322	5958688
nbc2041@yahoo.com	Hong Kong SAR China	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1093678	5464433
program2002@yandex.com	Hong Kong SAR China	c94fd88f-86c3-433a-9d81-b19695d48328	3137107	2531367
journey2091@outlook.com	Hong Kong SAR China	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	5825105	743026
journey2091@outlook.com	Hong Kong SAR China	e88d9503-9bde-473f-9276-3651878e2863	5382402	5726968
duncan1820@gmail.com	Hong Kong SAR China	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2735138	5735521
restoration1945@yahoo.com	Hong Kong SAR China	1ef2eabc-18f9-4869-973e-fa0d7a60446c	5091535	3295145
dont2100@protonmail.com	Hong Kong SAR China	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	2670313	2930143
facilitate2066@gmail.com	Hong Kong SAR China	28778fb1-1671-4bad-8284-6a731564a45e	2146134	2362112
bookings1998@protonmail.com	Hong Kong SAR China	e5a762f6-3052-4384-a92b-b5401e965d25	1777439	780725
mature1894@yahoo.com	Hong Kong SAR China	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2975481	4972085
journey2091@outlook.com	Hong Kong SAR China	642d495a-e016-412f-a53b-dc046cc492a0	1075143	3888084
nelson2015@protonmail.com	Antarctica	5de74332-bf74-402e-bac8-55b0a378954d	2687385	9156527
hormone1827@gmail.com	Antarctica	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	447141	5279150
peoples2042@protonmail.com	Antarctica	5a00b0a4-db1a-4555-b66c-e47023575e85	4864462	5756849
hospital2060@yahoo.com	Antarctica	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	6218085	6581711
nelson2015@protonmail.com	Antarctica	000efc5f-1b50-44ef-92c9-7cd412ba4fca	198190	4282156
mature1894@yahoo.com	Antarctica	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	4520027	7426297
mature1894@yahoo.com	Antarctica	9a270672-9e02-44bf-ba2e-2b6baf568829	8564520	1653072
program2002@yandex.com	Antarctica	69817e8b-5270-4081-b06b-5f94d1a99c72	4516154	4076016
facilitate2066@gmail.com	Antarctica	62f3d028-08e0-4986-806a-254f0d812c5b	6193123	6708431
officials1972@protonmail.com	Antarctica	80a97543-fd97-40a3-b8dc-f58e50101abc	7843456	4334633
building2058@yandex.com	Antarctica	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	6567948	3834757
webpage2008@yahoo.com	Antarctica	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1433710	4505874
duncan1820@gmail.com	Antarctica	9848ad52-bed1-4791-9352-c779584dcbe7	4147465	7502953
dont2100@protonmail.com	Antarctica	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	9255781	4398954
pda1876@outlook.com	Antarctica	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	7127983	4990585
peoples2042@protonmail.com	Antarctica	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	9549576	1406159
bookings1998@protonmail.com	Antarctica	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5115833	423051
journey2091@outlook.com	Antarctica	c5c41565-02cb-462f-83e5-150521ebde9c	9032515	423
chance1827@gmail.com	Antarctica	8ec60513-990a-4ce2-a516-8972fdcf9919	2678715	8981698
local1830@gmail.com	Antarctica	68739ab8-38f9-45e5-9e67-fb0fc6139879	298784	4708261
pda1876@outlook.com	Antarctica	ea8636de-62ee-4739-8be2-2028afe303c9	5723136	5219679
dont2100@protonmail.com	Antarctica	ce85ec8a-a207-4929-ba56-2e8376b239ea	7585104	8068958
lifetime1925@gmail.com	Antarctica	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	6621104	8188280
delight1975@live.com	Antarctica	5ed75d07-f129-4210-8934-b5282ab6bf39	8140193	8011795
bind1902@yahoo.com	Antarctica	c82545f7-d728-4444-aded-9648e5d8c22c	7681124	3210859
hormone1827@gmail.com	Antarctica	b207278e-f452-43f3-8e6d-1d55a32497dc	7848109	3487228
facilitate2066@gmail.com	Antarctica	e6920268-aba1-48db-8739-415368d962ec	1119372	8923026
pda1876@outlook.com	Antarctica	6feb9519-7623-422d-848c-0b9a5723da19	1394251	5054323
throwing1896@protonmail.com	Antarctica	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	5724250	1972788
hormone1827@gmail.com	Antarctica	7408db66-1b96-458c-b4f6-4234b2625afd	3497019	8107121
required1923@outlook.com	Antarctica	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1911711	5838296
hormone1827@gmail.com	Antarctica	0b57e8c3-3a12-44b9-8236-ace791387ba3	144162	2009704
nelson2015@protonmail.com	Antarctica	33828361-6656-438a-aeb6-15a2e5ffcf27	8278188	919178
absence1941@live.com	Antarctica	ccde439b-b989-4cd2-aec9-f142c8d948d0	1171119	7919501
journey2091@outlook.com	Antarctica	57309776-d0f5-43a2-b94e-38372ee07cc6	1344710	7525460
despite1900@live.com	Antarctica	dccda210-9223-4604-b148-a0a248fb714e	6895322	9051989
fred1901@live.com	Antarctica	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1944954	444982
hospital2060@yahoo.com	Antarctica	495303f4-a868-4fa4-acba-c08667d7bcc8	7306922	2273017
journey2091@outlook.com	Antarctica	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1953472	6312394
delight1975@live.com	Antarctica	c94fd88f-86c3-433a-9d81-b19695d48328	3779277	2943995
absence1941@live.com	Antarctica	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2538313	6631933
florence2033@protonmail.com	Antarctica	e88d9503-9bde-473f-9276-3651878e2863	8136030	1710272
overall2026@outlook.com	Antarctica	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	550050	2784453
despite1900@live.com	Antarctica	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2244992	3674598
lifetime1925@gmail.com	Antarctica	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	9139161	6074226
webpage2008@yahoo.com	Antarctica	28778fb1-1671-4bad-8284-6a731564a45e	1473148	1695566
sauce2013@yandex.com	Antarctica	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	352861	2171728
required1923@outlook.com	Antarctica	642d495a-e016-412f-a53b-dc046cc492a0	9243963	2111499
chance1827@gmail.com	Western Sahara	5de74332-bf74-402e-bac8-55b0a378954d	1712087	92131
throwing1896@protonmail.com	Western Sahara	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	679563	344556
navy1800@outlook.com	Western Sahara	5a00b0a4-db1a-4555-b66c-e47023575e85	245989	1669363
despite1900@live.com	Western Sahara	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	153032	2710668
florence2033@protonmail.com	Western Sahara	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1127660	484230
vocal2080@protonmail.com	Western Sahara	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	2917133	52809
facilitate2066@gmail.com	Western Sahara	69798bb6-1716-47ee-90ff-0938314cce0c	135591	1517161
hospital2060@yahoo.com	Western Sahara	9a270672-9e02-44bf-ba2e-2b6baf568829	2216053	1121944
overall2026@outlook.com	Western Sahara	62f3d028-08e0-4986-806a-254f0d812c5b	434642	2418379
facilitate2066@gmail.com	Western Sahara	80a97543-fd97-40a3-b8dc-f58e50101abc	710786	850573
journey2091@outlook.com	Western Sahara	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	207984	85315
vocal2080@protonmail.com	Western Sahara	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1374973	1028142
cruise1800@yahoo.com	Western Sahara	9848ad52-bed1-4791-9352-c779584dcbe7	2143400	1121485
facilitate2066@gmail.com	Western Sahara	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	139486	1993017
hormone1827@gmail.com	Western Sahara	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	1007216	1078366
chance1827@gmail.com	Western Sahara	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	1981043	51726
overall2026@outlook.com	Western Sahara	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	327651	88787
lifetime1925@gmail.com	Western Sahara	c5c41565-02cb-462f-83e5-150521ebde9c	171640	795342
florence2033@protonmail.com	Western Sahara	8ec60513-990a-4ce2-a516-8972fdcf9919	1511855	261600
required1923@outlook.com	Western Sahara	68739ab8-38f9-45e5-9e67-fb0fc6139879	1722020	642390
nbc2041@yahoo.com	Western Sahara	ea8636de-62ee-4739-8be2-2028afe303c9	1512613	2631072
pda1876@outlook.com	Western Sahara	ce85ec8a-a207-4929-ba56-2e8376b239ea	1973329	651406
officials1972@protonmail.com	Western Sahara	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1252688	1269660
navy1800@outlook.com	Western Sahara	5ed75d07-f129-4210-8934-b5282ab6bf39	615461	741859
nbc2041@yahoo.com	Western Sahara	c82545f7-d728-4444-aded-9648e5d8c22c	317761	411347
lifetime1925@gmail.com	Western Sahara	b207278e-f452-43f3-8e6d-1d55a32497dc	917630	1943527
journey2091@outlook.com	Western Sahara	e6920268-aba1-48db-8739-415368d962ec	1777487	2288813
program2002@yandex.com	Western Sahara	6feb9519-7623-422d-848c-0b9a5723da19	917920	1266492
restoration1945@yahoo.com	Western Sahara	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	1017841	1441914
local1830@gmail.com	Western Sahara	7408db66-1b96-458c-b4f6-4234b2625afd	1339345	3027458
fred1901@live.com	Western Sahara	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	310588	2028264
duncan1820@gmail.com	Western Sahara	0b57e8c3-3a12-44b9-8236-ace791387ba3	2114887	2713029
fred1901@live.com	Western Sahara	33828361-6656-438a-aeb6-15a2e5ffcf27	2692134	1874005
davidson2081@outlook.com	Western Sahara	ccde439b-b989-4cd2-aec9-f142c8d948d0	1337974	27905
journey2091@outlook.com	Western Sahara	57309776-d0f5-43a2-b94e-38372ee07cc6	484404	2663209
program2002@yandex.com	Western Sahara	436386c2-345f-4570-ba73-582b3437d53e	2625644	1434735
delight1975@live.com	Western Sahara	dccda210-9223-4604-b148-a0a248fb714e	1234301	1706000
bookings1998@protonmail.com	Western Sahara	8acf71b1-5cd5-4010-8a5c-b1265d537e02	101766	2190419
hormone1827@gmail.com	Western Sahara	495303f4-a868-4fa4-acba-c08667d7bcc8	2166145	2221590
absence1941@live.com	Western Sahara	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	532761	1667499
peoples2042@protonmail.com	Western Sahara	c94fd88f-86c3-433a-9d81-b19695d48328	529601	838539
throwing1896@protonmail.com	Western Sahara	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1919600	1290553
boost1833@gmail.com	Western Sahara	e88d9503-9bde-473f-9276-3651878e2863	1997746	11358
dont2100@protonmail.com	Western Sahara	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2309940	1489455
officials1972@protonmail.com	Western Sahara	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	628056	960949
throwing1896@protonmail.com	Western Sahara	28778fb1-1671-4bad-8284-6a731564a45e	1088892	2526501
dont2100@protonmail.com	Western Sahara	e5a762f6-3052-4384-a92b-b5401e965d25	2346403	2156266
vocal2080@protonmail.com	Western Sahara	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2801932	2305078
cruise1800@yahoo.com	Western Sahara	642d495a-e016-412f-a53b-dc046cc492a0	1621282	2554605
mature1894@yahoo.com	Taiwan	5de74332-bf74-402e-bac8-55b0a378954d	442006	1548230
bookings1998@protonmail.com	Taiwan	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	412903	1818665
florence2033@protonmail.com	Taiwan	5a00b0a4-db1a-4555-b66c-e47023575e85	542341	645446
chance1827@gmail.com	Taiwan	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1635426	1996231
fred1901@live.com	Taiwan	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1690990	2101332
officials1972@protonmail.com	Taiwan	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	99239	1139284
peoples2042@protonmail.com	Taiwan	69798bb6-1716-47ee-90ff-0938314cce0c	1574414	593027
bookings1998@protonmail.com	Taiwan	9a270672-9e02-44bf-ba2e-2b6baf568829	1139157	408283
facilitate2066@gmail.com	Taiwan	69817e8b-5270-4081-b06b-5f94d1a99c72	2637197	941199
only2081@protonmail.com	Taiwan	62f3d028-08e0-4986-806a-254f0d812c5b	2556161	2102885
required1923@outlook.com	Taiwan	80a97543-fd97-40a3-b8dc-f58e50101abc	1762852	964985
lifetime1925@gmail.com	Taiwan	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	2092887	852457
hormone1827@gmail.com	Taiwan	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	955832	2406186
boost1833@gmail.com	Taiwan	9848ad52-bed1-4791-9352-c779584dcbe7	1991489	2274564
lifetime1925@gmail.com	Taiwan	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	840644	524063
webpage2008@yahoo.com	Taiwan	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2227684	1063094
cruise1800@yahoo.com	Taiwan	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	739315	1546542
absence1941@live.com	Taiwan	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	420158	1688240
cruise1800@yahoo.com	Taiwan	c5c41565-02cb-462f-83e5-150521ebde9c	2680833	2577341
delight1975@live.com	Taiwan	8ec60513-990a-4ce2-a516-8972fdcf9919	2430103	2266661
required1923@outlook.com	Taiwan	68739ab8-38f9-45e5-9e67-fb0fc6139879	1261984	520960
sauce2013@yandex.com	Taiwan	ea8636de-62ee-4739-8be2-2028afe303c9	1077396	2398296
mature1894@yahoo.com	Taiwan	ce85ec8a-a207-4929-ba56-2e8376b239ea	1723924	1567508
hormone1827@gmail.com	Taiwan	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1470276	1634529
pda1876@outlook.com	Taiwan	5ed75d07-f129-4210-8934-b5282ab6bf39	101830	1238691
required1923@outlook.com	Taiwan	c82545f7-d728-4444-aded-9648e5d8c22c	1981249	252325
program2002@yandex.com	Taiwan	b207278e-f452-43f3-8e6d-1d55a32497dc	2158191	2250706
facilitate2066@gmail.com	Taiwan	e6920268-aba1-48db-8739-415368d962ec	1151191	1983207
only2081@protonmail.com	Taiwan	6feb9519-7623-422d-848c-0b9a5723da19	2676860	791970
only2081@protonmail.com	Taiwan	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2595657	1469440
program2002@yandex.com	Taiwan	7408db66-1b96-458c-b4f6-4234b2625afd	1997381	2050408
facilitate2066@gmail.com	Taiwan	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	759996	793950
absence1941@live.com	Taiwan	0b57e8c3-3a12-44b9-8236-ace791387ba3	2491649	2079775
journey2091@outlook.com	Taiwan	33828361-6656-438a-aeb6-15a2e5ffcf27	2062	1975665
bookings1998@protonmail.com	Taiwan	ccde439b-b989-4cd2-aec9-f142c8d948d0	2237230	1470319
facilitate2066@gmail.com	Taiwan	57309776-d0f5-43a2-b94e-38372ee07cc6	2047477	1381116
lifetime1925@gmail.com	Taiwan	436386c2-345f-4570-ba73-582b3437d53e	1724298	954517
restoration1945@yahoo.com	Taiwan	dccda210-9223-4604-b148-a0a248fb714e	644486	1203138
davidson2081@outlook.com	Taiwan	8acf71b1-5cd5-4010-8a5c-b1265d537e02	2028833	191756
local1830@gmail.com	Taiwan	495303f4-a868-4fa4-acba-c08667d7bcc8	374881	263724
sauce2013@yandex.com	Taiwan	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1559081	2208737
delight1975@live.com	Taiwan	c94fd88f-86c3-433a-9d81-b19695d48328	1902931	1100589
despite1900@live.com	Taiwan	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1951244	254987
duncan1820@gmail.com	Taiwan	e88d9503-9bde-473f-9276-3651878e2863	1375101	989858
navy1800@outlook.com	Taiwan	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	494566	419089
officials1972@protonmail.com	Taiwan	1ef2eabc-18f9-4869-973e-fa0d7a60446c	678091	1213764
davidson2081@outlook.com	Taiwan	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	23971	73593
navy1800@outlook.com	Taiwan	28778fb1-1671-4bad-8284-6a731564a45e	1872272	1042137
davidson2081@outlook.com	Taiwan	e5a762f6-3052-4384-a92b-b5401e965d25	1836282	1319359
dont2100@protonmail.com	Taiwan	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2285712	228300
nbc2041@yahoo.com	Taiwan	642d495a-e016-412f-a53b-dc046cc492a0	2248063	314310
florence2033@protonmail.com	Germany	5de74332-bf74-402e-bac8-55b0a378954d	2180012	3276688
facilitate2066@gmail.com	Germany	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	3978701	1685475
cruise1800@yahoo.com	Germany	5a00b0a4-db1a-4555-b66c-e47023575e85	2949156	2533048
bind1902@yahoo.com	Germany	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	723903	2076891
sauce2013@yandex.com	Germany	000efc5f-1b50-44ef-92c9-7cd412ba4fca	5681497	3966485
florence2033@protonmail.com	Germany	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	3217054	2107523
officials1972@protonmail.com	Germany	69798bb6-1716-47ee-90ff-0938314cce0c	3826146	5107764
bind1902@yahoo.com	Germany	9a270672-9e02-44bf-ba2e-2b6baf568829	5799513	3125897
webpage2008@yahoo.com	Germany	69817e8b-5270-4081-b06b-5f94d1a99c72	2067583	5210172
webpage2008@yahoo.com	Germany	62f3d028-08e0-4986-806a-254f0d812c5b	659026	3796186
required1923@outlook.com	Germany	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	4782059	3246998
webpage2008@yahoo.com	Germany	9848ad52-bed1-4791-9352-c779584dcbe7	2160114	4567592
absence1941@live.com	Germany	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2092463	3796118
dont2100@protonmail.com	Germany	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2010762	60871
cruise1800@yahoo.com	Germany	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2099756	1212668
overall2026@outlook.com	Germany	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	5742533	5229171
nelson2015@protonmail.com	Germany	c5c41565-02cb-462f-83e5-150521ebde9c	5594624	5655755
facilitate2066@gmail.com	Germany	8ec60513-990a-4ce2-a516-8972fdcf9919	668957	3839760
nelson2015@protonmail.com	Germany	68739ab8-38f9-45e5-9e67-fb0fc6139879	3077558	3223669
webpage2008@yahoo.com	Germany	ea8636de-62ee-4739-8be2-2028afe303c9	4353072	4028639
local1830@gmail.com	Germany	ce85ec8a-a207-4929-ba56-2e8376b239ea	1464467	1835078
journey2091@outlook.com	Germany	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1616441	5234961
peoples2042@protonmail.com	Germany	5ed75d07-f129-4210-8934-b5282ab6bf39	2072682	4088975
local1830@gmail.com	Germany	c82545f7-d728-4444-aded-9648e5d8c22c	5293315	1487565
florence2033@protonmail.com	Germany	b207278e-f452-43f3-8e6d-1d55a32497dc	4829995	4677203
vocal2080@protonmail.com	Germany	e6920268-aba1-48db-8739-415368d962ec	4190175	1375991
overall2026@outlook.com	Germany	6feb9519-7623-422d-848c-0b9a5723da19	2519299	2670235
davidson2081@outlook.com	Germany	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	4982764	3449961
program2002@yandex.com	Germany	7408db66-1b96-458c-b4f6-4234b2625afd	4739876	2642857
restoration1945@yahoo.com	Germany	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	3619704	4235882
peoples2042@protonmail.com	Germany	0b57e8c3-3a12-44b9-8236-ace791387ba3	3546340	3368525
journey2091@outlook.com	Germany	33828361-6656-438a-aeb6-15a2e5ffcf27	5209429	180873
bookings1998@protonmail.com	Germany	ccde439b-b989-4cd2-aec9-f142c8d948d0	3491452	3356320
nbc2041@yahoo.com	Germany	57309776-d0f5-43a2-b94e-38372ee07cc6	1050878	2832153
duncan1820@gmail.com	Germany	436386c2-345f-4570-ba73-582b3437d53e	2527139	3897463
florence2033@protonmail.com	Germany	dccda210-9223-4604-b148-a0a248fb714e	3235620	789835
duncan1820@gmail.com	Germany	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1701833	5078212
only2081@protonmail.com	Germany	495303f4-a868-4fa4-acba-c08667d7bcc8	1641741	2899396
facilitate2066@gmail.com	Germany	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	5093052	3034607
overall2026@outlook.com	Germany	c94fd88f-86c3-433a-9d81-b19695d48328	3202538	9951
hospital2060@yahoo.com	Germany	e88d9503-9bde-473f-9276-3651878e2863	4969678	551774
local1830@gmail.com	Germany	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1066383	2244899
nbc2041@yahoo.com	Germany	1ef2eabc-18f9-4869-973e-fa0d7a60446c	3577593	5179331
hormone1827@gmail.com	Germany	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3542450	4159678
vocal2080@protonmail.com	Germany	28778fb1-1671-4bad-8284-6a731564a45e	3855356	3247790
officials1972@protonmail.com	Germany	e5a762f6-3052-4384-a92b-b5401e965d25	1684743	5063950
cruise1800@yahoo.com	Germany	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	4171639	519030
peoples2042@protonmail.com	Germany	642d495a-e016-412f-a53b-dc046cc492a0	4808099	3627327
building2058@yandex.com	Malaysia	5de74332-bf74-402e-bac8-55b0a378954d	474181	331846
journey2091@outlook.com	Malaysia	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	155215	1807888
absence1941@live.com	Malaysia	5a00b0a4-db1a-4555-b66c-e47023575e85	142373	3713987
dont2100@protonmail.com	Malaysia	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	954398	417473
lifetime1925@gmail.com	Malaysia	000efc5f-1b50-44ef-92c9-7cd412ba4fca	526025	82410
pda1876@outlook.com	Malaysia	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	389056	1320739
officials1972@protonmail.com	Malaysia	69798bb6-1716-47ee-90ff-0938314cce0c	2700934	3204821
nelson2015@protonmail.com	Malaysia	9a270672-9e02-44bf-ba2e-2b6baf568829	1991219	544681
local1830@gmail.com	Malaysia	69817e8b-5270-4081-b06b-5f94d1a99c72	3894159	421738
nelson2015@protonmail.com	Malaysia	62f3d028-08e0-4986-806a-254f0d812c5b	2431339	55969
lifetime1925@gmail.com	Malaysia	80a97543-fd97-40a3-b8dc-f58e50101abc	610172	3002543
journey2091@outlook.com	Malaysia	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	130008	475547
peoples2042@protonmail.com	Malaysia	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1513302	2990908
boost1833@gmail.com	Malaysia	9848ad52-bed1-4791-9352-c779584dcbe7	3621333	3335768
navy1800@outlook.com	Malaysia	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	2902430	1824813
mature1894@yahoo.com	Malaysia	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2797474	1089845
dont2100@protonmail.com	Malaysia	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	399552	1124447
bind1902@yahoo.com	Malaysia	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	3218696	1295761
boost1833@gmail.com	Malaysia	c5c41565-02cb-462f-83e5-150521ebde9c	1775902	2393118
nbc2041@yahoo.com	Malaysia	8ec60513-990a-4ce2-a516-8972fdcf9919	438153	1907139
lifetime1925@gmail.com	Malaysia	68739ab8-38f9-45e5-9e67-fb0fc6139879	1834188	3700411
fred1901@live.com	Malaysia	ea8636de-62ee-4739-8be2-2028afe303c9	668714	3910295
mature1894@yahoo.com	Malaysia	ce85ec8a-a207-4929-ba56-2e8376b239ea	880242	3544974
journey2091@outlook.com	Malaysia	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	3475429	1945499
bookings1998@protonmail.com	Malaysia	5ed75d07-f129-4210-8934-b5282ab6bf39	838569	1725768
navy1800@outlook.com	Malaysia	c82545f7-d728-4444-aded-9648e5d8c22c	361525	1628498
webpage2008@yahoo.com	Malaysia	b207278e-f452-43f3-8e6d-1d55a32497dc	4144703	3515394
bookings1998@protonmail.com	Malaysia	e6920268-aba1-48db-8739-415368d962ec	3212626	2676377
only2081@protonmail.com	Malaysia	6feb9519-7623-422d-848c-0b9a5723da19	1777413	1601732
hormone1827@gmail.com	Malaysia	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	74178	3373527
chance1827@gmail.com	Malaysia	7408db66-1b96-458c-b4f6-4234b2625afd	1754404	21645
only2081@protonmail.com	Malaysia	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	1867414	1560191
chance1827@gmail.com	Malaysia	0b57e8c3-3a12-44b9-8236-ace791387ba3	2744126	3989475
boost1833@gmail.com	Malaysia	33828361-6656-438a-aeb6-15a2e5ffcf27	2662223	318506
facilitate2066@gmail.com	Malaysia	ccde439b-b989-4cd2-aec9-f142c8d948d0	2888936	239239
lifetime1925@gmail.com	Malaysia	57309776-d0f5-43a2-b94e-38372ee07cc6	2508827	3079391
davidson2081@outlook.com	Malaysia	436386c2-345f-4570-ba73-582b3437d53e	2850057	2132958
overall2026@outlook.com	Malaysia	dccda210-9223-4604-b148-a0a248fb714e	3421523	3023311
cruise1800@yahoo.com	Malaysia	8acf71b1-5cd5-4010-8a5c-b1265d537e02	627399	1182156
local1830@gmail.com	Malaysia	495303f4-a868-4fa4-acba-c08667d7bcc8	896276	1345685
pda1876@outlook.com	Malaysia	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1577884	118254
despite1900@live.com	Malaysia	c94fd88f-86c3-433a-9d81-b19695d48328	1163022	2582405
hormone1827@gmail.com	Malaysia	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	2399769	3559577
bind1902@yahoo.com	Malaysia	e88d9503-9bde-473f-9276-3651878e2863	3425065	1014881
required1923@outlook.com	Malaysia	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	2335845	910731
hormone1827@gmail.com	Malaysia	1ef2eabc-18f9-4869-973e-fa0d7a60446c	436157	2704032
florence2033@protonmail.com	Malaysia	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3932649	2663833
restoration1945@yahoo.com	Malaysia	28778fb1-1671-4bad-8284-6a731564a45e	2687668	1953173
cruise1800@yahoo.com	Malaysia	e5a762f6-3052-4384-a92b-b5401e965d25	2519781	1706603
cruise1800@yahoo.com	Malaysia	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	2729567	1310679
restoration1945@yahoo.com	Malaysia	642d495a-e016-412f-a53b-dc046cc492a0	449660	677966
navy1800@outlook.com	Guinea-Bissau	5de74332-bf74-402e-bac8-55b0a378954d	2640532	2487801
hormone1827@gmail.com	Guinea-Bissau	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	1906304	254650
absence1941@live.com	Guinea-Bissau	5a00b0a4-db1a-4555-b66c-e47023575e85	1245630	3863763
webpage2008@yahoo.com	Guinea-Bissau	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	311696	1076605
throwing1896@protonmail.com	Guinea-Bissau	000efc5f-1b50-44ef-92c9-7cd412ba4fca	2036909	996677
navy1800@outlook.com	Guinea-Bissau	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	1531395	714565
only2081@protonmail.com	Guinea-Bissau	69798bb6-1716-47ee-90ff-0938314cce0c	920185	4612570
pda1876@outlook.com	Guinea-Bissau	9a270672-9e02-44bf-ba2e-2b6baf568829	4742069	3048083
pda1876@outlook.com	Guinea-Bissau	69817e8b-5270-4081-b06b-5f94d1a99c72	1172531	4724956
journey2091@outlook.com	Guinea-Bissau	62f3d028-08e0-4986-806a-254f0d812c5b	3028343	1966452
hospital2060@yahoo.com	Guinea-Bissau	80a97543-fd97-40a3-b8dc-f58e50101abc	1762388	508935
facilitate2066@gmail.com	Guinea-Bissau	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	4401496	524424
despite1900@live.com	Guinea-Bissau	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	2171597	3491410
mature1894@yahoo.com	Guinea-Bissau	9848ad52-bed1-4791-9352-c779584dcbe7	1422816	1542753
dont2100@protonmail.com	Guinea-Bissau	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	33724	13832
duncan1820@gmail.com	Guinea-Bissau	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	250028	1696415
sauce2013@yandex.com	Guinea-Bissau	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	121853	5102191
chance1827@gmail.com	Guinea-Bissau	c5c41565-02cb-462f-83e5-150521ebde9c	4114363	4379675
despite1900@live.com	Guinea-Bissau	8ec60513-990a-4ce2-a516-8972fdcf9919	26726	550133
dont2100@protonmail.com	Guinea-Bissau	68739ab8-38f9-45e5-9e67-fb0fc6139879	982680	5016980
nelson2015@protonmail.com	Guinea-Bissau	ea8636de-62ee-4739-8be2-2028afe303c9	4719571	247615
davidson2081@outlook.com	Guinea-Bissau	ce85ec8a-a207-4929-ba56-2e8376b239ea	3608022	2693055
bind1902@yahoo.com	Guinea-Bissau	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	1057921	3511707
nbc2041@yahoo.com	Guinea-Bissau	5ed75d07-f129-4210-8934-b5282ab6bf39	1474998	5035847
building2058@yandex.com	Guinea-Bissau	c82545f7-d728-4444-aded-9648e5d8c22c	629474	219323
davidson2081@outlook.com	Guinea-Bissau	b207278e-f452-43f3-8e6d-1d55a32497dc	384750	1962896
vocal2080@protonmail.com	Guinea-Bissau	e6920268-aba1-48db-8739-415368d962ec	4085805	1535555
peoples2042@protonmail.com	Guinea-Bissau	6feb9519-7623-422d-848c-0b9a5723da19	2422234	3812155
davidson2081@outlook.com	Guinea-Bissau	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	2931756	3091858
cruise1800@yahoo.com	Guinea-Bissau	7408db66-1b96-458c-b4f6-4234b2625afd	2211893	4830991
bookings1998@protonmail.com	Guinea-Bissau	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	4090050	2272834
dont2100@protonmail.com	Guinea-Bissau	0b57e8c3-3a12-44b9-8236-ace791387ba3	1883761	3535927
boost1833@gmail.com	Guinea-Bissau	33828361-6656-438a-aeb6-15a2e5ffcf27	2439164	2644246
lifetime1925@gmail.com	Guinea-Bissau	ccde439b-b989-4cd2-aec9-f142c8d948d0	3180289	76071
delight1975@live.com	Guinea-Bissau	57309776-d0f5-43a2-b94e-38372ee07cc6	356920	1698308
chance1827@gmail.com	Guinea-Bissau	436386c2-345f-4570-ba73-582b3437d53e	1470622	2055768
delight1975@live.com	Guinea-Bissau	dccda210-9223-4604-b148-a0a248fb714e	1159024	3987906
fred1901@live.com	Guinea-Bissau	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1482861	4085889
florence2033@protonmail.com	Guinea-Bissau	495303f4-a868-4fa4-acba-c08667d7bcc8	3398917	1331789
program2002@yandex.com	Guinea-Bissau	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	4817287	3326338
journey2091@outlook.com	Guinea-Bissau	c94fd88f-86c3-433a-9d81-b19695d48328	3668484	2325563
davidson2081@outlook.com	Guinea-Bissau	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	929811	4731123
davidson2081@outlook.com	Guinea-Bissau	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1033227	609210
chance1827@gmail.com	Guinea-Bissau	1ef2eabc-18f9-4869-973e-fa0d7a60446c	518631	2383901
only2081@protonmail.com	Guinea-Bissau	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	3174387	2315145
webpage2008@yahoo.com	Guinea-Bissau	28778fb1-1671-4bad-8284-6a731564a45e	297118	3996360
sauce2013@yandex.com	Guinea-Bissau	e5a762f6-3052-4384-a92b-b5401e965d25	14713	797976
sauce2013@yandex.com	Guinea-Bissau	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	3116595	4512000
overall2026@outlook.com	Guinea-Bissau	642d495a-e016-412f-a53b-dc046cc492a0	5088978	3026849
mature1894@yahoo.com	Norfolk Island	5de74332-bf74-402e-bac8-55b0a378954d	133408	876278
program2002@yandex.com	Norfolk Island	4a140e55-5ab6-4f77-bb3b-a46d92ca2c78	227931	2147252
throwing1896@protonmail.com	Norfolk Island	5a00b0a4-db1a-4555-b66c-e47023575e85	1976505	652315
bookings1998@protonmail.com	Norfolk Island	ec853e5e-79e9-4ac7-96f7-d1d058c6eb0d	1372129	287823
hospital2060@yahoo.com	Norfolk Island	000efc5f-1b50-44ef-92c9-7cd412ba4fca	1970065	566067
local1830@gmail.com	Norfolk Island	4cd143a9-2d88-42b6-8fa9-976cd836f3b3	257758	1831152
dont2100@protonmail.com	Norfolk Island	69798bb6-1716-47ee-90ff-0938314cce0c	550407	1066486
building2058@yandex.com	Norfolk Island	9a270672-9e02-44bf-ba2e-2b6baf568829	1286754	1383098
mature1894@yahoo.com	Norfolk Island	69817e8b-5270-4081-b06b-5f94d1a99c72	401113	2062265
mature1894@yahoo.com	Norfolk Island	62f3d028-08e0-4986-806a-254f0d812c5b	683118	1744719
journey2091@outlook.com	Norfolk Island	80a97543-fd97-40a3-b8dc-f58e50101abc	1570203	1301626
overall2026@outlook.com	Norfolk Island	d22dc78a-0fe4-40cf-ac49-d03a4572e2b7	1662113	1096771
local1830@gmail.com	Norfolk Island	275a7a6d-bdb9-4b14-8bcf-a139fbe0b9e7	1189702	1585093
delight1975@live.com	Norfolk Island	9848ad52-bed1-4791-9352-c779584dcbe7	1123077	1193784
peoples2042@protonmail.com	Norfolk Island	9f33d46c-9e1f-4369-a22d-0b00e2fc9074	1549763	819440
only2081@protonmail.com	Norfolk Island	7b1ad59e-7f91-4deb-be93-eb03b37bdb0c	2109964	877999
vocal2080@protonmail.com	Norfolk Island	baf8329f-efc1-45b6-b0e4-6c2211bfc38c	2138393	2047340
chance1827@gmail.com	Norfolk Island	ec1b5b65-67e0-4da3-aa55-2e106b59ebff	1984044	1053447
throwing1896@protonmail.com	Norfolk Island	c5c41565-02cb-462f-83e5-150521ebde9c	923187	685036
florence2033@protonmail.com	Norfolk Island	8ec60513-990a-4ce2-a516-8972fdcf9919	32330	1776355
florence2033@protonmail.com	Norfolk Island	68739ab8-38f9-45e5-9e67-fb0fc6139879	301712	884798
sauce2013@yandex.com	Norfolk Island	ea8636de-62ee-4739-8be2-2028afe303c9	1016770	599656
cruise1800@yahoo.com	Norfolk Island	ce85ec8a-a207-4929-ba56-2e8376b239ea	1325677	509060
sauce2013@yandex.com	Norfolk Island	e715b6c8-8feb-41b7-a9cb-5e5b785da13b	113055	1136503
nelson2015@protonmail.com	Norfolk Island	5ed75d07-f129-4210-8934-b5282ab6bf39	693949	935106
overall2026@outlook.com	Norfolk Island	c82545f7-d728-4444-aded-9648e5d8c22c	529610	2063869
duncan1820@gmail.com	Norfolk Island	b207278e-f452-43f3-8e6d-1d55a32497dc	1539593	1601363
vocal2080@protonmail.com	Norfolk Island	e6920268-aba1-48db-8739-415368d962ec	2141226	503535
absence1941@live.com	Norfolk Island	6feb9519-7623-422d-848c-0b9a5723da19	1847644	1061315
hospital2060@yahoo.com	Norfolk Island	6c8c6a4b-259b-4a74-8c06-82f3b38e1f5f	544389	1338916
cruise1800@yahoo.com	Norfolk Island	7408db66-1b96-458c-b4f6-4234b2625afd	1231006	1785601
lifetime1925@gmail.com	Norfolk Island	aa0f118b-5da2-4d6c-b1a3-b0a9fcab5013	2126285	1223052
cruise1800@yahoo.com	Norfolk Island	0b57e8c3-3a12-44b9-8236-ace791387ba3	178031	66694
required1923@outlook.com	Norfolk Island	33828361-6656-438a-aeb6-15a2e5ffcf27	1033369	482526
overall2026@outlook.com	Norfolk Island	ccde439b-b989-4cd2-aec9-f142c8d948d0	174430	2175246
davidson2081@outlook.com	Norfolk Island	57309776-d0f5-43a2-b94e-38372ee07cc6	1358368	1744409
nelson2015@protonmail.com	Norfolk Island	436386c2-345f-4570-ba73-582b3437d53e	1258084	1454821
cruise1800@yahoo.com	Norfolk Island	dccda210-9223-4604-b148-a0a248fb714e	100888	1695753
hormone1827@gmail.com	Norfolk Island	8acf71b1-5cd5-4010-8a5c-b1265d537e02	1711863	1921380
facilitate2066@gmail.com	Norfolk Island	495303f4-a868-4fa4-acba-c08667d7bcc8	335971	1227426
bind1902@yahoo.com	Norfolk Island	41363c1b-83e6-4718-bd56-7bd2b8fd87a0	1655337	2117823
journey2091@outlook.com	Norfolk Island	c94fd88f-86c3-433a-9d81-b19695d48328	1589065	492569
facilitate2066@gmail.com	Norfolk Island	d40a43af-e1f4-4eeb-9a48-bf45ccd33b2d	1740862	546727
lifetime1925@gmail.com	Norfolk Island	e88d9503-9bde-473f-9276-3651878e2863	449973	1326676
journey2091@outlook.com	Norfolk Island	5eceb9b9-bf77-4083-9966-2f82e2ee6d4e	1470803	1611424
delight1975@live.com	Norfolk Island	1ef2eabc-18f9-4869-973e-fa0d7a60446c	2168135	777264
program2002@yandex.com	Norfolk Island	d9c4bb8a-f770-4b51-93ec-4faa9f010ca6	109977	201757
absence1941@live.com	Norfolk Island	28778fb1-1671-4bad-8284-6a731564a45e	670532	513223
program2002@yandex.com	Norfolk Island	e5a762f6-3052-4384-a92b-b5401e965d25	1718525	1196210
restoration1945@yahoo.com	Norfolk Island	6fdad170-1506-47ec-bfe9-6bd97e8c47a4	1666330	1050332
bookings1998@protonmail.com	Norfolk Island	642d495a-e016-412f-a53b-dc046cc492a0	248177	318851
\.


--
-- Data for Name: specialize; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.specialize (id, email) FROM stdin;
1	provinces1951@yahoo.com
8	provinces1951@yahoo.com
4	provinces1951@yahoo.com
8	digital1872@yahoo.com
3	digital1872@yahoo.com
1	only2081@protonmail.com
4	only2081@protonmail.com
2	only2081@protonmail.com
3	insertion1843@live.com
7	insertion1843@live.com
8	mrna1870@live.com
4	mrna1870@live.com
7	mrna1870@live.com
3	mrna1870@live.com
3	moral1928@protonmail.com
4	racks1819@outlook.com
9	racks1819@outlook.com
0	refers1897@outlook.com
1	refers1897@outlook.com
4	refers1897@outlook.com
9	refers1897@outlook.com
8	pda1876@outlook.com
4	pda1876@outlook.com
5	officials1972@protonmail.com
3	officials1972@protonmail.com
6	officials1972@protonmail.com
7	officials1972@protonmail.com
6	navy1800@outlook.com
9	mature1894@yahoo.com
4	mature1894@yahoo.com
0	mature1894@yahoo.com
1	mature1894@yahoo.com
5	facilitate2066@gmail.com
1	facilitate2066@gmail.com
6	facilitate2066@gmail.com
0	hospital2060@yahoo.com
7	hospital2060@yahoo.com
6	hospital2060@yahoo.com
4	indiana1822@gmail.com
3	tells2011@live.com
7	tells2011@live.com
5	tells2011@live.com
3	mistakes1848@gmail.com
7	steven1929@outlook.com
5	trans1965@protonmail.com
4	trans1965@protonmail.com
1	trans1965@protonmail.com
7	trans1965@protonmail.com
0	bookings1998@protonmail.com
9	bookings1998@protonmail.com
4	dont2100@protonmail.com
5	dont2100@protonmail.com
2	dont2100@protonmail.com
3	dont2100@protonmail.com
5	entrepreneurs1808@yahoo.com
4	stops2049@yahoo.com
1	stops2049@yahoo.com
5	stops2049@yahoo.com
3	stops2049@yahoo.com
2	absence1941@live.com
6	absence1941@live.com
8	absence1941@live.com
9	subscriptions2003@gmail.com
4	subscriptions2003@gmail.com
3	bind1902@yahoo.com
9	bind1902@yahoo.com
2	bind1902@yahoo.com
9	nbc2041@yahoo.com
6	nbc2041@yahoo.com
3	nbc2041@yahoo.com
0	nbc2041@yahoo.com
1	delight1975@live.com
2	delight1975@live.com
6	davidson2081@outlook.com
1	abc2058@yandex.com
7	abc2058@yandex.com
1	throwing1896@protonmail.com
4	grant1955@protonmail.com
7	grant1955@protonmail.com
3	tcp1842@gmail.com
4	tcp1842@gmail.com
3	ambient1985@live.com
4	ambient1985@live.com
1	ambient1985@live.com
7	restoration1945@yahoo.com
9	restoration1945@yahoo.com
1	restoration1945@yahoo.com
3	even2096@protonmail.com
0	even2096@protonmail.com
4	even2096@protonmail.com
9	even2096@protonmail.com
1	program2002@yandex.com
0	program2002@yandex.com
7	program2002@yandex.com
8	program2002@yandex.com
1	webpage2008@yahoo.com
6	passive1985@protonmail.com
4	passive1985@protonmail.com
3	mesa1949@yandex.com
8	part2084@yahoo.com
3	part2084@yahoo.com
0	part2084@yahoo.com
5	owns2077@yandex.com
6	owns2077@yandex.com
7	types2092@yahoo.com
3	types2092@yahoo.com
2	occupation1849@yahoo.com
0	occupation1849@yahoo.com
8	duncan1820@gmail.com
0	horses1845@yahoo.com
8	horses1845@yahoo.com
6	horses1845@yahoo.com
3	horses1845@yahoo.com
9	fill2080@protonmail.com
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (email, name, surname, salary, phone, cname) FROM stdin;
delight1975@live.com	Bruno	Frost	139787	(405) 955-0788	Anguilla
poll2022@gmail.com	Ludivina	Davidson	27384	(933) 738-1532	Antarctica
passive1985@protonmail.com	Dominick	Kaufman	134472	691.671.3416	Vanuatu
show2088@yahoo.com	Eliz	Curtis	429408	052.910.1585	Falkland Islands
nbc2041@yahoo.com	Nicol	Baird	207737	+1-(335)-254-1005	Vanuatu
award1865@live.com	Logan	Lancaster	412561	1-140-487-1785	Nigeria
mrna1870@live.com	Barney	May	471279	+1-(376)-882-2465	Tuvalu
heather1954@outlook.com	Cleopatra	Heath	242248	+1-(546)-523-2648	Azerbaijan
qatar1930@yandex.com	Jaye	Mann	271615	(629) 194-6287	Estonia
chance1827@gmail.com	Melda	Davis	328875	1-247-672-2721	Guinea-Bissau
even2096@protonmail.com	Elliot	Walton	146941	(661) 475-5069	Brunei
tcp1842@gmail.com	Brynn	Summers	31771	034-899-7499	Bangladesh
supreme1933@protonmail.com	Bethanie	Gill	334664	679.287.3843	Tunisia
indiana1822@gmail.com	Karena	Hoffman	259900	1-474-405-3360	Western Sahara
florence2033@protonmail.com	Fredia	Glass	228874	1-656-685-1297	Namibia
journey2091@outlook.com	Jefferson	Chandler	179744	(551) 158-1479	Paraguay
facilitate2066@gmail.com	Buford	Preston	227041	296-276-2675	Comoros
isle2009@protonmail.com	Reynaldo	Chavez	319543	(750) 888-4217	Sudan
grant1955@protonmail.com	Prince	Bright	430441	1-811-727-9472	Anguilla
flower1886@live.com	Lamont	Morales	248673	1-827-131-5559	Seychelles
covered1803@yandex.com	Eldridge	Leblanc	485837	738.803.1482	Malawi
bank1877@gmail.com	Miles	Mckee	416502	(042) 521-4075	Falkland Islands
preservation1950@gmail.com	Albert	Reyes	150538	+1-(088)-864-1607	Myanmar
peoples2042@protonmail.com	Khadijah	Petty	302847	+1-(213)-506-4432	Saudi Arabia
entrepreneurs1808@yahoo.com	German	Burch	349468	672-183-7589	St. Helena
subscriptions2003@gmail.com	Mikaela	Waters	87250	(776) 362-1330	Azerbaijan
horses1845@yahoo.com	Erasmo	Bowen	461433	699.764.5459	Portugal
guided2009@gmail.com	Arthur	Aguilar	273526	112-403-5324	Ascension Island
calculator1960@outlook.com	Delsie	Phelps	67273	(505) 969-8129	Canada
lifetime1925@gmail.com	Pat	Kirk	86117	402.622.0005	France
songs1915@protonmail.com	Dannette	Tanner	289514	+1-(497)-613-1378	Wallis & Futuna
bookings1998@protonmail.com	Heriberto	Ellison	72435	811.949.1203	India
cruise1800@yahoo.com	Nelia	Ruiz	230456	(391) 453-2298	Portugal
fred1901@live.com	Elmo	Bond	417769	1-940-842-3826	Estonia
coffee2040@yahoo.com	Cindie	Le	31713	047.984.7179	San Marino
impressive1919@live.com	Wenona	Swanson	466726	627-347-1288	Estonia
abc2058@yandex.com	Alisia	Sanders	276496	1-859-228-8825	St. Pierre & Miquelon
dont2100@protonmail.com	Dyan	Pennington	42395	1-168-489-4187	Macau SAR China
strap1880@gmail.com	Margurite	Mejia	464884	1-393-376-0956	North Korea
absence1941@live.com	Michael	Carlson	118410	1-892-110-6853	Bhutan
steven1929@outlook.com	Jamaal	Trujillo	48559	1-496-548-9509	Iceland
fails2037@gmail.com	Chester	Galloway	228769	1-278-090-9255	Tunisia
greek1844@yahoo.com	Tu	Guzman	406648	(926) 529-1678	Canada
activation1824@yahoo.com	Torrie	Cleveland	298481	+1-(029)-120-1122	Trinidad & Tobago
pda1876@outlook.com	Grover	Sparks	343056	+1-(915)-531-6403	Moldova
tears2072@outlook.com	Mathilda	Perez	466639	1-479-792-9081	Honduras
stream2098@gmail.com	Ranae	Bell	218655	+1-(756)-738-8287	Iceland
mature1894@yahoo.com	Bud	Jensen	250454	567-693-8000	Anguilla
local1830@gmail.com	Carlee	Campos	494035	+1-(879)-128-3704	Azerbaijan
spider1839@gmail.com	Ewa	Cohen	38112	(157) 792-9936	France
officials1972@protonmail.com	Arlie	Alvarado	350659	+1-(690)-801-4700	Equatorial Guinea
navy1800@outlook.com	Aaron	Flynn	433849	(075) 077-6314	Ascension Island
boost1833@gmail.com	Carli	Mckee	464506	+1-(537)-044-4986	Tanzania
ralph2067@protonmail.com	Alec	Beasley	218829	+1-(023)-377-2799	Seychelles
provinces1951@yahoo.com	Jesus	Morin	159105	(960) 197-2566	Zimbabwe
booty1817@yahoo.com	Woodrow	Robles	80500	1-593-782-1048	Sudan
hormone1827@gmail.com	Sindy	Collier	369733	(700) 066-6241	Greece
webpage2008@yahoo.com	Raelene	Collier	260712	(743) 929-1760	North Korea
only2081@protonmail.com	Scott	Richardson	491190	199-798-2370	Mozambique
students1921@outlook.com	Stanton	Holland	240812	630.380.4709	Saudi Arabia
coordinate2092@gmail.com	Soraya	Sweeney	250806	492.550.6582	Trinidad & Tobago
part2084@yahoo.com	Daryl	Simmons	459729	(689) 513-0164	Croatia
regulations1931@protonmail.com	Hank	Gordon	379242	366-161-7355	Gibraltar
refers1897@outlook.com	Kenda	Skinner	492790	769-646-9614	Norfolk Island
trans1965@protonmail.com	Carline	Soto	127014	(653) 764-1407	Portugal
davidson2081@outlook.com	Tyree	Rose	374614	1-354-442-7977	Libya
sauce2013@yandex.com	Lyman	Wyatt	486961	+1-(280)-254-8015	Canary Islands
coaching2087@outlook.com	Fausto	Chaney	235589	(723) 242-8354	Germany
restoration1945@yahoo.com	Jerrell	Ramos	382635	363.803.7513	South Korea
boulder1906@outlook.com	Earlie	Hardy	123736	(922) 848-6612	Niger
nelson2015@protonmail.com	Jen	Love	112071	1-362-387-4343	Gibraltar
types2092@yahoo.com	Jerica	O'neill	92308	1-672-966-7917	Nigeria
duncan1820@gmail.com	Cherilyn	Conley	80420	(041) 261-3666	Burkina Faso
mesa1949@yandex.com	Rolf	Knox	331315	200-881-4203	Tanzania
parish2084@protonmail.com	Carli	Franco	220211	1-763-242-7903	Guam
insertion1843@live.com	Nichelle	Webb	198458	+1-(965)-416-5071	Jamaica
hospital2060@yahoo.com	Darell	Bush	34503	516.671.6977	North Korea
featuring1946@gmail.com	Jewell	Mccullough	63123	831-921-0584	Philippines
bind1902@yahoo.com	Melida	Tyler	119143	394-298-3623	Guinea-Bissau
fill2080@protonmail.com	Lanora	Byers	171214	(724) 531-2584	Tajikistan
ambient1985@live.com	Nolan	Berg	477560	582.806.8673	Monaco
becomes1827@outlook.com	Monte	Sherman	460910	1-985-302-7676	Greece
throwing1896@protonmail.com	Tambra	Howell	413038	822-243-4725	Timor-Leste
program2002@yandex.com	Buster	Rocha	397148	1-564-726-1040	Antarctica
mistakes1848@gmail.com	Bo	Shelton	7854	(035) 865-9728	South Korea
vocal2080@protonmail.com	Tarah	Winters	96206	+1-(801)-162-7103	Namibia
morgan1812@live.com	Malvina	Good	408461	1-689-752-0187	San Marino
building2058@yandex.com	Elodia	Fitzgerald	237709	(070) 171-3487	North Korea
tells2011@live.com	Loma	Pena	169885	1-363-623-3475	Tunisia
payday2015@live.com	Sheilah	Reid	426037	784-693-6432	Cook Islands
required1923@outlook.com	Hayden	Robles	443094	797.893.1496	Estonia
stops2049@yahoo.com	Krysta	Hubbard	39420	190-504-7913	Guinea-Bissau
owns2077@yandex.com	Blake	Mcdonald	448537	(516) 891-0277	Guadeloupe
occupation1849@yahoo.com	Johnathon	Stone	308419	+1-(000)-853-8450	Mauritania
overall2026@outlook.com	Danuta	Griffith	175511	(740) 889-9077	Vietnam
looks2052@protonmail.com	Guadalupe	Durham	154147	+1-(846)-819-7216	Taiwan
moral1928@protonmail.com	Somer	Mathis	46285	102.094.8962	France
digital1872@yahoo.com	Brandon	Conner	337430	735.159.3359	Cameroon
locked1913@yahoo.com	Dodie	Lane	83607	(579) 119-5133	Portugal
despite1900@live.com	Kacie	Robertson	447138	1-605-026-0192	Tuvalu
racks1819@outlook.com	Freeda	Alibek	311258	245.430.5465	Colombia
hyundai1843@yahoo.com	Rickie	Bekmurat	173777	414.524.8549	Mozambique
\.


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (email);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (cname);


--
-- Name: discover discover_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_pkey PRIMARY KEY (cname, disease_code);


--
-- Name: disease disease_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_pkey PRIMARY KEY (disease_code);


--
-- Name: diseasetype diseasetype_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diseasetype
    ADD CONSTRAINT diseasetype_pkey PRIMARY KEY (id);


--
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (email);


--
-- Name: publicservant publicservant_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.publicservant
    ADD CONSTRAINT publicservant_pkey PRIMARY KEY (email);


--
-- Name: record record_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (email, cname, disease_code);


--
-- Name: specialize specialize_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT specialize_pkey PRIMARY KEY (id, email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: admin admin_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_email_fkey FOREIGN KEY (email) REFERENCES public.users(email) ON DELETE CASCADE;


--
-- Name: discover discover_cname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_cname_fkey FOREIGN KEY (cname) REFERENCES public.country(cname) ON DELETE CASCADE;


--
-- Name: discover discover_disease_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.discover
    ADD CONSTRAINT discover_disease_code_fkey FOREIGN KEY (disease_code) REFERENCES public.disease(disease_code) ON DELETE CASCADE;


--
-- Name: disease disease_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.disease
    ADD CONSTRAINT disease_id_fkey FOREIGN KEY (id) REFERENCES public.diseasetype(id) ON DELETE CASCADE;


--
-- Name: doctor doctor_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_email_fkey FOREIGN KEY (email) REFERENCES public.users(email) ON DELETE CASCADE;


--
-- Name: publicservant publicservant_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.publicservant
    ADD CONSTRAINT publicservant_email_fkey FOREIGN KEY (email) REFERENCES public.users(email) ON DELETE CASCADE;


--
-- Name: record record_cname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_cname_fkey FOREIGN KEY (cname) REFERENCES public.country(cname) ON DELETE CASCADE;


--
-- Name: record record_disease_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_disease_code_fkey FOREIGN KEY (disease_code) REFERENCES public.disease(disease_code) ON DELETE CASCADE;


--
-- Name: record record_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_email_fkey FOREIGN KEY (email) REFERENCES public.publicservant(email) ON DELETE CASCADE;


--
-- Name: specialize specialize_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT specialize_email_fkey FOREIGN KEY (email) REFERENCES public.doctor(email) ON DELETE CASCADE;


--
-- Name: specialize specialize_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.specialize
    ADD CONSTRAINT specialize_id_fkey FOREIGN KEY (id) REFERENCES public.diseasetype(id) ON DELETE CASCADE;


--
-- Name: users users_cname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cname_fkey FOREIGN KEY (cname) REFERENCES public.country(cname) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

