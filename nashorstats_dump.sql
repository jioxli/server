--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

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
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    aid integer NOT NULL,
    username character varying(255),
    password character varying(255),
    isadmin boolean
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: account_aid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_aid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_aid_seq OWNER TO postgres;

--
-- Name: account_aid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_aid_seq OWNED BY public.account.aid;


--
-- Name: game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game (
    id integer NOT NULL,
    gid integer,
    date date,
    pid integer,
    playername character varying(20),
    tid integer,
    teamname character varying(20),
    side character varying(5),
    "position" character varying(10),
    champion character varying(20),
    result integer,
    kills integer,
    deaths integer,
    assists integer,
    firstdragon integer,
    firstherald integer,
    firsttower integer,
    golddiffat15 integer,
    xpdiffat15 integer,
    gamelength integer
);


ALTER TABLE public.game OWNER TO postgres;

--
-- Name: game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_id_seq OWNER TO postgres;

--
-- Name: game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_id_seq OWNED BY public.game.id;


--
-- Name: player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player (
    pid integer NOT NULL,
    ign character varying(20),
    tid integer,
    team character varying(20),
    "position" character varying(10),
    kda real,
    kp real,
    gd10 integer
);


ALTER TABLE public.player OWNER TO postgres;

--
-- Name: player_pid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.player_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_pid_seq OWNER TO postgres;

--
-- Name: player_pid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.player_pid_seq OWNED BY public.player.pid;


--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    tid integer NOT NULL,
    name character varying(20),
    games integer,
    wins integer,
    losses integer,
    fdragon real,
    fturret real,
    fherald real,
    gd15 integer,
    winrate real
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Name: team_tid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.team_tid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_tid_seq OWNER TO postgres;

--
-- Name: team_tid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.team_tid_seq OWNED BY public.team.tid;


--
-- Name: account aid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account ALTER COLUMN aid SET DEFAULT nextval('public.account_aid_seq'::regclass);


--
-- Name: game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game ALTER COLUMN id SET DEFAULT nextval('public.game_id_seq'::regclass);


--
-- Name: player pid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player ALTER COLUMN pid SET DEFAULT nextval('public.player_pid_seq'::regclass);


--
-- Name: team tid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team ALTER COLUMN tid SET DEFAULT nextval('public.team_tid_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (aid, username, password, isadmin) FROM stdin;
\.


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game (id, gid, date, pid, playername, tid, teamname, side, "position", champion, result, kills, deaths, assists, firstdragon, firstherald, firsttower, golddiffat15, xpdiffat15, gamelength) FROM stdin;
1836	1	2022-06-15	34	Kiin	7	Kwangdong Freecs	Blue	top	Gwen	1	4	2	4	1	1	1	-379	-457	2280
1837	1	2022-06-15	21	Ellim	7	Kwangdong Freecs	Blue	jng	Trundle	1	0	1	7	1	1	1	-550	-501	2280
1838	1	2022-06-15	23	FATE	7	Kwangdong Freecs	Blue	mid	Ahri	1	0	0	8	1	1	1	723	770	2280
1839	1	2022-06-15	56	Teddy	7	Kwangdong Freecs	Blue	bot	Kai'Sa	1	7	0	4	1	1	1	-572	-263	2280
1840	1	2022-06-15	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nautilus	1	1	1	7	1	1	1	131	15	2280
1841	1	2022-06-15	19	DuDu	7	Hanwha Life Esports	Red	top	Kayle	0	2	2	2	0	0	0	379	457	2280
1842	1	2022-06-15	43	OnFleek	5	Hanwha Life Esports	Red	jng	Wukong	0	0	3	2	0	0	0	550	501	2280
1843	1	2022-06-15	31	Karis	5	Hanwha Life Esports	Red	mid	Galio	0	1	2	3	0	0	0	-723	-770	2280
1844	1	2022-06-15	51	SamD	5	Hanwha Life Esports	Red	bot	Ezreal	0	1	1	1	0	0	0	572	263	2280
1845	1	2022-06-15	59	Vsta	5	Hanwha Life Esports	Red	sup	Alistar	0	0	4	1	0	0	0	-131	-15	2280
1846	2	2022-06-15	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	1	4	2	11	1	0	0	936	577	2326
1847	2	2022-06-15	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Viego	1	7	2	8	1	0	0	380	494	2326
1848	2	2022-06-15	31	Karis	5	Hanwha Life Esports	Blue	mid	Swain	1	4	4	11	1	0	0	-1334	185	2326
1849	2	2022-06-15	51	SamD	5	Hanwha Life Esports	Blue	bot	Ezreal	1	5	1	4	1	0	0	-1135	77	2326
1850	2	2022-06-15	59	Vsta	5	Hanwha Life Esports	Blue	sup	Rakan	1	1	2	19	1	0	0	127	-732	2326
1851	2	2022-06-15	34	Kiin	5	Kwangdong Freecs	Red	top	Sejuani	0	3	5	5	0	1	1	-936	-577	2326
1852	2	2022-06-15	21	Ellim	7	Kwangdong Freecs	Red	jng	Wukong	0	1	7	6	0	1	1	-380	-494	2326
1853	2	2022-06-15	23	FATE	7	Kwangdong Freecs	Red	mid	Ahri	0	3	1	6	0	1	1	1334	-185	2326
1854	2	2022-06-15	56	Teddy	7	Kwangdong Freecs	Red	bot	Kai'Sa	0	4	4	4	0	1	1	1135	-77	2326
1855	2	2022-06-15	28	Hoit	7	Kwangdong Freecs	Red	sup	Gragas	0	0	4	7	0	1	1	-127	732	2326
1856	3	2022-06-15	34	Kiin	7	Kwangdong Freecs	Blue	top	Gwen	1	3	0	8	1	1	1	926	223	1906
1857	3	2022-06-15	21	Ellim	7	Kwangdong Freecs	Blue	jng	Nocturne	1	4	0	5	1	1	1	-345	-1336	1906
1858	3	2022-06-15	23	FATE	7	Kwangdong Freecs	Blue	mid	Twisted Fate	1	2	1	9	1	1	1	1638	395	1906
1859	3	2022-06-15	56	Teddy	7	Kwangdong Freecs	Blue	bot	Kai'Sa	1	8	0	5	1	1	1	-446	-695	1906
1860	3	2022-06-15	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nautilus	1	0	2	12	1	1	1	-102	192	1906
1861	3	2022-06-15	19	DuDu	7	Hanwha Life Esports	Red	top	Gnar	0	0	4	1	0	0	0	-926	-223	1906
1862	3	2022-06-15	43	OnFleek	5	Hanwha Life Esports	Red	jng	Wukong	0	1	3	0	0	0	0	345	1336	1906
1863	3	2022-06-15	31	Karis	5	Hanwha Life Esports	Red	mid	Sylas	0	1	4	1	0	0	0	-1638	-395	1906
1864	3	2022-06-15	51	SamD	5	Hanwha Life Esports	Red	bot	Ezreal	0	0	4	2	0	0	0	446	695	1906
1865	3	2022-06-15	59	Vsta	5	Hanwha Life Esports	Red	sup	Rakan	0	1	2	2	0	0	0	102	-192	1906
1866	4	2022-06-15	6	Canna	5	Nongshim RedForce	Blue	top	Gangplank	0	2	2	10	1	0	0	-781	-522	2804
1867	4	2022-06-15	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	2	3	12	1	0	0	-333	-448	2804
1868	4	2022-06-15	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	0	7	2	6	1	0	0	-18	29	2804
1869	4	2022-06-15	25	Ghost	9	Nongshim RedForce	Blue	bot	Draven	0	5	5	4	1	0	0	122	-579	2804
1870	4	2022-06-15	20	Effort	9	Nongshim RedForce	Blue	sup	Braum	0	0	5	14	1	0	0	-187	-538	2804
1871	4	2022-06-15	35	Kingen	9	DRX	Red	top	Kayle	1	2	3	12	0	1	1	781	522	2804
1872	4	2022-06-15	47	Pyosik	1	DRX	Red	jng	Viego	1	7	2	3	0	1	1	333	448	2804
1873	4	2022-06-15	61	Zeka	1	DRX	Red	mid	Akali	1	3	3	8	0	1	1	18	-29	2804
1874	4	2022-06-15	13	Deft	1	DRX	Red	bot	Xayah	1	5	3	10	0	1	1	-122	579	2804
1875	4	2022-06-15	4	BeryL	1	DRX	Red	sup	Leona	1	0	5	12	0	1	1	187	538	2804
1876	5	2022-06-15	6	Canna	1	Nongshim RedForce	Blue	top	Sion	0	0	4	8	0	0	1	407	458	2500
1877	5	2022-06-15	18	Dread	9	Nongshim RedForce	Blue	jng	Trundle	0	4	1	8	0	0	1	173	-1101	2500
1878	5	2022-06-15	3	Bdd	9	Nongshim RedForce	Blue	mid	Corki	0	4	6	6	0	0	1	80	446	2500
1879	5	2022-06-15	25	Ghost	9	Nongshim RedForce	Blue	bot	Lucian	0	7	2	7	0	0	1	1917	1234	2500
1880	5	2022-06-15	20	Effort	9	Nongshim RedForce	Blue	sup	Nami	0	1	4	14	0	0	1	-425	-353	2500
1881	5	2022-06-15	35	Kingen	9	DRX	Red	top	Ornn	1	0	1	12	1	1	0	-407	-458	2500
1882	5	2022-06-15	47	Pyosik	1	DRX	Red	jng	Kindred	1	5	3	6	1	1	0	-173	1101	2500
1883	5	2022-06-15	61	Zeka	1	DRX	Red	mid	Azir	1	9	3	6	1	1	0	-80	-446	2500
1884	5	2022-06-15	13	Deft	1	DRX	Red	bot	Senna	1	2	4	13	1	1	0	-1917	-1234	2500
1885	5	2022-06-15	4	BeryL	1	DRX	Red	sup	Tahm Kench	1	1	5	8	1	1	0	425	353	2500
1886	6	2022-06-16	49	Rascal	1	KT Rolster	Blue	top	Gnar	0	0	3	1	1	0	0	-999	868	1966
1887	6	2022-06-16	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	0	1	1	4	1	0	0	-1218	-909	1966
1888	6	2022-06-16	2	Aria	6	KT Rolster	Blue	mid	Galio	0	1	3	2	1	0	0	-1273	-374	1966
1889	6	2022-06-16	1	Aiming	6	KT Rolster	Blue	bot	Jinx	0	2	2	4	1	0	0	1820	1604	1966
1890	6	2022-06-16	38	Life	6	KT Rolster	Blue	sup	Tahm Kench	0	2	3	3	1	0	0	-736	-1782	1966
1891	6	2022-06-16	16	Doran	6	Gen.G	Red	top	Gangplank	1	4	2	5	0	1	1	999	-868	1966
1892	6	2022-06-16	44	Peanut	4	Gen.G	Red	jng	Viego	1	3	1	3	0	1	1	1218	909	1966
1893	6	2022-06-16	9	Chovy	4	Gen.G	Red	mid	Azir	1	1	0	9	0	1	1	1273	374	1966
1894	6	2022-06-16	50	Ruler	4	Gen.G	Red	bot	Senna	1	4	1	7	0	1	1	-1820	-1604	1966
1895	6	2022-06-16	37	Lehends	4	Gen.G	Red	sup	Singed	1	0	2	9	0	1	1	736	1782	1966
1896	7	2022-06-16	49	Rascal	4	KT Rolster	Blue	top	Sejuani	0	1	3	1	1	1	1	-211	-678	2092
1897	7	2022-06-16	12	Cuzz	6	KT Rolster	Blue	jng	Viego	0	1	2	2	1	1	1	579	630	2092
1898	7	2022-06-16	2	Aria	6	KT Rolster	Blue	mid	Lissandra	0	1	3	2	1	1	1	-1301	-703	2092
1899	7	2022-06-16	1	Aiming	6	KT Rolster	Blue	bot	Ezreal	0	2	2	1	1	1	1	677	-108	2092
1900	7	2022-06-16	38	Life	6	KT Rolster	Blue	sup	Tahm Kench	0	0	3	2	1	1	1	275	-130	2092
1901	7	2022-06-16	16	Doran	6	Gen.G	Red	top	Gnar	1	1	3	5	0	0	0	211	678	2092
1902	7	2022-06-16	44	Peanut	4	Gen.G	Red	jng	Wukong	1	3	2	7	0	0	0	-579	-630	2092
1903	7	2022-06-16	9	Chovy	4	Gen.G	Red	mid	Corki	1	4	0	6	0	0	0	1301	703	2092
1904	7	2022-06-16	50	Ruler	4	Gen.G	Red	bot	Kai'Sa	1	4	0	3	0	0	0	-677	108	2092
1905	7	2022-06-16	37	Lehends	4	Gen.G	Red	sup	Rakan	1	1	0	10	0	0	0	-275	130	2092
1906	8	2022-06-16	40	Morgan	4	Fredit BRION	Blue	top	Ornn	0	0	1	0	0	1	0	476	-124	2136
1907	8	2022-06-16	57	UmTi	3	Fredit BRION	Blue	jng	Viego	0	0	0	0	0	1	0	448	617	2136
1908	8	2022-06-16	36	Lava	3	Fredit BRION	Blue	mid	Orianna	0	0	1	0	0	1	0	-382	-462	2136
1909	8	2022-06-16	27	Hena	3	Fredit BRION	Blue	bot	Kalista	0	0	1	0	0	1	0	-1145	-745	2136
1910	8	2022-06-16	14	Delight	3	Fredit BRION	Blue	sup	Renata Glasc	0	0	0	0	0	1	0	-766	19	2136
1911	8	2022-06-16	41	Nuguri	3	DWG KIA	Red	top	Sejuani	1	1	0	1	1	0	1	-476	124	2136
1912	8	2022-06-16	7	Canyon	2	DWG KIA	Red	jng	Wukong	1	0	0	2	1	0	1	-448	-617	2136
1913	8	2022-06-16	52	ShowMaker	2	DWG KIA	Red	mid	Viktor	1	2	0	0	1	0	1	382	462	2136
1914	8	2022-06-16	15	deokdam	2	DWG KIA	Red	bot	Ezreal	1	0	0	2	1	0	1	1145	745	2136
1915	8	2022-06-16	32	Kellin	2	DWG KIA	Red	sup	Karma	1	0	0	2	1	0	1	766	-19	2136
1916	9	2022-06-16	40	Morgan	2	Fredit BRION	Blue	top	Camille	0	2	2	9	1	0	0	-1780	-554	2490
1917	9	2022-06-16	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	1	3	8	1	0	0	-1682	-1643	2490
1918	9	2022-06-16	36	Lava	3	Fredit BRION	Blue	mid	Galio	0	1	4	11	1	0	0	-579	-275	2490
1919	9	2022-06-16	27	Hena	3	Fredit BRION	Blue	bot	Kai'Sa	0	10	4	1	1	0	0	-1157	-469	2490
1920	9	2022-06-16	14	Delight	3	Fredit BRION	Blue	sup	Nautilus	0	0	3	13	1	0	0	-124	-342	2490
1921	9	2022-06-16	41	Nuguri	3	DWG KIA	Red	top	Gnar	1	1	2	10	0	1	1	1780	554	2490
1922	9	2022-06-16	7	Canyon	2	DWG KIA	Red	jng	Lillia	1	2	4	9	0	1	1	1682	1643	2490
1923	9	2022-06-16	52	ShowMaker	2	DWG KIA	Red	mid	Aatrox	1	4	2	9	0	1	1	579	275	2490
1924	9	2022-06-16	15	deokdam	2	DWG KIA	Red	bot	Ezreal	1	7	3	4	0	1	1	1157	469	2490
1925	9	2022-06-16	32	Kellin	2	DWG KIA	Red	sup	Rakan	1	2	3	13	0	1	1	124	342	2490
1926	10	2022-06-17	17	Dove	2	Liiv SANDBOX	Blue	top	Gnar	1	1	2	3	0	1	0	-419	-55	2200
1927	10	2022-06-17	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	1	6	4	5	0	1	0	-6	-169	2200
1928	10	2022-06-17	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	4	1	5	0	1	0	-1404	-738	2200
1929	10	2022-06-17	46	Prince	8	Liiv SANDBOX	Blue	bot	Zeri	1	3	0	9	0	1	0	-298	-281	2200
1930	10	2022-06-17	30	Kael	8	Liiv SANDBOX	Blue	sup	Renata Glasc	1	0	0	9	0	1	0	-178	-901	2200
1931	10	2022-06-17	34	Kiin	8	Kwangdong Freecs	Red	top	Sejuani	0	0	3	4	1	0	1	419	55	2200
1932	10	2022-06-17	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	0	1	1	5	1	0	1	6	169	2200
1933	10	2022-06-17	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	0	3	4	3	1	0	1	1404	738	2200
1934	10	2022-06-17	56	Teddy	7	Kwangdong Freecs	Red	bot	Caitlyn	0	2	3	4	1	0	1	298	281	2200
1935	10	2022-06-17	28	Hoit	7	Kwangdong Freecs	Red	sup	Karma	0	1	3	4	1	0	1	178	901	2200
1936	11	2022-06-17	34	Kiin	7	Kwangdong Freecs	Blue	top	Gangplank	0	3	3	1	0	1	0	1483	742	1990
1937	11	2022-06-17	21	Ellim	7	Kwangdong Freecs	Blue	jng	Viego	0	2	6	2	0	1	0	708	950	1990
1938	11	2022-06-17	23	FATE	7	Kwangdong Freecs	Blue	mid	LeBlanc	0	0	1	2	0	1	0	56	-378	1990
1939	11	2022-06-17	56	Teddy	7	Kwangdong Freecs	Blue	bot	Ezreal	0	1	2	1	0	1	0	-1277	-830	1990
1940	11	2022-06-17	28	Hoit	7	Kwangdong Freecs	Blue	sup	Rakan	0	0	5	1	0	1	0	392	388	1990
1941	11	2022-06-17	17	Dove	7	Liiv SANDBOX	Red	top	Sejuani	1	4	1	7	1	0	1	-1483	-742	1990
1942	11	2022-06-17	11	Croco	8	Liiv SANDBOX	Red	jng	Trundle	1	4	2	10	1	0	1	-708	-950	1990
1943	11	2022-06-17	10	Clozer	8	Liiv SANDBOX	Red	mid	Ahri	1	2	1	8	1	0	1	-56	378	1990
1944	11	2022-06-17	46	Prince	8	Liiv SANDBOX	Red	bot	Kai'Sa	1	7	0	4	1	0	1	1277	830	1990
1945	11	2022-06-17	30	Kael	8	Liiv SANDBOX	Red	sup	Nautilus	1	0	2	10	1	0	1	-392	-388	1990
1946	12	2022-06-17	62	Zeus	8	T1	Blue	top	Gangplank	1	2	0	12	0	1	1	1505	739	2289
1947	12	2022-06-17	42	Oner	10	T1	Blue	jng	Wukong	1	3	0	10	0	1	1	568	21	2289
1948	12	2022-06-17	22	Faker	10	T1	Blue	mid	Akali	1	6	0	2	0	1	1	-42	-472	2289
1949	12	2022-06-17	26	Gumayusi	10	T1	Blue	bot	Senna	1	2	0	13	0	1	1	-1333	-2283	2289
1950	12	2022-06-17	33	Keria	10	T1	Blue	sup	Yasuo	1	3	1	7	0	1	1	2033	2346	2289
1951	12	2022-06-17	6	Canna	10	Nongshim RedForce	Red	top	Sejuani	0	0	4	1	1	0	0	-1505	-739	2289
1952	12	2022-06-17	18	Dread	9	Nongshim RedForce	Red	jng	Viego	0	1	3	0	1	0	0	-568	-21	2289
1953	12	2022-06-17	3	Bdd	9	Nongshim RedForce	Red	mid	Viktor	0	0	3	1	1	0	0	42	472	2289
1954	12	2022-06-17	25	Ghost	9	Nongshim RedForce	Red	bot	Xayah	0	0	1	0	1	0	0	1333	2283	2289
1955	12	2022-06-17	20	Effort	9	Nongshim RedForce	Red	sup	Alistar	0	0	5	0	1	0	0	-2033	-2346	2289
1956	13	2022-06-17	6	Canna	9	Nongshim RedForce	Blue	top	Gnar	0	10	3	2	1	0	0	-1170	778	2788
1957	13	2022-06-17	18	Dread	9	Nongshim RedForce	Blue	jng	Taliyah	0	5	3	8	1	0	0	1259	925	2788
1958	13	2022-06-17	3	Bdd	9	Nongshim RedForce	Blue	mid	Corki	0	5	3	8	1	0	0	-527	-549	2788
1959	13	2022-06-17	25	Ghost	9	Nongshim RedForce	Blue	bot	Senna	0	3	6	11	1	0	0	-1526	-1974	2788
1960	13	2022-06-17	20	Effort	9	Nongshim RedForce	Blue	sup	Tahm Kench	0	2	4	8	1	0	0	1394	2070	2788
1961	13	2022-06-17	62	Zeus	9	T1	Red	top	Gangplank	1	4	6	8	0	1	1	1170	-778	2788
1962	13	2022-06-17	42	Oner	10	T1	Red	jng	Viego	1	2	4	6	0	1	1	-1259	-925	2788
1963	13	2022-06-17	22	Faker	10	T1	Red	mid	Azir	1	3	5	3	0	1	1	527	549	2788
1964	13	2022-06-17	26	Gumayusi	10	T1	Red	bot	Ezreal	1	10	5	2	0	1	1	1526	1974	2788
1965	13	2022-06-17	33	Keria	10	T1	Red	sup	Bard	1	0	5	8	0	1	1	-1394	-2070	2788
1966	14	2022-06-18	16	Doran	10	Gen.G	Blue	top	Akali	1	4	2	3	1	1	1	-848	-857	1423
1967	14	2022-06-18	44	Peanut	4	Gen.G	Blue	jng	Wukong	1	4	1	7	1	1	1	1128	144	1423
1968	14	2022-06-18	9	Chovy	4	Gen.G	Blue	mid	Azir	1	3	0	7	1	1	1	1006	344	1423
1969	14	2022-06-18	50	Ruler	4	Gen.G	Blue	bot	Jinx	1	5	0	3	1	1	1	2974	1551	1423
1970	14	2022-06-18	37	Lehends	4	Gen.G	Blue	sup	Tahm Kench	1	0	1	7	1	1	1	-1218	-937	1423
1971	14	2022-06-18	19	DuDu	4	Hanwha Life Esports	Red	top	Gwen	0	1	3	2	0	0	0	848	857	1423
1972	14	2022-06-18	43	OnFleek	5	Hanwha Life Esports	Red	jng	Vi	0	1	5	1	0	0	0	-1128	-144	1423
1973	14	2022-06-18	31	Karis	5	Hanwha Life Esports	Red	mid	Viktor	0	2	2	1	0	0	0	-1006	-344	1423
1974	14	2022-06-18	51	SamD	5	Hanwha Life Esports	Red	bot	Senna	0	0	3	1	0	0	0	-2974	-1551	1423
1975	14	2022-06-18	59	Vsta	5	Hanwha Life Esports	Red	sup	Sett	0	0	3	1	0	0	0	1218	937	1423
1976	15	2022-06-18	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	0	1	5	0	0	1	1	53	-376	1835
1977	15	2022-06-18	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	0	1	2	3	0	1	1	-864	-787	1835
1978	15	2022-06-18	31	Karis	5	Hanwha Life Esports	Blue	mid	Viktor	0	1	5	2	0	1	1	-1514	-819	1835
1979	15	2022-06-18	51	SamD	5	Hanwha Life Esports	Blue	bot	Ezreal	0	0	2	1	0	1	1	-12	701	1835
1980	15	2022-06-18	59	Vsta	5	Hanwha Life Esports	Blue	sup	Karma	0	1	4	3	0	1	1	-1309	-2864	1835
1981	15	2022-06-18	16	Doran	5	Gen.G	Red	top	Sejuani	1	1	2	9	1	0	0	-53	376	1835
1982	15	2022-06-18	44	Peanut	4	Gen.G	Red	jng	Viego	1	7	0	7	1	0	0	864	787	1835
1983	15	2022-06-18	9	Chovy	4	Gen.G	Red	mid	Azir	1	6	0	3	1	0	0	1514	819	1835
1984	15	2022-06-18	50	Ruler	4	Gen.G	Red	bot	Senna	1	3	1	8	1	0	0	12	-701	1835
1985	15	2022-06-18	37	Lehends	4	Gen.G	Red	sup	Tahm Kench	1	1	1	8	1	0	0	1309	2864	1835
1986	16	2022-06-18	35	Kingen	4	DRX	Blue	top	Gnar	1	1	1	4	0	0	1	653	483	2438
1987	16	2022-06-18	47	Pyosik	1	DRX	Blue	jng	Trundle	1	1	0	6	0	0	1	6	198	2438
1988	16	2022-06-18	61	Zeka	1	DRX	Blue	mid	Corki	1	5	0	5	0	0	1	242	286	2438
1989	16	2022-06-18	13	Deft	1	DRX	Blue	bot	Ezreal	1	3	3	2	0	0	1	915	333	2438
1990	16	2022-06-18	4	BeryL	1	DRX	Blue	sup	Braum	1	0	1	7	0	0	1	688	1169	2438
1991	16	2022-06-18	40	Morgan	1	Fredit BRION	Red	top	Gangplank	0	0	1	3	1	1	0	-653	-483	2438
1992	16	2022-06-18	57	UmTi	3	Fredit BRION	Red	jng	Wukong	0	2	3	1	1	1	0	-6	-198	2438
1993	16	2022-06-18	36	Lava	3	Fredit BRION	Red	mid	Orianna	0	1	2	1	1	1	0	-242	-286	2438
1994	16	2022-06-18	27	Hena	3	Fredit BRION	Red	bot	Kalista	0	1	2	3	1	1	0	-915	-333	2438
1995	16	2022-06-18	14	Delight	3	Fredit BRION	Red	sup	Nautilus	0	0	2	3	1	1	0	-688	-1169	2438
1996	17	2022-06-18	40	Morgan	3	Fredit BRION	Blue	top	Sion	0	1	1	2	0	0	0	284	6	2402
1997	17	2022-06-18	57	UmTi	3	Fredit BRION	Blue	jng	Viego	0	1	3	4	0	0	0	-285	202	2402
1998	17	2022-06-18	36	Lava	3	Fredit BRION	Blue	mid	Corki	0	1	3	3	0	0	0	-208	-276	2402
1999	17	2022-06-18	27	Hena	3	Fredit BRION	Blue	bot	Aphelios	0	2	2	2	0	0	0	-625	-548	2402
2000	17	2022-06-18	14	Delight	3	Fredit BRION	Blue	sup	Renata Glasc	0	0	2	5	0	0	0	-556	-682	2402
2001	17	2022-06-18	35	Kingen	3	DRX	Red	top	Ornn	1	1	0	7	1	1	1	-284	-6	2402
2002	17	2022-06-18	47	Pyosik	1	DRX	Red	jng	Wukong	1	4	1	2	1	1	1	285	-202	2402
2003	17	2022-06-18	61	Zeka	1	DRX	Red	mid	Ahri	1	4	1	7	1	1	1	208	276	2402
2004	17	2022-06-18	13	Deft	1	DRX	Red	bot	Kalista	1	1	1	7	1	1	1	625	548	2402
2005	17	2022-06-18	4	BeryL	1	DRX	Red	sup	Rell	1	1	2	8	1	1	1	556	682	2402
2006	18	2022-06-19	49	Rascal	1	KT Rolster	Blue	top	Sejuani	1	4	1	10	0	1	0	-1751	-546	1916
2007	18	2022-06-19	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	1	4	0	13	0	1	0	176	-538	1916
2008	18	2022-06-19	2	Aria	6	KT Rolster	Blue	mid	Azir	1	6	2	9	0	1	0	1020	297	1916
2009	18	2022-06-19	1	Aiming	6	KT Rolster	Blue	bot	Ezreal	1	4	1	8	0	1	0	95	504	1916
2010	18	2022-06-19	38	Life	6	KT Rolster	Blue	sup	Tahm Kench	1	0	0	13	0	1	0	-21	-357	1916
2011	18	2022-06-19	62	Zeus	6	T1	Red	top	Gnar	0	2	3	2	1	0	1	1751	546	1916
2012	18	2022-06-19	42	Oner	10	T1	Red	jng	Diana	0	1	4	1	1	0	1	-176	538	1916
2013	18	2022-06-19	22	Faker	10	T1	Red	mid	Kassadin	0	1	4	1	1	0	1	-1020	-297	1916
2014	18	2022-06-19	26	Gumayusi	10	T1	Red	bot	Kalista	0	0	4	0	1	0	1	-95	-504	1916
2015	18	2022-06-19	33	Keria	10	T1	Red	sup	Camille	0	0	3	1	1	0	1	21	357	1916
2016	19	2022-06-19	62	Zeus	10	T1	Blue	top	Gangplank	1	3	5	3	0	0	0	-546	-382	1839
2017	19	2022-06-19	42	Oner	10	T1	Blue	jng	Viego	1	1	1	6	0	0	0	-951	266	1839
2018	19	2022-06-19	22	Faker	10	T1	Blue	mid	Corki	1	1	0	7	0	0	0	10	-388	1839
2019	19	2022-06-19	26	Gumayusi	10	T1	Blue	bot	Jinx	1	6	1	4	0	0	0	-106	-641	1839
2020	19	2022-06-19	33	Keria	10	T1	Blue	sup	Tahm Kench	1	0	0	9	0	0	0	191	168	1839
2021	19	2022-06-19	49	Rascal	10	KT Rolster	Red	top	Gnar	0	1	1	2	1	1	1	546	382	1839
2022	19	2022-06-19	12	Cuzz	6	KT Rolster	Red	jng	Wukong	0	4	2	3	1	1	1	951	-266	1839
2023	19	2022-06-19	2	Aria	6	KT Rolster	Red	mid	Ahri	0	1	2	2	1	1	1	-10	388	1839
2024	19	2022-06-19	1	Aiming	6	KT Rolster	Red	bot	Kalista	0	1	3	2	1	1	1	106	641	1839
2025	19	2022-06-19	38	Life	6	KT Rolster	Red	sup	Jarvan IV	0	0	3	4	1	1	1	-191	-168	1839
2026	20	2022-06-19	49	Rascal	6	KT Rolster	Blue	top	Sejuani	0	0	4	13	0	1	0	-2667	-1400	2660
2027	20	2022-06-19	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	0	6	4	10	0	1	0	-571	-577	2660
2028	20	2022-06-19	2	Aria	6	KT Rolster	Blue	mid	Ahri	0	7	2	6	0	1	0	-785	-442	2660
2029	20	2022-06-19	1	Aiming	6	KT Rolster	Blue	bot	Kai'Sa	0	4	3	9	0	1	0	108	474	2660
2030	20	2022-06-19	38	Life	6	KT Rolster	Blue	sup	Nautilus	0	2	5	10	0	1	0	-137	30	2660
2031	20	2022-06-19	62	Zeus	6	T1	Red	top	Gnar	1	4	5	8	1	0	1	2667	1400	2660
2032	20	2022-06-19	42	Oner	10	T1	Red	jng	Viego	1	8	3	7	1	0	1	571	577	2660
2033	20	2022-06-19	22	Faker	10	T1	Red	mid	Corki	1	0	3	11	1	0	1	785	442	2660
2034	20	2022-06-19	26	Gumayusi	10	T1	Red	bot	Xayah	1	6	1	5	1	0	1	-108	-474	2660
2035	20	2022-06-19	33	Keria	10	T1	Red	sup	Braum	1	0	7	13	1	0	1	137	-30	2660
2036	21	2022-06-19	41	Nuguri	10	DWG KIA	Blue	top	Gangplank	1	3	0	13	0	0	0	606	640	1681
2037	21	2022-06-19	7	Canyon	2	DWG KIA	Blue	jng	Graves	1	5	2	9	0	0	0	240	626	1681
2038	21	2022-06-19	52	ShowMaker	2	DWG KIA	Blue	mid	Twisted Fate	1	4	1	6	0	0	0	999	452	1681
2039	21	2022-06-19	15	deokdam	2	DWG KIA	Blue	bot	Ezreal	1	5	1	7	0	0	0	25	-393	1681
2040	21	2022-06-19	32	Kellin	2	DWG KIA	Blue	sup	Rakan	1	0	1	13	0	0	0	240	559	1681
2041	21	2022-06-19	17	Dove	2	Liiv SANDBOX	Red	top	Sejuani	0	2	3	3	1	1	1	-606	-640	1681
2042	21	2022-06-19	11	Croco	8	Liiv SANDBOX	Red	jng	Lee Sin	0	0	2	3	1	1	1	-240	-626	1681
2043	21	2022-06-19	10	Clozer	8	Liiv SANDBOX	Red	mid	Sylas	0	3	5	2	1	1	1	-999	-452	1681
2044	21	2022-06-19	46	Prince	8	Liiv SANDBOX	Red	bot	Kalista	0	0	4	3	1	1	1	-25	393	1681
2045	21	2022-06-19	30	Kael	8	Liiv SANDBOX	Red	sup	Rell	0	0	3	5	1	1	1	-240	-559	1681
2046	22	2022-06-19	17	Dove	8	Liiv SANDBOX	Blue	top	Sejuani	0	1	2	0	1	0	0	-1083	-619	1645
2047	22	2022-06-19	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	0	1	3	2	1	0	0	362	139	1645
2048	22	2022-06-19	10	Clozer	8	Liiv SANDBOX	Blue	mid	Sylas	0	0	3	1	1	0	0	-830	-413	1645
2049	22	2022-06-19	46	Prince	8	Liiv SANDBOX	Blue	bot	Ezreal	0	1	2	0	1	0	0	371	817	1645
2050	22	2022-06-19	30	Kael	8	Liiv SANDBOX	Blue	sup	Braum	0	0	2	3	1	0	0	47	-144	1645
2051	22	2022-06-19	41	Nuguri	8	DWG KIA	Red	top	Aatrox	1	3	0	7	0	1	1	1083	619	1645
2052	22	2022-06-19	7	Canyon	2	DWG KIA	Red	jng	Poppy	1	0	1	11	0	1	1	-362	-139	1645
2053	22	2022-06-19	52	ShowMaker	2	DWG KIA	Red	mid	Twisted Fate	1	2	0	9	0	1	1	830	413	1645
2054	22	2022-06-19	15	deokdam	2	DWG KIA	Red	bot	Kai'Sa	1	5	1	7	0	1	1	-371	-817	1645
2055	22	2022-06-19	32	Kellin	2	DWG KIA	Red	sup	Renata Glasc	1	1	1	11	0	1	1	-47	144	1645
2056	23	2022-06-22	16	Doran	2	Gen.G	Blue	top	Gangplank	1	1	3	5	1	1	1	-298	-488	1801
2057	23	2022-06-22	44	Peanut	4	Gen.G	Blue	jng	Viego	1	2	2	1	1	1	1	-263	-395	1801
2058	23	2022-06-22	9	Chovy	4	Gen.G	Blue	mid	Ahri	1	0	1	3	1	1	1	107	-318	1801
2059	23	2022-06-22	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	7	0	1	1	1	1	742	1166	1801
2060	23	2022-06-22	37	Lehends	4	Gen.G	Blue	sup	Singed	1	0	3	6	1	1	1	53	-822	1801
2061	23	2022-06-22	41	Nuguri	4	DWG KIA	Red	top	Sejuani	0	2	2	4	0	0	0	298	488	1801
2062	23	2022-06-22	7	Canyon	2	DWG KIA	Red	jng	Qiyana	0	0	3	5	0	0	0	263	395	1801
2063	23	2022-06-22	52	ShowMaker	2	DWG KIA	Red	mid	Corki	0	3	1	4	0	0	0	-107	318	1801
2064	23	2022-06-22	15	deokdam	2	DWG KIA	Red	bot	Xayah	0	3	3	5	0	0	0	-742	-1166	1801
2065	23	2022-06-22	32	Kellin	2	DWG KIA	Red	sup	Yuumi	0	1	1	7	0	0	0	-53	822	1801
2066	24	2022-06-22	41	Nuguri	2	DWG KIA	Blue	top	Gragas	1	1	5	4	0	1	1	559	470	1959
2067	24	2022-06-22	7	Canyon	2	DWG KIA	Blue	jng	Wukong	1	2	1	6	0	1	1	-465	-857	1959
2068	24	2022-06-22	52	ShowMaker	2	DWG KIA	Blue	mid	Sylas	1	1	0	4	0	1	1	-853	-270	1959
2069	24	2022-06-22	15	deokdam	2	DWG KIA	Blue	bot	Ezreal	1	5	1	4	0	1	1	-1237	-1209	1959
2070	24	2022-06-22	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	1	1	1	8	0	1	1	618	-369	1959
2071	24	2022-06-22	16	Doran	2	Gen.G	Red	top	Gnar	0	2	3	4	1	0	0	-559	-470	1959
2072	24	2022-06-22	44	Peanut	4	Gen.G	Red	jng	Trundle	0	3	2	4	1	0	0	465	857	1959
2073	24	2022-06-22	9	Chovy	4	Gen.G	Red	mid	Corki	0	1	1	4	1	0	0	853	270	1959
2074	24	2022-06-22	50	Ruler	4	Gen.G	Red	bot	Zeri	0	2	1	2	1	0	0	1237	1209	1959
2075	24	2022-06-22	37	Lehends	4	Gen.G	Red	sup	Nautilus	0	0	3	2	1	0	0	-618	369	1959
2076	25	2022-06-22	16	Doran	4	Gen.G	Blue	top	Gangplank	1	8	1	5	1	0	1	279	564	1772
2077	25	2022-06-22	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	1	0	11	1	0	1	116	718	1772
2078	25	2022-06-22	9	Chovy	4	Gen.G	Blue	mid	Corki	1	6	1	7	1	0	1	2122	806	1772
2079	25	2022-06-22	50	Ruler	4	Gen.G	Blue	bot	Senna	1	2	1	11	1	0	1	-1139	-1641	1772
2080	25	2022-06-22	37	Lehends	4	Gen.G	Blue	sup	Singed	1	1	1	9	1	0	1	740	2606	1772
2081	25	2022-06-22	41	Nuguri	4	DWG KIA	Red	top	Gnar	0	1	3	0	0	1	0	-279	-564	1772
2082	25	2022-06-22	7	Canyon	2	DWG KIA	Red	jng	Volibear	0	1	3	1	0	1	0	-116	-718	1772
2083	25	2022-06-22	52	ShowMaker	2	DWG KIA	Red	mid	Ahri	0	1	4	1	0	1	0	-2122	-806	1772
2084	25	2022-06-22	15	deokdam	2	DWG KIA	Red	bot	Kai'Sa	0	1	4	3	0	1	0	1139	1641	1772
2085	25	2022-06-22	32	Kellin	2	DWG KIA	Red	sup	Renata Glasc	0	0	4	2	0	1	0	-740	-2606	1772
2086	26	2022-06-22	40	Morgan	2	Fredit BRION	Blue	top	Kayle	0	3	2	1	1	0	0	-789	-350	2144
2087	26	2022-06-22	57	UmTi	3	Fredit BRION	Blue	jng	Graves	0	0	1	5	1	0	0	-860	-1110	2144
2088	26	2022-06-22	36	Lava	3	Fredit BRION	Blue	mid	Ahri	0	1	1	3	1	0	0	229	99	2144
2089	26	2022-06-22	27	Hena	3	Fredit BRION	Blue	bot	Xayah	0	1	1	4	1	0	0	1789	2842	2144
2090	26	2022-06-22	14	Delight	3	Fredit BRION	Blue	sup	Rakan	0	0	2	2	1	0	0	-1107	-2239	2144
2091	26	2022-06-22	49	Rascal	3	KT Rolster	Red	top	Gwen	1	4	1	1	0	1	1	789	350	2144
2092	26	2022-06-22	12	Cuzz	6	KT Rolster	Red	jng	Viego	1	1	1	2	0	1	1	860	1110	2144
2093	26	2022-06-22	2	Aria	6	KT Rolster	Red	mid	Lissandra	1	2	1	5	0	1	1	-229	-99	2144
2094	26	2022-06-22	1	Aiming	6	KT Rolster	Red	bot	Senna	1	0	0	7	0	1	1	-1789	-2842	2144
2095	26	2022-06-22	38	Life	6	KT Rolster	Red	sup	Ornn	1	0	2	7	0	1	1	1107	2239	2144
2096	27	2022-06-22	40	Morgan	6	Fredit BRION	Blue	top	Ornn	0	1	2	6	0	0	0	-322	398	2084
2097	27	2022-06-22	57	UmTi	3	Fredit BRION	Blue	jng	Graves	0	2	2	3	0	0	0	-483	352	2084
2098	27	2022-06-22	36	Lava	3	Fredit BRION	Blue	mid	Ahri	0	2	1	4	0	0	0	-455	-416	2084
2099	27	2022-06-22	27	Hena	3	Fredit BRION	Blue	bot	Xayah	0	2	2	3	0	0	0	-869	-203	2084
2100	27	2022-06-22	14	Delight	3	Fredit BRION	Blue	sup	Rakan	0	0	2	6	0	0	0	-591	-270	2084
2101	27	2022-06-22	49	Rascal	3	KT Rolster	Red	top	Gangplank	1	4	3	2	1	1	1	322	-398	2084
2102	27	2022-06-22	12	Cuzz	6	KT Rolster	Red	jng	Viego	1	2	1	4	1	1	1	483	-352	2084
2103	27	2022-06-22	2	Aria	6	KT Rolster	Red	mid	Lissandra	1	0	1	6	1	1	1	455	416	2084
2104	27	2022-06-22	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	2	1	3	1	1	1	869	203	2084
2105	27	2022-06-22	38	Life	6	KT Rolster	Red	sup	Tahm Kench	1	1	1	8	1	1	1	591	270	2084
2106	28	2022-06-23	34	Kiin	6	Kwangdong Freecs	Blue	top	Gnar	0	2	5	6	0	0	0	-135	-381	2721
2107	28	2022-06-23	21	Ellim	7	Kwangdong Freecs	Blue	jng	Volibear	0	0	4	11	0	0	0	-1138	-723	2721
2108	28	2022-06-23	23	FATE	7	Kwangdong Freecs	Blue	mid	Ahri	0	4	2	7	0	0	0	-505	-161	2721
2109	28	2022-06-23	56	Teddy	7	Kwangdong Freecs	Blue	bot	Ezreal	0	7	3	5	0	0	0	-517	-48	2721
2110	28	2022-06-23	39	Moham	7	Kwangdong Freecs	Blue	sup	Nautilus	0	1	6	5	0	0	0	-194	-58	2721
2111	28	2022-06-23	6	Canna	7	Nongshim RedForce	Red	top	Gwen	1	8	2	7	1	1	1	135	381	2721
2112	28	2022-06-23	18	Dread	9	Nongshim RedForce	Red	jng	Wukong	1	3	2	8	1	1	1	1138	723	2721
2113	28	2022-06-23	3	Bdd	9	Nongshim RedForce	Red	mid	Lissandra	1	1	4	12	1	1	1	505	161	2721
2114	28	2022-06-23	25	Ghost	9	Nongshim RedForce	Red	bot	Kai'Sa	1	8	2	8	1	1	1	517	48	2721
2115	28	2022-06-23	20	Effort	9	Nongshim RedForce	Red	sup	Rakan	1	0	4	12	1	1	1	194	58	2721
2116	29	2022-06-23	34	Kiin	9	Kwangdong Freecs	Blue	top	Kayle	0	3	4	2	0	0	0	-916	-601	1993
2117	29	2022-06-23	21	Ellim	7	Kwangdong Freecs	Blue	jng	Volibear	0	1	3	4	0	0	0	-971	-1519	1993
2118	29	2022-06-23	23	FATE	7	Kwangdong Freecs	Blue	mid	Ahri	0	1	1	2	0	0	0	-526	327	1993
2119	29	2022-06-23	56	Teddy	7	Kwangdong Freecs	Blue	bot	Ezreal	0	3	3	3	0	0	0	602	-574	1993
2120	29	2022-06-23	39	Moham	7	Kwangdong Freecs	Blue	sup	Tahm Kench	0	0	4	2	0	0	0	196	-106	1993
2121	29	2022-06-23	6	Canna	7	Nongshim RedForce	Red	top	Gwen	1	3	0	8	1	1	1	916	601	1993
2122	29	2022-06-23	18	Dread	9	Nongshim RedForce	Red	jng	Viego	1	3	1	11	1	1	1	971	1519	1993
2123	29	2022-06-23	3	Bdd	9	Nongshim RedForce	Red	mid	Lissandra	1	2	1	9	1	1	1	526	-327	1993
2124	29	2022-06-23	25	Ghost	9	Nongshim RedForce	Red	bot	Kai'Sa	1	7	2	4	1	1	1	-602	574	1993
2125	29	2022-06-23	20	Effort	9	Nongshim RedForce	Red	sup	Rakan	1	0	4	9	1	1	1	-196	106	1993
2126	30	2022-06-23	62	Zeus	9	T1	Blue	top	Gragas	1	7	0	4	1	1	1	1053	751	1596
2127	30	2022-06-23	42	Oner	10	T1	Blue	jng	Viego	1	2	2	10	1	1	1	444	182	1596
2128	30	2022-06-23	22	Faker	10	T1	Blue	mid	Swain	1	0	2	9	1	1	1	201	-387	1596
2129	30	2022-06-23	26	Gumayusi	10	T1	Blue	bot	Zeri	1	5	1	7	1	1	1	488	1021	1596
2130	30	2022-06-23	33	Keria	10	T1	Blue	sup	Renata Glasc	1	2	0	14	1	1	1	818	250	1596
2131	30	2022-06-23	17	Dove	10	Liiv SANDBOX	Red	top	Gwen	0	0	2	2	0	0	0	-1053	-751	1596
2132	30	2022-06-23	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	0	1	5	0	0	0	0	-444	-182	1596
2133	30	2022-06-23	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	0	1	3	1	0	0	0	-201	387	1596
2134	30	2022-06-23	46	Prince	8	Liiv SANDBOX	Red	bot	Kai'Sa	0	3	3	2	0	0	0	-488	-1021	1596
2135	30	2022-06-23	30	Kael	8	Liiv SANDBOX	Red	sup	Nautilus	0	0	3	4	0	0	0	-818	-250	1596
2136	31	2022-06-23	17	Dove	8	Liiv SANDBOX	Blue	top	Fiora	0	0	3	4	1	0	0	-2093	130	1442
2137	31	2022-06-23	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	0	1	5	2	1	0	0	-1197	-307	1442
2138	31	2022-06-23	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	0	0	2	1	1	0	0	-868	-208	1442
2139	31	2022-06-23	46	Prince	8	Liiv SANDBOX	Blue	bot	Ezreal	0	0	1	0	1	0	0	272	2257	1442
2140	31	2022-06-23	30	Kael	8	Liiv SANDBOX	Blue	sup	Renata Glasc	0	3	2	0	1	0	0	-1371	-2853	1442
2141	31	2022-06-23	62	Zeus	8	T1	Red	top	Jayce	1	6	1	5	0	1	1	2093	-130	1442
2142	31	2022-06-23	42	Oner	10	T1	Red	jng	Lee Sin	1	3	2	9	0	1	1	1197	307	1442
2143	31	2022-06-23	22	Faker	10	T1	Red	mid	Lissandra	1	3	1	5	0	1	1	868	208	1442
2144	31	2022-06-23	26	Gumayusi	10	T1	Red	bot	Senna	1	1	0	9	0	1	1	-272	-2257	1442
2145	31	2022-06-23	33	Keria	10	T1	Red	sup	Tahm Kench	1	0	0	4	0	1	1	1371	2853	1442
2146	32	2022-06-24	19	DuDu	10	Hanwha Life Esports	Blue	top	Gnar	0	1	3	0	0	1	0	507	-194	1729
2147	32	2022-06-24	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Viego	0	0	4	0	0	1	0	104	136	1729
2148	32	2022-06-24	31	Karis	5	Hanwha Life Esports	Blue	mid	Zoe	0	1	2	0	0	1	0	-909	118	1729
2149	32	2022-06-24	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	0	1	6	1	0	1	0	1074	434	1729
2150	32	2022-06-24	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	0	0	4	2	0	1	0	-1263	-1179	1729
2151	32	2022-06-24	35	Kingen	5	DRX	Red	top	Ornn	1	0	0	11	1	0	1	-507	194	1729
2152	32	2022-06-24	47	Pyosik	1	DRX	Red	jng	Kindred	1	4	1	10	1	0	1	-104	-136	1729
2153	32	2022-06-24	61	Zeka	1	DRX	Red	mid	Ahri	1	11	0	6	1	0	1	909	-118	1729
2154	32	2022-06-24	13	Deft	1	DRX	Red	bot	Senna	1	2	0	15	1	0	1	-1074	-434	1729
2155	32	2022-06-24	4	BeryL	1	DRX	Red	sup	Tahm Kench	1	2	2	12	1	0	1	1263	1179	1729
2156	33	2022-06-24	19	DuDu	1	Hanwha Life Esports	Blue	top	Gnar	1	5	1	8	1	1	1	250	-43	1989
2157	33	2022-06-24	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Xin Zhao	1	2	3	9	1	1	1	-639	-437	1989
2158	33	2022-06-24	31	Karis	5	Hanwha Life Esports	Blue	mid	Zoe	1	3	2	7	1	1	1	539	720	1989
2159	33	2022-06-24	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	1	6	2	8	1	1	1	2896	1940	1989
2160	33	2022-06-24	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	1	1	4	11	1	1	1	-1302	-1291	1989
2161	33	2022-06-24	35	Kingen	5	DRX	Red	top	Olaf	0	1	4	8	0	0	0	-250	43	1989
2162	33	2022-06-24	47	Pyosik	1	DRX	Red	jng	Graves	0	5	3	6	0	0	0	639	437	1989
2163	33	2022-06-24	61	Zeka	1	DRX	Red	mid	Ahri	0	1	1	9	0	0	0	-539	-720	1989
2164	33	2022-06-24	13	Deft	1	DRX	Red	bot	Senna	0	1	4	8	0	0	0	-2896	-1940	1989
2165	33	2022-06-24	4	BeryL	1	DRX	Red	sup	Tahm Kench	0	4	5	8	0	0	0	1302	1291	1989
2166	34	2022-06-24	35	Kingen	1	DRX	Blue	top	Gangplank	1	6	2	1	0	0	0	912	908	1983
2167	34	2022-06-24	47	Pyosik	1	DRX	Blue	jng	Poppy	1	2	0	5	0	0	0	-426	136	1983
2168	34	2022-06-24	61	Zeka	1	DRX	Blue	mid	Azir	1	1	3	2	0	0	0	782	-852	1983
2169	34	2022-06-24	13	Deft	1	DRX	Blue	bot	Ezreal	1	0	1	0	0	0	0	-676	-499	1983
2170	34	2022-06-24	4	BeryL	1	DRX	Blue	sup	Rakan	1	0	0	1	0	0	0	-167	491	1983
2171	34	2022-06-24	19	DuDu	1	Hanwha Life Esports	Red	top	Gnar	0	2	3	1	1	1	1	-912	-908	1983
2172	34	2022-06-24	43	OnFleek	5	Hanwha Life Esports	Red	jng	Xin Zhao	0	1	4	3	1	1	1	426	-136	1983
2173	34	2022-06-24	31	Karis	5	Hanwha Life Esports	Red	mid	Akali	0	2	2	2	1	1	1	-782	852	1983
2174	34	2022-06-24	51	SamD	5	Hanwha Life Esports	Red	bot	Jhin	0	1	0	0	1	1	1	676	499	1983
2175	34	2022-06-24	59	Vsta	5	Hanwha Life Esports	Red	sup	Karma	0	0	0	2	1	1	1	167	-491	1983
2176	35	2022-06-24	40	Morgan	5	Fredit BRION	Blue	top	Gragas	0	2	4	0	1	1	0	6	-217	1590
2177	35	2022-06-24	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	0	2	1	2	1	1	0	948	-64	1590
2178	35	2022-06-24	36	Lava	3	Fredit BRION	Blue	mid	Lissandra	0	0	4	2	1	1	0	-228	-753	1590
2179	35	2022-06-24	27	Hena	3	Fredit BRION	Blue	bot	Zeri	0	0	3	0	1	1	0	-108	122	1590
2180	35	2022-06-24	14	Delight	3	Fredit BRION	Blue	sup	Nautilus	0	0	4	2	1	1	0	331	567	1590
2181	35	2022-06-24	16	Doran	3	Gen.G	Red	top	Aatrox	1	1	2	2	0	0	1	-6	217	1590
2182	35	2022-06-24	44	Peanut	4	Gen.G	Red	jng	Wukong	1	1	0	7	0	0	1	-948	64	1590
2183	35	2022-06-24	9	Chovy	4	Gen.G	Red	mid	Ahri	1	7	1	6	0	0	1	228	753	1590
2184	35	2022-06-24	50	Ruler	4	Gen.G	Red	bot	Twitch	1	6	0	9	0	0	1	108	-122	1590
2185	35	2022-06-24	37	Lehends	4	Gen.G	Red	sup	Yuumi	1	1	1	14	0	0	1	-331	-567	1590
2186	36	2022-06-24	40	Morgan	4	Fredit BRION	Blue	top	Gwen	0	0	5	3	0	1	0	-1081	-1080	1649
2187	36	2022-06-24	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	0	4	3	0	1	0	-140	-480	1649
2188	36	2022-06-24	36	Lava	3	Fredit BRION	Blue	mid	Ahri	0	2	2	1	0	1	0	255	-693	1649
2189	36	2022-06-24	27	Hena	3	Fredit BRION	Blue	bot	Aphelios	0	1	4	2	0	1	0	423	31	1649
2190	36	2022-06-24	14	Delight	3	Fredit BRION	Blue	sup	Tahm Kench	0	1	3	3	0	1	0	92	245	1649
2191	36	2022-06-24	16	Doran	3	Gen.G	Red	top	Akali	1	5	1	8	1	0	1	1081	1080	1649
2192	36	2022-06-24	44	Peanut	4	Gen.G	Red	jng	Viego	1	7	2	6	1	0	1	140	480	1649
2193	36	2022-06-24	9	Chovy	4	Gen.G	Red	mid	Viktor	1	2	1	10	1	0	1	-255	693	1649
2194	36	2022-06-24	50	Ruler	4	Gen.G	Red	bot	Jinx	1	3	0	7	1	0	1	-423	-31	1649
2195	36	2022-06-24	37	Lehends	4	Gen.G	Red	sup	Rakan	1	1	0	11	1	0	1	-92	-245	1649
2196	37	2022-06-25	41	Nuguri	4	DWG KIA	Blue	top	Mordekaiser	0	6	4	0	0	1	0	1122	1158	1895
2197	37	2022-06-25	7	Canyon	2	DWG KIA	Blue	jng	Trundle	0	1	3	5	0	1	0	149	197	1895
2198	37	2022-06-25	52	ShowMaker	2	DWG KIA	Blue	mid	Twisted Fate	0	1	0	6	0	1	0	1198	1073	1895
2199	37	2022-06-25	15	deokdam	2	DWG KIA	Blue	bot	Ezreal	0	0	2	4	0	1	0	-989	-511	1895
2200	37	2022-06-25	32	Kellin	2	DWG KIA	Blue	sup	Karma	0	0	2	7	0	1	0	-35	-890	1895
2201	37	2022-06-25	62	Zeus	2	T1	Red	top	Camille	1	3	3	5	1	0	1	-1122	-1158	1895
2202	37	2022-06-25	42	Oner	10	T1	Red	jng	Lee Sin	1	3	2	7	1	0	1	-149	-197	1895
2203	37	2022-06-25	22	Faker	10	T1	Red	mid	Galio	1	0	2	6	1	0	1	-1198	-1073	1895
2204	37	2022-06-25	26	Gumayusi	10	T1	Red	bot	Xayah	1	1	1	5	1	0	1	989	511	1895
2205	37	2022-06-25	33	Keria	10	T1	Red	sup	Pyke	1	4	0	2	1	0	1	35	890	1895
2206	38	2022-06-25	41	Nuguri	10	DWG KIA	Blue	top	Gwen	0	2	5	6	0	0	0	-17	889	1907
2207	38	2022-06-25	7	Canyon	2	DWG KIA	Blue	jng	Nocturne	0	2	2	7	0	0	0	-435	696	1907
2208	38	2022-06-25	52	ShowMaker	2	DWG KIA	Blue	mid	Twisted Fate	0	2	2	7	0	0	0	687	858	1907
2209	38	2022-06-25	15	deokdam	2	DWG KIA	Blue	bot	Ezreal	0	2	4	6	0	0	0	-1085	-229	1907
2210	38	2022-06-25	32	Kellin	2	DWG KIA	Blue	sup	Bard	0	3	5	8	0	0	0	578	28	1907
2211	38	2022-06-25	62	Zeus	2	T1	Red	top	Camille	1	8	2	3	1	1	1	17	-889	1907
2212	38	2022-06-25	42	Oner	10	T1	Red	jng	Lee Sin	1	4	1	12	1	1	1	435	-696	1907
2213	38	2022-06-25	22	Faker	10	T1	Red	mid	Galio	1	1	3	10	1	1	1	-687	-858	1907
2214	38	2022-06-25	26	Gumayusi	10	T1	Red	bot	Kalista	1	5	3	8	1	1	1	1085	229	1907
2215	38	2022-06-25	33	Keria	10	T1	Red	sup	Nautilus	1	0	2	12	1	1	1	-578	-28	1907
2216	39	2022-06-25	17	Dove	10	Liiv SANDBOX	Blue	top	Gnar	1	3	1	5	1	1	0	-435	289	2254
2217	39	2022-06-25	11	Croco	8	Liiv SANDBOX	Blue	jng	Wukong	1	3	2	7	1	1	0	-296	-19	2254
2218	39	2022-06-25	10	Clozer	8	Liiv SANDBOX	Blue	mid	Sylas	1	2	1	5	1	1	0	-188	-163	2254
2219	39	2022-06-25	46	Prince	8	Liiv SANDBOX	Blue	bot	Kai'Sa	1	3	1	4	1	1	0	-57	-540	2254
2220	39	2022-06-25	30	Kael	8	Liiv SANDBOX	Blue	sup	Rakan	1	0	3	11	1	1	0	12	515	2254
2221	39	2022-06-25	49	Rascal	8	KT Rolster	Red	top	Gangplank	0	7	4	1	0	0	1	435	-289	2254
2222	39	2022-06-25	12	Cuzz	6	KT Rolster	Red	jng	Volibear	0	0	2	5	0	0	1	296	19	2254
2223	39	2022-06-25	2	Aria	6	KT Rolster	Red	mid	Corki	0	1	1	6	0	0	1	188	163	2254
2224	39	2022-06-25	1	Aiming	6	KT Rolster	Red	bot	Ezreal	0	0	2	2	0	0	1	57	540	2254
2225	39	2022-06-25	38	Life	6	KT Rolster	Red	sup	Karma	0	0	2	7	0	0	1	-12	-515	2254
2226	40	2022-06-25	49	Rascal	6	KT Rolster	Blue	top	Gnar	0	4	2	4	0	0	1	1947	1285	2369
2227	40	2022-06-25	12	Cuzz	6	KT Rolster	Blue	jng	Viego	0	0	3	3	0	0	1	378	848	2369
2228	40	2022-06-25	2	Aria	6	KT Rolster	Blue	mid	Corki	0	5	1	4	0	0	1	-1108	-252	2369
2229	40	2022-06-25	1	Aiming	6	KT Rolster	Blue	bot	Senna	0	1	3	7	0	0	1	-1029	-1834	2369
2230	40	2022-06-25	38	Life	6	KT Rolster	Blue	sup	Sejuani	0	0	3	7	0	0	1	1482	2314	2369
2231	40	2022-06-25	17	Dove	6	Liiv SANDBOX	Red	top	Gwen	1	4	2	1	1	1	0	-1947	-1285	2369
2232	40	2022-06-25	11	Croco	8	Liiv SANDBOX	Red	jng	Trundle	1	2	2	5	1	1	0	-378	-848	2369
2233	40	2022-06-25	10	Clozer	8	Liiv SANDBOX	Red	mid	Zoe	1	1	3	5	1	1	0	1108	252	2369
2234	40	2022-06-25	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	1	4	1	6	1	1	0	1029	1834	2369
2235	40	2022-06-25	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	1	2	9	1	1	0	-1482	-2314	2369
2236	41	2022-06-26	19	DuDu	8	Hanwha Life Esports	Blue	top	Gnar	0	0	3	0	0	1	1	1228	299	1659
2237	41	2022-06-26	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	0	0	3	0	0	1	1	471	-208	1659
2238	41	2022-06-26	31	Karis	5	Hanwha Life Esports	Blue	mid	Viktor	0	0	4	0	0	1	1	-729	-329	1659
2239	41	2022-06-26	51	SamD	5	Hanwha Life Esports	Blue	bot	Kai'Sa	0	0	4	0	0	1	1	-154	170	1659
2240	41	2022-06-26	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nautilus	0	0	4	0	0	1	1	-235	-768	1659
2241	41	2022-06-26	6	Canna	5	Nongshim RedForce	Red	top	Ornn	1	1	0	11	1	0	0	-1228	-299	1659
2242	41	2022-06-26	18	Dread	9	Nongshim RedForce	Red	jng	Viego	1	5	0	10	1	0	0	-471	208	1659
2243	41	2022-06-26	3	Bdd	9	Nongshim RedForce	Red	mid	Swain	1	5	0	12	1	0	0	729	329	1659
2244	41	2022-06-26	25	Ghost	9	Nongshim RedForce	Red	bot	Xayah	1	7	0	7	1	0	0	154	-170	1659
2245	41	2022-06-26	20	Effort	9	Nongshim RedForce	Red	sup	Rakan	1	0	0	15	1	0	0	235	768	1659
2246	42	2022-06-26	19	DuDu	9	Hanwha Life Esports	Blue	top	Gnar	1	2	3	5	0	1	1	1422	1346	1814
2247	42	2022-06-26	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	1	5	0	5	0	1	1	715	646	1814
2248	42	2022-06-26	31	Karis	5	Hanwha Life Esports	Blue	mid	Viktor	1	5	0	7	0	1	1	426	532	1814
2249	42	2022-06-26	51	SamD	5	Hanwha Life Esports	Blue	bot	Senna	1	1	2	13	0	1	1	-939	-1127	1814
2250	42	2022-06-26	59	Vsta	5	Hanwha Life Esports	Blue	sup	Tahm Kench	1	3	1	8	0	1	1	1426	2188	1814
2251	42	2022-06-26	6	Canna	5	Nongshim RedForce	Red	top	Gwen	0	1	3	2	1	0	0	-1422	-1346	1814
2252	42	2022-06-26	18	Dread	9	Nongshim RedForce	Red	jng	Trundle	0	3	2	2	1	0	0	-715	-646	1814
2253	42	2022-06-26	3	Bdd	9	Nongshim RedForce	Red	mid	Swain	0	2	5	3	1	0	0	-426	-532	1814
2254	42	2022-06-26	25	Ghost	9	Nongshim RedForce	Red	bot	Xayah	0	0	2	2	1	0	0	939	1127	1814
2255	42	2022-06-26	20	Effort	9	Nongshim RedForce	Red	sup	Rakan	0	0	4	6	1	0	0	-1426	-2188	1814
2256	43	2022-06-26	6	Canna	9	Nongshim RedForce	Blue	top	Gwen	1	3	2	3	1	1	1	121	-644	2104
2257	43	2022-06-26	18	Dread	9	Nongshim RedForce	Blue	jng	Viego	1	1	1	0	1	1	1	145	-126	2104
2258	43	2022-06-26	3	Bdd	9	Nongshim RedForce	Blue	mid	Veigar	1	2	3	3	1	1	1	-872	-632	2104
2259	43	2022-06-26	25	Ghost	9	Nongshim RedForce	Blue	bot	Xayah	1	1	1	4	1	1	1	-137	626	2104
2260	43	2022-06-26	20	Effort	9	Nongshim RedForce	Blue	sup	Rakan	1	1	2	5	1	1	1	-110	-593	2104
2261	43	2022-06-26	19	DuDu	9	Hanwha Life Esports	Red	top	Jax	0	1	4	6	0	0	0	-121	644	2104
2262	43	2022-06-26	43	OnFleek	5	Hanwha Life Esports	Red	jng	Wukong	0	3	1	5	0	0	0	-145	126	2104
2263	43	2022-06-26	31	Karis	5	Hanwha Life Esports	Red	mid	Azir	0	0	1	5	0	0	0	872	632	2104
2264	43	2022-06-26	51	SamD	5	Hanwha Life Esports	Red	bot	Aphelios	0	3	1	3	0	0	0	137	-626	2104
2265	43	2022-06-26	59	Vsta	5	Hanwha Life Esports	Red	sup	Renata Glasc	0	2	1	5	0	0	0	110	593	2104
2266	44	2022-06-26	35	Kingen	5	DRX	Blue	top	Sejuani	1	1	2	13	1	0	1	-669	-333	2102
2267	44	2022-06-26	47	Pyosik	1	DRX	Blue	jng	Viego	1	6	2	12	1	0	1	970	719	2102
2268	44	2022-06-26	61	Zeka	1	DRX	Blue	mid	Corki	1	6	3	7	1	0	1	-812	-893	2102
2269	44	2022-06-26	13	Deft	1	DRX	Blue	bot	Kalista	1	8	2	7	1	0	1	866	450	2102
2270	44	2022-06-26	4	BeryL	1	DRX	Blue	sup	Rakan	1	0	5	13	1	0	1	-155	-202	2102
2271	44	2022-06-26	34	Kiin	1	Kwangdong Freecs	Red	top	Gnar	0	1	6	6	0	1	0	669	333	2102
2272	44	2022-06-26	21	Ellim	7	Kwangdong Freecs	Red	jng	Trundle	0	1	5	7	0	1	0	-970	-719	2102
2273	44	2022-06-26	23	FATE	7	Kwangdong Freecs	Red	mid	Ahri	0	4	1	8	0	1	0	812	893	2102
2274	44	2022-06-26	56	Teddy	7	Kwangdong Freecs	Red	bot	Ezreal	0	4	3	7	0	1	0	-866	-450	2102
2275	44	2022-06-26	39	Moham	7	Kwangdong Freecs	Red	sup	Nautilus	0	3	6	6	0	1	0	155	202	2102
2276	45	2022-06-26	34	Kiin	7	Kwangdong Freecs	Blue	top	Gragas	0	0	3	1	1	0	0	90	-500	1929
2277	45	2022-06-26	21	Ellim	7	Kwangdong Freecs	Blue	jng	Trundle	0	0	5	1	1	0	0	-1612	-1107	1929
2278	45	2022-06-26	23	FATE	7	Kwangdong Freecs	Blue	mid	Azir	0	1	1	0	1	0	0	-1594	-240	1929
2279	45	2022-06-26	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	0	1	4	0	1	0	0	-632	-723	1929
2280	45	2022-06-26	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nautilus	0	0	1	2	1	0	0	-508	-592	1929
2281	45	2022-06-26	35	Kingen	7	DRX	Red	top	Ornn	1	0	0	8	0	1	1	-90	500	1929
2282	45	2022-06-26	47	Pyosik	1	DRX	Red	jng	Viego	1	3	1	6	0	1	1	1612	1107	1929
2283	45	2022-06-26	61	Zeka	1	DRX	Red	mid	Akali	1	8	0	3	0	1	1	1594	240	1929
2284	45	2022-06-26	13	Deft	1	DRX	Red	bot	Twitch	1	3	1	6	0	1	1	632	723	1929
2285	45	2022-06-26	4	BeryL	1	DRX	Red	sup	Rakan	1	0	0	11	0	1	1	508	592	1929
2286	46	2022-06-29	17	Dove	1	Liiv SANDBOX	Blue	top	Gangplank	1	0	0	15	1	0	0	-1157	-528	1627
2287	46	2022-06-29	11	Croco	8	Liiv SANDBOX	Blue	jng	Trundle	1	3	4	11	1	0	0	-671	-672	1627
2288	46	2022-06-29	10	Clozer	8	Liiv SANDBOX	Blue	mid	LeBlanc	1	1	3	11	1	0	0	-362	355	1627
2289	46	2022-06-29	46	Prince	8	Liiv SANDBOX	Blue	bot	Zeri	1	13	1	4	1	0	0	2295	1925	1627
2290	46	2022-06-29	30	Kael	8	Liiv SANDBOX	Blue	sup	Nautilus	1	3	3	8	1	0	0	-1452	-1762	1627
2291	46	2022-06-29	35	Kingen	8	DRX	Red	top	Gnar	0	1	2	1	0	1	1	1157	528	1627
2292	46	2022-06-29	47	Pyosik	1	DRX	Red	jng	Viego	0	1	3	6	0	1	1	671	672	1627
2293	46	2022-06-29	61	Zeka	1	DRX	Red	mid	Akali	0	6	4	1	0	1	1	362	-355	1627
2294	46	2022-06-29	13	Deft	1	DRX	Red	bot	Senna	0	2	4	7	0	1	1	-2295	-1925	1627
2295	46	2022-06-29	4	BeryL	1	DRX	Red	sup	Amumu	0	1	7	8	0	1	1	1452	1762	1627
2296	47	2022-06-29	17	Dove	1	Liiv SANDBOX	Blue	top	Gnar	0	0	3	4	0	1	1	1160	880	2495
2297	47	2022-06-29	11	Croco	8	Liiv SANDBOX	Blue	jng	Trundle	0	1	2	2	0	1	1	440	-529	2495
2298	47	2022-06-29	10	Clozer	8	Liiv SANDBOX	Blue	mid	Zoe	0	1	3	3	0	1	1	-343	-549	2495
2299	47	2022-06-29	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	0	2	3	1	0	1	1	-1052	-682	2495
2300	47	2022-06-29	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	0	1	2	3	0	1	1	-280	-635	2495
2301	47	2022-06-29	35	Kingen	8	DRX	Red	top	Gangplank	1	2	0	9	1	0	0	-1160	-880	2495
2302	47	2022-06-29	47	Pyosik	1	DRX	Red	jng	Viego	1	1	1	6	1	0	0	-440	529	2495
2303	47	2022-06-29	61	Zeka	1	DRX	Red	mid	Orianna	1	3	1	5	1	0	0	343	549	2495
2304	47	2022-06-29	13	Deft	1	DRX	Red	bot	Kalista	1	6	2	0	1	0	0	1052	682	2495
2305	47	2022-06-29	4	BeryL	1	DRX	Red	sup	Renata Glasc	1	1	1	11	1	0	0	280	635	2495
2306	48	2022-06-29	35	Kingen	1	DRX	Blue	top	Gangplank	0	3	2	4	0	0	0	-724	263	1894
2307	48	2022-06-29	47	Pyosik	1	DRX	Blue	jng	Viego	0	1	3	6	0	0	0	-135	-5	1894
2308	48	2022-06-29	61	Zeka	1	DRX	Blue	mid	Ahri	0	1	2	5	0	0	0	-637	-430	1894
2309	48	2022-06-29	13	Deft	1	DRX	Blue	bot	Xayah	0	3	1	4	0	0	0	243	-362	1894
2310	48	2022-06-29	4	BeryL	1	DRX	Blue	sup	Rell	0	1	7	6	0	0	0	-177	34	1894
2311	48	2022-06-29	17	Dove	1	Liiv SANDBOX	Red	top	Azir	1	3	1	8	1	1	1	724	-263	1894
2312	48	2022-06-29	11	Croco	8	Liiv SANDBOX	Red	jng	Lee Sin	1	1	3	7	1	1	1	135	5	1894
2313	48	2022-06-29	10	Clozer	8	Liiv SANDBOX	Red	mid	LeBlanc	1	4	2	3	1	1	1	637	430	1894
2314	48	2022-06-29	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	1	7	1	2	1	1	1	-243	362	1894
2315	48	2022-06-29	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	0	3	13	1	1	1	177	-34	1894
2316	49	2022-06-29	62	Zeus	8	T1	Blue	top	Gwen	1	3	2	6	1	0	1	1083	1203	1675
2317	49	2022-06-29	42	Oner	10	T1	Blue	jng	Xin Zhao	1	1	2	3	1	0	1	619	582	1675
2318	49	2022-06-29	22	Faker	10	T1	Blue	mid	Azir	1	2	1	6	1	0	1	14	380	1675
2319	49	2022-06-29	26	Gumayusi	10	T1	Blue	bot	Lucian	1	3	2	2	1	0	1	982	605	1675
2320	49	2022-06-29	33	Keria	10	T1	Blue	sup	Nami	1	1	1	6	1	0	1	-1033	-1824	1675
2321	49	2022-06-29	34	Kiin	10	Kwangdong Freecs	Red	top	Kayle	0	0	3	5	0	1	0	-1083	-1203	1675
2322	49	2022-06-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	0	4	2	2	0	1	0	-619	-582	1675
2323	49	2022-06-29	23	FATE	7	Kwangdong Freecs	Red	mid	Ornn	0	1	3	5	0	1	0	-14	-380	1675
2324	49	2022-06-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Senna	0	2	1	5	0	1	0	-982	-605	1675
2325	49	2022-06-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Tahm Kench	0	1	1	6	0	1	0	1033	1824	1675
2326	50	2022-06-29	62	Zeus	7	T1	Blue	top	Gwen	0	0	1	0	0	1	0	208	-60	1876
2327	50	2022-06-29	42	Oner	10	T1	Blue	jng	Wukong	0	1	3	0	0	1	0	247	-432	1876
2328	50	2022-06-29	22	Faker	10	T1	Blue	mid	Azir	0	1	2	0	0	1	0	683	186	1876
2329	50	2022-06-29	26	Gumayusi	10	T1	Blue	bot	Kalista	0	0	2	1	0	1	0	724	1952	1876
2330	50	2022-06-29	33	Keria	10	T1	Blue	sup	Tahm Kench	0	0	4	2	0	1	0	-1305	-2064	1876
2331	50	2022-06-29	34	Kiin	10	Kwangdong Freecs	Red	top	Gangplank	1	2	0	6	1	0	1	-208	60	1876
2332	50	2022-06-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	1	4	0	3	1	0	1	-247	432	1876
2333	50	2022-06-29	23	FATE	7	Kwangdong Freecs	Red	mid	Swain	1	2	1	7	1	0	1	-683	-186	1876
2334	50	2022-06-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Senna	1	2	0	10	1	0	1	-724	-1952	1876
2335	50	2022-06-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Seraphine	1	2	1	8	1	0	1	1305	2064	1876
2336	51	2022-06-29	62	Zeus	7	T1	Blue	top	Gangplank	0	2	5	5	1	0	1	-543	-99	2331
2337	51	2022-06-29	42	Oner	10	T1	Blue	jng	Lee Sin	0	5	3	4	1	0	1	750	92	2331
2338	51	2022-06-29	22	Faker	10	T1	Blue	mid	Lissandra	0	1	5	7	1	0	1	1130	132	2331
2339	51	2022-06-29	26	Gumayusi	10	T1	Blue	bot	Jinx	0	1	2	7	1	0	1	2042	2915	2331
2340	51	2022-06-29	33	Keria	10	T1	Blue	sup	Tahm Kench	0	1	4	4	1	0	1	-1719	-1920	2331
2341	51	2022-06-29	34	Kiin	10	Kwangdong Freecs	Red	top	Gnar	1	7	0	9	0	1	0	543	99	2331
2342	51	2022-06-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Wukong	1	5	4	11	0	1	0	-750	-92	2331
2343	51	2022-06-29	23	FATE	7	Kwangdong Freecs	Red	mid	Ornn	1	2	2	10	0	1	0	-1130	-132	2331
2344	51	2022-06-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Ashe	1	2	1	14	0	1	0	-2042	-2915	2331
2345	51	2022-06-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Seraphine	1	3	3	12	0	1	0	1719	1920	2331
2346	52	2022-06-30	40	Morgan	7	Fredit BRION	Blue	top	Gangplank	1	3	0	8	1	1	1	596	-12	2491
2347	52	2022-06-30	48	Raptor	3	Fredit BRION	Blue	jng	Viego	1	2	3	8	1	1	1	37	-250	2491
2348	52	2022-06-30	36	Lava	3	Fredit BRION	Blue	mid	Swain	1	2	1	9	1	1	1	-37	614	2491
2349	52	2022-06-30	27	Hena	3	Fredit BRION	Blue	bot	Zeri	1	5	1	7	1	1	1	676	262	2491
2350	52	2022-06-30	14	Delight	3	Fredit BRION	Blue	sup	Lulu	1	1	0	12	1	1	1	359	-247	2491
2351	52	2022-06-30	19	DuDu	3	Hanwha Life Esports	Red	top	Ornn	0	0	2	3	0	0	0	-596	12	2491
2352	52	2022-06-30	43	OnFleek	5	Hanwha Life Esports	Red	jng	Xin Zhao	0	2	5	2	0	0	0	-37	250	2491
2353	52	2022-06-30	31	Karis	5	Hanwha Life Esports	Red	mid	Ahri	0	1	2	4	0	0	0	37	-614	2491
2354	52	2022-06-30	51	SamD	5	Hanwha Life Esports	Red	bot	Twitch	0	2	2	1	0	0	0	-676	-262	2491
2355	52	2022-06-30	59	Vsta	5	Hanwha Life Esports	Red	sup	Yuumi	0	0	2	4	0	0	0	-359	247	2491
2356	53	2022-06-30	19	DuDu	5	Hanwha Life Esports	Blue	top	Gangplank	1	7	2	5	1	0	0	900	394	1982
2357	53	2022-06-30	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	1	4	2	6	1	0	0	56	-198	1982
2358	53	2022-06-30	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	1	4	1	9	1	0	0	245	680	1982
2359	53	2022-06-30	51	SamD	5	Hanwha Life Esports	Blue	bot	Jinx	1	2	1	7	1	0	0	865	-167	1982
2360	53	2022-06-30	59	Vsta	5	Hanwha Life Esports	Blue	sup	Tahm Kench	1	0	2	8	1	0	0	168	534	1982
2361	53	2022-06-30	40	Morgan	5	Fredit BRION	Red	top	Gnar	0	2	4	3	0	1	1	-900	-394	1982
2362	53	2022-06-30	48	Raptor	3	Fredit BRION	Red	jng	Lee Sin	0	0	5	2	0	1	1	-56	198	1982
2363	53	2022-06-30	36	Lava	3	Fredit BRION	Red	mid	Ahri	0	2	4	3	0	1	1	-245	-680	1982
2364	53	2022-06-30	27	Hena	3	Fredit BRION	Red	bot	Aphelios	0	4	1	2	0	1	1	-865	167	1982
2365	53	2022-06-30	14	Delight	3	Fredit BRION	Red	sup	Rakan	0	0	3	4	0	1	1	-168	-534	1982
2366	54	2022-06-30	40	Morgan	3	Fredit BRION	Blue	top	Camille	0	0	3	0	0	1	0	-4	-71	1776
2367	54	2022-06-30	48	Raptor	3	Fredit BRION	Blue	jng	Wukong	0	1	1	2	0	1	0	885	928	1776
2368	54	2022-06-30	36	Lava	3	Fredit BRION	Blue	mid	Galio	0	0	1	2	0	1	0	-557	-609	1776
2369	54	2022-06-30	27	Hena	3	Fredit BRION	Blue	bot	Aphelios	0	2	2	1	0	1	0	-523	129	1776
2370	54	2022-06-30	14	Delight	3	Fredit BRION	Blue	sup	Tahm Kench	0	0	2	2	0	1	0	138	583	1776
2371	54	2022-06-30	19	DuDu	3	Hanwha Life Esports	Red	top	Jax	1	1	0	5	1	0	1	4	71	1776
2372	54	2022-06-30	43	OnFleek	5	Hanwha Life Esports	Red	jng	Volibear	1	0	1	7	1	0	1	-885	-928	1776
2373	54	2022-06-30	31	Karis	5	Hanwha Life Esports	Red	mid	Azir	1	1	1	8	1	0	1	557	609	1776
2374	54	2022-06-30	51	SamD	5	Hanwha Life Esports	Red	bot	Jinx	1	7	1	2	1	0	1	523	-129	1776
2375	54	2022-06-30	59	Vsta	5	Hanwha Life Esports	Red	sup	Thresh	1	0	0	9	1	0	1	-138	-583	1776
2376	55	2022-06-30	16	Doran	5	Gen.G	Blue	top	Kayle	1	3	0	2	0	0	1	-1063	-546	2046
2377	55	2022-06-30	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	1	1	6	0	0	1	378	21	2046
2378	55	2022-06-30	9	Chovy	4	Gen.G	Blue	mid	Yone	1	2	1	3	0	0	1	84	92	2046
2379	55	2022-06-30	50	Ruler	4	Gen.G	Blue	bot	Lucian	1	5	1	5	0	0	1	1893	1433	2046
2380	55	2022-06-30	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	1	1	9	0	0	1	1072	566	2046
2381	55	2022-06-30	6	Canna	4	Nongshim RedForce	Red	top	Gangplank	0	0	0	4	1	1	0	1063	546	2046
2382	55	2022-06-30	18	Dread	9	Nongshim RedForce	Red	jng	Viego	0	1	3	2	1	1	0	-378	-21	2046
2383	55	2022-06-30	3	Bdd	9	Nongshim RedForce	Red	mid	Zoe	0	3	2	1	1	1	0	-84	-92	2046
2384	55	2022-06-30	25	Ghost	9	Nongshim RedForce	Red	bot	Zeri	0	0	2	1	1	1	0	-1893	-1433	2046
2385	55	2022-06-30	20	Effort	9	Nongshim RedForce	Red	sup	Nami	0	0	5	4	1	1	0	-1072	-566	2046
2386	56	2022-06-30	6	Canna	9	Nongshim RedForce	Blue	top	Gangplank	0	0	3	3	1	0	0	106	71	1667
2387	56	2022-06-30	18	Dread	9	Nongshim RedForce	Blue	jng	Volibear	0	1	1	2	1	0	0	42	-118	1667
2388	56	2022-06-30	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	0	2	2	2	1	0	0	383	81	1667
2389	56	2022-06-30	25	Ghost	9	Nongshim RedForce	Blue	bot	Senna	0	2	3	3	1	0	0	-2880	-2955	1667
2390	56	2022-06-30	20	Effort	9	Nongshim RedForce	Blue	sup	Tahm Kench	0	0	4	4	1	0	0	1234	2777	1667
2391	56	2022-06-30	16	Doran	9	Gen.G	Red	top	Gnar	1	4	1	3	0	1	1	-106	-71	1667
2392	56	2022-06-30	44	Peanut	4	Gen.G	Red	jng	Wukong	1	3	1	6	0	1	1	-42	118	1667
2393	56	2022-06-30	9	Chovy	4	Gen.G	Red	mid	Karma	1	3	0	8	0	1	1	-383	-81	1667
2394	56	2022-06-30	50	Ruler	4	Gen.G	Red	bot	Ashe	1	3	1	9	0	1	1	2880	2955	1667
2395	56	2022-06-30	37	Lehends	4	Gen.G	Red	sup	Renata Glasc	1	0	2	11	0	1	1	-1234	-2777	1667
2396	57	2022-07-01	49	Rascal	4	KT Rolster	Blue	top	Ornn	0	1	4	4	1	1	1	-1759	-1151	1694
2397	57	2022-07-01	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	0	2	3	2	1	1	1	-287	-1243	1694
2398	57	2022-07-01	58	VicLa	6	KT Rolster	Blue	mid	Azir	0	1	3	3	1	1	1	825	936	1694
2399	57	2022-07-01	1	Aiming	6	KT Rolster	Blue	bot	Kalista	0	1	4	4	1	1	1	1782	1736	1694
2400	57	2022-07-01	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	0	1	5	4	1	1	1	814	-294	1694
2401	57	2022-07-01	41	Nuguri	6	DWG KIA	Red	top	Gnar	1	4	0	6	0	0	0	1759	1151	1694
2402	57	2022-07-01	7	Canyon	2	DWG KIA	Red	jng	Taliyah	1	5	2	13	0	0	0	287	1243	1694
2403	57	2022-07-01	52	ShowMaker	2	DWG KIA	Red	mid	Lissandra	1	5	0	11	0	0	0	-825	-936	1694
2404	57	2022-07-01	15	deokdam	2	DWG KIA	Red	bot	Ashe	1	3	1	8	0	0	0	-1782	-1736	1694
2405	57	2022-07-01	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	2	3	8	0	0	0	-814	294	1694
2406	58	2022-07-01	41	Nuguri	2	DWG KIA	Blue	top	Sejuani	1	4	3	9	0	1	1	1157	844	2236
2407	58	2022-07-01	7	Canyon	2	DWG KIA	Blue	jng	Viego	1	7	2	8	0	1	1	1032	372	2236
2408	58	2022-07-01	52	ShowMaker	2	DWG KIA	Blue	mid	Lissandra	1	1	2	7	0	1	1	-376	-287	2236
2409	58	2022-07-01	15	deokdam	2	DWG KIA	Blue	bot	Zeri	1	10	1	6	0	1	1	-609	-848	2236
2410	58	2022-07-01	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	1	1	2	16	0	1	1	190	-256	2236
2411	58	2022-07-01	49	Rascal	2	KT Rolster	Red	top	Gnar	0	2	5	6	1	0	0	-1157	-844	2236
2412	58	2022-07-01	12	Cuzz	6	KT Rolster	Red	jng	Wukong	0	1	5	4	1	0	0	-1032	-372	2236
2413	58	2022-07-01	58	VicLa	6	KT Rolster	Red	mid	Corki	0	1	4	5	1	0	0	376	287	2236
2414	58	2022-07-01	1	Aiming	6	KT Rolster	Red	bot	Jinx	0	6	2	2	1	0	0	609	848	2236
2415	58	2022-07-01	38	Life	6	KT Rolster	Red	sup	Nautilus	0	0	7	7	1	0	0	-190	256	2236
2416	59	2022-07-01	62	Zeus	6	T1	Blue	top	Gwen	1	4	3	9	0	1	0	-217	325	2340
2417	59	2022-07-01	42	Oner	10	T1	Blue	jng	Lee Sin	1	5	1	7	0	1	0	113	0	2340
2418	59	2022-07-01	22	Faker	10	T1	Blue	mid	Corki	1	6	3	5	0	1	0	-545	-708	2340
2419	59	2022-07-01	26	Gumayusi	10	T1	Blue	bot	Senna	1	3	3	8	0	1	0	-2585	-2432	2340
2420	59	2022-07-01	33	Keria	10	T1	Blue	sup	Tahm Kench	1	0	0	11	0	1	0	1036	2148	2340
2421	59	2022-07-01	35	Kingen	10	DRX	Red	top	Gnar	0	2	6	2	1	0	1	217	-325	2340
2422	59	2022-07-01	47	Pyosik	1	DRX	Red	jng	Hecarim	0	2	3	5	1	0	1	-113	0	2340
2423	59	2022-07-01	61	Zeka	1	DRX	Red	mid	Ahri	0	0	2	6	1	0	1	545	708	2340
2424	59	2022-07-01	13	Deft	1	DRX	Red	bot	Kalista	0	4	3	4	1	0	1	2585	2432	2340
2425	59	2022-07-01	4	BeryL	1	DRX	Red	sup	Amumu	0	2	4	7	1	0	1	-1036	-2148	2340
2426	60	2022-07-01	62	Zeus	1	T1	Blue	top	Fiora	1	5	0	6	0	0	1	684	-2	1795
2427	60	2022-07-01	42	Oner	10	T1	Blue	jng	Viego	1	5	0	9	0	0	1	-320	165	1795
2428	60	2022-07-01	22	Faker	10	T1	Blue	mid	Swain	1	0	1	7	0	0	1	-514	-486	1795
2429	60	2022-07-01	26	Gumayusi	10	T1	Blue	bot	Senna	1	2	0	12	0	0	1	-1749	-2566	1795
2430	60	2022-07-01	33	Keria	10	T1	Blue	sup	Seraphine	1	4	1	8	0	0	1	1433	2119	1795
2431	60	2022-07-01	35	Kingen	10	DRX	Red	top	Gwen	0	0	5	1	1	1	0	-684	2	1795
2432	60	2022-07-01	47	Pyosik	1	DRX	Red	jng	Poppy	0	0	3	1	1	1	0	320	-165	1795
2433	60	2022-07-01	61	Zeka	1	DRX	Red	mid	Viktor	0	1	2	0	1	1	0	514	486	1795
2434	60	2022-07-01	13	Deft	1	DRX	Red	bot	Kalista	0	1	2	1	1	1	0	1749	2566	1795
2435	60	2022-07-01	4	BeryL	1	DRX	Red	sup	Renata Glasc	0	0	4	2	1	1	0	-1433	-2119	1795
2436	61	2022-07-02	17	Dove	1	Liiv SANDBOX	Blue	top	Ornn	1	1	1	9	0	1	1	-1351	-381	1976
2437	61	2022-07-02	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	1	6	3	8	0	1	1	203	-431	1976
2438	61	2022-07-02	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	1	1	14	0	1	1	-179	-205	1976
2439	61	2022-07-02	46	Prince	8	Liiv SANDBOX	Blue	bot	Jinx	1	7	0	9	0	1	1	663	500	1976
2440	61	2022-07-02	30	Kael	8	Liiv SANDBOX	Blue	sup	Thresh	1	1	2	14	0	1	1	-70	48	1976
2441	61	2022-07-02	54	Sw0rd	8	Fredit BRION	Red	top	Gangplank	0	1	2	3	1	0	0	1351	381	1976
2442	61	2022-07-02	57	UmTi	3	Fredit BRION	Red	jng	Viego	0	4	1	0	1	0	0	-203	431	1976
2443	61	2022-07-02	36	Lava	3	Fredit BRION	Red	mid	LeBlanc	0	1	4	2	1	0	0	179	205	1976
2444	61	2022-07-02	27	Hena	3	Fredit BRION	Red	bot	Aphelios	0	0	3	2	1	0	0	-663	-500	1976
2445	61	2022-07-02	14	Delight	3	Fredit BRION	Red	sup	Tahm Kench	0	0	6	1	1	0	0	70	-48	1976
2446	62	2022-07-02	54	Sw0rd	3	Fredit BRION	Blue	top	Gangplank	0	1	1	3	0	0	0	-65	-90	1565
2447	62	2022-07-02	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	1	4	4	0	0	0	-477	-203	1565
2448	62	2022-07-02	36	Lava	3	Fredit BRION	Blue	mid	Swain	0	1	3	3	0	0	0	17	284	1565
2449	62	2022-07-02	27	Hena	3	Fredit BRION	Blue	bot	Jinx	0	2	2	3	0	0	0	-1499	-867	1565
2450	62	2022-07-02	14	Delight	3	Fredit BRION	Blue	sup	Braum	0	0	2	5	0	0	0	-99	382	1565
2451	62	2022-07-02	17	Dove	3	Liiv SANDBOX	Red	top	Ornn	1	1	1	9	1	1	1	65	90	1565
2452	62	2022-07-02	11	Croco	8	Liiv SANDBOX	Red	jng	Lee Sin	1	2	1	7	1	1	1	477	203	1565
2453	62	2022-07-02	10	Clozer	8	Liiv SANDBOX	Red	mid	Sylas	1	5	2	6	1	1	1	-17	-284	1565
2454	62	2022-07-02	46	Prince	8	Liiv SANDBOX	Red	bot	Ezreal	1	3	1	6	1	1	1	1499	867	1565
2455	62	2022-07-02	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	1	1	0	11	1	1	1	99	-382	1565
2456	63	2022-07-02	16	Doran	8	Gen.G	Blue	top	Gnar	1	2	0	5	0	1	1	2871	1792	1790
2457	63	2022-07-02	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	1	1	9	0	1	1	834	650	1790
2458	63	2022-07-02	9	Chovy	4	Gen.G	Blue	mid	Azir	1	5	0	3	0	1	1	1545	1039	1790
2459	63	2022-07-02	50	Ruler	4	Gen.G	Blue	bot	Ezreal	1	5	1	5	0	1	1	444	45	1790
2460	63	2022-07-02	37	Lehends	4	Gen.G	Blue	sup	Renata Glasc	1	0	1	9	0	1	1	-492	-76	1790
2461	63	2022-07-02	34	Kiin	4	Kwangdong Freecs	Red	top	Ornn	0	0	4	1	1	0	0	-2871	-1792	1790
2462	63	2022-07-02	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	0	2	3	0	1	0	0	-834	-650	1790
2463	63	2022-07-02	23	FATE	7	Kwangdong Freecs	Red	mid	Lissandra	0	0	1	0	1	0	0	-1545	-1039	1790
2464	63	2022-07-02	56	Teddy	7	Kwangdong Freecs	Red	bot	Kalista	0	0	3	2	1	0	0	-444	-45	1790
2465	63	2022-07-02	28	Hoit	7	Kwangdong Freecs	Red	sup	Ashe	0	1	2	2	1	0	0	492	76	1790
2466	64	2022-07-02	16	Doran	7	Gen.G	Blue	top	Sejuani	1	0	0	6	0	0	1	387	-99	1923
2467	64	2022-07-02	44	Peanut	4	Gen.G	Blue	jng	Wukong	1	4	0	6	0	0	1	327	-44	1923
2468	64	2022-07-02	9	Chovy	4	Gen.G	Blue	mid	Sylas	1	2	1	3	0	0	1	686	1519	1923
2469	64	2022-07-02	50	Ruler	4	Gen.G	Blue	bot	Ashe	1	3	0	4	0	0	1	277	1228	1923
2470	64	2022-07-02	37	Lehends	4	Gen.G	Blue	sup	Renata Glasc	1	1	1	8	0	0	1	338	-367	1923
2471	64	2022-07-02	34	Kiin	4	Kwangdong Freecs	Red	top	Gnar	0	0	2	1	1	1	0	-387	99	1923
2472	64	2022-07-02	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	0	2	2	0	1	1	0	-327	44	1923
2473	64	2022-07-02	23	FATE	7	Kwangdong Freecs	Red	mid	Ahri	0	0	2	1	1	1	0	-686	-1519	1923
2474	64	2022-07-02	56	Teddy	7	Kwangdong Freecs	Red	bot	Jhin	0	0	1	2	1	1	0	-277	-1228	1923
2475	64	2022-07-02	28	Hoit	7	Kwangdong Freecs	Red	sup	Rakan	0	0	3	2	1	1	0	-338	367	1923
2476	65	2022-07-03	41	Nuguri	7	DWG KIA	Blue	top	Gnar	1	2	1	2	1	0	1	1326	107	1857
2477	65	2022-07-03	7	Canyon	2	DWG KIA	Blue	jng	Xin Zhao	1	1	1	6	1	0	1	3	177	1857
2478	65	2022-07-03	52	ShowMaker	2	DWG KIA	Blue	mid	Corki	1	2	0	5	1	0	1	243	526	1857
2479	65	2022-07-03	15	deokdam	2	DWG KIA	Blue	bot	Zeri	1	3	1	4	1	0	1	210	-74	1857
2480	65	2022-07-03	32	Kellin	2	DWG KIA	Blue	sup	Lulu	1	1	0	7	1	0	1	645	220	1857
2481	65	2022-07-03	6	Canna	2	Nongshim RedForce	Red	top	Ornn	0	1	1	1	0	1	0	-1326	-107	1857
2482	65	2022-07-03	18	Dread	9	Nongshim RedForce	Red	jng	Viego	0	0	3	3	0	1	0	-3	-177	1857
2483	65	2022-07-03	3	Bdd	9	Nongshim RedForce	Red	mid	Azir	0	0	1	0	0	1	0	-243	-526	1857
2484	65	2022-07-03	25	Ghost	9	Nongshim RedForce	Red	bot	Twitch	0	2	3	0	0	1	0	-210	74	1857
2485	65	2022-07-03	45	Peter	9	Nongshim RedForce	Red	sup	Yuumi	0	0	1	2	0	1	0	-645	-220	1857
2486	66	2022-07-03	41	Nuguri	9	DWG KIA	Blue	top	Sejuani	1	3	2	9	0	0	1	550	-257	1590
2487	66	2022-07-03	7	Canyon	2	DWG KIA	Blue	jng	Viego	1	1	3	9	0	0	1	90	536	1590
2488	66	2022-07-03	52	ShowMaker	2	DWG KIA	Blue	mid	Azir	1	4	1	11	0	0	1	-293	44	1590
2489	66	2022-07-03	15	deokdam	2	DWG KIA	Blue	bot	Zeri	1	8	0	6	0	0	1	162	-8	1590
2490	66	2022-07-03	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	1	3	0	14	0	0	1	-611	329	1590
2491	66	2022-07-03	6	Canna	2	Nongshim RedForce	Red	top	Mordekaiser	0	0	5	3	1	1	0	-550	257	1590
2492	66	2022-07-03	18	Dread	9	Nongshim RedForce	Red	jng	Wukong	0	2	4	3	1	1	0	-90	-536	1590
2493	66	2022-07-03	3	Bdd	9	Nongshim RedForce	Red	mid	Yone	0	1	3	2	1	1	0	293	-44	1590
2494	66	2022-07-03	25	Ghost	9	Nongshim RedForce	Red	bot	Seraphine	0	1	2	4	1	1	0	-162	8	1590
2495	66	2022-07-03	20	Effort	9	Nongshim RedForce	Red	sup	Senna	0	2	5	4	1	1	0	611	-329	1590
2496	67	2022-07-03	49	Rascal	9	KT Rolster	Blue	top	Gwen	1	8	0	5	1	0	1	1451	715	1862
2497	67	2022-07-03	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	1	3	2	7	1	0	1	-65	-276	1862
2498	67	2022-07-03	58	VicLa	6	KT Rolster	Blue	mid	Azir	1	0	1	11	1	0	1	-930	450	1862
2499	67	2022-07-03	1	Aiming	6	KT Rolster	Blue	bot	Aphelios	1	3	1	5	1	0	1	1446	1030	1862
2500	67	2022-07-03	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	0	2	9	1	0	1	-1323	-1666	1862
2501	67	2022-07-03	19	DuDu	6	Hanwha Life Esports	Red	top	Gnar	0	0	4	4	0	1	0	-1451	-715	1862
2502	67	2022-07-03	43	OnFleek	5	Hanwha Life Esports	Red	jng	Lee Sin	0	1	2	5	0	1	0	65	276	1862
2503	67	2022-07-03	31	Karis	5	Hanwha Life Esports	Red	mid	Lissandra	0	3	3	3	0	1	0	930	-450	1862
2504	67	2022-07-03	51	SamD	5	Hanwha Life Esports	Red	bot	Senna	0	0	2	5	0	1	0	-1446	-1030	1862
2505	67	2022-07-03	59	Vsta	5	Hanwha Life Esports	Red	sup	Tahm Kench	0	2	3	2	0	1	0	1323	1666	1862
2506	68	2022-07-03	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	0	1	3	0	0	1	1	278	-930	1801
2507	68	2022-07-03	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Viego	0	0	3	1	0	1	1	766	117	1801
2508	68	2022-07-03	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	0	0	4	0	0	1	1	-635	94	1801
2509	68	2022-07-03	51	SamD	5	Hanwha Life Esports	Blue	bot	Jinx	0	0	4	0	0	1	1	-699	-321	1801
2510	68	2022-07-03	59	Vsta	5	Hanwha Life Esports	Blue	sup	Thresh	0	0	3	0	0	1	1	-315	-174	1801
2511	68	2022-07-03	49	Rascal	5	KT Rolster	Red	top	Gwen	1	3	1	9	1	0	0	-278	930	1801
2512	68	2022-07-03	12	Cuzz	6	KT Rolster	Red	jng	Sejuani	1	2	0	11	1	0	0	-766	-117	1801
2513	68	2022-07-03	58	VicLa	6	KT Rolster	Red	mid	Yone	1	3	0	7	1	0	0	635	-94	1801
2514	68	2022-07-03	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	9	0	5	1	0	0	699	321	1801
2515	68	2022-07-03	38	Life	6	KT Rolster	Red	sup	Tahm Kench	1	0	0	14	1	0	0	315	174	1801
2516	69	2022-07-06	6	Canna	6	Nongshim RedForce	Blue	top	Tryndamere	1	6	1	5	1	1	1	148	-176	2105
2517	69	2022-07-06	18	Dread	9	Nongshim RedForce	Blue	jng	Viego	1	4	0	7	1	1	1	606	707	2105
2518	69	2022-07-06	3	Bdd	9	Nongshim RedForce	Blue	mid	Ahri	1	3	0	8	1	1	1	-75	-134	2105
2519	69	2022-07-06	25	Ghost	9	Nongshim RedForce	Blue	bot	Senna	1	0	0	11	1	1	1	-1846	-1927	2105
2520	69	2022-07-06	20	Effort	9	Nongshim RedForce	Blue	sup	Tahm Kench	1	2	1	9	1	1	1	1862	1905	2105
2521	69	2022-07-06	49	Rascal	9	KT Rolster	Red	top	Gwen	0	1	5	1	0	0	0	-148	176	2105
2522	69	2022-07-06	12	Cuzz	6	KT Rolster	Red	jng	Sejuani	0	0	3	2	0	0	0	-606	-707	2105
2523	69	2022-07-06	58	VicLa	6	KT Rolster	Red	mid	Corki	0	0	2	1	0	0	0	75	134	2105
2524	69	2022-07-06	1	Aiming	6	KT Rolster	Red	bot	Jinx	0	1	3	1	0	0	0	1846	1927	2105
2525	69	2022-07-06	38	Life	6	KT Rolster	Red	sup	Rakan	0	0	2	2	0	0	0	-1862	-1905	2105
2526	70	2022-07-06	49	Rascal	6	KT Rolster	Blue	top	Ornn	1	3	3	9	1	0	0	-401	-301	1835
2527	70	2022-07-06	12	Cuzz	6	KT Rolster	Blue	jng	Trundle	1	1	2	15	1	0	0	-859	-227	1835
2528	70	2022-07-06	58	VicLa	6	KT Rolster	Blue	mid	Corki	1	6	3	12	1	0	0	762	600	1835
2529	70	2022-07-06	1	Aiming	6	KT Rolster	Blue	bot	Aphelios	1	13	1	7	1	0	0	41	-11	1835
2530	70	2022-07-06	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	2	3	20	1	0	0	106	186	1835
2531	70	2022-07-06	6	Canna	6	Nongshim RedForce	Red	top	Gwen	0	4	5	1	0	1	1	401	301	1835
2532	70	2022-07-06	18	Dread	9	Nongshim RedForce	Red	jng	Vi	0	2	5	6	0	1	1	859	227	1835
2533	70	2022-07-06	3	Bdd	9	Nongshim RedForce	Red	mid	Azir	0	2	5	5	0	1	1	-762	-600	1835
2534	70	2022-07-06	25	Ghost	9	Nongshim RedForce	Red	bot	Xayah	0	1	5	4	0	1	1	-41	11	1835
2535	70	2022-07-06	20	Effort	9	Nongshim RedForce	Red	sup	Pyke	0	3	5	6	0	1	1	-106	-186	1835
2536	71	2022-07-06	6	Canna	9	Nongshim RedForce	Blue	top	Gnar	0	4	3	7	0	1	1	384	37	2360
2537	71	2022-07-06	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	4	4	4	0	1	1	313	70	2360
2538	71	2022-07-06	3	Bdd	9	Nongshim RedForce	Blue	mid	Lissandra	0	3	1	7	0	1	1	454	516	2360
2539	71	2022-07-06	25	Ghost	9	Nongshim RedForce	Blue	bot	Xayah	0	4	2	3	0	1	1	76	942	2360
2540	71	2022-07-06	20	Effort	9	Nongshim RedForce	Blue	sup	Rakan	0	0	3	7	0	1	1	30	-152	2360
2541	71	2022-07-06	49	Rascal	9	KT Rolster	Red	top	Sejuani	1	1	3	9	1	0	0	-384	-37	2360
2542	71	2022-07-06	12	Cuzz	6	KT Rolster	Red	jng	Viego	1	4	4	4	1	0	0	-313	-70	2360
2543	71	2022-07-06	58	VicLa	6	KT Rolster	Red	mid	Corki	1	4	4	4	1	0	0	-454	-516	2360
2544	71	2022-07-06	1	Aiming	6	KT Rolster	Red	bot	Ezreal	1	3	2	9	1	0	0	-76	-942	2360
2545	71	2022-07-06	38	Life	6	KT Rolster	Red	sup	Yuumi	1	1	2	11	1	0	0	-30	152	2360
2546	72	2022-07-06	34	Kiin	6	Kwangdong Freecs	Blue	top	Gangplank	1	3	0	2	0	1	1	956	103	1823
2547	72	2022-07-06	21	Ellim	7	Kwangdong Freecs	Blue	jng	Trundle	1	0	1	9	0	1	1	-565	-727	1823
2548	72	2022-07-06	23	FATE	7	Kwangdong Freecs	Blue	mid	Ryze	1	1	0	3	0	1	1	-176	299	1823
2549	72	2022-07-06	56	Teddy	7	Kwangdong Freecs	Blue	bot	Lucian	1	6	2	3	0	1	1	2088	236	1823
2550	72	2022-07-06	39	Moham	7	Kwangdong Freecs	Blue	sup	Nami	1	0	0	9	0	1	1	127	373	1823
2551	72	2022-07-06	54	Sw0rd	7	Fredit BRION	Red	top	Gnar	0	0	3	0	1	0	0	-956	-103	1823
2552	72	2022-07-06	57	UmTi	3	Fredit BRION	Red	jng	Wukong	0	2	2	0	1	0	0	565	727	1823
2553	72	2022-07-06	36	Lava	3	Fredit BRION	Red	mid	Viktor	0	0	1	1	1	0	0	176	-299	1823
2554	72	2022-07-06	24	Gamin	3	Fredit BRION	Red	bot	Aphelios	0	0	4	1	1	0	0	-2088	-236	1823
2555	72	2022-07-06	14	Delight	3	Fredit BRION	Red	sup	Lulu	0	1	0	1	1	0	0	-127	-373	1823
2556	73	2022-07-06	34	Kiin	3	Kwangdong Freecs	Blue	top	Gwen	1	1	2	6	1	1	1	755	671	2828
2557	73	2022-07-06	21	Ellim	7	Kwangdong Freecs	Blue	jng	Wukong	1	2	1	5	1	1	1	789	99	2828
2558	73	2022-07-06	23	FATE	7	Kwangdong Freecs	Blue	mid	Swain	1	2	1	7	1	1	1	-856	-511	2828
2559	73	2022-07-06	56	Teddy	7	Kwangdong Freecs	Blue	bot	Lucian	1	5	4	2	1	1	1	-1504	-644	2828
2560	73	2022-07-06	39	Moham	7	Kwangdong Freecs	Blue	sup	Nami	1	1	1	6	1	1	1	-726	-881	2828
2561	73	2022-07-06	54	Sw0rd	7	Fredit BRION	Red	top	Gangplank	0	4	3	2	0	0	0	-755	-671	2828
2562	73	2022-07-06	57	UmTi	3	Fredit BRION	Red	jng	Poppy	0	0	2	5	0	0	0	-789	-99	2828
2563	73	2022-07-06	36	Lava	3	Fredit BRION	Red	mid	Viktor	0	1	2	3	0	0	0	856	511	2828
2564	73	2022-07-06	27	Hena	3	Fredit BRION	Red	bot	Kog'Maw	0	3	2	3	0	0	0	1504	644	2828
2565	73	2022-07-06	14	Delight	3	Fredit BRION	Red	sup	Lulu	0	1	2	7	0	0	0	726	881	2828
2566	74	2022-07-07	41	Nuguri	3	DWG KIA	Blue	top	Sejuani	0	2	5	1	0	0	0	-279	-564	1893
2567	74	2022-07-07	7	Canyon	2	DWG KIA	Blue	jng	Bel'Veth	0	0	3	2	0	0	0	110	185	1893
2568	74	2022-07-07	52	ShowMaker	2	DWG KIA	Blue	mid	Swain	0	1	5	2	0	0	0	-1721	-558	1893
2569	74	2022-07-07	15	deokdam	2	DWG KIA	Blue	bot	Ezreal	0	2	2	1	0	0	0	-1465	-1418	1893
2570	74	2022-07-07	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	0	0	5	5	0	0	0	-726	-180	1893
2571	74	2022-07-07	35	Kingen	2	DRX	Red	top	Gnar	1	4	1	9	1	1	1	279	564	1893
2572	74	2022-07-07	47	Pyosik	1	DRX	Red	jng	Trundle	1	3	0	12	1	1	1	-110	-185	1893
2573	74	2022-07-07	61	Zeka	1	DRX	Red	mid	Corki	1	5	0	10	1	1	1	1721	558	1893
2574	74	2022-07-07	13	Deft	1	DRX	Red	bot	Kalista	1	7	1	5	1	1	1	1465	1418	1893
2575	74	2022-07-07	4	BeryL	1	DRX	Red	sup	Amumu	1	1	3	15	1	1	1	726	180	1893
2576	75	2022-07-07	41	Nuguri	1	DWG KIA	Blue	top	Gwen	1	6	3	2	0	1	1	774	9	2423
2577	75	2022-07-07	7	Canyon	2	DWG KIA	Blue	jng	Wukong	1	1	2	6	0	1	1	194	178	2423
2578	75	2022-07-07	52	ShowMaker	2	DWG KIA	Blue	mid	Sylas	1	1	1	4	0	1	1	-619	-191	2423
2579	75	2022-07-07	15	deokdam	2	DWG KIA	Blue	bot	Lucian	1	7	0	4	0	1	1	1025	1173	2423
2580	75	2022-07-07	32	Kellin	2	DWG KIA	Blue	sup	Nami	1	0	1	12	0	1	1	-440	-1376	2423
2581	75	2022-07-07	35	Kingen	2	DRX	Red	top	Gnar	0	1	4	2	1	0	0	-774	-9	2423
2582	75	2022-07-07	47	Pyosik	1	DRX	Red	jng	Trundle	0	1	1	4	1	0	0	-194	-178	2423
2583	75	2022-07-07	61	Zeka	1	DRX	Red	mid	Corki	0	2	3	3	1	0	0	619	191	2423
2584	75	2022-07-07	13	Deft	1	DRX	Red	bot	Senna	0	2	4	3	1	0	0	-1025	-1173	2423
2585	75	2022-07-07	4	BeryL	1	DRX	Red	sup	Tahm Kench	0	1	3	3	1	0	0	440	1376	2423
2586	76	2022-07-07	41	Nuguri	1	DWG KIA	Blue	top	Gragas	0	1	3	1	0	0	0	-622	44	2143
2587	76	2022-07-07	7	Canyon	2	DWG KIA	Blue	jng	Wukong	0	1	2	3	0	0	0	-1893	-573	2143
2588	76	2022-07-07	52	ShowMaker	2	DWG KIA	Blue	mid	Lissandra	0	2	4	0	0	0	0	-61	120	2143
2589	76	2022-07-07	15	deokdam	2	DWG KIA	Blue	bot	Xayah	0	2	3	4	0	0	0	-477	238	2143
2590	76	2022-07-07	32	Kellin	2	DWG KIA	Blue	sup	Rakan	0	0	3	6	0	0	0	56	-729	2143
2591	76	2022-07-07	35	Kingen	2	DRX	Red	top	Gnar	1	1	1	9	1	1	1	622	-44	2143
2592	76	2022-07-07	47	Pyosik	1	DRX	Red	jng	Poppy	1	4	2	8	1	1	1	1893	573	2143
2593	76	2022-07-07	61	Zeka	1	DRX	Red	mid	Swain	1	4	0	4	1	1	1	61	-120	2143
2594	76	2022-07-07	13	Deft	1	DRX	Red	bot	Lucian	1	3	1	6	1	1	1	477	-238	2143
2595	76	2022-07-07	4	BeryL	1	DRX	Red	sup	Nami	1	3	2	10	1	1	1	-56	729	2143
2596	77	2022-07-07	19	DuDu	1	Hanwha Life Esports	Blue	top	Gnar	1	5	3	3	0	1	0	643	111	1871
2597	77	2022-07-07	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	1	4	1	9	0	1	0	368	-292	1871
2598	77	2022-07-07	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	1	2	3	9	0	1	0	192	-166	1871
2599	77	2022-07-07	51	SamD	5	Hanwha Life Esports	Blue	bot	Kog'Maw	1	4	6	9	0	1	0	287	80	1871
2600	77	2022-07-07	59	Vsta	5	Hanwha Life Esports	Blue	sup	Lulu	1	1	4	13	0	1	0	230	183	1871
2601	77	2022-07-07	17	Dove	5	Liiv SANDBOX	Red	top	Gwen	0	3	4	2	1	0	1	-643	-111	1871
2602	77	2022-07-07	11	Croco	8	Liiv SANDBOX	Red	jng	Lee Sin	0	3	2	5	1	0	1	-368	292	1871
2603	77	2022-07-07	10	Clozer	8	Liiv SANDBOX	Red	mid	Corki	0	6	3	5	1	0	1	-192	166	1871
2604	77	2022-07-07	46	Prince	8	Liiv SANDBOX	Red	bot	Lucian	0	3	4	3	1	0	1	-287	-80	1871
2605	77	2022-07-07	30	Kael	8	Liiv SANDBOX	Red	sup	Nami	0	2	3	11	1	0	1	-230	-183	1871
2606	78	2022-07-07	17	Dove	8	Liiv SANDBOX	Blue	top	Gangplank	1	7	0	5	1	0	1	981	-52	1495
2607	78	2022-07-07	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	1	3	3	10	1	0	1	738	342	1495
2608	78	2022-07-07	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	1	0	1	9	1	0	1	255	461	1495
2609	78	2022-07-07	46	Prince	8	Liiv SANDBOX	Blue	bot	Jinx	1	9	0	9	1	0	1	3709	2240	1495
2610	78	2022-07-07	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	1	2	1	12	1	0	1	528	37	1495
2611	78	2022-07-07	19	DuDu	8	Hanwha Life Esports	Red	top	Gnar	0	2	3	2	0	1	0	-981	52	1495
2612	78	2022-07-07	43	OnFleek	5	Hanwha Life Esports	Red	jng	Viego	0	3	5	1	0	1	0	-738	-342	1495
2613	78	2022-07-07	31	Karis	5	Hanwha Life Esports	Red	mid	Viktor	0	0	5	3	0	1	0	-255	-461	1495
2614	78	2022-07-07	51	SamD	5	Hanwha Life Esports	Red	bot	Aphelios	0	0	4	2	0	1	0	-3709	-2240	1495
2615	78	2022-07-07	59	Vsta	5	Hanwha Life Esports	Red	sup	Rakan	0	0	4	2	0	1	0	-528	-37	1495
2616	79	2022-07-07	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	0	2	4	0	0	1	0	1422	487	1661
2617	79	2022-07-07	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Lee Sin	0	0	4	3	0	1	0	138	140	1661
2618	79	2022-07-07	31	Karis	5	Hanwha Life Esports	Blue	mid	Viktor	0	2	2	1	0	1	0	-313	-122	1661
2619	79	2022-07-07	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	0	1	4	1	0	1	0	-1107	20	1661
2620	79	2022-07-07	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	0	0	3	3	0	1	0	-1049	-807	1661
2621	79	2022-07-07	17	Dove	5	Liiv SANDBOX	Red	top	Ornn	1	0	2	10	1	0	1	-1422	-487	1661
2622	79	2022-07-07	11	Croco	8	Liiv SANDBOX	Red	jng	Volibear	1	4	2	10	1	0	1	-138	-140	1661
2623	79	2022-07-07	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	6	1	5	1	0	1	313	122	1661
2624	79	2022-07-07	46	Prince	8	Liiv SANDBOX	Red	bot	Ezreal	1	5	0	6	1	0	1	1107	-20	1661
2625	79	2022-07-07	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	2	0	12	1	0	1	1049	807	1661
2626	80	2022-07-08	16	Doran	8	Gen.G	Blue	top	Gnar	1	0	2	0	1	0	1	-63	406	1821
2627	80	2022-07-08	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	3	0	4	1	0	1	532	809	1821
2628	80	2022-07-08	9	Chovy	4	Gen.G	Blue	mid	Azir	1	4	0	3	1	0	1	1194	547	1821
2629	80	2022-07-08	50	Ruler	4	Gen.G	Blue	bot	Jinx	1	1	1	4	1	0	1	1894	511	1821
2630	80	2022-07-08	37	Lehends	4	Gen.G	Blue	sup	Tahm Kench	1	1	0	7	1	0	1	764	451	1821
2631	80	2022-07-08	62	Zeus	4	T1	Red	top	Gangplank	0	2	1	0	0	1	0	63	-406	1821
2632	80	2022-07-08	42	Oner	10	T1	Red	jng	Wukong	0	0	2	2	0	1	0	-532	-809	1821
2633	80	2022-07-08	22	Faker	10	T1	Red	mid	Swain	0	0	1	2	0	1	0	-1194	-547	1821
2634	80	2022-07-08	26	Gumayusi	10	T1	Red	bot	Aphelios	0	0	2	2	0	1	0	-1894	-511	1821
2635	80	2022-07-08	33	Keria	10	T1	Red	sup	Renata Glasc	0	1	3	1	0	1	0	-764	-451	1821
2636	81	2022-07-08	62	Zeus	10	T1	Blue	top	Gnar	1	2	2	5	1	1	1	191	1028	1820
2637	81	2022-07-08	42	Oner	10	T1	Blue	jng	Viego	1	2	1	4	1	1	1	243	54	1820
2638	81	2022-07-08	22	Faker	10	T1	Blue	mid	Lissandra	1	2	1	6	1	1	1	-130	-781	1820
2639	81	2022-07-08	26	Gumayusi	10	T1	Blue	bot	Draven	1	4	1	6	1	1	1	581	673	1820
2640	81	2022-07-08	33	Keria	10	T1	Blue	sup	Pyke	1	3	3	3	1	1	1	790	509	1820
2641	81	2022-07-08	16	Doran	10	Gen.G	Red	top	Gangplank	0	1	3	6	0	0	0	-191	-1028	1820
2642	81	2022-07-08	44	Peanut	4	Gen.G	Red	jng	Wukong	0	2	3	4	0	0	0	-243	-54	1820
2643	81	2022-07-08	9	Chovy	4	Gen.G	Red	mid	Akali	0	5	1	0	0	0	0	130	781	1820
2644	81	2022-07-08	50	Ruler	4	Gen.G	Red	bot	Ashe	0	0	2	5	0	0	0	-581	-673	1820
2645	81	2022-07-08	37	Lehends	4	Gen.G	Red	sup	Renata Glasc	0	0	4	3	0	0	0	-790	-509	1820
2646	82	2022-07-08	16	Doran	4	Gen.G	Blue	top	Gragas	0	0	2	2	1	1	1	-335	139	1903
2647	82	2022-07-08	44	Peanut	4	Gen.G	Blue	jng	Viego	0	2	2	0	1	1	1	837	464	1903
2648	82	2022-07-08	9	Chovy	4	Gen.G	Blue	mid	Corki	0	0	2	1	1	1	1	47	70	1903
2649	82	2022-07-08	50	Ruler	4	Gen.G	Blue	bot	Senna	0	1	1	1	1	1	1	-775	-1246	1903
2650	82	2022-07-08	37	Lehends	4	Gen.G	Blue	sup	Tahm Kench	0	0	2	2	1	1	1	1139	1408	1903
2651	82	2022-07-08	62	Zeus	4	T1	Red	top	Gnar	1	1	1	5	0	0	0	335	-139	1903
2652	82	2022-07-08	42	Oner	10	T1	Red	jng	Lee Sin	1	6	0	3	0	0	0	-837	-464	1903
2653	82	2022-07-08	22	Faker	10	T1	Red	mid	Lissandra	1	1	0	6	0	0	0	-47	-70	1903
2654	82	2022-07-08	26	Gumayusi	10	T1	Red	bot	Ezreal	1	1	2	2	0	0	0	775	1246	1903
2655	82	2022-07-08	33	Keria	10	T1	Red	sup	Yuumi	1	0	0	8	0	0	0	-1139	-1408	1903
2656	83	2022-07-08	34	Kiin	10	Kwangdong Freecs	Blue	top	Gnar	1	1	1	5	0	0	1	511	282	1755
2657	83	2022-07-08	21	Ellim	7	Kwangdong Freecs	Blue	jng	Trundle	1	3	2	8	0	0	1	191	-520	1755
2658	83	2022-07-08	23	FATE	7	Kwangdong Freecs	Blue	mid	Taliyah	1	1	0	7	0	0	1	-57	188	1755
2659	83	2022-07-08	56	Teddy	7	Kwangdong Freecs	Blue	bot	Kalista	1	5	1	3	0	0	1	28	236	1755
2660	83	2022-07-08	39	Moham	7	Kwangdong Freecs	Blue	sup	Amumu	1	2	2	6	0	0	1	17	-657	1755
2661	83	2022-07-08	49	Rascal	7	KT Rolster	Red	top	Gwen	0	1	3	0	1	1	0	-511	-282	1755
2662	83	2022-07-08	12	Cuzz	6	KT Rolster	Red	jng	Wukong	0	0	2	5	1	1	0	-191	520	1755
2663	83	2022-07-08	58	VicLa	6	KT Rolster	Red	mid	Viktor	0	0	2	3	1	1	0	57	-188	1755
2664	83	2022-07-08	1	Aiming	6	KT Rolster	Red	bot	Ashe	0	5	1	0	1	1	0	-28	-236	1755
2665	83	2022-07-08	38	Life	6	KT Rolster	Red	sup	Renata Glasc	0	0	4	6	1	1	0	-17	657	1755
2666	84	2022-07-08	49	Rascal	6	KT Rolster	Blue	top	Sejuani	1	1	1	8	1	0	1	1080	1416	1544
2667	84	2022-07-08	12	Cuzz	6	KT Rolster	Blue	jng	Viego	1	5	3	4	1	0	1	527	903	1544
2668	84	2022-07-08	58	VicLa	6	KT Rolster	Blue	mid	Azir	1	1	1	8	1	0	1	-620	-68	1544
2669	84	2022-07-08	1	Aiming	6	KT Rolster	Blue	bot	Zeri	1	7	0	3	1	0	1	940	411	1544
2670	84	2022-07-08	38	Life	6	KT Rolster	Blue	sup	Yuumi	1	1	0	10	1	0	1	440	1381	1544
2671	84	2022-07-08	34	Kiin	6	Kwangdong Freecs	Red	top	Gwen	0	1	5	0	0	1	0	-1080	-1416	1544
2672	84	2022-07-08	21	Ellim	7	Kwangdong Freecs	Red	jng	Wukong	0	2	2	2	0	1	0	-527	-903	1544
2673	84	2022-07-08	23	FATE	7	Kwangdong Freecs	Red	mid	Ryze	0	2	2	3	0	1	0	620	68	1544
2674	84	2022-07-08	56	Teddy	7	Kwangdong Freecs	Red	bot	Jinx	0	0	3	2	0	1	0	-940	-411	1544
2675	84	2022-07-08	39	Moham	7	Kwangdong Freecs	Red	sup	Lulu	0	0	3	2	0	1	0	-440	-1381	1544
2676	85	2022-07-08	34	Kiin	7	Kwangdong Freecs	Blue	top	Fiora	1	4	1	5	0	1	1	1952	370	1989
2677	85	2022-07-08	21	Ellim	7	Kwangdong Freecs	Blue	jng	Lee Sin	1	7	1	6	0	1	1	2115	758	1989
2678	85	2022-07-08	23	FATE	7	Kwangdong Freecs	Blue	mid	Lissandra	1	2	2	11	0	1	1	122	14	1989
2679	85	2022-07-08	56	Teddy	7	Kwangdong Freecs	Blue	bot	Senna	1	1	1	10	0	1	1	143	-820	1989
2680	85	2022-07-08	39	Moham	7	Kwangdong Freecs	Blue	sup	Seraphine	1	1	1	8	0	1	1	2038	2045	1989
2681	85	2022-07-08	49	Rascal	7	KT Rolster	Red	top	Gwen	0	0	5	3	1	0	0	-1952	-370	1989
2682	85	2022-07-08	12	Cuzz	6	KT Rolster	Red	jng	Trundle	0	1	4	1	1	0	0	-2115	-758	1989
2683	85	2022-07-08	58	VicLa	6	KT Rolster	Red	mid	Yone	0	2	4	4	1	0	0	-122	-14	1989
2684	85	2022-07-08	1	Aiming	6	KT Rolster	Red	bot	Ezreal	0	3	1	3	1	0	0	-143	820	1989
2685	85	2022-07-08	38	Life	6	KT Rolster	Red	sup	Yuumi	0	0	1	6	1	0	0	-2038	-2045	1989
2686	86	2022-07-09	6	Canna	6	Nongshim RedForce	Blue	top	Gnar	0	1	4	2	0	1	0	408	-63	2206
2687	86	2022-07-09	18	Dread	9	Nongshim RedForce	Blue	jng	Lee Sin	0	1	5	3	0	1	0	301	87	2206
2688	86	2022-07-09	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	0	3	2	1	0	1	0	-72	290	2206
2689	86	2022-07-09	25	Ghost	9	Nongshim RedForce	Blue	bot	Lucian	0	1	4	4	0	1	0	-375	-570	2206
2690	86	2022-07-09	20	Effort	9	Nongshim RedForce	Blue	sup	Nami	0	0	2	5	0	1	0	-650	-175	2206
2691	86	2022-07-09	17	Dove	9	Liiv SANDBOX	Red	top	Ornn	1	3	1	11	1	0	1	-408	63	2206
2692	86	2022-07-09	11	Croco	8	Liiv SANDBOX	Red	jng	Vi	1	6	0	7	1	0	1	-301	-87	2206
2693	86	2022-07-09	10	Clozer	8	Liiv SANDBOX	Red	mid	Corki	1	4	0	7	1	0	1	72	-290	2206
2694	86	2022-07-09	46	Prince	8	Liiv SANDBOX	Red	bot	Kalista	1	4	0	5	1	0	1	375	570	2206
2695	86	2022-07-09	30	Kael	8	Liiv SANDBOX	Red	sup	Rell	1	0	5	13	1	0	1	650	175	2206
2696	87	2022-07-09	6	Canna	8	Nongshim RedForce	Blue	top	Sejuani	0	1	1	5	0	1	0	-67	-300	1774
2697	87	2022-07-09	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	3	5	3	0	1	0	294	23	1774
2698	87	2022-07-09	3	Bdd	9	Nongshim RedForce	Blue	mid	Zoe	0	1	3	5	0	1	0	-230	-60	1774
2699	87	2022-07-09	25	Ghost	9	Nongshim RedForce	Blue	bot	Lucian	0	4	4	4	0	1	0	-2235	-964	1774
2700	87	2022-07-09	20	Effort	9	Nongshim RedForce	Blue	sup	Nami	0	1	3	7	0	1	0	179	411	1774
2701	87	2022-07-09	17	Dove	9	Liiv SANDBOX	Red	top	Gnar	1	3	0	5	1	0	1	67	300	1774
2702	87	2022-07-09	11	Croco	8	Liiv SANDBOX	Red	jng	Trundle	1	1	1	9	1	0	1	-294	-23	1774
2703	87	2022-07-09	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	5	2	5	1	0	1	230	60	1774
2704	87	2022-07-09	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	1	7	3	8	1	0	1	2235	964	1774
2705	87	2022-07-09	30	Kael	8	Liiv SANDBOX	Red	sup	Nautilus	1	0	4	12	1	0	1	-179	-411	1774
2706	88	2022-07-09	19	DuDu	8	Hanwha Life Esports	Blue	top	Gnar	0	4	3	2	0	1	1	-526	476	2532
2707	88	2022-07-09	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Viego	0	6	2	7	0	1	1	-126	-391	2532
2708	88	2022-07-09	31	Karis	5	Hanwha Life Esports	Blue	mid	Ahri	0	1	4	7	0	1	1	-138	-596	2532
2709	88	2022-07-09	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	0	4	6	5	0	1	1	1888	1367	2532
2710	88	2022-07-09	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	0	0	5	10	0	1	1	-846	-1432	2532
2711	88	2022-07-09	41	Nuguri	5	DWG KIA	Red	top	Gangplank	1	3	1	10	1	0	0	526	-476	2532
2712	88	2022-07-09	7	Canyon	2	DWG KIA	Red	jng	Taliyah	1	8	3	9	1	0	0	126	391	2532
2713	88	2022-07-09	52	ShowMaker	2	DWG KIA	Red	mid	Lissandra	1	2	2	11	1	0	0	138	596	2532
2714	88	2022-07-09	15	deokdam	2	DWG KIA	Red	bot	Senna	1	5	6	12	1	0	0	-1888	-1367	2532
2715	88	2022-07-09	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	2	3	10	1	0	0	846	1432	2532
2716	89	2022-07-09	19	DuDu	2	Hanwha Life Esports	Blue	top	Sejuani	0	1	4	1	0	1	0	-644	181	1678
2717	89	2022-07-09	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Xin Zhao	0	0	4	4	0	1	0	-377	-555	1678
2718	89	2022-07-09	31	Karis	5	Hanwha Life Esports	Blue	mid	Ahri	0	2	3	3	0	1	0	-560	-134	1678
2719	89	2022-07-09	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	0	3	5	2	0	1	0	-1582	-1334	1678
2720	89	2022-07-09	59	Vsta	5	Hanwha Life Esports	Blue	sup	Renata Glasc	0	0	4	6	0	1	0	-529	-1024	1678
2721	89	2022-07-09	41	Nuguri	5	DWG KIA	Red	top	Gnar	1	5	1	4	1	0	1	644	-181	1678
2722	89	2022-07-09	7	Canyon	2	DWG KIA	Red	jng	Trundle	1	1	1	11	1	0	1	377	555	1678
2723	89	2022-07-09	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	1	7	1	8	1	0	1	560	134	1678
2724	89	2022-07-09	15	deokdam	2	DWG KIA	Red	bot	Aphelios	1	5	2	10	1	0	1	1582	1334	1678
2725	89	2022-07-09	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	2	1	12	1	0	1	529	1024	1678
2726	90	2022-07-10	35	Kingen	2	DRX	Blue	top	Shyvana	0	1	2	2	0	1	1	-285	-211	2643
2727	90	2022-07-10	47	Pyosik	1	DRX	Blue	jng	Lee Sin	0	6	3	4	0	1	1	-480	-340	2643
2728	90	2022-07-10	61	Zeka	1	DRX	Blue	mid	Seraphine	0	0	1	13	0	1	1	-364	-779	2643
2729	90	2022-07-10	13	Deft	1	DRX	Blue	bot	Kog'Maw	0	6	2	2	0	1	1	-201	-314	2643
2730	90	2022-07-10	4	BeryL	1	DRX	Blue	sup	Lulu	0	0	2	10	0	1	1	338	283	2643
2731	90	2022-07-10	16	Doran	1	Gen.G	Red	top	Gangplank	1	1	2	5	1	0	0	285	211	2643
2732	90	2022-07-10	44	Peanut	4	Gen.G	Red	jng	Hecarim	1	1	1	8	1	0	0	480	340	2643
2733	90	2022-07-10	9	Chovy	4	Gen.G	Red	mid	Azir	1	2	6	4	1	0	0	364	779	2643
2734	90	2022-07-10	50	Ruler	4	Gen.G	Red	bot	Lucian	1	5	1	2	1	0	0	201	314	2643
2735	90	2022-07-10	37	Lehends	4	Gen.G	Red	sup	Nami	1	1	3	8	1	0	0	-338	-283	2643
2736	91	2022-07-10	35	Kingen	4	DRX	Blue	top	Gwen	0	3	1	0	0	0	0	-34	510	1790
2737	91	2022-07-10	47	Pyosik	1	DRX	Blue	jng	Lee Sin	0	1	2	3	0	0	0	-442	-518	1790
2738	91	2022-07-10	61	Zeka	1	DRX	Blue	mid	Seraphine	0	0	2	3	0	0	0	-175	290	1790
2739	91	2022-07-10	13	Deft	1	DRX	Blue	bot	Aphelios	0	2	3	1	0	0	0	-1105	-556	1790
2740	91	2022-07-10	4	BeryL	1	DRX	Blue	sup	Renata Glasc	0	0	4	3	0	0	0	-217	-115	1790
2741	91	2022-07-10	16	Doran	1	Gen.G	Red	top	Gnar	1	2	2	0	1	1	1	34	-510	1790
2742	91	2022-07-10	44	Peanut	4	Gen.G	Red	jng	Skarner	1	0	1	4	1	1	1	442	518	1790
2743	91	2022-07-10	9	Chovy	4	Gen.G	Red	mid	Sylas	1	0	0	5	1	1	1	175	-290	1790
2744	91	2022-07-10	50	Ruler	4	Gen.G	Red	bot	Lucian	1	10	2	1	1	1	1	1105	556	1790
2745	91	2022-07-10	37	Lehends	4	Gen.G	Red	sup	Nami	1	0	1	11	1	1	1	217	115	1790
2746	92	2022-07-10	62	Zeus	4	T1	Blue	top	Gnar	1	1	1	9	0	0	1	794	1028	1755
2747	92	2022-07-10	42	Oner	10	T1	Blue	jng	Xin Zhao	1	2	3	11	0	0	1	162	-73	1755
2748	92	2022-07-10	22	Faker	10	T1	Blue	mid	LeBlanc	1	5	0	4	0	0	1	71	103	1755
2749	92	2022-07-10	26	Gumayusi	10	T1	Blue	bot	Lucian	1	4	4	5	0	0	1	175	224	1755
2750	92	2022-07-10	33	Keria	10	T1	Blue	sup	Nami	1	1	0	10	0	0	1	510	244	1755
2751	92	2022-07-10	54	Sw0rd	10	Fredit BRION	Red	top	Sejuani	0	1	4	3	1	1	0	-794	-1028	1755
2752	92	2022-07-10	57	UmTi	3	Fredit BRION	Red	jng	Wukong	0	2	3	3	1	1	0	-162	73	1755
2753	92	2022-07-10	36	Lava	3	Fredit BRION	Red	mid	Ahri	0	1	1	5	1	1	0	-71	-103	1755
2754	92	2022-07-10	24	Gamin	3	Fredit BRION	Red	bot	Samira	0	3	2	3	1	1	0	-175	-224	1755
2755	92	2022-07-10	14	Delight	3	Fredit BRION	Red	sup	Amumu	0	1	3	4	1	1	0	-510	-244	1755
2756	93	2022-07-10	54	Sw0rd	3	Fredit BRION	Blue	top	Gnar	0	4	6	0	0	0	0	-1881	-982	1422
2757	93	2022-07-10	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	2	5	7	0	0	0	-2388	-2352	1422
2758	93	2022-07-10	36	Lava	3	Fredit BRION	Blue	mid	Seraphine	0	2	4	5	0	0	0	-992	42	1422
2759	93	2022-07-10	24	Gamin	3	Fredit BRION	Blue	bot	Kalista	0	2	5	4	0	0	0	1553	2118	1422
2760	93	2022-07-10	14	Delight	3	Fredit BRION	Blue	sup	Rell	0	1	6	9	0	0	0	-1813	-2253	1422
2761	93	2022-07-10	62	Zeus	3	T1	Red	top	Yone	1	8	1	11	1	1	1	1881	982	1422
2762	93	2022-07-10	42	Oner	10	T1	Red	jng	Diana	1	3	2	15	1	1	1	2388	2352	1422
2763	93	2022-07-10	22	Faker	10	T1	Red	mid	Yasuo	1	5	2	8	1	1	1	992	-42	1422
2764	93	2022-07-10	26	Gumayusi	10	T1	Red	bot	Senna	1	4	4	17	1	1	1	-1553	-2118	1422
2765	93	2022-07-10	33	Keria	10	T1	Red	sup	Lee Sin	1	6	2	14	1	1	1	1813	2253	1422
2766	94	2022-07-13	19	DuDu	10	Hanwha Life Esports	Blue	top	Jax	0	0	2	2	0	1	0	-1573	-1186	1961
2767	94	2022-07-13	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Xin Zhao	0	3	2	2	0	1	0	646	177	1961
2768	94	2022-07-13	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	0	2	1	3	0	1	0	92	-116	1961
2769	94	2022-07-13	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Lucian	0	3	3	3	0	1	0	-535	-524	1961
2770	94	2022-07-13	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nami	0	0	3	6	0	1	0	-137	701	1961
2771	94	2022-07-13	62	Zeus	5	T1	Red	top	Gwen	1	3	4	3	1	0	1	1573	1186	1961
2772	94	2022-07-13	42	Oner	10	T1	Red	jng	Lee Sin	1	2	2	5	1	0	1	-646	-177	1961
2773	94	2022-07-13	22	Faker	10	T1	Red	mid	Seraphine	1	2	0	4	1	0	1	-92	116	1961
2774	94	2022-07-13	26	Gumayusi	10	T1	Red	bot	Ezreal	1	4	0	5	1	0	1	535	524	1961
2775	94	2022-07-13	33	Keria	10	T1	Red	sup	Karma	1	0	2	9	1	0	1	137	-701	1961
2776	95	2022-07-13	19	DuDu	10	Hanwha Life Esports	Blue	top	Sylas	1	8	2	6	1	0	1	-679	629	2205
2777	95	2022-07-13	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Poppy	1	1	3	10	1	0	1	-292	-562	2205
2778	95	2022-07-13	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	1	3	2	10	1	0	1	74	683	2205
2779	95	2022-07-13	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Aphelios	1	4	2	10	1	0	1	-570	185	2205
2780	95	2022-07-13	59	Vsta	5	Hanwha Life Esports	Blue	sup	Pyke	1	4	1	8	1	0	1	-331	-115	2205
2781	95	2022-07-13	62	Zeus	5	T1	Red	top	Gnar	0	3	5	2	0	1	0	679	-629	2205
2782	95	2022-07-13	42	Oner	10	T1	Red	jng	Viego	0	1	4	3	0	1	0	292	562	2205
2783	95	2022-07-13	22	Faker	10	T1	Red	mid	Seraphine	0	2	4	5	0	1	0	-74	-683	2205
2784	95	2022-07-13	26	Gumayusi	10	T1	Red	bot	Ashe	0	1	3	6	0	1	0	570	-185	2205
2785	95	2022-07-13	33	Keria	10	T1	Red	sup	Pantheon	0	3	4	6	0	1	0	331	115	2205
2786	96	2022-07-13	62	Zeus	10	T1	Blue	top	Gwen	1	1	1	2	1	1	1	324	481	1827
2787	96	2022-07-13	42	Oner	10	T1	Blue	jng	Xin Zhao	1	2	1	6	1	1	1	1562	1198	1827
2788	96	2022-07-13	22	Faker	10	T1	Blue	mid	Corki	1	3	1	3	1	1	1	2148	124	1827
2789	96	2022-07-13	26	Gumayusi	10	T1	Blue	bot	Kalista	1	5	0	3	1	1	1	1253	1227	1827
2790	96	2022-07-13	33	Keria	10	T1	Blue	sup	Renata Glasc	1	0	0	8	1	1	1	139	-435	1827
2791	96	2022-07-13	19	DuDu	10	Hanwha Life Esports	Red	top	Gnar	0	1	1	0	0	0	0	-324	-481	1827
2792	96	2022-07-13	43	OnFleek	5	Hanwha Life Esports	Red	jng	Lee Sin	0	1	5	2	0	0	0	-1562	-1198	1827
2793	96	2022-07-13	31	Karis	5	Hanwha Life Esports	Red	mid	Ahri	0	1	2	1	0	0	0	-2148	-124	1827
2794	96	2022-07-13	8	Cheoni	5	Hanwha Life Esports	Red	bot	Jinx	0	0	2	1	0	0	0	-1253	-1227	1827
2795	96	2022-07-13	59	Vsta	5	Hanwha Life Esports	Red	sup	Tahm Kench	0	0	1	1	0	0	0	-139	435	1827
2796	97	2022-07-13	16	Doran	5	Gen.G	Blue	top	Gnar	1	4	0	3	1	1	1	2004	1394	1175
2797	97	2022-07-13	44	Peanut	4	Gen.G	Blue	jng	Wukong	1	4	0	3	1	1	1	1149	307	1175
2798	97	2022-07-13	9	Chovy	4	Gen.G	Blue	mid	Sylas	1	2	1	3	1	1	1	911	1132	1175
2799	97	2022-07-13	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	5	0	6	1	1	1	3384	1679	1175
2800	97	2022-07-13	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	1	0	11	1	1	1	1073	797	1175
2801	97	2022-07-13	17	Dove	4	Liiv SANDBOX	Red	top	Gragas	0	0	2	1	0	0	0	-2004	-1394	1175
2802	97	2022-07-13	11	Croco	8	Liiv SANDBOX	Red	jng	Viego	0	0	2	1	0	0	0	-1149	-307	1175
2803	97	2022-07-13	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	0	1	5	0	0	0	0	-911	-1132	1175
2804	97	2022-07-13	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	0	0	4	0	0	0	0	-3384	-1679	1175
2805	97	2022-07-13	30	Kael	8	Liiv SANDBOX	Red	sup	Nautilus	0	0	3	0	0	0	0	-1073	-797	1175
2806	98	2022-07-13	17	Dove	8	Liiv SANDBOX	Blue	top	Gangplank	0	6	2	1	1	0	0	1664	557	1712
2807	98	2022-07-13	11	Croco	8	Liiv SANDBOX	Blue	jng	Trundle	0	2	3	7	1	0	0	475	452	1712
2808	98	2022-07-13	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	0	3	4	7	1	0	0	342	1109	1712
2809	98	2022-07-13	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	0	2	4	5	1	0	0	-205	385	1712
2810	98	2022-07-13	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	0	1	5	8	1	0	0	-117	-521	1712
2811	98	2022-07-13	16	Doran	8	Gen.G	Red	top	Gnar	1	3	2	7	0	1	1	-1664	-557	1712
2812	98	2022-07-13	44	Peanut	4	Gen.G	Red	jng	Poppy	1	2	4	5	0	1	1	-475	-452	1712
2813	98	2022-07-13	9	Chovy	4	Gen.G	Red	mid	Corki	1	3	3	9	0	1	1	-342	-1109	1712
2814	98	2022-07-13	50	Ruler	4	Gen.G	Red	bot	Ezreal	1	9	3	7	0	1	1	205	-385	1712
2815	98	2022-07-13	37	Lehends	4	Gen.G	Red	sup	Yuumi	1	1	2	11	0	1	1	117	521	1712
2816	99	2022-07-14	49	Rascal	4	KT Rolster	Blue	top	Ornn	0	0	2	5	0	0	0	-705	-778	2451
2817	99	2022-07-14	12	Cuzz	6	KT Rolster	Blue	jng	Volibear	0	0	4	4	0	0	0	-959	-958	2451
2818	99	2022-07-14	58	VicLa	6	KT Rolster	Blue	mid	Ahri	0	5	3	0	0	0	0	-136	102	2451
2819	99	2022-07-14	1	Aiming	6	KT Rolster	Blue	bot	Lucian	0	1	2	3	0	0	0	78	95	2451
2820	99	2022-07-14	38	Life	6	KT Rolster	Blue	sup	Nami	0	0	2	5	0	0	0	-207	-83	2451
2821	99	2022-07-14	35	Kingen	6	DRX	Red	top	Aatrox	1	4	1	4	1	1	1	705	778	2451
2822	99	2022-07-14	47	Pyosik	1	DRX	Red	jng	Poppy	1	3	0	6	1	1	1	959	958	2451
2823	99	2022-07-14	61	Zeka	1	DRX	Red	mid	Taliyah	1	0	1	5	1	1	1	136	-102	2451
2824	99	2022-07-14	13	Deft	1	DRX	Red	bot	Ashe	1	5	1	5	1	1	1	-78	-95	2451
2825	99	2022-07-14	4	BeryL	1	DRX	Red	sup	Renata Glasc	1	1	3	6	1	1	1	207	83	2451
2826	100	2022-07-14	49	Rascal	1	KT Rolster	Blue	top	Sejuani	1	2	2	9	0	1	1	-182	-458	2666
2827	100	2022-07-14	12	Cuzz	6	KT Rolster	Blue	jng	Viego	1	3	1	9	0	1	1	951	802	2666
2828	100	2022-07-14	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	1	4	8	0	1	1	-1468	-995	2666
2829	100	2022-07-14	1	Aiming	6	KT Rolster	Blue	bot	Aphelios	1	8	0	5	0	1	1	2778	2533	2666
2830	100	2022-07-14	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	1	2	12	0	1	1	-1756	-2483	2666
2831	100	2022-07-14	35	Kingen	6	DRX	Red	top	Olaf	0	2	6	2	1	0	0	182	458	2666
2832	100	2022-07-14	47	Pyosik	1	DRX	Red	jng	Bel'Veth	0	2	3	4	1	0	0	-951	-802	2666
2833	100	2022-07-14	61	Zeka	1	DRX	Red	mid	Azir	0	4	3	2	1	0	0	1468	995	2666
2834	100	2022-07-14	13	Deft	1	DRX	Red	bot	Senna	0	0	2	5	1	0	0	-2778	-2533	2666
2835	100	2022-07-14	4	BeryL	1	DRX	Red	sup	Seraphine	0	1	1	5	1	0	0	1756	2483	2666
2836	101	2022-07-14	35	Kingen	1	DRX	Blue	top	Ornn	0	0	3	6	1	0	0	-1123	-87	1712
2837	101	2022-07-14	47	Pyosik	1	DRX	Blue	jng	Trundle	0	1	4	5	1	0	0	-390	-1257	1712
2838	101	2022-07-14	61	Zeka	1	DRX	Blue	mid	Azir	0	4	4	3	1	0	0	-35	-563	1712
2839	101	2022-07-14	13	Deft	1	DRX	Blue	bot	Lucian	0	3	2	5	1	0	0	-318	-329	1712
2840	101	2022-07-14	4	BeryL	1	DRX	Blue	sup	Yuumi	0	1	4	7	1	0	0	50	589	1712
2841	101	2022-07-14	49	Rascal	1	KT Rolster	Red	top	Gnar	1	5	2	9	0	1	1	1123	87	1712
2842	101	2022-07-14	12	Cuzz	6	KT Rolster	Red	jng	Wukong	1	2	3	9	0	1	1	390	1257	1712
2843	101	2022-07-14	58	VicLa	6	KT Rolster	Red	mid	Sylas	1	2	1	7	0	1	1	35	563	1712
2844	101	2022-07-14	1	Aiming	6	KT Rolster	Red	bot	Zeri	1	7	0	6	0	1	1	318	329	1712
2845	101	2022-07-14	38	Life	6	KT Rolster	Red	sup	Nautilus	1	1	3	9	0	1	1	-50	-589	1712
2846	102	2022-07-14	41	Nuguri	6	DWG KIA	Blue	top	Gangplank	1	3	0	7	0	0	1	856	-175	2042
2847	102	2022-07-14	7	Canyon	2	DWG KIA	Blue	jng	Lee Sin	1	1	1	8	0	0	1	272	-121	2042
2848	102	2022-07-14	52	ShowMaker	2	DWG KIA	Blue	mid	Corki	1	3	0	6	0	0	1	1115	656	2042
2849	102	2022-07-14	15	deokdam	2	DWG KIA	Blue	bot	Aphelios	1	6	0	3	0	0	1	2136	1536	2042
2850	102	2022-07-14	32	Kellin	2	DWG KIA	Blue	sup	Tahm Kench	1	0	0	8	0	0	1	-1406	-1208	2042
2851	102	2022-07-14	34	Kiin	2	Kwangdong Freecs	Red	top	Gnar	0	0	3	0	1	1	0	-856	175	2042
2852	102	2022-07-14	21	Ellim	7	Kwangdong Freecs	Red	jng	Xin Zhao	0	0	2	0	1	1	0	-272	121	2042
2853	102	2022-07-14	23	FATE	7	Kwangdong Freecs	Red	mid	Swain	0	0	2	0	1	1	0	-1115	-656	2042
2854	102	2022-07-14	56	Teddy	7	Kwangdong Freecs	Red	bot	Senna	0	0	2	0	1	1	0	-2136	-1536	2042
2855	102	2022-07-14	39	Moham	7	Kwangdong Freecs	Red	sup	Seraphine	0	1	4	0	1	1	0	1406	1208	2042
2856	103	2022-07-14	34	Kiin	7	Kwangdong Freecs	Blue	top	Gangplank	0	0	4	1	0	1	0	310	-94	1611
2857	103	2022-07-14	21	Ellim	7	Kwangdong Freecs	Blue	jng	Lee Sin	0	3	2	0	0	1	0	546	422	1611
2858	103	2022-07-14	23	FATE	7	Kwangdong Freecs	Blue	mid	Lissandra	0	1	2	3	0	1	0	346	-684	1611
2859	103	2022-07-14	56	Teddy	7	Kwangdong Freecs	Blue	bot	Senna	0	0	2	2	0	1	0	-2090	-2355	1611
2860	103	2022-07-14	39	Moham	7	Kwangdong Freecs	Blue	sup	Seraphine	0	0	1	2	0	1	0	1029	2433	1611
2861	103	2022-07-14	41	Nuguri	7	DWG KIA	Red	top	Gnar	1	2	2	3	1	0	1	-310	94	1611
2862	103	2022-07-14	7	Canyon	2	DWG KIA	Red	jng	Wukong	1	2	2	6	1	0	1	-546	-422	1611
2863	103	2022-07-14	52	ShowMaker	2	DWG KIA	Red	mid	Zilean	1	1	0	7	1	0	1	-346	684	1611
2864	103	2022-07-14	15	deokdam	2	DWG KIA	Red	bot	Aphelios	1	5	0	1	1	0	1	2090	2355	1611
2865	103	2022-07-14	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	1	0	4	1	0	1	-1029	-2433	1611
2866	104	2022-07-15	40	Morgan	2	Fredit BRION	Blue	top	Ornn	1	3	1	5	1	1	1	-424	-275	2056
2867	104	2022-07-15	57	UmTi	3	Fredit BRION	Blue	jng	Bel'Veth	1	3	2	7	1	1	1	1049	192	2056
2868	104	2022-07-15	36	Lava	3	Fredit BRION	Blue	mid	Azir	1	6	1	3	1	1	1	971	-22	2056
2869	104	2022-07-15	27	Hena	3	Fredit BRION	Blue	bot	Kalista	1	4	3	5	1	1	1	-359	-196	2056
2870	104	2022-07-15	14	Delight	3	Fredit BRION	Blue	sup	Renata Glasc	1	0	3	10	1	1	1	329	117	2056
2871	104	2022-07-15	6	Canna	3	Nongshim RedForce	Red	top	Gnar	0	1	3	3	0	0	0	424	275	2056
2872	104	2022-07-15	55	Sylvie	9	Nongshim RedForce	Red	jng	Poppy	0	1	0	6	0	0	0	-1049	-192	2056
2873	104	2022-07-15	3	Bdd	9	Nongshim RedForce	Red	mid	Viktor	0	2	6	6	0	0	0	-971	22	2056
2874	104	2022-07-15	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	0	6	3	2	0	0	0	359	196	2056
2875	104	2022-07-15	20	Effort	9	Nongshim RedForce	Red	sup	Tahm Kench	0	0	4	6	0	0	0	-329	-117	2056
2876	105	2022-07-15	6	Canna	9	Nongshim RedForce	Blue	top	Kennen	0	0	6	4	0	1	1	55	-896	1904
2877	105	2022-07-15	55	Sylvie	9	Nongshim RedForce	Blue	jng	Viego	0	2	2	2	0	1	1	933	796	1904
2878	105	2022-07-15	3	Bdd	9	Nongshim RedForce	Blue	mid	Corki	0	1	1	2	0	1	1	-142	-627	1904
2879	105	2022-07-15	25	Ghost	9	Nongshim RedForce	Blue	bot	Senna	0	1	2	2	0	1	1	-1604	-2080	1904
2880	105	2022-07-15	20	Effort	9	Nongshim RedForce	Blue	sup	Tahm Kench	0	0	2	3	0	1	1	1936	2211	1904
2881	105	2022-07-15	40	Morgan	9	Fredit BRION	Red	top	Gwen	1	3	2	7	1	0	0	-55	896	1904
2882	105	2022-07-15	57	UmTi	3	Fredit BRION	Red	jng	Wukong	1	4	1	5	1	0	0	-933	-796	1904
2883	105	2022-07-15	36	Lava	3	Fredit BRION	Red	mid	Ahri	1	4	0	6	1	0	0	142	627	1904
2884	105	2022-07-15	27	Hena	3	Fredit BRION	Red	bot	Ezreal	1	2	0	7	1	0	0	1604	2080	1904
2885	105	2022-07-15	14	Delight	3	Fredit BRION	Red	sup	Yuumi	1	0	1	11	1	0	0	-1936	-2211	1904
2886	106	2022-07-15	17	Dove	3	Liiv SANDBOX	Blue	top	Sejuani	1	1	0	10	0	1	1	-434	-530	1758
2887	106	2022-07-15	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	1	2	1	11	0	1	1	1132	188	1758
2888	106	2022-07-15	10	Clozer	8	Liiv SANDBOX	Blue	mid	Viktor	1	5	0	7	0	1	1	848	-131	1758
2889	106	2022-07-15	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	1	6	2	6	0	1	1	73	506	1758
2890	106	2022-07-15	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	1	0	2	11	0	1	1	-192	141	1758
2891	106	2022-07-15	19	DuDu	8	Hanwha Life Esports	Red	top	Aatrox	0	0	2	0	1	0	0	434	530	1758
2892	106	2022-07-15	43	OnFleek	5	Hanwha Life Esports	Red	jng	Trundle	0	0	5	2	1	0	0	-1132	-188	1758
2893	106	2022-07-15	31	Karis	5	Hanwha Life Esports	Red	mid	Akali	0	0	2	0	1	0	0	-848	131	1758
2894	106	2022-07-15	8	Cheoni	5	Hanwha Life Esports	Red	bot	Kalista	0	5	3	0	1	0	0	-73	-506	1758
2895	106	2022-07-15	59	Vsta	5	Hanwha Life Esports	Red	sup	Renata Glasc	0	0	2	5	1	0	0	192	-141	1758
2896	107	2022-07-15	19	DuDu	5	Hanwha Life Esports	Blue	top	Camille	0	0	0	1	0	0	0	677	-249	1569
2897	107	2022-07-15	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Trundle	0	1	4	1	0	0	0	150	1275	1569
2898	107	2022-07-15	31	Karis	5	Hanwha Life Esports	Blue	mid	Orianna	0	0	2	1	0	0	0	-182	-372	1569
2899	107	2022-07-15	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Lucian	0	1	3	0	0	0	0	-3899	-1934	1569
2900	107	2022-07-15	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nami	0	0	4	1	0	0	0	-1059	-1652	1569
2901	107	2022-07-15	17	Dove	5	Liiv SANDBOX	Red	top	Ornn	1	1	2	5	1	1	1	-677	249	1569
2902	107	2022-07-15	11	Croco	8	Liiv SANDBOX	Red	jng	Poppy	1	0	0	7	1	1	1	-150	-1275	1569
2903	107	2022-07-15	10	Clozer	8	Liiv SANDBOX	Red	mid	Akali	1	5	0	3	1	1	1	182	372	1569
2904	107	2022-07-15	46	Prince	8	Liiv SANDBOX	Red	bot	Kalista	1	7	0	0	1	1	1	3899	1934	1569
2905	107	2022-07-15	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	1	0	0	12	1	1	1	1059	1652	1569
2906	108	2022-07-16	49	Rascal	8	KT Rolster	Blue	top	Gwen	1	4	2	5	0	1	0	-811	-302	2525
2907	108	2022-07-16	12	Cuzz	6	KT Rolster	Blue	jng	Lee Sin	1	3	0	8	0	1	0	906	184	2525
2908	108	2022-07-16	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	3	1	6	0	1	0	-45	-78	2525
2909	108	2022-07-16	1	Aiming	6	KT Rolster	Blue	bot	Lucian	1	2	2	7	0	1	0	-318	-240	2525
2910	108	2022-07-16	38	Life	6	KT Rolster	Blue	sup	Nami	1	1	1	10	0	1	0	-572	-626	2525
2911	108	2022-07-16	34	Kiin	6	Kwangdong Freecs	Red	top	Gangplank	0	1	4	3	1	0	1	811	302	2525
2912	108	2022-07-16	21	Ellim	7	Kwangdong Freecs	Red	jng	Trundle	0	1	2	3	1	0	1	-906	-184	2525
2913	108	2022-07-16	23	FATE	7	Kwangdong Freecs	Red	mid	Gragas	0	1	2	3	1	0	1	45	78	2525
2914	108	2022-07-16	56	Teddy	7	Kwangdong Freecs	Red	bot	Kog'Maw	0	1	3	3	1	0	1	318	240	2525
2915	108	2022-07-16	39	Moham	7	Kwangdong Freecs	Red	sup	Lulu	0	2	2	2	1	0	1	572	626	2525
2916	109	2022-07-16	34	Kiin	7	Kwangdong Freecs	Blue	top	Irelia	0	3	5	3	0	0	0	1032	-72	1933
2917	109	2022-07-16	21	Ellim	7	Kwangdong Freecs	Blue	jng	Poppy	0	0	5	3	0	0	0	-814	-89	1933
2918	109	2022-07-16	23	FATE	7	Kwangdong Freecs	Blue	mid	Lissandra	0	1	2	4	0	0	0	-704	-331	1933
2919	109	2022-07-16	56	Teddy	7	Kwangdong Freecs	Blue	bot	Aphelios	0	3	4	2	0	0	0	-1458	166	1933
2920	109	2022-07-16	39	Moham	7	Kwangdong Freecs	Blue	sup	Renata Glasc	0	0	4	5	0	0	0	-1049	-1166	1933
2921	109	2022-07-16	49	Rascal	7	KT Rolster	Red	top	Gnar	1	1	3	9	1	1	1	-1032	72	1933
2922	109	2022-07-16	12	Cuzz	6	KT Rolster	Red	jng	Trundle	1	4	2	9	1	1	1	814	89	1933
2923	109	2022-07-16	58	VicLa	6	KT Rolster	Red	mid	Galio	1	1	2	14	1	1	1	704	331	1933
2924	109	2022-07-16	1	Aiming	6	KT Rolster	Red	bot	Zeri	1	13	0	5	1	1	1	1458	-166	1933
2925	109	2022-07-16	38	Life	6	KT Rolster	Red	sup	Yuumi	1	1	0	17	1	1	1	1049	1166	1933
2926	110	2022-07-16	35	Kingen	6	DRX	Blue	top	Gwen	0	0	2	1	0	1	0	-671	-558	1617
2927	110	2022-07-16	47	Pyosik	1	DRX	Blue	jng	Xin Zhao	0	0	5	1	0	1	0	248	311	1617
2928	110	2022-07-16	61	Zeka	1	DRX	Blue	mid	Azir	0	1	2	0	0	1	0	411	458	1617
2929	110	2022-07-16	13	Deft	1	DRX	Blue	bot	Senna	0	0	3	1	0	1	0	-1270	-1673	1617
2930	110	2022-07-16	4	BeryL	1	DRX	Blue	sup	Tahm Kench	0	0	1	1	0	1	0	1312	1170	1617
2931	110	2022-07-16	62	Zeus	1	T1	Red	top	Gnar	1	5	0	5	1	0	1	671	558	1617
2932	110	2022-07-16	42	Oner	10	T1	Red	jng	Poppy	1	5	0	3	1	0	1	-248	-311	1617
2933	110	2022-07-16	22	Faker	10	T1	Red	mid	Seraphine	1	2	1	10	1	0	1	-411	-458	1617
2934	110	2022-07-16	26	Gumayusi	10	T1	Red	bot	Draven	1	1	0	6	1	0	1	1270	1673	1617
2935	110	2022-07-16	33	Keria	10	T1	Red	sup	Blitzcrank	1	0	0	8	1	0	1	-1312	-1170	1617
2936	111	2022-07-16	35	Kingen	10	DRX	Blue	top	Gnar	0	0	3	3	0	1	1	-284	-448	1928
2937	111	2022-07-16	29	Juhan	1	DRX	Blue	jng	Vi	0	3	6	6	0	1	1	13	-238	1928
2938	111	2022-07-16	61	Zeka	1	DRX	Blue	mid	Akali	0	5	2	4	0	1	1	181	-519	1928
2939	111	2022-07-16	13	Deft	1	DRX	Blue	bot	Aphelios	0	7	4	3	0	1	1	206	-221	1928
2940	111	2022-07-16	4	BeryL	1	DRX	Blue	sup	Nautilus	0	0	3	10	0	1	1	1059	901	1928
2941	111	2022-07-16	62	Zeus	1	T1	Red	top	Gangplank	1	2	2	8	1	0	0	284	448	1928
2942	111	2022-07-16	42	Oner	10	T1	Red	jng	Lee Sin	1	2	4	12	1	0	0	-13	238	1928
2943	111	2022-07-16	22	Faker	10	T1	Red	mid	Azir	1	5	1	7	1	0	0	-181	519	1928
2944	111	2022-07-16	26	Gumayusi	10	T1	Red	bot	Draven	1	6	3	7	1	0	0	-206	221	1928
2945	111	2022-07-16	33	Keria	10	T1	Red	sup	Pyke	1	3	5	11	1	0	0	-1059	-901	1928
2946	112	2022-07-17	41	Nuguri	10	DWG KIA	Blue	top	Sejuani	1	4	0	5	0	1	1	79	-53	1793
2947	112	2022-07-17	7	Canyon	2	DWG KIA	Blue	jng	Viego	1	0	0	6	0	1	1	857	749	1793
2948	112	2022-07-17	52	ShowMaker	2	DWG KIA	Blue	mid	Taliyah	1	2	0	7	0	1	1	273	-299	1793
2949	112	2022-07-17	15	deokdam	2	DWG KIA	Blue	bot	Aphelios	1	5	0	5	0	1	1	-177	-17	1793
2950	112	2022-07-17	32	Kellin	2	DWG KIA	Blue	sup	Tahm Kench	1	0	1	9	0	1	1	34	-301	1793
2951	112	2022-07-17	40	Morgan	2	Fredit BRION	Red	top	Ornn	0	0	2	0	1	0	0	-79	53	1793
2952	112	2022-07-17	57	UmTi	3	Fredit BRION	Red	jng	Wukong	0	0	1	1	1	0	0	-857	-749	1793
2953	112	2022-07-17	36	Lava	3	Fredit BRION	Red	mid	Azir	0	0	4	0	1	0	0	-273	299	1793
2954	112	2022-07-17	27	Hena	3	Fredit BRION	Red	bot	Kalista	0	1	2	0	1	0	0	177	17	1793
2955	112	2022-07-17	14	Delight	3	Fredit BRION	Red	sup	Renata Glasc	0	0	2	1	1	0	0	-34	301	1793
2956	113	2022-07-17	40	Morgan	3	Fredit BRION	Blue	top	Gangplank	0	0	2	3	0	0	0	-35	-144	1737
2957	113	2022-07-17	57	UmTi	3	Fredit BRION	Blue	jng	Bel'Veth	0	1	3	3	0	0	0	68	826	1737
2958	113	2022-07-17	36	Lava	3	Fredit BRION	Blue	mid	Azir	0	2	3	1	0	0	0	434	309	1737
2959	113	2022-07-17	27	Hena	3	Fredit BRION	Blue	bot	Ezreal	0	1	3	3	0	0	0	-1741	-1294	1737
2960	113	2022-07-17	14	Delight	3	Fredit BRION	Blue	sup	Leona	0	2	5	1	0	0	0	169	-161	1737
2961	113	2022-07-17	41	Nuguri	3	DWG KIA	Red	top	Gnar	1	2	2	6	1	1	1	35	144	1737
2962	113	2022-07-17	7	Canyon	2	DWG KIA	Red	jng	Viego	1	4	1	7	1	1	1	-68	-826	1737
2963	113	2022-07-17	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	1	2	0	6	1	1	1	-434	-309	1737
2964	113	2022-07-17	15	deokdam	2	DWG KIA	Red	bot	Aphelios	1	8	0	6	1	1	1	1741	1294	1737
2965	113	2022-07-17	32	Kellin	2	DWG KIA	Red	sup	Nautilus	1	0	3	13	1	1	1	-169	161	1737
2966	114	2022-07-17	16	Doran	2	Gen.G	Blue	top	Gangplank	1	2	0	6	1	0	1	648	240	1576
2967	114	2022-07-17	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	4	2	4	1	0	1	22	158	1576
2968	114	2022-07-17	9	Chovy	4	Gen.G	Blue	mid	Sylas	1	2	1	5	1	0	1	933	908	1576
2969	114	2022-07-17	50	Ruler	4	Gen.G	Blue	bot	Jinx	1	5	1	5	1	0	1	859	-150	1576
2970	114	2022-07-17	37	Lehends	4	Gen.G	Blue	sup	Braum	1	1	2	6	1	0	1	320	-117	1576
2971	114	2022-07-17	6	Canna	4	Nongshim RedForce	Red	top	Gwen	0	0	2	2	0	1	0	-648	-240	1576
2972	114	2022-07-17	55	Sylvie	9	Nongshim RedForce	Red	jng	Viego	0	2	3	4	0	1	0	-22	-158	1576
2973	114	2022-07-17	3	Bdd	9	Nongshim RedForce	Red	mid	Syndra	0	0	3	4	0	1	0	-933	-908	1576
2974	114	2022-07-17	25	Ghost	9	Nongshim RedForce	Red	bot	Miss Fortune	0	4	1	1	0	1	0	-859	150	1576
2975	114	2022-07-17	53	SnowFlower	9	Nongshim RedForce	Red	sup	Nautilus	0	0	5	2	0	1	0	-320	117	1576
2976	115	2022-07-17	6	Canna	9	Nongshim RedForce	Blue	top	Gragas	0	1	3	2	0	0	0	-1613	-1505	1382
2977	115	2022-07-17	55	Sylvie	9	Nongshim RedForce	Blue	jng	Viego	0	2	6	2	0	0	0	-1155	-71	1382
2978	115	2022-07-17	3	Bdd	9	Nongshim RedForce	Blue	mid	Sylas	0	0	4	2	0	0	0	-961	-128	1382
2979	115	2022-07-17	25	Ghost	9	Nongshim RedForce	Blue	bot	Aphelios	0	1	5	2	0	0	0	-2342	-1272	1382
2980	115	2022-07-17	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Nautilus	0	0	4	3	0	0	0	-782	-145	1382
2981	115	2022-07-17	16	Doran	9	Gen.G	Red	top	Aatrox	1	5	2	7	1	1	1	1613	1505	1382
2982	115	2022-07-17	44	Peanut	4	Gen.G	Red	jng	Wukong	1	5	0	9	1	1	1	1155	71	1382
2983	115	2022-07-17	9	Chovy	4	Gen.G	Red	mid	Ryze	1	4	1	14	1	1	1	961	128	1382
2984	115	2022-07-17	50	Ruler	4	Gen.G	Red	bot	Twitch	1	7	1	6	1	1	1	2342	1272	1382
2985	115	2022-07-17	37	Lehends	4	Gen.G	Red	sup	Yuumi	1	1	0	17	1	1	1	782	145	1382
2986	116	2022-07-20	40	Morgan	4	Fredit BRION	Blue	top	Gnar	1	2	0	5	1	1	1	524	596	1927
2987	116	2022-07-20	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	1	3	0	5	1	1	1	813	444	1927
2988	116	2022-07-20	36	Lava	3	Fredit BRION	Blue	mid	Sylas	1	2	0	5	1	1	1	106	-551	1927
2989	116	2022-07-20	27	Hena	3	Fredit BRION	Blue	bot	Xayah	1	3	1	3	1	1	1	393	0	1927
2990	116	2022-07-20	14	Delight	3	Fredit BRION	Blue	sup	Rakan	1	1	0	8	1	1	1	196	0	1927
2991	116	2022-07-20	35	Kingen	3	DRX	Red	top	Gangplank	0	1	4	0	0	0	0	-524	-596	1927
2992	116	2022-07-20	29	Juhan	1	DRX	Red	jng	Poppy	0	0	2	0	0	0	0	-813	-444	1927
2993	116	2022-07-20	61	Zeka	1	DRX	Red	mid	Akali	0	0	1	1	0	0	0	-106	551	1927
2994	116	2022-07-20	13	Deft	1	DRX	Red	bot	Ezreal	0	0	2	1	0	0	0	-393	0	1927
2995	116	2022-07-20	4	BeryL	1	DRX	Red	sup	Karma	0	0	2	1	0	0	0	-196	0	1927
2996	117	2022-07-20	35	Kingen	1	DRX	Blue	top	Sejuani	1	3	3	10	0	1	1	610	528	1943
2997	117	2022-07-20	29	Juhan	1	DRX	Blue	jng	Viego	1	4	3	5	0	1	1	656	-17	1943
2998	117	2022-07-20	61	Zeka	1	DRX	Blue	mid	Corki	1	3	0	9	0	1	1	679	342	1943
2999	117	2022-07-20	13	Deft	1	DRX	Blue	bot	Senna	1	3	1	10	0	1	1	-1211	-2500	1943
3000	117	2022-07-20	4	BeryL	1	DRX	Blue	sup	Tahm Kench	1	1	3	9	0	1	1	1573	815	1943
3001	117	2022-07-20	40	Morgan	1	Fredit BRION	Red	top	Gnar	0	3	1	4	1	0	0	-610	-528	1943
3002	117	2022-07-20	57	UmTi	3	Fredit BRION	Red	jng	Wukong	0	1	5	6	1	0	0	-656	17	1943
3003	117	2022-07-20	36	Lava	3	Fredit BRION	Red	mid	Ahri	0	4	2	5	1	0	0	-679	-342	1943
3004	117	2022-07-20	27	Hena	3	Fredit BRION	Red	bot	Ezreal	0	1	2	7	1	0	0	1211	2500	1943
3005	117	2022-07-20	14	Delight	3	Fredit BRION	Red	sup	Nautilus	0	1	4	6	1	0	0	-1573	-815	1943
3006	118	2022-07-20	40	Morgan	3	Fredit BRION	Blue	top	Gnar	0	4	3	3	1	0	1	-398	-385	2540
3007	118	2022-07-20	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	3	5	6	1	0	1	355	569	2540
3008	118	2022-07-20	36	Lava	3	Fredit BRION	Blue	mid	Ahri	0	1	4	8	1	0	1	131	658	2540
3009	118	2022-07-20	27	Hena	3	Fredit BRION	Blue	bot	Kai'Sa	0	3	6	7	1	0	1	182	583	2540
3010	118	2022-07-20	14	Delight	3	Fredit BRION	Blue	sup	Nautilus	0	0	7	9	1	0	1	-74	-528	2540
3011	118	2022-07-20	35	Kingen	3	DRX	Red	top	Lee Sin	1	7	1	8	0	1	0	398	385	2540
3012	118	2022-07-20	47	Pyosik	1	DRX	Red	jng	Xin Zhao	1	2	0	12	0	1	0	-355	-569	2540
3013	118	2022-07-20	61	Zeka	1	DRX	Red	mid	Azir	1	8	2	14	0	1	0	-131	-658	2540
3014	118	2022-07-20	13	Deft	1	DRX	Red	bot	Aphelios	1	6	4	11	0	1	0	-182	-583	2540
3015	118	2022-07-20	4	BeryL	1	DRX	Red	sup	Tahm Kench	1	1	4	17	0	1	0	74	528	2540
3016	119	2022-07-20	6	Canna	1	Nongshim RedForce	Blue	top	Sejuani	0	0	0	1	1	1	1	-467	-290	1781
3017	119	2022-07-20	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	0	3	1	1	1	1	134	-220	1781
3018	119	2022-07-20	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	0	0	2	1	1	1	1	-511	-239	1781
3019	119	2022-07-20	25	Ghost	9	Nongshim RedForce	Blue	bot	Aphelios	0	3	5	0	1	1	1	-662	-184	1781
3020	119	2022-07-20	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Nautilus	0	0	6	1	1	1	1	-167	-625	1781
3021	119	2022-07-20	41	Nuguri	9	DWG KIA	Red	top	Gnar	1	3	1	2	0	0	0	467	290	1781
3022	119	2022-07-20	7	Canyon	2	DWG KIA	Red	jng	Viego	1	2	2	7	0	0	0	-134	220	1781
3023	119	2022-07-20	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	1	6	0	6	0	0	0	511	239	1781
3024	119	2022-07-20	15	deokdam	2	DWG KIA	Red	bot	Ashe	1	4	0	8	0	0	0	662	184	1781
3025	119	2022-07-20	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	1	0	8	0	0	0	167	625	1781
3026	120	2022-07-20	6	Canna	2	Nongshim RedForce	Blue	top	Gwen	0	0	2	0	1	1	1	-1905	-1298	2229
3027	120	2022-07-20	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	3	2	1	1	1	1	-111	-130	2229
3028	120	2022-07-20	3	Bdd	9	Nongshim RedForce	Blue	mid	Taliyah	0	0	1	2	1	1	1	-786	-273	2229
3029	120	2022-07-20	25	Ghost	9	Nongshim RedForce	Blue	bot	Kalista	0	2	3	2	1	1	1	-539	-30	2229
3030	120	2022-07-20	20	Effort	9	Nongshim RedForce	Blue	sup	Amumu	0	0	2	4	1	1	1	-44	57	2229
3031	120	2022-07-20	41	Nuguri	9	DWG KIA	Red	top	Gnar	1	0	0	4	0	0	0	1905	1298	2229
3032	120	2022-07-20	7	Canyon	2	DWG KIA	Red	jng	Trundle	1	1	1	6	0	0	0	111	130	2229
3033	120	2022-07-20	52	ShowMaker	2	DWG KIA	Red	mid	Lissandra	1	6	0	1	0	0	0	786	273	2229
3034	120	2022-07-20	15	deokdam	2	DWG KIA	Red	bot	Aphelios	1	3	1	2	0	0	0	539	30	2229
3035	120	2022-07-20	32	Kellin	2	DWG KIA	Red	sup	Tahm Kench	1	0	3	5	0	0	0	44	-57	2229
3036	121	2022-07-21	62	Zeus	2	T1	Blue	top	Gnar	0	0	5	2	0	1	1	1337	-754	1852
3037	121	2022-07-21	42	Oner	10	T1	Blue	jng	Xin Zhao	0	1	5	2	0	1	1	-858	-333	1852
3038	121	2022-07-21	22	Faker	10	T1	Blue	mid	Lissandra	0	1	3	1	0	1	1	422	32	1852
3039	121	2022-07-21	26	Gumayusi	10	T1	Blue	bot	Draven	0	1	2	2	0	1	1	-962	-820	1852
3040	121	2022-07-21	33	Keria	10	T1	Blue	sup	Nautilus	0	1	2	2	0	1	1	185	509	1852
3041	121	2022-07-21	34	Kiin	10	Kwangdong Freecs	Red	top	Gwen	1	1	1	11	1	0	0	-1337	754	1852
3042	121	2022-07-21	21	Ellim	7	Kwangdong Freecs	Red	jng	Viego	1	5	1	8	1	0	0	858	333	1852
3043	121	2022-07-21	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	1	6	1	6	1	0	0	-422	-32	1852
3044	121	2022-07-21	56	Teddy	7	Kwangdong Freecs	Red	bot	Kalista	1	4	0	8	1	0	0	962	820	1852
3045	121	2022-07-21	39	Moham	7	Kwangdong Freecs	Red	sup	Amumu	1	1	1	11	1	0	0	-185	-509	1852
3046	122	2022-07-21	62	Zeus	7	T1	Blue	top	Ornn	1	3	1	8	0	1	1	457	835	1945
3047	122	2022-07-21	42	Oner	10	T1	Blue	jng	Lee Sin	1	5	2	10	0	1	1	1791	822	1945
3048	122	2022-07-21	22	Faker	10	T1	Blue	mid	Taliyah	1	2	2	4	0	1	1	-158	-179	1945
3049	122	2022-07-21	26	Gumayusi	10	T1	Blue	bot	Draven	1	6	5	6	0	1	1	-877	-429	1945
3050	122	2022-07-21	33	Keria	10	T1	Blue	sup	Ashe	1	0	1	11	0	1	1	57	225	1945
3051	122	2022-07-21	34	Kiin	10	Kwangdong Freecs	Red	top	Gangplank	0	0	3	3	1	0	0	-457	-835	1945
3052	122	2022-07-21	21	Ellim	7	Kwangdong Freecs	Red	jng	Jarvan IV	0	0	5	6	1	0	0	-1791	-822	1945
3053	122	2022-07-21	23	FATE	7	Kwangdong Freecs	Red	mid	Ahri	0	6	1	2	1	0	0	158	179	1945
3054	122	2022-07-21	56	Teddy	7	Kwangdong Freecs	Red	bot	Kalista	0	5	4	5	1	0	0	877	429	1945
3055	122	2022-07-21	39	Moham	7	Kwangdong Freecs	Red	sup	Renata Glasc	0	0	3	9	1	0	0	-57	-225	1945
3056	123	2022-07-21	62	Zeus	7	T1	Blue	top	Gragas	1	2	3	6	1	0	0	-382	-481	2403
3057	123	2022-07-21	42	Oner	10	T1	Blue	jng	Lee Sin	1	2	1	7	1	0	0	-67	-283	2403
3058	123	2022-07-21	22	Faker	10	T1	Blue	mid	Taliyah	1	3	1	7	1	0	0	-570	-351	2403
3059	123	2022-07-21	26	Gumayusi	10	T1	Blue	bot	Draven	1	4	3	6	1	0	0	91	-302	2403
3060	123	2022-07-21	33	Keria	10	T1	Blue	sup	Ashe	1	0	2	6	1	0	0	-144	62	2403
3061	123	2022-07-21	34	Kiin	10	Kwangdong Freecs	Red	top	Sylas	0	1	1	5	0	1	1	382	481	2403
3062	123	2022-07-21	21	Ellim	7	Kwangdong Freecs	Red	jng	Jarvan IV	0	0	3	9	0	1	1	67	283	2403
3063	123	2022-07-21	23	FATE	7	Kwangdong Freecs	Red	mid	Ahri	0	3	1	4	0	1	1	570	351	2403
3064	123	2022-07-21	56	Teddy	7	Kwangdong Freecs	Red	bot	Kalista	0	4	4	5	0	1	1	-91	302	2403
3065	123	2022-07-21	39	Moham	7	Kwangdong Freecs	Red	sup	Renata Glasc	0	2	2	8	0	1	1	144	-62	2403
3066	124	2022-07-21	19	DuDu	7	Hanwha Life Esports	Blue	top	Gnar	0	1	3	2	1	1	1	791	170	1831
3067	124	2022-07-21	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Xin Zhao	0	1	4	0	1	1	1	-492	-586	1831
3068	124	2022-07-21	31	Karis	5	Hanwha Life Esports	Blue	mid	Ahri	0	1	2	2	1	1	1	-67	-191	1831
3069	124	2022-07-21	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Aphelios	0	1	3	1	1	1	1	385	145	1831
3070	124	2022-07-21	59	Vsta	5	Hanwha Life Esports	Blue	sup	Lulu	0	0	1	4	1	1	1	262	374	1831
3071	124	2022-07-21	49	Rascal	5	KT Rolster	Red	top	Sejuani	1	4	1	6	0	0	0	-791	-170	1831
3072	124	2022-07-21	12	Cuzz	6	KT Rolster	Red	jng	Viego	1	3	0	5	0	0	0	492	586	1831
3073	124	2022-07-21	58	VicLa	6	KT Rolster	Red	mid	Taliyah	1	0	2	6	0	0	0	67	191	1831
3074	124	2022-07-21	1	Aiming	6	KT Rolster	Red	bot	Lucian	1	6	0	4	0	0	0	-385	-145	1831
3075	124	2022-07-21	38	Life	6	KT Rolster	Red	sup	Nami	1	0	1	8	0	0	0	-262	-374	1831
3076	125	2022-07-21	19	DuDu	6	Hanwha Life Esports	Blue	top	Gnar	0	1	2	4	0	1	1	266	-613	1995
3077	125	2022-07-21	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	0	1	5	3	0	1	1	318	117	1995
3078	125	2022-07-21	31	Karis	5	Hanwha Life Esports	Blue	mid	Twisted Fate	0	1	0	1	0	1	1	-97	-399	1995
3079	125	2022-07-21	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Aphelios	0	3	1	2	0	1	1	-1182	-1052	1995
3080	125	2022-07-21	59	Vsta	5	Hanwha Life Esports	Blue	sup	Lulu	0	0	0	4	0	1	1	-990	-666	1995
3081	125	2022-07-21	49	Rascal	5	KT Rolster	Red	top	Sejuani	1	1	1	4	1	0	0	-266	613	1995
3082	125	2022-07-21	12	Cuzz	6	KT Rolster	Red	jng	Trundle	1	0	1	5	1	0	0	-318	-117	1995
3083	125	2022-07-21	58	VicLa	6	KT Rolster	Red	mid	Taliyah	1	2	2	4	1	0	0	97	399	1995
3084	125	2022-07-21	1	Aiming	6	KT Rolster	Red	bot	Lucian	1	5	2	3	1	0	0	1182	1052	1995
3085	125	2022-07-21	38	Life	6	KT Rolster	Red	sup	Nami	1	0	0	8	1	0	0	990	666	1995
3086	126	2022-07-22	17	Dove	6	Liiv SANDBOX	Blue	top	Gwen	0	3	4	5	1	0	0	-2190	-990	2346
3087	126	2022-07-22	11	Croco	8	Liiv SANDBOX	Blue	jng	Trundle	0	3	3	8	1	0	0	-571	-28	2346
3088	126	2022-07-22	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	0	4	0	10	1	0	0	-795	-463	2346
3089	126	2022-07-22	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	0	8	2	6	1	0	0	203	480	2346
3090	126	2022-07-22	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	0	0	5	11	1	0	0	-99	-288	2346
3091	126	2022-07-22	16	Doran	8	Gen.G	Red	top	Gnar	1	3	2	8	0	1	1	2190	990	2346
3092	126	2022-07-22	44	Peanut	4	Gen.G	Red	jng	Poppy	1	1	3	5	0	1	1	571	28	2346
3093	126	2022-07-22	9	Chovy	4	Gen.G	Red	mid	LeBlanc	1	7	3	3	0	1	1	795	463	2346
3094	126	2022-07-22	50	Ruler	4	Gen.G	Red	bot	Jinx	1	3	5	8	0	1	1	-203	-480	2346
3095	126	2022-07-22	37	Lehends	4	Gen.G	Red	sup	Braum	1	0	5	11	0	1	1	99	288	2346
3096	127	2022-07-22	17	Dove	4	Liiv SANDBOX	Blue	top	Gangplank	0	4	6	4	1	1	0	-412	-639	1835
3097	127	2022-07-22	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	0	4	6	4	1	1	0	-1461	-1378	1835
3098	127	2022-07-22	10	Clozer	8	Liiv SANDBOX	Blue	mid	Viktor	0	2	7	7	1	1	0	-718	-463	1835
3099	127	2022-07-22	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	0	3	3	5	1	1	0	-1585	-942	1835
3100	127	2022-07-22	30	Kael	8	Liiv SANDBOX	Blue	sup	Renata Glasc	0	1	4	10	1	1	0	70	-420	1835
3101	127	2022-07-22	16	Doran	8	Gen.G	Red	top	Gnar	1	4	3	5	0	0	1	412	639	1835
3102	127	2022-07-22	44	Peanut	4	Gen.G	Red	jng	Morgana	1	3	2	15	0	0	1	1461	1378	1835
3103	127	2022-07-22	9	Chovy	4	Gen.G	Red	mid	Ryze	1	4	4	6	0	0	1	718	463	1835
3104	127	2022-07-22	50	Ruler	4	Gen.G	Red	bot	Jinx	1	15	2	1	0	0	1	1585	942	1835
3105	127	2022-07-22	37	Lehends	4	Gen.G	Red	sup	Tahm Kench	1	0	3	8	0	0	1	-70	420	1835
3106	128	2022-07-22	35	Kingen	4	DRX	Blue	top	Gnar	1	0	1	7	0	1	1	417	173	1613
3107	128	2022-07-22	47	Pyosik	1	DRX	Blue	jng	Lee Sin	1	6	1	4	0	1	1	507	-52	1613
3108	128	2022-07-22	61	Zeka	1	DRX	Blue	mid	Sylas	1	4	1	6	0	1	1	-71	-610	1613
3109	128	2022-07-22	13	Deft	1	DRX	Blue	bot	Yasuo	1	0	0	7	0	1	1	39	399	1613
3110	128	2022-07-22	4	BeryL	1	DRX	Blue	sup	Senna	1	4	2	8	0	1	1	968	-447	1613
3111	128	2022-07-22	41	Nuguri	1	DWG KIA	Red	top	Gangplank	0	0	3	1	1	0	0	-417	-173	1613
3112	128	2022-07-22	7	Canyon	2	DWG KIA	Red	jng	Viego	0	1	3	1	1	0	0	-507	52	1613
3113	128	2022-07-22	52	ShowMaker	2	DWG KIA	Red	mid	Azir	0	0	3	2	1	0	0	71	610	1613
3114	128	2022-07-22	15	deokdam	2	DWG KIA	Red	bot	Twitch	0	4	4	1	1	0	0	-39	-399	1613
3115	128	2022-07-22	32	Kellin	2	DWG KIA	Red	sup	Yuumi	0	0	1	5	1	0	0	-968	447	1613
3116	129	2022-07-22	41	Nuguri	2	DWG KIA	Blue	top	Gangplank	1	0	0	4	0	1	1	1397	779	1593
3117	129	2022-07-22	7	Canyon	2	DWG KIA	Blue	jng	Trundle	1	2	0	7	0	1	1	809	225	1593
3118	129	2022-07-22	52	ShowMaker	2	DWG KIA	Blue	mid	Sylas	1	5	1	1	0	1	1	630	412	1593
3119	129	2022-07-22	15	deokdam	2	DWG KIA	Blue	bot	Aphelios	1	3	0	2	0	1	1	1463	348	1593
3120	129	2022-07-22	32	Kellin	2	DWG KIA	Blue	sup	Renata Glasc	1	0	0	7	0	1	1	18	36	1593
3121	129	2022-07-22	35	Kingen	2	DRX	Red	top	Gnar	0	1	2	0	1	0	0	-1397	-779	1593
3122	129	2022-07-22	47	Pyosik	1	DRX	Red	jng	Poppy	0	0	3	1	1	0	0	-809	-225	1593
3123	129	2022-07-22	61	Zeka	1	DRX	Red	mid	Azir	0	0	2	0	1	0	0	-630	-412	1593
3124	129	2022-07-22	13	Deft	1	DRX	Red	bot	Xayah	0	0	2	0	1	0	0	-1463	-348	1593
3125	129	2022-07-22	4	BeryL	1	DRX	Red	sup	Rakan	0	0	1	0	1	0	0	-18	-36	1593
3126	130	2022-07-22	35	Kingen	1	DRX	Blue	top	Gnar	1	5	1	3	1	0	1	190	-339	1896
3127	130	2022-07-22	47	Pyosik	1	DRX	Blue	jng	Lee Sin	1	7	2	15	1	0	1	203	458	1896
3128	130	2022-07-22	61	Zeka	1	DRX	Blue	mid	Ahri	1	3	1	13	1	0	1	-16	-81	1896
3129	130	2022-07-22	13	Deft	1	DRX	Blue	bot	Jinx	1	7	3	12	1	0	1	641	1569	1896
3130	130	2022-07-22	4	BeryL	1	DRX	Blue	sup	Leona	1	0	6	16	1	0	1	-463	-358	1896
3131	130	2022-07-22	41	Nuguri	1	DWG KIA	Red	top	Gangplank	0	1	1	6	0	1	0	-190	339	1896
3132	130	2022-07-22	7	Canyon	2	DWG KIA	Red	jng	Trundle	0	5	5	7	0	1	0	-203	-458	1896
3133	130	2022-07-22	52	ShowMaker	2	DWG KIA	Red	mid	Corki	0	2	3	5	0	1	0	16	81	1896
3134	130	2022-07-22	15	deokdam	2	DWG KIA	Red	bot	Aphelios	0	4	4	5	0	1	0	-641	-1569	1896
3135	130	2022-07-22	32	Kellin	2	DWG KIA	Red	sup	Nautilus	0	1	9	10	0	1	0	463	358	1896
3136	131	2022-07-23	40	Morgan	2	Fredit BRION	Blue	top	Gnar	1	2	1	5	1	1	0	-989	-775	1956
3137	131	2022-07-23	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	1	2	0	8	1	1	0	-531	-601	1956
3138	131	2022-07-23	36	Lava	3	Fredit BRION	Blue	mid	Ryze	1	5	1	7	1	1	0	-357	-157	1956
3139	131	2022-07-23	27	Hena	3	Fredit BRION	Blue	bot	Kalista	1	7	1	6	1	1	0	595	172	1956
3140	131	2022-07-23	14	Delight	3	Fredit BRION	Blue	sup	Amumu	1	0	3	9	1	1	0	-539	-148	1956
3141	131	2022-07-23	62	Zeus	3	T1	Red	top	Gwen	0	0	3	2	0	0	1	989	775	1956
3142	131	2022-07-23	42	Oner	10	T1	Red	jng	Xin Zhao	0	2	4	3	0	0	1	531	601	1956
3143	131	2022-07-23	22	Faker	10	T1	Red	mid	Azir	0	2	3	1	0	0	1	357	157	1956
3144	131	2022-07-23	26	Gumayusi	10	T1	Red	bot	Aphelios	0	2	3	1	0	0	1	-595	-172	1956
3145	131	2022-07-23	33	Keria	10	T1	Red	sup	Tahm Kench	0	0	3	3	0	0	1	539	148	1956
3146	132	2022-07-23	62	Zeus	10	T1	Blue	top	Gnar	1	3	3	7	0	1	1	413	641	2016
3147	132	2022-07-23	42	Oner	10	T1	Blue	jng	Nocturne	1	3	1	5	0	1	1	713	1238	2016
3148	132	2022-07-23	22	Faker	10	T1	Blue	mid	Sylas	1	5	2	4	0	1	1	-808	-84	2016
3149	132	2022-07-23	26	Gumayusi	10	T1	Blue	bot	Aphelios	1	4	2	3	0	1	1	579	-248	2016
3150	132	2022-07-23	33	Keria	10	T1	Blue	sup	Nautilus	1	0	1	6	0	1	1	-283	-689	2016
3151	132	2022-07-23	40	Morgan	10	Fredit BRION	Red	top	Gwen	0	3	5	2	1	0	0	-413	-641	2016
3152	132	2022-07-23	57	UmTi	3	Fredit BRION	Red	jng	Poppy	0	0	2	7	1	0	0	-713	-1238	2016
3153	132	2022-07-23	36	Lava	3	Fredit BRION	Red	mid	Corki	0	3	1	2	1	0	0	808	84	2016
3154	132	2022-07-23	27	Hena	3	Fredit BRION	Red	bot	Jinx	0	3	4	3	1	0	0	-579	248	2016
3155	132	2022-07-23	14	Delight	3	Fredit BRION	Red	sup	Rakan	0	0	3	8	1	0	0	283	689	2016
3156	133	2022-07-23	40	Morgan	3	Fredit BRION	Blue	top	Gnar	0	1	5	7	0	0	0	-1843	-562	2268
3157	133	2022-07-23	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	0	1	4	6	0	0	0	-1401	-1522	2268
3158	133	2022-07-23	36	Lava	3	Fredit BRION	Blue	mid	Ryze	0	2	4	5	0	0	0	308	731	2268
3159	133	2022-07-23	27	Hena	3	Fredit BRION	Blue	bot	Xayah	0	5	1	2	0	0	0	102	-177	2268
3160	133	2022-07-23	14	Delight	3	Fredit BRION	Blue	sup	Rakan	0	1	3	6	0	0	0	-104	189	2268
3161	133	2022-07-23	62	Zeus	3	T1	Red	top	Gangplank	1	10	0	4	1	1	1	1843	562	2268
3162	133	2022-07-23	42	Oner	10	T1	Red	jng	Lee Sin	1	2	4	11	1	1	1	1401	1522	2268
3163	133	2022-07-23	22	Faker	10	T1	Red	mid	Galio	1	2	2	13	1	1	1	-308	-731	2268
3164	133	2022-07-23	26	Gumayusi	10	T1	Red	bot	Aphelios	1	2	1	8	1	1	1	-102	177	2268
3165	133	2022-07-23	33	Keria	10	T1	Red	sup	Nautilus	1	1	3	10	1	1	1	104	-189	2268
3166	134	2022-07-23	49	Rascal	10	KT Rolster	Blue	top	Ornn	1	1	1	13	0	0	0	-223	-153	1910
3167	134	2022-07-23	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	1	6	0	5	0	0	0	73	-160	1910
3168	134	2022-07-23	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	1	2	12	0	0	0	-717	-163	1910
3169	134	2022-07-23	1	Aiming	6	KT Rolster	Blue	bot	Twitch	1	10	0	9	0	0	0	-261	177	1910
3170	134	2022-07-23	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	1	1	18	0	0	0	758	334	1910
3171	134	2022-07-23	6	Canna	6	Nongshim RedForce	Red	top	Gwen	0	3	3	0	1	1	1	223	153	1910
3172	134	2022-07-23	18	Dread	9	Nongshim RedForce	Red	jng	Lee Sin	0	0	5	3	1	1	1	-73	160	1910
3173	134	2022-07-23	3	Bdd	9	Nongshim RedForce	Red	mid	Azir	0	0	3	1	1	1	1	717	163	1910
3174	134	2022-07-23	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	0	1	3	2	1	1	1	261	-177	1910
3175	134	2022-07-23	20	Effort	9	Nongshim RedForce	Red	sup	Tahm Kench	0	0	5	2	1	1	1	-758	-334	1910
3176	135	2022-07-23	6	Canna	9	Nongshim RedForce	Blue	top	Camille	1	1	2	11	1	1	1	49	-344	2101
3177	135	2022-07-23	18	Dread	9	Nongshim RedForce	Blue	jng	Trundle	1	3	2	13	1	1	1	-373	-707	2101
3178	135	2022-07-23	3	Bdd	9	Nongshim RedForce	Blue	mid	Ryze	1	11	1	9	1	1	1	65	637	2101
3179	135	2022-07-23	25	Ghost	9	Nongshim RedForce	Blue	bot	Aphelios	1	4	1	10	1	1	1	-844	-336	2101
3180	135	2022-07-23	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Nautilus	1	2	0	15	1	1	1	388	506	2101
3181	135	2022-07-23	49	Rascal	9	KT Rolster	Red	top	Gnar	0	1	4	3	0	0	0	-49	344	2101
3182	135	2022-07-23	12	Cuzz	6	KT Rolster	Red	jng	Lee Sin	0	0	5	5	0	0	0	373	707	2101
3183	135	2022-07-23	58	VicLa	6	KT Rolster	Red	mid	Sylas	0	2	3	4	0	0	0	-65	-637	2101
3184	135	2022-07-23	1	Aiming	6	KT Rolster	Red	bot	Jinx	0	3	5	2	0	0	0	844	336	2101
3185	135	2022-07-23	38	Life	6	KT Rolster	Red	sup	Taric	0	0	4	6	0	0	0	-388	-506	2101
3186	136	2022-07-23	49	Rascal	6	KT Rolster	Blue	top	Gwen	1	5	2	5	1	1	1	15	1514	2018
3187	136	2022-07-23	12	Cuzz	6	KT Rolster	Blue	jng	Nocturne	1	2	0	6	1	1	1	1031	1622	2018
3188	136	2022-07-23	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	3	1	6	1	1	1	95	-237	2018
3189	136	2022-07-23	1	Aiming	6	KT Rolster	Blue	bot	Aphelios	1	4	1	5	1	1	1	820	188	2018
3190	136	2022-07-23	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	1	0	11	1	1	1	183	485	2018
3191	136	2022-07-23	6	Canna	6	Nongshim RedForce	Red	top	Gangplank	0	3	6	1	0	0	0	-15	-1514	2018
3192	136	2022-07-23	18	Dread	9	Nongshim RedForce	Red	jng	Trundle	0	0	2	2	0	0	0	-1031	-1622	2018
3193	136	2022-07-23	3	Bdd	9	Nongshim RedForce	Red	mid	Viktor	0	0	1	2	0	0	0	-95	237	2018
3194	136	2022-07-23	25	Ghost	9	Nongshim RedForce	Red	bot	Ashe	0	1	2	2	0	0	0	-820	-188	2018
3195	136	2022-07-23	53	SnowFlower	9	Nongshim RedForce	Red	sup	Tahm Kench	0	0	4	2	0	0	0	-183	-485	2018
3196	137	2022-07-24	34	Kiin	9	Kwangdong Freecs	Blue	top	Gwen	0	2	3	0	0	0	0	-128	76	1901
3197	137	2022-07-24	21	Ellim	7	Kwangdong Freecs	Blue	jng	Viego	0	2	4	2	0	0	0	-449	9	1901
3198	137	2022-07-24	23	FATE	7	Kwangdong Freecs	Blue	mid	Lissandra	0	1	3	4	0	0	0	-891	-763	1901
3199	137	2022-07-24	56	Teddy	7	Kwangdong Freecs	Blue	bot	Lucian	0	2	3	3	0	0	0	-665	-699	1901
3200	137	2022-07-24	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nami	0	0	4	7	0	0	0	-247	-389	1901
3201	137	2022-07-24	17	Dove	7	Liiv SANDBOX	Red	top	Gnar	1	1	0	8	1	1	1	128	-76	1901
3202	137	2022-07-24	11	Croco	8	Liiv SANDBOX	Red	jng	Vi	1	3	3	8	1	1	1	449	-9	1901
3203	137	2022-07-24	10	Clozer	8	Liiv SANDBOX	Red	mid	Akali	1	10	0	5	1	1	1	891	763	1901
3204	137	2022-07-24	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	1	3	2	7	1	1	1	665	699	1901
3205	137	2022-07-24	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	1	0	2	12	1	1	1	247	389	1901
3206	138	2022-07-24	17	Dove	8	Liiv SANDBOX	Blue	top	Gnar	1	2	4	4	0	0	1	-1817	-870	3036
3207	138	2022-07-24	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	1	1	4	6	0	0	1	-907	-911	3036
3208	138	2022-07-24	10	Clozer	8	Liiv SANDBOX	Blue	mid	Sylas	1	6	0	3	0	0	1	84	115	3036
3209	138	2022-07-24	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	1	2	2	3	0	0	1	3014	1310	3036
3210	138	2022-07-24	30	Kael	8	Liiv SANDBOX	Blue	sup	Thresh	1	0	2	7	0	0	1	-590	60	3036
3211	138	2022-07-24	34	Kiin	8	Kwangdong Freecs	Red	top	Fiora	0	4	3	1	1	1	0	1817	870	3036
3212	138	2022-07-24	21	Ellim	7	Kwangdong Freecs	Red	jng	Trundle	0	1	2	7	1	1	0	907	911	3036
3213	138	2022-07-24	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	0	2	2	7	1	1	0	-84	-115	3036
3214	138	2022-07-24	56	Teddy	7	Kwangdong Freecs	Red	bot	Senna	0	2	1	7	1	1	0	-3014	-1310	3036
3215	138	2022-07-24	28	Hoit	7	Kwangdong Freecs	Red	sup	Tahm Kench	0	3	3	5	1	1	0	590	-60	3036
3216	139	2022-07-24	19	DuDu	7	Hanwha Life Esports	Blue	top	Gwen	0	2	5	0	0	0	0	-746	-293	1802
3217	139	2022-07-24	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Trundle	0	0	4	1	0	0	0	-1281	-753	1802
3218	139	2022-07-24	31	Karis	5	Hanwha Life Esports	Blue	mid	Taliyah	0	0	2	1	0	0	0	-783	-724	1802
3219	139	2022-07-24	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Zeri	0	0	3	0	0	0	0	-928	537	1802
3220	139	2022-07-24	59	Vsta	5	Hanwha Life Esports	Blue	sup	Lulu	0	0	5	0	0	0	0	-389	-869	1802
3221	139	2022-07-24	16	Doran	5	Gen.G	Red	top	Sejuani	1	1	2	10	1	1	1	746	293	1802
3222	139	2022-07-24	44	Peanut	4	Gen.G	Red	jng	Wukong	1	8	0	6	1	1	1	1281	753	1802
3223	139	2022-07-24	9	Chovy	4	Gen.G	Red	mid	Ahri	1	1	0	6	1	1	1	783	724	1802
3224	139	2022-07-24	50	Ruler	4	Gen.G	Red	bot	Twitch	1	8	0	5	1	1	1	928	-537	1802
3225	139	2022-07-24	37	Lehends	4	Gen.G	Red	sup	Yuumi	1	1	0	13	1	1	1	389	869	1802
3226	140	2022-07-24	19	DuDu	4	Hanwha Life Esports	Blue	top	Gangplank	0	2	3	1	0	0	0	629	-139	1722
3227	140	2022-07-24	60	Willer	5	Hanwha Life Esports	Blue	jng	Lee Sin	0	1	1	3	0	0	0	-1113	-464	1722
3228	140	2022-07-24	31	Karis	5	Hanwha Life Esports	Blue	mid	Taliyah	0	2	2	2	0	0	0	323	362	1722
3229	140	2022-07-24	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Kalista	0	2	3	1	0	0	0	-1175	500	1722
3230	140	2022-07-24	59	Vsta	5	Hanwha Life Esports	Blue	sup	Ashe	0	0	1	4	0	0	0	-214	-131	1722
3231	140	2022-07-24	16	Doran	5	Gen.G	Red	top	Akshan	1	1	2	4	1	1	1	-629	139	1722
3232	140	2022-07-24	44	Peanut	4	Gen.G	Red	jng	Jarvan IV	1	0	2	8	1	1	1	1113	464	1722
3233	140	2022-07-24	9	Chovy	4	Gen.G	Red	mid	Sylas	1	3	1	4	1	1	1	-323	-362	1722
3234	140	2022-07-24	50	Ruler	4	Gen.G	Red	bot	Aphelios	1	5	1	3	1	1	1	1175	-500	1722
3235	140	2022-07-24	37	Lehends	4	Gen.G	Red	sup	Tahm Kench	1	1	1	8	1	1	1	214	131	1722
3236	141	2022-07-27	62	Zeus	4	T1	Blue	top	Gnar	1	5	1	4	0	1	1	408	-297	1825
3237	141	2022-07-27	42	Oner	10	T1	Blue	jng	Poppy	1	0	1	7	0	1	1	-125	-1112	1825
3238	141	2022-07-27	22	Faker	10	T1	Blue	mid	Galio	1	2	1	4	0	1	1	-31	-838	1825
3239	141	2022-07-27	26	Gumayusi	10	T1	Blue	bot	Sivir	1	5	0	7	0	1	1	213	-747	1825
3240	141	2022-07-27	33	Keria	10	T1	Blue	sup	Yuumi	1	0	0	12	0	1	1	356	486	1825
3241	141	2022-07-27	49	Rascal	10	KT Rolster	Red	top	Gwen	0	1	1	0	1	0	0	-408	297	1825
3242	141	2022-07-27	12	Cuzz	6	KT Rolster	Red	jng	Skarner	0	0	3	3	1	0	0	125	1112	1825
3243	141	2022-07-27	58	VicLa	6	KT Rolster	Red	mid	Azir	0	0	3	1	1	0	0	31	838	1825
3244	141	2022-07-27	1	Aiming	6	KT Rolster	Red	bot	Zeri	0	2	1	0	1	0	0	-213	747	1825
3245	141	2022-07-27	38	Life	6	KT Rolster	Red	sup	Lulu	0	0	4	3	1	0	0	-356	-486	1825
3246	142	2022-07-27	49	Rascal	6	KT Rolster	Blue	top	Sion	1	3	1	5	1	0	0	-1435	-104	2008
3247	142	2022-07-27	12	Cuzz	6	KT Rolster	Blue	jng	Skarner	1	2	2	10	1	0	0	-20	-108	2008
3248	142	2022-07-27	58	VicLa	6	KT Rolster	Blue	mid	Ryze	1	2	3	8	1	0	0	249	854	2008
3249	142	2022-07-27	1	Aiming	6	KT Rolster	Blue	bot	Zeri	1	7	0	6	1	0	0	-44	-489	2008
3250	142	2022-07-27	38	Life	6	KT Rolster	Blue	sup	Yuumi	1	0	0	13	1	0	0	-363	1511	2008
3251	142	2022-07-27	62	Zeus	6	T1	Red	top	Gnar	0	1	5	3	0	1	1	1435	104	2008
3252	142	2022-07-27	42	Oner	10	T1	Red	jng	Poppy	0	0	3	5	0	1	1	20	108	2008
3253	142	2022-07-27	22	Faker	10	T1	Red	mid	Galio	0	2	3	4	0	1	1	-249	-854	2008
3254	142	2022-07-27	26	Gumayusi	10	T1	Red	bot	Aphelios	0	2	1	2	0	1	1	44	489	2008
3255	142	2022-07-27	33	Keria	10	T1	Red	sup	Thresh	0	1	2	5	0	1	1	363	-1511	2008
3256	143	2022-07-27	62	Zeus	10	T1	Blue	top	Ornn	1	2	4	8	1	1	0	-539	-771	1930
3257	143	2022-07-27	42	Oner	10	T1	Blue	jng	Nocturne	1	3	1	5	1	1	0	330	154	1930
3258	143	2022-07-27	22	Faker	10	T1	Blue	mid	Orianna	1	1	2	11	1	1	0	-741	-349	1930
3259	143	2022-07-27	26	Gumayusi	10	T1	Blue	bot	Zeri	1	6	1	4	1	1	0	-540	-678	1930
3260	143	2022-07-27	33	Keria	10	T1	Blue	sup	Yuumi	1	0	0	11	1	1	0	63	-117	1930
3261	143	2022-07-27	49	Rascal	10	KT Rolster	Red	top	Gwen	0	3	2	2	0	0	1	539	771	1930
3262	143	2022-07-27	12	Cuzz	6	KT Rolster	Red	jng	Poppy	0	1	3	5	0	0	1	-330	-154	1930
3263	143	2022-07-27	58	VicLa	6	KT Rolster	Red	mid	Ryze	0	3	1	4	0	0	1	741	349	1930
3264	143	2022-07-27	1	Aiming	6	KT Rolster	Red	bot	Twitch	0	1	3	2	0	0	1	540	678	1930
3265	143	2022-07-27	38	Life	6	KT Rolster	Red	sup	Lulu	0	0	3	4	0	0	1	-63	117	1930
3266	144	2022-07-27	41	Nuguri	6	DWG KIA	Blue	top	Fiora	0	3	2	1	0	1	0	-546	286	2380
3267	144	2022-07-27	7	Canyon	2	DWG KIA	Blue	jng	Poppy	0	0	1	7	0	1	0	714	651	2380
3268	144	2022-07-27	52	ShowMaker	2	DWG KIA	Blue	mid	Zoe	0	4	1	3	0	1	0	1186	592	2380
3269	144	2022-07-27	15	deokdam	2	DWG KIA	Blue	bot	Lucian	0	5	3	1	0	1	0	486	-323	2380
3270	144	2022-07-27	32	Kellin	2	DWG KIA	Blue	sup	Nami	0	0	2	7	0	1	0	301	277	2380
3271	144	2022-07-27	19	DuDu	2	Hanwha Life Esports	Red	top	Gwen	1	7	3	1	1	0	1	546	-286	2380
3272	144	2022-07-27	43	OnFleek	5	Hanwha Life Esports	Red	jng	Wukong	1	0	3	3	1	0	1	-714	-651	2380
3273	144	2022-07-27	31	Karis	5	Hanwha Life Esports	Red	mid	Sylas	1	1	2	1	1	0	1	-1186	-592	2380
3274	144	2022-07-27	51	SamD	5	Hanwha Life Esports	Red	bot	Aphelios	1	0	0	1	1	0	1	-486	323	2380
3275	144	2022-07-27	59	Vsta	5	Hanwha Life Esports	Red	sup	Lulu	1	1	4	3	1	0	1	-301	-277	2380
3276	145	2022-07-27	41	Nuguri	5	DWG KIA	Blue	top	Sion	1	3	0	7	1	1	1	125	785	1333
3277	145	2022-07-27	7	Canyon	2	DWG KIA	Blue	jng	Trundle	1	3	2	10	1	1	1	1293	-154	1333
3278	145	2022-07-27	52	ShowMaker	2	DWG KIA	Blue	mid	Galio	1	6	0	7	1	1	1	792	1010	1333
3279	145	2022-07-27	15	deokdam	2	DWG KIA	Blue	bot	Zeri	1	5	0	9	1	1	1	-528	-256	1333
3280	145	2022-07-27	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	1	1	0	14	1	1	1	814	970	1333
3281	145	2022-07-27	19	DuDu	2	Hanwha Life Esports	Red	top	Shyvana	0	1	5	1	0	0	0	-125	-785	1333
3282	145	2022-07-27	43	OnFleek	5	Hanwha Life Esports	Red	jng	Poppy	0	0	3	2	0	0	0	-1293	154	1333
3283	145	2022-07-27	31	Karis	5	Hanwha Life Esports	Red	mid	Ryze	0	0	4	1	0	0	0	-792	-1010	1333
3284	145	2022-07-27	51	SamD	5	Hanwha Life Esports	Red	bot	Draven	0	1	2	1	0	0	0	528	256	1333
3285	145	2022-07-27	59	Vsta	5	Hanwha Life Esports	Red	sup	Nautilus	0	0	4	1	0	0	0	-814	-970	1333
3286	146	2022-07-27	19	DuDu	5	Hanwha Life Esports	Blue	top	Gangplank	0	0	3	0	1	0	0	173	-136	1898
3287	146	2022-07-27	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Lee Sin	0	0	2	0	1	0	0	-1410	-65	1898
3288	146	2022-07-27	31	Karis	5	Hanwha Life Esports	Blue	mid	Azir	0	0	4	0	1	0	0	695	493	1898
3289	146	2022-07-27	51	SamD	5	Hanwha Life Esports	Blue	bot	Draven	0	0	0	0	1	0	0	5	491	1898
3290	146	2022-07-27	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	0	0	4	0	1	0	0	-461	-501	1898
3291	146	2022-07-27	41	Nuguri	5	DWG KIA	Red	top	Sejuani	1	1	0	9	0	1	1	-173	136	1898
3292	146	2022-07-27	7	Canyon	2	DWG KIA	Red	jng	Wukong	1	4	0	4	0	1	1	1410	65	1898
3293	146	2022-07-27	52	ShowMaker	2	DWG KIA	Red	mid	Galio	1	1	0	10	0	1	1	-695	-493	1898
3294	146	2022-07-27	15	deokdam	2	DWG KIA	Red	bot	Zeri	1	7	0	4	0	1	1	-5	-491	1898
3295	146	2022-07-27	32	Kellin	2	DWG KIA	Red	sup	Yuumi	1	0	0	11	0	1	1	461	501	1898
3296	147	2022-07-28	17	Dove	2	Liiv SANDBOX	Blue	top	Gwen	0	1	3	4	0	0	0	-203	157	1908
3297	147	2022-07-28	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	0	2	4	3	0	0	0	353	48	1908
3298	147	2022-07-28	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	0	1	3	2	0	0	0	128	557	1908
3299	147	2022-07-28	46	Prince	8	Liiv SANDBOX	Blue	bot	Sivir	0	3	2	3	0	0	0	-625	-1112	1908
3300	147	2022-07-28	30	Kael	8	Liiv SANDBOX	Blue	sup	Yuumi	0	0	2	6	0	0	0	-319	73	1908
3301	147	2022-07-28	6	Canna	8	Nongshim RedForce	Red	top	Gnar	1	3	1	8	1	1	1	203	-157	1908
3302	147	2022-07-28	18	Dread	9	Nongshim RedForce	Red	jng	Wukong	1	2	1	9	1	1	1	-353	-48	1908
3303	147	2022-07-28	3	Bdd	9	Nongshim RedForce	Red	mid	Seraphine	1	4	1	9	1	1	1	-128	-557	1908
3304	147	2022-07-28	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	1	5	0	5	1	1	1	625	1112	1908
3305	147	2022-07-28	53	SnowFlower	9	Nongshim RedForce	Red	sup	Alistar	1	0	4	13	1	1	1	319	-73	1908
3306	148	2022-07-28	17	Dove	9	Liiv SANDBOX	Blue	top	Ornn	1	0	2	10	0	1	0	-2009	-708	1815
3307	148	2022-07-28	11	Croco	8	Liiv SANDBOX	Blue	jng	Viego	1	1	2	7	0	1	0	517	496	1815
3308	148	2022-07-28	10	Clozer	8	Liiv SANDBOX	Blue	mid	Sylas	1	4	2	5	0	1	0	626	151	1815
3309	148	2022-07-28	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	1	4	0	2	0	1	0	111	318	1815
3310	148	2022-07-28	30	Kael	8	Liiv SANDBOX	Blue	sup	Nautilus	1	2	4	6	0	1	0	-236	-588	1815
3311	148	2022-07-28	6	Canna	8	Nongshim RedForce	Red	top	Gnar	0	3	2	2	1	0	1	2009	708	1815
3312	148	2022-07-28	18	Dread	9	Nongshim RedForce	Red	jng	Trundle	0	2	3	6	1	0	1	-517	-496	1815
3313	148	2022-07-28	3	Bdd	9	Nongshim RedForce	Red	mid	Ryze	0	2	2	5	1	0	1	-626	-151	1815
3314	148	2022-07-28	25	Ghost	9	Nongshim RedForce	Red	bot	Xayah	0	3	2	3	1	0	1	-111	-318	1815
3315	148	2022-07-28	53	SnowFlower	9	Nongshim RedForce	Red	sup	Rakan	0	0	2	9	1	0	1	236	588	1815
3316	149	2022-07-28	6	Canna	9	Nongshim RedForce	Blue	top	Gangplank	1	5	2	5	0	1	1	818	528	1682
3317	149	2022-07-28	18	Dread	9	Nongshim RedForce	Blue	jng	Skarner	1	4	0	7	0	1	1	461	-272	1682
3318	149	2022-07-28	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	1	4	2	7	0	1	1	1200	173	1682
3319	149	2022-07-28	25	Ghost	9	Nongshim RedForce	Blue	bot	Sivir	1	2	0	12	0	1	1	1056	-349	1682
3320	149	2022-07-28	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Yuumi	1	1	0	14	0	1	1	623	1214	1682
3321	149	2022-07-28	17	Dove	9	Liiv SANDBOX	Red	top	Gnar	0	0	6	3	1	0	0	-818	-528	1682
3322	149	2022-07-28	11	Croco	8	Liiv SANDBOX	Red	jng	Trundle	0	2	4	1	1	0	0	-461	272	1682
3323	149	2022-07-28	10	Clozer	8	Liiv SANDBOX	Red	mid	Seraphine	0	1	2	2	1	0	0	-1200	-173	1682
3324	149	2022-07-28	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	0	0	2	3	1	0	0	-1056	349	1682
3325	149	2022-07-28	30	Kael	8	Liiv SANDBOX	Red	sup	Lulu	0	1	2	2	1	0	0	-623	-1214	1682
3326	150	2022-07-28	16	Doran	8	Gen.G	Blue	top	Sejuani	1	4	1	11	1	1	1	464	-61	2105
3327	150	2022-07-28	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	0	0	7	1	1	1	959	964	2105
3328	150	2022-07-28	9	Chovy	4	Gen.G	Blue	mid	Ahri	1	7	0	5	1	1	1	655	320	2105
3329	150	2022-07-28	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	6	2	6	1	1	1	1571	245	2105
3330	150	2022-07-28	37	Lehends	4	Gen.G	Blue	sup	Rakan	1	0	1	12	1	1	1	-69	-638	2105
3331	150	2022-07-28	35	Kingen	4	DRX	Red	top	Gnar	0	0	4	4	0	0	0	-464	61	2105
3332	150	2022-07-28	47	Pyosik	1	DRX	Red	jng	Wukong	0	2	5	1	0	0	0	-959	-964	2105
3333	150	2022-07-28	61	Zeka	1	DRX	Red	mid	Taliyah	0	2	1	1	0	0	0	-655	-320	2105
3334	150	2022-07-28	13	Deft	1	DRX	Red	bot	Sivir	0	0	3	3	0	0	0	-1571	-245	2105
3335	150	2022-07-28	4	BeryL	1	DRX	Red	sup	Zilean	0	0	4	1	0	0	0	69	638	2105
3336	151	2022-07-28	35	Kingen	1	DRX	Blue	top	Ornn	0	2	5	1	0	0	0	-2078	-1045	1805
3337	151	2022-07-28	47	Pyosik	1	DRX	Blue	jng	Lee Sin	0	2	5	5	0	0	0	-1505	-924	1805
3338	151	2022-07-28	61	Zeka	1	DRX	Blue	mid	Taliyah	0	2	4	4	0	0	0	-2423	-974	1805
3339	151	2022-07-28	13	Deft	1	DRX	Blue	bot	Zeri	0	3	4	3	0	0	0	-1998	-878	1805
3340	151	2022-07-28	4	BeryL	1	DRX	Blue	sup	Lulu	0	0	9	5	0	0	0	-1007	-696	1805
3341	151	2022-07-28	16	Doran	1	Gen.G	Red	top	Gangplank	1	4	0	8	1	1	1	2078	1045	1805
3342	151	2022-07-28	44	Peanut	4	Gen.G	Red	jng	Vi	1	5	4	12	1	1	1	1505	924	1805
3343	151	2022-07-28	9	Chovy	4	Gen.G	Red	mid	Ahri	1	10	1	8	1	1	1	2423	974	1805
3344	151	2022-07-28	50	Ruler	4	Gen.G	Red	bot	Kalista	1	7	1	8	1	1	1	1998	878	1805
3345	151	2022-07-28	37	Lehends	4	Gen.G	Red	sup	Renata Glasc	1	1	3	18	1	1	1	1007	696	1805
3346	152	2022-07-29	40	Morgan	4	Fredit BRION	Blue	top	Gnar	1	6	0	5	1	1	1	1947	773	1877
3347	152	2022-07-29	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	1	0	2	6	1	1	1	366	799	1877
3348	152	2022-07-29	36	Lava	3	Fredit BRION	Blue	mid	Galio	1	3	2	9	1	1	1	703	-58	1877
3349	152	2022-07-29	27	Hena	3	Fredit BRION	Blue	bot	Zeri	1	4	1	5	1	1	1	347	-203	1877
3350	152	2022-07-29	14	Delight	3	Fredit BRION	Blue	sup	Alistar	1	0	1	7	1	1	1	185	10	1877
3351	152	2022-07-29	34	Kiin	3	Kwangdong Freecs	Red	top	Gwen	0	2	4	3	0	0	0	-1947	-773	1877
3352	152	2022-07-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Vi	0	2	3	3	0	0	0	-366	-799	1877
3353	152	2022-07-29	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	0	0	2	6	0	0	0	-703	58	1877
3354	152	2022-07-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Sivir	0	2	2	2	0	0	0	-347	203	1877
3355	152	2022-07-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Rakan	0	0	2	4	0	0	0	-185	-10	1877
3356	153	2022-07-29	40	Morgan	7	Fredit BRION	Blue	top	Gwen	0	2	3	4	0	1	0	-641	-1126	2670
3357	153	2022-07-29	57	UmTi	3	Fredit BRION	Blue	jng	Lee Sin	0	3	3	6	0	1	0	770	488	2670
3358	153	2022-07-29	36	Lava	3	Fredit BRION	Blue	mid	Galio	0	2	2	8	0	1	0	-261	321	2670
3359	153	2022-07-29	27	Hena	3	Fredit BRION	Blue	bot	Aphelios	0	2	2	6	0	1	0	-1222	-1094	2670
3360	153	2022-07-29	14	Delight	3	Fredit BRION	Blue	sup	Rakan	0	1	4	9	0	1	0	351	-20	2670
3361	153	2022-07-29	34	Kiin	3	Kwangdong Freecs	Red	top	Gnar	1	2	3	7	1	0	1	641	1126	2670
3362	153	2022-07-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Trundle	1	2	1	9	1	0	1	-770	-488	2670
3363	153	2022-07-29	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	1	5	2	6	1	0	1	261	-321	2670
3364	153	2022-07-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Jinx	1	5	1	8	1	0	1	1222	1094	2670
3365	153	2022-07-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Nautilus	1	0	3	11	1	0	1	-351	20	2670
3366	154	2022-07-29	40	Morgan	7	Fredit BRION	Blue	top	Gwen	0	2	3	2	0	1	1	831	634	2135
3367	154	2022-07-29	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	2	5	3	0	1	1	527	151	2135
3368	154	2022-07-29	36	Lava	3	Fredit BRION	Blue	mid	Galio	0	1	5	2	0	1	1	-375	-457	2135
3369	154	2022-07-29	27	Hena	3	Fredit BRION	Blue	bot	Aphelios	0	1	2	2	0	1	1	-1477	-548	2135
3370	154	2022-07-29	14	Delight	3	Fredit BRION	Blue	sup	Rakan	0	0	3	3	0	1	1	-358	119	2135
3371	154	2022-07-29	34	Kiin	3	Kwangdong Freecs	Red	top	Gnar	1	4	2	7	1	0	0	-831	-634	2135
3372	154	2022-07-29	21	Ellim	7	Kwangdong Freecs	Red	jng	Vi	1	1	3	12	1	0	0	-527	-151	2135
3373	154	2022-07-29	23	FATE	7	Kwangdong Freecs	Red	mid	Taliyah	1	3	1	12	1	0	0	375	457	2135
3374	154	2022-07-29	56	Teddy	7	Kwangdong Freecs	Red	bot	Jinx	1	8	0	8	1	0	0	1477	548	2135
3375	154	2022-07-29	28	Hoit	7	Kwangdong Freecs	Red	sup	Nautilus	1	2	0	9	1	0	0	358	-119	2135
3376	155	2022-07-29	41	Nuguri	7	DWG KIA	Blue	top	Ornn	0	1	4	12	0	1	1	1121	1001	2787
3377	155	2022-07-29	7	Canyon	2	DWG KIA	Blue	jng	Poppy	0	6	3	8	0	1	1	1183	607	2787
3378	155	2022-07-29	52	ShowMaker	2	DWG KIA	Blue	mid	Lissandra	0	3	4	10	0	1	1	527	-154	2787
3379	155	2022-07-29	15	deokdam	2	DWG KIA	Blue	bot	Lucian	0	9	4	6	0	1	1	807	563	2787
3380	155	2022-07-29	32	Kellin	2	DWG KIA	Blue	sup	Nami	0	0	2	16	0	1	1	1253	-342	2787
3381	155	2022-07-29	49	Rascal	2	KT Rolster	Red	top	Gwen	1	4	2	7	1	0	0	-1121	-1001	2787
3382	155	2022-07-29	12	Cuzz	6	KT Rolster	Red	jng	Skarner	1	0	4	7	1	0	0	-1183	-607	2787
3383	155	2022-07-29	58	VicLa	6	KT Rolster	Red	mid	Ryze	1	4	5	6	1	0	0	-527	154	2787
3384	155	2022-07-29	1	Aiming	6	KT Rolster	Red	bot	Zeri	1	8	2	4	1	0	0	-807	-563	2787
3385	155	2022-07-29	38	Life	6	KT Rolster	Red	sup	Tahm Kench	1	1	6	9	1	0	0	-1253	342	2787
3386	156	2022-07-29	41	Nuguri	6	DWG KIA	Blue	top	Sejuani	0	1	5	6	0	1	1	754	439	2780
3387	156	2022-07-29	7	Canyon	2	DWG KIA	Blue	jng	Trundle	0	0	3	8	0	1	1	-1015	-253	2780
3388	156	2022-07-29	52	ShowMaker	2	DWG KIA	Blue	mid	Ryze	0	5	2	2	0	1	1	204	-616	2780
3389	156	2022-07-29	15	deokdam	2	DWG KIA	Blue	bot	Lucian	0	2	3	6	0	1	1	81	-648	2780
3390	156	2022-07-29	32	Kellin	2	DWG KIA	Blue	sup	Nami	0	1	5	7	0	1	1	262	-141	2780
3391	156	2022-07-29	49	Rascal	2	KT Rolster	Red	top	Ornn	1	0	3	12	1	0	0	-754	-439	2780
3392	156	2022-07-29	12	Cuzz	6	KT Rolster	Red	jng	Viego	1	8	3	7	1	0	0	1015	253	2780
3393	156	2022-07-29	58	VicLa	6	KT Rolster	Red	mid	Ahri	1	3	1	9	1	0	0	-204	616	2780
3394	156	2022-07-29	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	6	1	6	1	0	0	-81	648	2780
3395	156	2022-07-29	38	Life	6	KT Rolster	Red	sup	Lulu	1	1	1	10	1	0	0	-262	141	2780
3396	157	2022-07-30	35	Kingen	6	DRX	Blue	top	Gnar	0	2	4	2	1	1	1	592	660	2268
3397	157	2022-07-30	47	Pyosik	1	DRX	Blue	jng	Lee Sin	0	2	5	7	1	1	1	799	623	2268
3398	157	2022-07-30	61	Zeka	1	DRX	Blue	mid	Lissandra	0	2	4	6	1	1	1	-186	-571	2268
3399	157	2022-07-30	13	Deft	1	DRX	Blue	bot	Lucian	0	4	2	5	1	1	1	479	226	2268
3400	157	2022-07-30	4	BeryL	1	DRX	Blue	sup	Nami	0	2	4	9	1	1	1	849	209	2268
3401	157	2022-07-30	17	Dove	1	Liiv SANDBOX	Red	top	Sejuani	1	2	1	10	0	0	0	-592	-660	2268
3402	157	2022-07-30	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	1	3	2	13	0	0	0	-799	-623	2268
3403	157	2022-07-30	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	3	1	5	0	0	0	186	571	2268
3404	157	2022-07-30	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	1	11	2	4	0	0	0	-479	-226	2268
3405	157	2022-07-30	30	Kael	8	Liiv SANDBOX	Red	sup	Nautilus	1	0	6	12	0	0	0	-849	-209	2268
3406	158	2022-07-30	35	Kingen	8	DRX	Blue	top	Gwen	1	4	1	7	1	1	1	568	350	2281
3407	158	2022-07-30	47	Pyosik	1	DRX	Blue	jng	Trundle	1	4	2	9	1	1	1	735	-432	2281
3408	158	2022-07-30	61	Zeka	1	DRX	Blue	mid	Lissandra	1	2	1	7	1	1	1	519	-10	2281
3409	158	2022-07-30	13	Deft	1	DRX	Blue	bot	Zeri	1	3	0	9	1	1	1	-99	-53	2281
3410	158	2022-07-30	4	BeryL	1	DRX	Blue	sup	Rakan	1	3	3	8	1	1	1	198	920	2281
3411	158	2022-07-30	17	Dove	1	Liiv SANDBOX	Red	top	Gnar	0	1	4	4	0	0	0	-568	-350	2281
3412	158	2022-07-30	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	0	1	4	2	0	0	0	-735	432	2281
3413	158	2022-07-30	10	Clozer	8	Liiv SANDBOX	Red	mid	Ahri	0	4	3	2	0	0	0	-519	10	2281
3414	158	2022-07-30	46	Prince	8	Liiv SANDBOX	Red	bot	Kog'Maw	0	1	4	3	0	0	0	99	53	2281
3415	158	2022-07-30	30	Kael	8	Liiv SANDBOX	Red	sup	Lulu	0	0	1	5	0	0	0	-198	-920	2281
3416	159	2022-07-30	17	Dove	8	Liiv SANDBOX	Blue	top	Sejuani	1	4	1	13	1	1	1	-316	-453	1585
3417	159	2022-07-30	11	Croco	8	Liiv SANDBOX	Blue	jng	Wukong	1	5	1	14	1	1	1	1066	-287	1585
3418	159	2022-07-30	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	2	0	15	1	1	1	305	380	1585
3419	159	2022-07-30	46	Prince	8	Liiv SANDBOX	Blue	bot	Sivir	1	13	1	9	1	1	1	944	939	1585
3420	159	2022-07-30	30	Kael	8	Liiv SANDBOX	Blue	sup	Leona	1	0	4	15	1	1	1	-301	-322	1585
3421	159	2022-07-30	35	Kingen	8	DRX	Red	top	Gnar	0	3	5	1	0	0	0	316	453	1585
3422	159	2022-07-30	47	Pyosik	1	DRX	Red	jng	Trundle	0	0	5	5	0	0	0	-1066	287	1585
3423	159	2022-07-30	61	Zeka	1	DRX	Red	mid	Lissandra	0	0	5	4	0	0	0	-305	-380	1585
3424	159	2022-07-30	13	Deft	1	DRX	Red	bot	Vayne	0	4	3	2	0	0	0	-944	-939	1585
3425	159	2022-07-30	4	BeryL	1	DRX	Red	sup	Nautilus	0	0	6	5	0	0	0	301	322	1585
3426	160	2022-07-30	62	Zeus	1	T1	Blue	top	Gwen	0	1	3	1	0	0	1	237	54	2155
3427	160	2022-07-30	42	Oner	10	T1	Blue	jng	Nocturne	0	3	1	2	0	0	1	851	1114	2155
3428	160	2022-07-30	22	Faker	10	T1	Blue	mid	Twisted Fate	0	0	1	5	0	0	1	291	-607	2155
3429	160	2022-07-30	26	Gumayusi	10	T1	Blue	bot	Aphelios	0	2	3	1	0	0	1	1203	-198	2155
3430	160	2022-07-30	33	Keria	10	T1	Blue	sup	Lulu	0	0	1	5	0	0	1	565	662	2155
3431	160	2022-07-30	16	Doran	10	Gen.G	Red	top	Akali	1	2	4	3	1	1	0	-237	-54	2155
3432	160	2022-07-30	44	Peanut	4	Gen.G	Red	jng	Skarner	1	0	0	7	1	1	0	-851	-1114	2155
3433	160	2022-07-30	9	Chovy	4	Gen.G	Red	mid	Sylas	1	2	0	4	1	1	0	-291	607	2155
3434	160	2022-07-30	50	Ruler	4	Gen.G	Red	bot	Lucian	1	5	1	2	1	1	0	-1203	198	2155
3435	160	2022-07-30	37	Lehends	4	Gen.G	Red	sup	Nami	1	0	1	6	1	1	0	-565	-662	2155
3436	161	2022-07-30	62	Zeus	4	T1	Blue	top	Ornn	0	0	5	1	0	1	1	-1646	-816	1494
3437	161	2022-07-30	42	Oner	10	T1	Blue	jng	Trundle	0	0	2	4	0	1	1	-420	179	1494
3438	161	2022-07-30	22	Faker	10	T1	Blue	mid	Azir	0	0	2	2	0	1	1	52	-175	1494
3439	161	2022-07-30	26	Gumayusi	10	T1	Blue	bot	Lucian	0	3	3	1	0	1	1	319	-210	1494
3440	161	2022-07-30	33	Keria	10	T1	Blue	sup	Nami	0	1	3	3	0	1	1	996	-483	1494
3441	161	2022-07-30	16	Doran	10	Gen.G	Red	top	Gnar	1	0	2	8	1	0	0	1646	816	1494
3442	161	2022-07-30	44	Peanut	4	Gen.G	Red	jng	Poppy	1	1	0	7	1	0	0	420	-179	1494
3443	161	2022-07-30	9	Chovy	4	Gen.G	Red	mid	Ahri	1	3	0	11	1	0	0	-52	175	1494
3444	161	2022-07-30	50	Ruler	4	Gen.G	Red	bot	Zeri	1	11	2	4	1	0	0	-319	210	1494
3445	161	2022-07-30	37	Lehends	4	Gen.G	Red	sup	Lulu	1	0	0	14	1	0	0	-996	483	1494
3446	162	2022-07-31	19	DuDu	4	Hanwha Life Esports	Blue	top	Gwen	1	5	1	7	0	1	0	532	480	2521
3447	162	2022-07-31	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Poppy	1	2	0	7	0	1	0	261	-9	2521
3448	162	2022-07-31	31	Karis	5	Hanwha Life Esports	Blue	mid	Sylas	1	4	1	7	0	1	0	-175	-60	2521
3449	162	2022-07-31	51	SamD	5	Hanwha Life Esports	Blue	bot	Sivir	1	3	2	6	0	1	0	1130	1044	2521
3450	162	2022-07-31	59	Vsta	5	Hanwha Life Esports	Blue	sup	Yuumi	1	0	1	13	0	1	0	-2785	-1570	2521
3451	162	2022-07-31	34	Kiin	5	Kwangdong Freecs	Red	top	Gnar	0	0	5	2	1	0	1	-532	-480	2521
3452	162	2022-07-31	21	Ellim	7	Kwangdong Freecs	Red	jng	Wukong	0	2	4	2	1	0	1	-261	9	2521
3453	162	2022-07-31	23	FATE	7	Kwangdong Freecs	Red	mid	Azir	0	3	1	1	1	0	1	175	60	2521
3454	162	2022-07-31	56	Teddy	7	Kwangdong Freecs	Red	bot	Senna	0	0	1	5	1	0	1	-1130	-1044	2521
3455	162	2022-07-31	28	Hoit	7	Kwangdong Freecs	Red	sup	Seraphine	0	0	3	5	1	0	1	2785	1570	2521
3456	163	2022-07-31	34	Kiin	7	Kwangdong Freecs	Blue	top	Gnar	1	3	0	6	0	1	1	1278	663	1891
3457	163	2022-07-31	21	Ellim	7	Kwangdong Freecs	Blue	jng	Wukong	1	3	0	5	0	1	1	1148	680	1891
3458	163	2022-07-31	23	FATE	7	Kwangdong Freecs	Blue	mid	Ryze	1	3	0	6	0	1	1	378	170	1891
3459	163	2022-07-31	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	1	2	0	7	0	1	1	-281	92	1891
3460	163	2022-07-31	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nautilus	1	0	0	8	0	1	1	191	-446	1891
3461	163	2022-07-31	19	DuDu	7	Hanwha Life Esports	Red	top	Gwen	0	0	2	0	1	0	0	-1278	-663	1891
3462	163	2022-07-31	43	OnFleek	5	Hanwha Life Esports	Red	jng	Skarner	0	0	4	0	1	0	0	-1148	-680	1891
3463	163	2022-07-31	31	Karis	5	Hanwha Life Esports	Red	mid	Galio	0	0	2	0	1	0	0	-378	-170	1891
3464	163	2022-07-31	51	SamD	5	Hanwha Life Esports	Red	bot	Lucian	0	0	2	0	1	0	0	281	-92	1891
3465	163	2022-07-31	59	Vsta	5	Hanwha Life Esports	Red	sup	Nami	0	0	1	0	1	0	0	-191	446	1891
3466	164	2022-07-31	19	DuDu	5	Hanwha Life Esports	Blue	top	Jax	0	0	5	1	1	1	1	-836	-1161	2432
3467	164	2022-07-31	60	Willer	5	Hanwha Life Esports	Blue	jng	Lee Sin	0	1	4	3	1	1	1	1121	460	2432
3468	164	2022-07-31	31	Karis	5	Hanwha Life Esports	Blue	mid	Ahri	0	0	3	3	1	1	1	369	293	2432
3469	164	2022-07-31	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Lucian	0	5	2	1	1	1	1	122	649	2432
3470	164	2022-07-31	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nami	0	0	3	5	1	1	1	-396	-253	2432
3471	164	2022-07-31	34	Kiin	5	Kwangdong Freecs	Red	top	Gwen	1	8	0	7	0	0	0	836	1161	2432
3472	164	2022-07-31	21	Ellim	7	Kwangdong Freecs	Red	jng	Vi	1	1	2	9	0	0	0	-1121	-460	2432
3473	164	2022-07-31	23	FATE	7	Kwangdong Freecs	Red	mid	Lissandra	1	3	1	10	0	0	0	-369	-293	2432
3474	164	2022-07-31	56	Teddy	7	Kwangdong Freecs	Red	bot	Aphelios	1	4	3	8	0	0	0	-122	-649	2432
3475	164	2022-07-31	28	Hoit	7	Kwangdong Freecs	Red	sup	Renata Glasc	1	1	0	12	0	0	0	396	253	2432
3476	165	2022-07-31	6	Canna	7	Nongshim RedForce	Blue	top	Gwen	0	1	3	2	0	1	1	226	187	1875
3477	165	2022-07-31	18	Dread	9	Nongshim RedForce	Blue	jng	Nocturne	0	0	2	2	0	1	1	533	400	1875
3478	165	2022-07-31	3	Bdd	9	Nongshim RedForce	Blue	mid	Ryze	0	2	2	3	0	1	1	-108	-589	1875
3479	165	2022-07-31	25	Ghost	9	Nongshim RedForce	Blue	bot	Zeri	0	2	1	1	0	1	1	-706	-899	1875
3480	165	2022-07-31	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Nautilus	0	0	6	3	0	1	1	-527	-460	1875
3481	165	2022-07-31	40	Morgan	9	Fredit BRION	Red	top	Gnar	1	6	1	3	1	0	0	-226	-187	1875
3482	165	2022-07-31	57	UmTi	3	Fredit BRION	Red	jng	Poppy	1	0	2	6	1	0	0	-533	-400	1875
3483	165	2022-07-31	36	Lava	3	Fredit BRION	Red	mid	Viktor	1	5	0	6	1	0	0	108	589	1875
3484	165	2022-07-31	27	Hena	3	Fredit BRION	Red	bot	Sivir	1	2	1	10	1	0	0	706	899	1875
3485	165	2022-07-31	14	Delight	3	Fredit BRION	Red	sup	Sett	1	1	1	6	1	0	0	527	460	1875
3486	166	2022-07-31	6	Canna	3	Nongshim RedForce	Blue	top	Gangplank	0	0	4	2	0	0	0	-1561	-661	1877
3487	166	2022-07-31	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	2	3	0	0	0	0	-964	-1557	1877
3488	166	2022-07-31	3	Bdd	9	Nongshim RedForce	Blue	mid	Azir	0	0	0	0	0	0	0	74	511	1877
3489	166	2022-07-31	25	Ghost	9	Nongshim RedForce	Blue	bot	Kalista	0	1	1	0	0	0	0	-584	275	1877
3490	166	2022-07-31	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Amumu	0	0	2	1	0	0	0	-184	-491	1877
3491	166	2022-07-31	40	Morgan	9	Fredit BRION	Red	top	Renekton	1	3	1	2	1	1	1	1561	661	1877
3492	166	2022-07-31	57	UmTi	3	Fredit BRION	Red	jng	Poppy	1	1	1	8	1	1	1	964	1557	1877
3493	166	2022-07-31	36	Lava	3	Fredit BRION	Red	mid	Ryze	1	3	1	2	1	1	1	-74	-511	1877
3494	166	2022-07-31	27	Hena	3	Fredit BRION	Red	bot	Zeri	1	3	0	4	1	1	1	584	-275	1877
3495	166	2022-07-31	14	Delight	3	Fredit BRION	Red	sup	Leona	1	0	0	4	1	1	1	184	491	1877
3496	167	2022-08-03	17	Dove	3	Liiv SANDBOX	Blue	top	Ornn	1	1	0	9	1	0	0	-345	75	1797
3497	167	2022-08-03	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	1	5	0	4	1	0	0	130	470	1797
3498	167	2022-08-03	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	1	4	2	5	1	0	0	-455	188	1797
3499	167	2022-08-03	46	Prince	8	Liiv SANDBOX	Blue	bot	Kalista	1	2	0	3	1	0	0	-116	1033	1797
3500	167	2022-08-03	30	Kael	8	Liiv SANDBOX	Blue	sup	Renata Glasc	1	1	1	10	1	0	0	-136	-225	1797
3501	167	2022-08-03	41	Nuguri	8	DWG KIA	Red	top	Sejuani	0	1	2	1	0	1	1	345	-75	1797
3502	167	2022-08-03	7	Canyon	2	DWG KIA	Red	jng	Wukong	0	0	3	1	0	1	1	-130	-470	1797
3503	167	2022-08-03	52	ShowMaker	2	DWG KIA	Red	mid	Ryze	0	2	0	0	0	1	1	455	-188	1797
3504	167	2022-08-03	15	deokdam	2	DWG KIA	Red	bot	Aphelios	0	0	2	3	0	1	1	116	-1033	1797
3505	167	2022-08-03	5	Bible	2	DWG KIA	Red	sup	Tahm Kench	0	0	6	2	0	1	1	136	225	1797
3506	168	2022-08-03	41	Nuguri	2	DWG KIA	Blue	top	Gwen	0	3	3	2	0	1	1	2085	1255	1829
3507	168	2022-08-03	7	Canyon	2	DWG KIA	Blue	jng	Poppy	0	0	4	5	0	1	1	28	-94	1829
3508	168	2022-08-03	52	ShowMaker	2	DWG KIA	Blue	mid	Galio	0	3	5	5	0	1	1	-462	-152	1829
3509	168	2022-08-03	15	deokdam	2	DWG KIA	Blue	bot	Zeri	0	2	4	6	0	1	1	-1169	-539	1829
3510	168	2022-08-03	5	Bible	2	DWG KIA	Blue	sup	Alistar	0	0	6	4	0	1	1	-129	-199	1829
3511	168	2022-08-03	17	Dove	2	Liiv SANDBOX	Red	top	Sejuani	1	1	2	15	1	0	0	-2085	-1255	1829
3512	168	2022-08-03	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	1	6	2	10	1	0	0	-28	94	1829
3513	168	2022-08-03	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	2	1	16	1	0	0	462	152	1829
3514	168	2022-08-03	46	Prince	8	Liiv SANDBOX	Red	bot	Sivir	1	12	2	8	1	0	0	1169	539	1829
3515	168	2022-08-03	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	1	1	17	1	0	0	129	199	1829
3516	169	2022-08-03	34	Kiin	8	Kwangdong Freecs	Blue	top	Gwen	0	2	5	2	0	0	0	-2108	-1360	1564
3517	169	2022-08-03	21	Ellim	7	Kwangdong Freecs	Blue	jng	Xin Zhao	0	1	5	3	0	0	0	-535	-552	1564
3518	169	2022-08-03	23	FATE	7	Kwangdong Freecs	Blue	mid	Ryze	0	1	2	3	0	0	0	-1753	-1199	1564
3519	169	2022-08-03	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	0	1	2	3	0	0	0	-686	-547	1564
3520	169	2022-08-03	28	Hoit	7	Kwangdong Freecs	Blue	sup	Yuumi	0	0	0	5	0	0	0	-202	703	1564
3521	169	2022-08-03	16	Doran	7	Gen.G	Red	top	Gnar	1	1	0	11	1	1	1	2108	1360	1564
3522	169	2022-08-03	44	Peanut	4	Gen.G	Red	jng	Wukong	1	4	1	8	1	1	1	535	552	1564
3523	169	2022-08-03	9	Chovy	4	Gen.G	Red	mid	Azir	1	6	0	5	1	1	1	1753	1199	1564
3524	169	2022-08-03	50	Ruler	4	Gen.G	Red	bot	Yasuo	1	3	2	7	1	1	1	686	547	1564
3525	169	2022-08-03	37	Lehends	4	Gen.G	Red	sup	Sejuani	1	0	2	12	1	1	1	202	-703	1564
3526	170	2022-08-03	34	Kiin	4	Kwangdong Freecs	Blue	top	Kennen	0	0	3	0	0	1	0	-888	-1930	1461
3527	170	2022-08-03	21	Ellim	7	Kwangdong Freecs	Blue	jng	Wukong	0	1	2	1	0	1	0	-2209	-1175	1461
3528	170	2022-08-03	23	FATE	7	Kwangdong Freecs	Blue	mid	Ryze	0	0	4	1	0	1	0	-1441	-1043	1461
3529	170	2022-08-03	56	Teddy	7	Kwangdong Freecs	Blue	bot	Sivir	0	1	2	0	0	1	0	-1533	-1060	1461
3530	170	2022-08-03	28	Hoit	7	Kwangdong Freecs	Blue	sup	Nautilus	0	0	3	0	0	1	0	-112	25	1461
3531	170	2022-08-03	16	Doran	7	Gen.G	Red	top	Gnar	1	2	0	6	1	0	1	888	1930	1461
3532	170	2022-08-03	44	Peanut	4	Gen.G	Red	jng	Viego	1	5	1	5	1	0	1	2209	1175	1461
3533	170	2022-08-03	9	Chovy	4	Gen.G	Red	mid	Ahri	1	2	1	10	1	0	1	1441	1043	1461
3534	170	2022-08-03	50	Ruler	4	Gen.G	Red	bot	Zeri	1	5	0	3	1	0	1	1533	1060	1461
3535	170	2022-08-03	37	Lehends	4	Gen.G	Red	sup	Alistar	1	0	0	10	1	0	1	112	-25	1461
3536	171	2022-08-04	49	Rascal	4	KT Rolster	Blue	top	Akali	1	4	2	0	0	1	0	188	582	1959
3537	171	2022-08-04	12	Cuzz	6	KT Rolster	Blue	jng	Vi	1	2	4	5	0	1	0	86	-139	1959
3538	171	2022-08-04	58	VicLa	6	KT Rolster	Blue	mid	Ahri	1	1	1	7	0	1	0	541	440	1959
3539	171	2022-08-04	1	Aiming	6	KT Rolster	Blue	bot	Zeri	1	6	0	2	0	1	0	-502	-266	1959
3540	171	2022-08-04	38	Life	6	KT Rolster	Blue	sup	Lulu	1	1	1	6	0	1	0	-452	180	1959
3541	171	2022-08-04	40	Morgan	6	Fredit BRION	Red	top	Gwen	0	1	3	2	1	0	1	-188	-582	1959
3542	171	2022-08-04	57	UmTi	3	Fredit BRION	Red	jng	Lee Sin	0	2	4	5	1	0	1	-86	139	1959
3543	171	2022-08-04	36	Lava	3	Fredit BRION	Red	mid	Ryze	0	3	4	5	1	0	1	-541	-440	1959
3544	171	2022-08-04	27	Hena	3	Fredit BRION	Red	bot	Sivir	0	1	2	2	1	0	1	502	266	1959
3545	171	2022-08-04	14	Delight	3	Fredit BRION	Red	sup	Karma	0	1	1	4	1	0	1	452	-180	1959
3546	172	2022-08-04	40	Morgan	3	Fredit BRION	Blue	top	Gwen	1	2	1	5	1	1	1	464	726	1892
3547	172	2022-08-04	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	1	0	1	6	1	1	1	-245	-637	1892
3548	172	2022-08-04	36	Lava	3	Fredit BRION	Blue	mid	Ryze	1	1	0	11	1	1	1	587	123	1892
3549	172	2022-08-04	27	Hena	3	Fredit BRION	Blue	bot	Sivir	1	10	2	3	1	1	1	512	799	1892
3550	172	2022-08-04	14	Delight	3	Fredit BRION	Blue	sup	Leona	1	0	0	8	1	1	1	-158	786	1892
3551	172	2022-08-04	49	Rascal	3	KT Rolster	Red	top	Ornn	0	0	2	3	0	0	0	-464	-726	1892
3552	172	2022-08-04	12	Cuzz	6	KT Rolster	Red	jng	Skarner	0	0	4	3	0	0	0	245	637	1892
3553	172	2022-08-04	58	VicLa	6	KT Rolster	Red	mid	Taliyah	0	1	3	2	0	0	0	-587	-123	1892
3554	172	2022-08-04	1	Aiming	6	KT Rolster	Red	bot	Zeri	0	1	0	2	0	0	0	-512	-799	1892
3555	172	2022-08-04	38	Life	6	KT Rolster	Red	sup	Karma	0	2	4	1	0	0	0	158	-786	1892
3556	173	2022-08-04	49	Rascal	6	KT Rolster	Blue	top	Sejuani	1	1	2	11	0	0	1	329	-199	1962
3557	173	2022-08-04	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	1	7	4	9	0	0	1	931	595	1962
3558	173	2022-08-04	58	VicLa	6	KT Rolster	Blue	mid	Ahri	1	5	2	7	0	0	1	101	596	1962
3559	173	2022-08-04	1	Aiming	6	KT Rolster	Blue	bot	Xayah	1	4	2	3	0	0	1	-158	414	1962
3560	173	2022-08-04	38	Life	6	KT Rolster	Blue	sup	Rakan	1	1	0	15	0	0	1	7	190	1962
3561	173	2022-08-04	40	Morgan	6	Fredit BRION	Red	top	Aatrox	0	1	4	4	1	1	0	-329	199	1962
3562	173	2022-08-04	57	UmTi	3	Fredit BRION	Red	jng	Vi	0	1	4	8	1	1	0	-931	-595	1962
3563	173	2022-08-04	36	Lava	3	Fredit BRION	Red	mid	Sylas	0	5	5	3	1	1	0	-101	-596	1962
3564	173	2022-08-04	27	Hena	3	Fredit BRION	Red	bot	Aphelios	0	1	2	4	1	1	0	158	-414	1962
3565	173	2022-08-04	14	Delight	3	Fredit BRION	Red	sup	Renata Glasc	0	2	3	7	1	1	0	-7	-190	1962
3566	174	2022-08-04	62	Zeus	3	T1	Blue	top	Akali	1	8	1	6	0	1	1	1739	1719	1944
3567	174	2022-08-04	42	Oner	10	T1	Blue	jng	Wukong	1	3	0	7	0	1	1	546	106	1944
3568	174	2022-08-04	22	Faker	10	T1	Blue	mid	Galio	1	2	1	12	0	1	1	-43	-301	1944
3569	174	2022-08-04	26	Gumayusi	10	T1	Blue	bot	Zeri	1	4	0	5	0	1	1	-453	-409	1944
3570	174	2022-08-04	33	Keria	10	T1	Blue	sup	Leona	1	0	0	5	0	1	1	41	-839	1944
3571	174	2022-08-04	19	DuDu	10	Hanwha Life Esports	Red	top	Gwen	0	0	5	1	1	0	0	-1739	-1719	1944
3572	174	2022-08-04	60	Willer	5	Hanwha Life Esports	Red	jng	Viego	0	1	4	0	1	0	0	-546	-106	1944
3573	174	2022-08-04	31	Karis	5	Hanwha Life Esports	Red	mid	Azir	0	1	3	0	1	0	0	43	301	1944
3574	174	2022-08-04	8	Cheoni	5	Hanwha Life Esports	Red	bot	Sivir	0	0	2	1	1	0	0	453	409	1944
3575	174	2022-08-04	59	Vsta	5	Hanwha Life Esports	Red	sup	Tahm Kench	0	0	3	1	1	0	0	-41	839	1944
3576	175	2022-08-04	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	0	1	4	1	1	0	0	-18	-219	1680
3577	175	2022-08-04	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Viego	0	0	6	1	1	0	0	-493	299	1680
3578	175	2022-08-04	31	Karis	5	Hanwha Life Esports	Blue	mid	Sylas	0	2	3	0	1	0	0	-430	223	1680
3579	175	2022-08-04	51	SamD	5	Hanwha Life Esports	Blue	bot	Sivir	0	0	3	1	1	0	0	-106	351	1680
3580	175	2022-08-04	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nautilus	0	1	4	1	1	0	0	-311	-210	1680
3581	175	2022-08-04	62	Zeus	5	T1	Red	top	Sejuani	1	1	0	17	0	1	1	18	219	1680
3582	175	2022-08-04	42	Oner	10	T1	Red	jng	Lee Sin	1	7	1	11	0	1	1	493	-299	1680
3583	175	2022-08-04	22	Faker	10	T1	Red	mid	Taliyah	1	3	2	7	0	1	1	430	-223	1680
3584	175	2022-08-04	26	Gumayusi	10	T1	Red	bot	Zeri	1	9	1	8	0	1	1	106	-351	1680
3585	175	2022-08-04	33	Keria	10	T1	Red	sup	Lulu	1	0	0	19	0	1	1	311	210	1680
3586	176	2022-08-05	35	Kingen	10	DRX	Blue	top	Sejuani	1	5	1	20	0	1	1	-476	-263	2275
3587	176	2022-08-05	47	Pyosik	1	DRX	Blue	jng	Viego	1	7	3	14	0	1	1	411	359	2275
3588	176	2022-08-05	61	Zeka	1	DRX	Blue	mid	Sylas	1	13	6	16	0	1	1	453	451	2275
3589	176	2022-08-05	13	Deft	1	DRX	Blue	bot	Kalista	1	9	3	11	0	1	1	1181	-50	2275
3590	176	2022-08-05	4	BeryL	1	DRX	Blue	sup	Amumu	1	0	7	21	0	1	1	-208	-442	2275
3591	176	2022-08-05	6	Canna	1	Nongshim RedForce	Red	top	Shyvana	0	4	8	11	1	0	0	476	263	2275
3592	176	2022-08-05	18	Dread	9	Nongshim RedForce	Red	jng	Vi	0	6	7	6	1	0	0	-411	-359	2275
3593	176	2022-08-05	3	Bdd	9	Nongshim RedForce	Red	mid	Taliyah	0	8	4	9	1	0	0	-453	-451	2275
3594	176	2022-08-05	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	0	1	8	13	1	0	0	-1181	50	2275
3595	176	2022-08-05	53	SnowFlower	9	Nongshim RedForce	Red	sup	Leona	0	1	7	13	1	0	0	208	442	2275
3596	177	2022-08-05	6	Canna	9	Nongshim RedForce	Blue	top	Renekton	1	1	2	7	1	0	1	1507	1393	2576
3597	177	2022-08-05	18	Dread	9	Nongshim RedForce	Blue	jng	Taliyah	1	4	2	6	1	0	1	799	-94	2576
3598	177	2022-08-05	3	Bdd	9	Nongshim RedForce	Blue	mid	Ryze	1	2	3	10	1	0	1	216	-528	2576
3599	177	2022-08-05	25	Ghost	9	Nongshim RedForce	Blue	bot	Sivir	1	7	1	6	1	0	1	895	169	2576
3600	177	2022-08-05	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Tahm Kench	1	1	2	9	1	0	1	173	233	2576
3601	177	2022-08-05	35	Kingen	9	DRX	Red	top	Sejuani	0	0	2	7	0	1	0	-1507	-1393	2576
3602	177	2022-08-05	47	Pyosik	1	DRX	Red	jng	Viego	0	2	2	6	0	1	0	-799	94	2576
3603	177	2022-08-05	61	Zeka	1	DRX	Red	mid	Ahri	0	1	3	5	0	1	0	-216	528	2576
3604	177	2022-08-05	13	Deft	1	DRX	Red	bot	Zeri	0	6	2	3	0	1	0	-895	-169	2576
3605	177	2022-08-05	4	BeryL	1	DRX	Red	sup	Leona	0	1	6	3	0	1	0	-173	-233	2576
3606	178	2022-08-05	35	Kingen	1	DRX	Blue	top	Gragas	1	2	0	8	1	1	1	-509	-1007	1684
3607	178	2022-08-05	47	Pyosik	1	DRX	Blue	jng	Lee Sin	1	3	1	9	1	1	1	-430	-6	1684
3608	178	2022-08-05	61	Zeka	1	DRX	Blue	mid	Sylas	1	7	2	7	1	1	1	861	534	1684
3609	178	2022-08-05	13	Deft	1	DRX	Blue	bot	Jinx	1	2	2	7	1	1	1	222	-103	1684
3610	178	2022-08-05	4	BeryL	1	DRX	Blue	sup	Tahm Kench	1	0	2	9	1	1	1	531	525	1684
3611	178	2022-08-05	6	Canna	1	Nongshim RedForce	Red	top	Renekton	0	3	4	0	0	0	0	509	1007	1684
3612	178	2022-08-05	18	Dread	9	Nongshim RedForce	Red	jng	Viego	0	2	1	4	0	0	0	430	6	1684
3613	178	2022-08-05	3	Bdd	9	Nongshim RedForce	Red	mid	Ryze	0	1	3	3	0	0	0	-861	-534	1684
3614	178	2022-08-05	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	0	1	4	5	0	0	0	-222	103	1684
3615	178	2022-08-05	53	SnowFlower	9	Nongshim RedForce	Red	sup	Yuumi	0	0	2	6	0	0	0	-531	-525	1684
3616	179	2022-08-05	41	Nuguri	9	DWG KIA	Blue	top	Sejuani	0	1	5	1	1	0	0	-425	-532	1656
3617	179	2022-08-05	7	Canyon	2	DWG KIA	Blue	jng	Trundle	0	2	2	0	1	0	0	-879	-1401	1656
3618	179	2022-08-05	52	ShowMaker	2	DWG KIA	Blue	mid	Sylas	0	0	0	2	1	0	0	-1362	28	1656
3619	179	2022-08-05	15	deokdam	2	DWG KIA	Blue	bot	Zeri	0	1	1	0	1	0	0	89	-658	1656
3620	179	2022-08-05	5	Bible	2	DWG KIA	Blue	sup	Lulu	0	0	1	2	1	0	0	-304	-306	1656
3621	179	2022-08-05	16	Doran	2	Gen.G	Red	top	Gwen	1	1	2	3	0	1	1	425	532	1656
3622	179	2022-08-05	44	Peanut	4	Gen.G	Red	jng	Wukong	1	4	0	3	0	1	1	879	1401	1656
3623	179	2022-08-05	9	Chovy	4	Gen.G	Red	mid	Azir	1	1	1	1	0	1	1	1362	-28	1656
3624	179	2022-08-05	50	Ruler	4	Gen.G	Red	bot	Sivir	1	3	1	2	0	1	1	-89	658	1656
3625	179	2022-08-05	37	Lehends	4	Gen.G	Red	sup	Rakan	1	0	0	5	0	1	1	304	306	1656
3626	180	2022-08-05	41	Nuguri	4	DWG KIA	Blue	top	Camille	1	5	3	8	1	1	1	329	-97	2399
3627	180	2022-08-05	7	Canyon	2	DWG KIA	Blue	jng	Karthus	1	9	5	20	1	1	1	1496	1391	2399
3628	180	2022-08-05	52	ShowMaker	2	DWG KIA	Blue	mid	Ahri	1	6	1	15	1	1	1	189	22	2399
3629	180	2022-08-05	15	deokdam	2	DWG KIA	Blue	bot	Kalista	1	11	3	11	1	1	1	2833	1954	2399
3630	180	2022-08-05	5	Bible	2	DWG KIA	Blue	sup	Amumu	1	2	7	23	1	1	1	652	808	2399
3631	180	2022-08-05	16	Doran	2	Gen.G	Red	top	Renekton	0	1	7	11	0	0	0	-329	97	2399
3632	180	2022-08-05	44	Peanut	4	Gen.G	Red	jng	Skarner	0	2	9	9	0	0	0	-1496	-1391	2399
3633	180	2022-08-05	9	Chovy	4	Gen.G	Red	mid	Azir	0	6	4	9	0	0	0	-189	-22	2399
3634	180	2022-08-05	50	Ruler	4	Gen.G	Red	bot	Lucian	0	9	6	7	0	0	0	-2833	-1954	2399
3635	180	2022-08-05	37	Lehends	4	Gen.G	Red	sup	Nami	0	1	7	18	0	0	0	-652	-808	2399
3636	181	2022-08-05	16	Doran	4	Gen.G	Blue	top	Gangplank	1	0	4	4	0	1	1	-275	-1004	2399
3637	181	2022-08-05	44	Peanut	4	Gen.G	Blue	jng	Poppy	1	1	1	7	0	1	1	1258	620	2399
3638	181	2022-08-05	9	Chovy	4	Gen.G	Blue	mid	Ryze	1	1	0	6	0	1	1	644	331	2399
3639	181	2022-08-05	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	10	0	2	0	1	1	2066	1039	2399
3640	181	2022-08-05	37	Lehends	4	Gen.G	Blue	sup	Lulu	1	0	2	12	0	1	1	233	-204	2399
3641	181	2022-08-05	41	Nuguri	4	DWG KIA	Red	top	Gnar	0	1	1	3	1	0	0	275	1004	2399
3642	181	2022-08-05	7	Canyon	2	DWG KIA	Red	jng	Viego	0	1	2	2	1	0	0	-1258	-620	2399
3643	181	2022-08-05	52	ShowMaker	2	DWG KIA	Red	mid	Viktor	0	4	3	2	1	0	0	-644	-331	2399
3644	181	2022-08-05	15	deokdam	2	DWG KIA	Red	bot	Lucian	0	1	3	1	1	0	0	-2066	-1039	2399
3645	181	2022-08-05	5	Bible	2	DWG KIA	Red	sup	Nami	0	0	3	4	1	0	0	-233	204	2399
3646	182	2022-08-06	19	DuDu	2	Hanwha Life Esports	Blue	top	Gangplank	1	10	4	7	0	1	1	197	120	2207
3647	182	2022-08-06	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Trundle	1	0	2	13	0	1	1	-220	-770	2207
3648	182	2022-08-06	31	Karis	5	Hanwha Life Esports	Blue	mid	Ahri	1	1	1	13	0	1	1	-723	-1517	2207
3649	182	2022-08-06	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Kalista	1	5	1	10	0	1	1	173	-665	2207
3650	182	2022-08-06	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	1	1	3	11	0	1	1	-343	-405	2207
3651	182	2022-08-06	40	Morgan	5	Fredit BRION	Red	top	Gnar	0	3	3	4	1	0	0	-197	-120	2207
3652	182	2022-08-06	57	UmTi	3	Fredit BRION	Red	jng	Vi	0	2	3	4	1	0	0	220	770	2207
3653	182	2022-08-06	36	Lava	3	Fredit BRION	Red	mid	Lissandra	0	3	3	5	1	0	0	723	1517	2207
3654	182	2022-08-06	27	Hena	3	Fredit BRION	Red	bot	Draven	0	3	3	3	1	0	0	-173	665	2207
3655	182	2022-08-06	14	Delight	3	Fredit BRION	Red	sup	Leona	0	0	5	6	1	0	0	343	405	2207
3656	183	2022-08-06	40	Morgan	3	Fredit BRION	Blue	top	Gwen	1	0	0	4	1	0	1	-105	-69	1852
3657	183	2022-08-06	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	1	2	1	4	1	0	1	343	183	1852
3658	183	2022-08-06	36	Lava	3	Fredit BRION	Blue	mid	Viktor	1	5	0	4	1	0	1	1276	712	1852
3659	183	2022-08-06	27	Hena	3	Fredit BRION	Blue	bot	Zeri	1	3	0	5	1	0	1	1001	1624	1852
3660	183	2022-08-06	14	Delight	3	Fredit BRION	Blue	sup	Nautilus	1	1	1	7	1	0	1	392	12	1852
3661	183	2022-08-06	19	DuDu	3	Hanwha Life Esports	Red	top	Gnar	0	0	1	1	0	1	0	105	69	1852
3662	183	2022-08-06	43	OnFleek	5	Hanwha Life Esports	Red	jng	Skarner	0	1	3	1	0	1	0	-343	-183	1852
3663	183	2022-08-06	31	Karis	5	Hanwha Life Esports	Red	mid	Sylas	0	0	2	2	0	1	0	-1276	-712	1852
3664	183	2022-08-06	8	Cheoni	5	Hanwha Life Esports	Red	bot	Lucian	0	0	2	2	0	1	0	-1001	-1624	1852
3665	183	2022-08-06	59	Vsta	5	Hanwha Life Esports	Red	sup	Nami	0	1	3	1	0	1	0	-392	-12	1852
3666	184	2022-08-06	19	DuDu	5	Hanwha Life Esports	Blue	top	Gwen	0	0	4	2	0	1	0	907	312	2108
3667	184	2022-08-06	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Wukong	0	2	4	2	0	1	0	803	-178	2108
3668	184	2022-08-06	31	Karis	5	Hanwha Life Esports	Blue	mid	Galio	0	1	3	2	0	1	0	-785	-300	2108
3669	184	2022-08-06	8	Cheoni	5	Hanwha Life Esports	Blue	bot	Sivir	0	1	2	2	0	1	0	-924	-782	2108
3670	184	2022-08-06	59	Vsta	5	Hanwha Life Esports	Blue	sup	Nautilus	0	0	3	3	0	1	0	-204	22	2108
3671	184	2022-08-06	40	Morgan	5	Fredit BRION	Red	top	Gnar	1	3	2	6	1	0	1	-907	-312	2108
3672	184	2022-08-06	57	UmTi	3	Fredit BRION	Red	jng	Xin Zhao	1	1	0	9	1	0	1	-803	178	2108
3673	184	2022-08-06	36	Lava	3	Fredit BRION	Red	mid	Viktor	1	5	0	10	1	0	1	785	300	2108
3674	184	2022-08-06	27	Hena	3	Fredit BRION	Red	bot	Zeri	1	7	0	8	1	0	1	924	782	2108
3675	184	2022-08-06	14	Delight	3	Fredit BRION	Red	sup	Rakan	1	0	2	12	1	0	1	204	-22	2108
3676	185	2022-08-06	49	Rascal	3	KT Rolster	Blue	top	Lee Sin	0	3	4	0	1	1	1	2383	2564	1768
3677	185	2022-08-06	12	Cuzz	6	KT Rolster	Blue	jng	Viego	0	1	2	2	1	1	1	537	598	1768
3678	185	2022-08-06	58	VicLa	6	KT Rolster	Blue	mid	Ahri	0	1	5	2	1	1	1	-60	-632	1768
3679	185	2022-08-06	1	Aiming	6	KT Rolster	Blue	bot	Zeri	0	0	4	2	1	1	1	395	48	1768
3680	185	2022-08-06	38	Life	6	KT Rolster	Blue	sup	Lulu	0	0	3	3	1	1	1	652	-483	1768
3681	185	2022-08-06	17	Dove	6	Liiv SANDBOX	Red	top	Gnar	1	3	3	10	0	0	0	-2383	-2564	1768
3682	185	2022-08-06	11	Croco	8	Liiv SANDBOX	Red	jng	Skarner	1	2	1	11	0	0	0	-537	-598	1768
3683	185	2022-08-06	10	Clozer	8	Liiv SANDBOX	Red	mid	Sylas	1	6	1	3	0	0	0	60	632	1768
3684	185	2022-08-06	46	Prince	8	Liiv SANDBOX	Red	bot	Sivir	1	6	0	11	0	0	0	-395	-48	1768
3685	185	2022-08-06	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	1	1	0	15	0	0	0	-652	483	1768
3686	186	2022-08-06	49	Rascal	8	KT Rolster	Blue	top	Akali	1	6	1	6	1	1	1	1121	1175	1841
3687	186	2022-08-06	12	Cuzz	6	KT Rolster	Blue	jng	Viego	1	5	0	10	1	1	1	1020	375	1841
3688	186	2022-08-06	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	4	0	11	1	1	1	1157	1335	1841
3689	186	2022-08-06	1	Aiming	6	KT Rolster	Blue	bot	Kalista	1	7	1	4	1	1	1	1720	1315	1841
3690	186	2022-08-06	38	Life	6	KT Rolster	Blue	sup	Amumu	1	0	2	10	1	1	1	-109	-236	1841
3691	186	2022-08-06	17	Dove	6	Liiv SANDBOX	Red	top	Gwen	0	2	6	1	0	0	0	-1121	-1175	1841
3692	186	2022-08-06	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	0	2	4	2	0	0	0	-1020	-375	1841
3693	186	2022-08-06	10	Clozer	8	Liiv SANDBOX	Red	mid	Taliyah	0	0	5	2	0	0	0	-1157	-1335	1841
3694	186	2022-08-06	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	0	0	3	3	0	0	0	-1720	-1315	1841
3695	186	2022-08-06	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	0	0	4	4	0	0	0	109	236	1841
3696	187	2022-08-06	17	Dove	8	Liiv SANDBOX	Blue	top	Gnar	1	1	4	2	0	1	1	302	513	2261
3697	187	2022-08-06	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	1	0	6	6	0	1	1	-431	-541	2261
3698	187	2022-08-06	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	1	3	3	2	0	1	1	-710	-632	2261
3699	187	2022-08-06	46	Prince	8	Liiv SANDBOX	Blue	bot	Zeri	1	5	2	3	0	1	1	1060	295	2261
3700	187	2022-08-06	30	Kael	8	Liiv SANDBOX	Blue	sup	Lulu	1	0	1	9	0	1	1	-115	-566	2261
3701	187	2022-08-06	49	Rascal	8	KT Rolster	Red	top	Gwen	0	0	1	8	1	0	0	-302	-513	2261
3702	187	2022-08-06	12	Cuzz	6	KT Rolster	Red	jng	Viego	0	5	1	6	1	0	0	431	541	2261
3703	187	2022-08-06	58	VicLa	6	KT Rolster	Red	mid	Taliyah	0	3	1	9	1	0	0	710	632	2261
3704	187	2022-08-06	1	Aiming	6	KT Rolster	Red	bot	Sivir	0	7	1	6	1	0	0	-1060	-295	2261
3705	187	2022-08-06	38	Life	6	KT Rolster	Red	sup	Amumu	0	1	5	12	1	0	0	115	566	2261
3706	188	2022-08-07	6	Canna	6	Nongshim RedForce	Blue	top	Gnar	0	4	4	2	0	1	1	-118	-69	1743
3707	188	2022-08-07	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	0	5	3	3	0	1	1	-24	-1018	1743
3708	188	2022-08-07	3	Bdd	9	Nongshim RedForce	Blue	mid	Seraphine	0	0	2	6	0	1	1	-249	-223	1743
3709	188	2022-08-07	25	Ghost	9	Nongshim RedForce	Blue	bot	Aphelios	0	0	4	6	0	1	1	-131	200	1743
3710	188	2022-08-07	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Alistar	0	0	3	6	0	1	1	-184	289	1743
3711	188	2022-08-07	62	Zeus	9	T1	Red	top	Camille	1	1	2	5	1	0	0	118	69	1743
3712	188	2022-08-07	42	Oner	10	T1	Red	jng	Vi	1	3	1	9	1	0	0	24	1018	1743
3713	188	2022-08-07	22	Faker	10	T1	Red	mid	Azir	1	5	1	7	1	0	0	249	223	1743
3714	188	2022-08-07	26	Gumayusi	10	T1	Red	bot	Sivir	1	7	3	5	1	0	0	131	-200	1743
3715	188	2022-08-07	33	Keria	10	T1	Red	sup	Rakan	1	0	2	12	1	0	0	184	-289	1743
3716	189	2022-08-07	6	Canna	10	Nongshim RedForce	Blue	top	Ornn	1	3	0	8	1	0	1	110	116	2043
3717	189	2022-08-07	18	Dread	9	Nongshim RedForce	Blue	jng	Vi	1	5	1	10	1	0	1	-303	-139	2043
3718	189	2022-08-07	3	Bdd	9	Nongshim RedForce	Blue	mid	Sylas	1	10	0	6	1	0	1	-359	344	2043
3719	189	2022-08-07	25	Ghost	9	Nongshim RedForce	Blue	bot	Sivir	1	2	1	8	1	0	1	-74	260	2043
3720	189	2022-08-07	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Renata Glasc	1	1	0	12	1	0	1	304	-145	2043
3721	189	2022-08-07	62	Zeus	9	T1	Red	top	Renekton	0	1	6	1	0	1	0	-110	-116	2043
3722	189	2022-08-07	42	Oner	10	T1	Red	jng	Lee Sin	0	1	3	0	0	1	0	303	139	2043
3723	189	2022-08-07	22	Faker	10	T1	Red	mid	Azir	0	0	5	1	0	1	0	359	-344	2043
3724	189	2022-08-07	26	Gumayusi	10	T1	Red	bot	Zeri	0	0	3	0	0	1	0	74	-260	2043
3725	189	2022-08-07	33	Keria	10	T1	Red	sup	Zilean	0	0	4	0	0	1	0	-304	145	2043
3726	190	2022-08-07	62	Zeus	10	T1	Blue	top	Zac	1	2	5	10	1	1	1	-408	-603	2090
3727	190	2022-08-07	42	Oner	10	T1	Blue	jng	Viego	1	9	3	6	1	1	1	1677	-2	2090
3728	190	2022-08-07	22	Faker	10	T1	Blue	mid	Azir	1	3	2	15	1	1	1	1656	1232	2090
3729	190	2022-08-07	26	Gumayusi	10	T1	Blue	bot	Draven	1	6	2	9	1	1	1	-525	-555	2090
3730	190	2022-08-07	33	Keria	10	T1	Blue	sup	Renata Glasc	1	0	3	16	1	1	1	-246	319	2090
3731	190	2022-08-07	6	Canna	10	Nongshim RedForce	Red	top	Ornn	0	1	3	4	0	0	0	408	603	2090
3732	190	2022-08-07	18	Dread	9	Nongshim RedForce	Red	jng	Vi	0	0	3	11	0	0	0	-1677	2	2090
3733	190	2022-08-07	3	Bdd	9	Nongshim RedForce	Red	mid	Ahri	0	4	8	2	0	0	0	-1656	-1232	2090
3734	190	2022-08-07	25	Ghost	9	Nongshim RedForce	Red	bot	Kalista	0	8	3	2	0	0	0	525	555	2090
3735	190	2022-08-07	53	SnowFlower	9	Nongshim RedForce	Red	sup	Ashe	0	2	3	11	0	0	0	246	-319	2090
3736	191	2022-08-07	34	Kiin	9	Kwangdong Freecs	Blue	top	Ornn	0	0	4	3	0	1	0	337	293	2136
3737	191	2022-08-07	21	Ellim	7	Kwangdong Freecs	Blue	jng	Lee Sin	0	0	3	4	0	1	0	-307	-894	2136
3738	191	2022-08-07	23	FATE	7	Kwangdong Freecs	Blue	mid	Taliyah	0	2	2	2	0	1	0	-438	-870	2136
3739	191	2022-08-07	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	0	1	3	1	0	1	0	-310	621	2136
3740	191	2022-08-07	39	Moham	7	Kwangdong Freecs	Blue	sup	Rakan	0	1	5	2	0	1	0	-11	-665	2136
3741	191	2022-08-07	35	Kingen	7	DRX	Red	top	Gragas	1	1	1	14	1	0	1	-337	-293	2136
3742	191	2022-08-07	47	Pyosik	1	DRX	Red	jng	Xin Zhao	1	5	2	9	1	0	1	307	894	2136
3743	191	2022-08-07	61	Zeka	1	DRX	Red	mid	Ahri	1	5	0	9	1	0	1	438	870	2136
3744	191	2022-08-07	13	Deft	1	DRX	Red	bot	Sivir	1	6	2	9	1	0	1	310	-621	2136
3745	191	2022-08-07	4	BeryL	1	DRX	Red	sup	Lulu	1	0	1	16	1	0	1	11	665	2136
3746	192	2022-08-07	34	Kiin	1	Kwangdong Freecs	Blue	top	Sejuani	0	0	3	3	0	0	1	44	353	2192
3747	192	2022-08-07	21	Ellim	7	Kwangdong Freecs	Blue	jng	Vi	0	2	3	4	0	0	1	489	285	2192
3748	192	2022-08-07	23	FATE	7	Kwangdong Freecs	Blue	mid	Taliyah	0	1	1	4	0	0	1	182	-10	2192
3749	192	2022-08-07	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	0	3	3	1	0	0	1	1146	872	2192
3750	192	2022-08-07	39	Moham	7	Kwangdong Freecs	Blue	sup	Renata Glasc	0	0	1	3	0	0	1	132	92	2192
3751	192	2022-08-07	35	Kingen	7	DRX	Red	top	Gragas	1	0	0	7	1	1	0	-44	-353	2192
3752	192	2022-08-07	47	Pyosik	1	DRX	Red	jng	Trundle	1	2	1	8	1	1	0	-489	-285	2192
3753	192	2022-08-07	61	Zeka	1	DRX	Red	mid	Ahri	1	4	1	4	1	1	0	-182	10	2192
3754	192	2022-08-07	13	Deft	1	DRX	Red	bot	Sivir	1	5	2	6	1	1	0	-1146	-872	2192
3755	192	2022-08-07	4	BeryL	1	DRX	Red	sup	Lulu	1	0	2	11	1	1	0	-132	-92	2192
3756	193	2022-08-10	16	Doran	1	Gen.G	Blue	top	Gwen	1	2	0	6	1	0	1	-1061	-229	2039
3757	193	2022-08-10	44	Peanut	4	Gen.G	Blue	jng	Vi	1	3	2	6	1	0	1	479	693	2039
3758	193	2022-08-10	9	Chovy	4	Gen.G	Blue	mid	LeBlanc	1	4	2	8	1	0	1	17	765	2039
3759	193	2022-08-10	50	Ruler	4	Gen.G	Blue	bot	Kalista	1	4	1	3	1	0	1	544	-83	2039
3760	193	2022-08-10	37	Lehends	4	Gen.G	Blue	sup	Amumu	1	1	5	4	1	0	1	98	55	2039
3761	193	2022-08-10	40	Morgan	4	Fredit BRION	Red	top	Kennen	0	0	3	3	0	1	0	1061	229	2039
3762	193	2022-08-10	57	UmTi	3	Fredit BRION	Red	jng	Lee Sin	0	3	4	5	0	1	0	-479	-693	2039
3763	193	2022-08-10	36	Lava	3	Fredit BRION	Red	mid	Azir	0	3	2	5	0	1	0	-17	-765	2039
3764	193	2022-08-10	27	Hena	3	Fredit BRION	Red	bot	Varus	0	4	1	2	0	1	0	-544	83	2039
3765	193	2022-08-10	14	Delight	3	Fredit BRION	Red	sup	Leona	0	0	4	4	0	1	0	-98	-55	2039
3766	194	2022-08-10	40	Morgan	3	Fredit BRION	Blue	top	Ornn	0	1	4	2	1	0	0	-815	-437	2039
3767	194	2022-08-10	57	UmTi	3	Fredit BRION	Blue	jng	Poppy	0	3	2	5	1	0	0	19	97	2039
3768	194	2022-08-10	36	Lava	3	Fredit BRION	Blue	mid	Viktor	0	2	5	5	1	0	0	-364	-421	2039
3769	194	2022-08-10	27	Hena	3	Fredit BRION	Blue	bot	Zeri	0	2	2	2	1	0	0	-46	177	2039
3770	194	2022-08-10	14	Delight	3	Fredit BRION	Blue	sup	Karma	0	1	2	6	1	0	0	960	395	2039
3771	194	2022-08-10	16	Doran	3	Gen.G	Red	top	Gnar	1	2	2	9	0	1	1	815	437	2039
3772	194	2022-08-10	44	Peanut	4	Gen.G	Red	jng	Skarner	1	1	0	9	0	1	1	-19	-97	2039
3773	194	2022-08-10	9	Chovy	4	Gen.G	Red	mid	Ahri	1	5	2	9	0	1	1	364	421	2039
3774	194	2022-08-10	50	Ruler	4	Gen.G	Red	bot	Sivir	1	7	4	5	0	1	1	46	-177	2039
3775	194	2022-08-10	37	Lehends	4	Gen.G	Red	sup	Lulu	1	0	1	12	0	1	1	-960	-395	2039
3776	195	2022-08-10	17	Dove	4	Liiv SANDBOX	Blue	top	Gragas	1	1	2	10	1	1	1	-220	-705	1830
3777	195	2022-08-10	11	Croco	8	Liiv SANDBOX	Blue	jng	Vi	1	4	1	9	1	1	1	454	418	1830
3778	195	2022-08-10	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	5	0	9	1	1	1	945	1452	1830
3779	195	2022-08-10	46	Prince	8	Liiv SANDBOX	Blue	bot	Sivir	1	7	0	7	1	1	1	313	544	1830
3780	195	2022-08-10	30	Kael	8	Liiv SANDBOX	Blue	sup	Nautilus	1	0	2	15	1	1	1	31	-58	1830
3781	195	2022-08-10	62	Zeus	8	T1	Red	top	Sejuani	0	0	5	5	0	0	0	220	705	1830
3782	195	2022-08-10	42	Oner	10	T1	Red	jng	Pantheon	0	2	6	3	0	0	0	-454	-418	1830
3783	195	2022-08-10	22	Faker	10	T1	Red	mid	Azir	0	2	2	2	0	0	0	-945	-1452	1830
3784	195	2022-08-10	26	Gumayusi	10	T1	Red	bot	Zeri	0	1	2	3	0	0	0	-313	-544	1830
3785	195	2022-08-10	33	Keria	10	T1	Red	sup	Lulu	0	0	2	5	0	0	0	-31	58	1830
3786	196	2022-08-10	62	Zeus	10	T1	Blue	top	Sejuani	0	2	5	2	0	1	0	269	792	1427
3787	196	2022-08-10	42	Oner	10	T1	Blue	jng	Wukong	0	4	4	2	0	1	0	901	127	1427
3788	196	2022-08-10	22	Faker	10	T1	Blue	mid	Swain	0	1	4	4	0	1	0	-323	-418	1427
3789	196	2022-08-10	26	Gumayusi	10	T1	Blue	bot	Jinx	0	1	4	2	0	1	0	-1438	-1630	1427
3790	196	2022-08-10	33	Keria	10	T1	Blue	sup	Blitzcrank	0	0	4	3	0	1	0	-389	567	1427
3791	196	2022-08-10	17	Dove	10	Liiv SANDBOX	Red	top	Gragas	1	3	1	13	1	0	1	-269	-792	1427
3792	196	2022-08-10	11	Croco	8	Liiv SANDBOX	Red	jng	Trundle	1	2	3	15	1	0	1	-901	-127	1427
3793	196	2022-08-10	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	1	1	7	1	0	1	323	418	1427
3794	196	2022-08-10	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	1	14	0	3	1	0	1	1438	1630	1427
3795	196	2022-08-10	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	1	3	16	1	0	1	389	-567	1427
3796	197	2022-08-11	34	Kiin	8	Kwangdong Freecs	Blue	top	Ornn	0	0	4	3	0	1	0	-39	-555	2499
3797	197	2022-08-11	21	Ellim	7	Kwangdong Freecs	Blue	jng	Poppy	0	0	4	3	0	1	0	40	-422	2499
3798	197	2022-08-11	23	FATE	7	Kwangdong Freecs	Blue	mid	Azir	0	1	2	2	0	1	0	111	-404	2499
3799	197	2022-08-11	56	Teddy	7	Kwangdong Freecs	Blue	bot	Zeri	0	2	3	1	0	1	0	-198	-102	2499
3800	197	2022-08-11	39	Moham	7	Kwangdong Freecs	Blue	sup	Lulu	0	0	1	3	0	1	0	28	-20	2499
3801	197	2022-08-11	41	Nuguri	7	DWG KIA	Red	top	Sejuani	1	0	2	11	1	0	1	39	555	2499
3802	197	2022-08-11	7	Canyon	2	DWG KIA	Red	jng	Viego	1	2	1	10	1	0	1	-40	422	2499
3803	197	2022-08-11	52	ShowMaker	2	DWG KIA	Red	mid	Ahri	1	4	0	6	1	0	1	-111	404	2499
3804	197	2022-08-11	15	deokdam	2	DWG KIA	Red	bot	Sivir	1	8	0	6	1	0	1	198	102	2499
3805	197	2022-08-11	32	Kellin	2	DWG KIA	Red	sup	Renata Glasc	1	0	0	13	1	0	1	-28	20	2499
3806	198	2022-08-11	34	Kiin	2	Kwangdong Freecs	Blue	top	Gragas	0	0	8	7	0	1	0	-35	924	2449
3807	198	2022-08-11	21	Ellim	7	Kwangdong Freecs	Blue	jng	Trundle	0	5	3	6	0	1	0	-319	-932	2449
3808	198	2022-08-11	23	FATE	7	Kwangdong Freecs	Blue	mid	LeBlanc	0	1	4	5	0	1	0	-750	-1178	2449
3809	198	2022-08-11	56	Teddy	7	Kwangdong Freecs	Blue	bot	Sivir	0	9	2	2	0	1	0	-172	153	2449
3810	198	2022-08-11	28	Hoit	7	Kwangdong Freecs	Blue	sup	Karma	0	0	2	10	0	1	0	-135	-212	2449
3811	198	2022-08-11	41	Nuguri	7	DWG KIA	Red	top	Camille	1	3	6	7	1	0	1	35	-924	2449
3812	198	2022-08-11	7	Canyon	2	DWG KIA	Red	jng	Lee Sin	1	5	5	12	1	0	1	319	932	2449
3813	198	2022-08-11	52	ShowMaker	2	DWG KIA	Red	mid	Ahri	1	3	1	13	1	0	1	750	1178	2449
3814	198	2022-08-11	15	deokdam	2	DWG KIA	Red	bot	Draven	1	4	2	6	1	0	1	172	-153	2449
3815	198	2022-08-11	32	Kellin	2	DWG KIA	Red	sup	Renata Glasc	1	4	1	13	1	0	1	135	212	2449
3816	199	2022-08-11	35	Kingen	2	DRX	Blue	top	Gragas	0	1	4	1	0	0	0	-2309	-2225	1453
3817	199	2022-08-11	47	Pyosik	1	DRX	Blue	jng	Wukong	0	0	3	0	0	0	0	-812	-425	1453
3818	199	2022-08-11	61	Zeka	1	DRX	Blue	mid	Sylas	0	1	3	1	0	0	0	-1431	-1267	1453
3819	199	2022-08-11	13	Deft	1	DRX	Blue	bot	Jinx	0	0	2	2	0	0	0	-1233	-315	1453
3820	199	2022-08-11	4	BeryL	1	DRX	Blue	sup	Rakan	0	0	5	2	0	0	0	-911	-29	1453
3821	199	2022-08-11	49	Rascal	1	KT Rolster	Red	top	Renekton	1	2	0	3	1	1	1	2309	2225	1453
3822	199	2022-08-11	12	Cuzz	6	KT Rolster	Red	jng	Trundle	1	2	0	7	1	1	1	812	425	1453
3823	199	2022-08-11	58	VicLa	6	KT Rolster	Red	mid	Ahri	1	6	0	4	1	1	1	1431	1267	1453
3824	199	2022-08-11	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	3	1	7	1	1	1	1233	315	1453
3825	199	2022-08-11	38	Life	6	KT Rolster	Red	sup	Tahm Kench	1	4	1	10	1	1	1	911	29	1453
3826	200	2022-08-11	35	Kingen	6	DRX	Blue	top	Aatrox	0	0	5	0	0	0	1	-215	138	1465
3827	200	2022-08-11	47	Pyosik	1	DRX	Blue	jng	Viego	0	0	3	0	0	0	1	-319	525	1465
3828	200	2022-08-11	61	Zeka	1	DRX	Blue	mid	Ahri	0	0	3	0	0	0	1	360	-112	1465
3829	200	2022-08-11	13	Deft	1	DRX	Blue	bot	Jinx	0	0	2	0	0	0	1	325	-315	1465
3830	200	2022-08-11	4	BeryL	1	DRX	Blue	sup	Tahm Kench	0	0	3	0	0	0	1	-73	853	1465
3831	200	2022-08-11	49	Rascal	1	KT Rolster	Red	top	Sejuani	1	5	0	6	1	1	0	215	-138	1465
3832	200	2022-08-11	12	Cuzz	6	KT Rolster	Red	jng	Wukong	1	6	0	6	1	1	0	319	-525	1465
3833	200	2022-08-11	58	VicLa	6	KT Rolster	Red	mid	Swain	1	1	0	11	1	1	0	-360	112	1465
3834	200	2022-08-11	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	4	0	5	1	1	0	-325	315	1465
3835	200	2022-08-11	38	Life	6	KT Rolster	Red	sup	Renata Glasc	1	0	0	12	1	1	0	73	-853	1465
3836	201	2022-08-12	6	Canna	6	Nongshim RedForce	Blue	top	Renekton	1	1	1	5	0	1	1	351	-651	1964
3837	201	2022-08-12	18	Dread	9	Nongshim RedForce	Blue	jng	Vi	1	3	0	8	0	1	1	1457	-306	1964
3838	201	2022-08-12	3	Bdd	9	Nongshim RedForce	Blue	mid	Ahri	1	6	0	8	0	1	1	2150	1449	1964
3839	201	2022-08-12	25	Ghost	9	Nongshim RedForce	Blue	bot	Sivir	1	3	0	9	0	1	1	1051	70	1964
3840	201	2022-08-12	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Renata Glasc	1	2	1	11	0	1	1	779	32	1964
3841	201	2022-08-12	19	DuDu	9	Hanwha Life Esports	Red	top	Gragas	0	0	1	2	1	0	0	-351	651	1964
3842	201	2022-08-12	43	OnFleek	5	Hanwha Life Esports	Red	jng	Poppy	0	2	2	0	1	0	0	-1457	306	1964
3843	201	2022-08-12	31	Karis	5	Hanwha Life Esports	Red	mid	Sylas	0	0	5	1	1	0	0	-2150	-1449	1964
3844	201	2022-08-12	51	SamD	5	Hanwha Life Esports	Red	bot	Zeri	0	0	4	1	1	0	0	-1051	-70	1964
3845	201	2022-08-12	59	Vsta	5	Hanwha Life Esports	Red	sup	Lulu	0	0	3	2	1	0	0	-779	-32	1964
3846	202	2022-08-12	19	DuDu	5	Hanwha Life Esports	Blue	top	Gnar	0	2	4	2	0	1	0	328	-233	1918
3847	202	2022-08-12	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Vi	0	1	4	5	0	1	0	-1062	-1064	1918
3848	202	2022-08-12	31	Karis	5	Hanwha Life Esports	Blue	mid	Akali	0	3	3	3	0	1	0	-749	-415	1918
3849	202	2022-08-12	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	0	1	6	2	0	1	0	-1462	-1005	1918
3850	202	2022-08-12	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	0	2	4	4	0	1	0	-812	-1234	1918
3851	202	2022-08-12	6	Canna	5	Nongshim RedForce	Red	top	Renekton	1	2	0	6	1	0	1	-328	233	1918
3852	202	2022-08-12	18	Dread	9	Nongshim RedForce	Red	jng	Wukong	1	5	2	13	1	0	1	1062	1064	1918
3853	202	2022-08-12	3	Bdd	9	Nongshim RedForce	Red	mid	Azir	1	4	2	7	1	0	1	749	415	1918
3854	202	2022-08-12	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	1	8	3	8	1	0	1	1462	1005	1918
3855	202	2022-08-12	53	SnowFlower	9	Nongshim RedForce	Red	sup	Leona	1	2	2	16	1	0	1	812	1234	1918
3856	203	2022-08-12	40	Morgan	9	Fredit BRION	Blue	top	Gwen	0	1	3	0	0	1	0	630	236	1736
3857	203	2022-08-12	57	UmTi	3	Fredit BRION	Blue	jng	Xin Zhao	0	1	6	1	0	1	0	184	-144	1736
3858	203	2022-08-12	36	Lava	3	Fredit BRION	Blue	mid	Azir	0	0	5	2	0	1	0	-40	-763	1736
3859	203	2022-08-12	27	Hena	3	Fredit BRION	Blue	bot	Varus	0	0	6	1	0	1	0	-1801	-661	1736
3860	203	2022-08-12	14	Delight	3	Fredit BRION	Blue	sup	Leona	0	0	6	1	0	1	0	-655	-20	1736
3861	203	2022-08-12	17	Dove	3	Liiv SANDBOX	Red	top	Gragas	1	5	0	11	1	0	1	-630	-236	1736
3862	203	2022-08-12	11	Croco	8	Liiv SANDBOX	Red	jng	Poppy	1	3	1	17	1	0	1	-184	144	1736
3863	203	2022-08-12	10	Clozer	8	Liiv SANDBOX	Red	mid	Akali	1	7	0	10	1	0	1	40	763	1736
3864	203	2022-08-12	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	1	8	1	13	1	0	1	1801	661	1736
3865	203	2022-08-12	30	Kael	8	Liiv SANDBOX	Red	sup	Yuumi	1	3	0	22	1	0	1	655	20	1736
3866	204	2022-08-12	40	Morgan	8	Fredit BRION	Blue	top	Renekton	0	2	5	0	0	1	1	1392	239	1596
3867	204	2022-08-12	57	UmTi	3	Fredit BRION	Blue	jng	Wukong	0	1	3	3	0	1	1	-531	-968	1596
3868	204	2022-08-12	36	Lava	3	Fredit BRION	Blue	mid	Lissandra	0	0	4	2	0	1	1	155	-285	1596
3869	204	2022-08-12	27	Hena	3	Fredit BRION	Blue	bot	Varus	0	1	6	2	0	1	1	-528	-88	1596
3870	204	2022-08-12	14	Delight	3	Fredit BRION	Blue	sup	Tahm Kench	0	1	5	2	0	1	1	18	491	1596
3871	204	2022-08-12	17	Dove	3	Liiv SANDBOX	Red	top	Gragas	1	0	2	14	1	0	0	-1392	-239	1596
3872	204	2022-08-12	11	Croco	8	Liiv SANDBOX	Red	jng	Vi	1	2	1	12	1	0	0	531	968	1596
3873	204	2022-08-12	10	Clozer	8	Liiv SANDBOX	Red	mid	Azir	1	5	0	11	1	0	0	-155	285	1596
3874	204	2022-08-12	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	1	15	2	5	1	0	0	528	88	1596
3875	204	2022-08-12	30	Kael	8	Liiv SANDBOX	Red	sup	Renata Glasc	1	1	0	21	1	0	0	-18	-491	1596
3876	205	2022-08-13	16	Doran	8	Gen.G	Blue	top	Gnar	1	2	4	5	0	1	1	-137	-915	2286
3877	205	2022-08-13	44	Peanut	4	Gen.G	Blue	jng	Morgana	1	3	3	10	0	1	1	-211	-488	2286
3878	205	2022-08-13	9	Chovy	4	Gen.G	Blue	mid	Azir	1	0	4	8	0	1	1	-660	-1043	2286
3879	205	2022-08-13	50	Ruler	4	Gen.G	Blue	bot	Twitch	1	8	3	3	0	1	1	-230	-776	2286
3880	205	2022-08-13	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	1	0	12	0	1	1	-190	216	2286
3881	205	2022-08-13	49	Rascal	4	KT Rolster	Red	top	Sejuani	0	2	2	9	1	0	0	137	915	2286
3882	205	2022-08-13	12	Cuzz	6	KT Rolster	Red	jng	Vi	0	4	3	4	1	0	0	211	488	2286
3883	205	2022-08-13	58	VicLa	6	KT Rolster	Red	mid	Ahri	0	4	3	7	1	0	0	660	1043	2286
3884	205	2022-08-13	1	Aiming	6	KT Rolster	Red	bot	Zeri	0	4	3	4	1	0	0	230	776	2286
3885	205	2022-08-13	38	Life	6	KT Rolster	Red	sup	Lulu	0	0	3	10	1	0	0	190	-216	2286
3886	206	2022-08-13	49	Rascal	6	KT Rolster	Blue	top	Renekton	1	4	3	10	0	0	1	1013	317	1731
3887	206	2022-08-13	12	Cuzz	6	KT Rolster	Blue	jng	Skarner	1	2	1	20	0	0	1	-472	-543	1731
3888	206	2022-08-13	58	VicLa	6	KT Rolster	Blue	mid	Ahri	1	3	3	18	0	0	1	771	164	1731
3889	206	2022-08-13	1	Aiming	6	KT Rolster	Blue	bot	Sivir	1	14	0	7	0	0	1	624	323	1731
3890	206	2022-08-13	38	Life	6	KT Rolster	Blue	sup	Renata Glasc	1	2	1	19	0	0	1	421	246	1731
3891	206	2022-08-13	16	Doran	6	Gen.G	Red	top	Sejuani	0	2	3	4	1	1	0	-1013	-317	1731
3892	206	2022-08-13	44	Peanut	4	Gen.G	Red	jng	Jarvan IV	0	3	6	4	1	1	0	472	543	1731
3893	206	2022-08-13	9	Chovy	4	Gen.G	Red	mid	Sylas	0	2	6	4	1	1	0	-771	-164	1731
3894	206	2022-08-13	50	Ruler	4	Gen.G	Red	bot	Zeri	0	1	2	1	1	1	0	-624	-323	1731
3895	206	2022-08-13	37	Lehends	4	Gen.G	Red	sup	Alistar	0	0	8	2	1	1	0	-421	-246	1731
3896	207	2022-08-13	16	Doran	4	Gen.G	Blue	top	Ornn	1	4	2	13	0	0	1	-204	147	2229
3897	207	2022-08-13	44	Peanut	4	Gen.G	Blue	jng	Vi	1	1	3	11	0	0	1	209	319	2229
3898	207	2022-08-13	9	Chovy	4	Gen.G	Blue	mid	Ahri	1	5	1	8	0	0	1	320	494	2229
3899	207	2022-08-13	50	Ruler	4	Gen.G	Blue	bot	Lucian	1	8	1	9	0	0	1	1158	-228	2229
3900	207	2022-08-13	37	Lehends	4	Gen.G	Blue	sup	Soraka	1	1	2	17	0	0	1	546	182	2229
3901	207	2022-08-13	49	Rascal	4	KT Rolster	Red	top	Renekton	0	2	5	5	1	1	0	204	-147	2229
3902	207	2022-08-13	12	Cuzz	6	KT Rolster	Red	jng	Wukong	0	2	4	6	1	1	0	-209	-319	2229
3903	207	2022-08-13	58	VicLa	6	KT Rolster	Red	mid	Sylas	0	3	4	5	1	1	0	-320	-494	2229
3904	207	2022-08-13	1	Aiming	6	KT Rolster	Red	bot	Nilah	0	0	3	6	1	1	0	-1158	228	2229
3905	207	2022-08-13	38	Life	6	KT Rolster	Red	sup	Nami	0	2	3	6	1	1	0	-546	-182	2229
3906	208	2022-08-13	62	Zeus	6	T1	Blue	top	Ornn	1	2	2	12	0	1	1	207	266	1885
3907	208	2022-08-13	42	Oner	10	T1	Blue	jng	Wukong	1	1	1	11	0	1	1	-262	-188	1885
3908	208	2022-08-13	22	Faker	10	T1	Blue	mid	Ahri	1	6	0	9	0	1	1	358	-446	1885
3909	208	2022-08-13	26	Gumayusi	10	T1	Blue	bot	Samira	1	8	1	7	0	1	1	628	408	1885
3910	208	2022-08-13	33	Keria	10	T1	Blue	sup	Nautilus	1	0	1	9	0	1	1	-69	-20	1885
3911	208	2022-08-13	41	Nuguri	10	DWG KIA	Red	top	Sejuani	0	0	3	2	1	0	0	-207	-266	1885
3912	208	2022-08-13	7	Canyon	2	DWG KIA	Red	jng	Xin Zhao	0	2	6	2	1	0	0	262	188	1885
3913	208	2022-08-13	52	ShowMaker	2	DWG KIA	Red	mid	Azir	0	2	2	0	1	0	0	-358	446	1885
3914	208	2022-08-13	15	deokdam	2	DWG KIA	Red	bot	Zeri	0	0	3	2	1	0	0	-628	-408	1885
3915	208	2022-08-13	32	Kellin	2	DWG KIA	Red	sup	Yuumi	0	1	3	3	1	0	0	69	20	1885
3916	209	2022-08-13	41	Nuguri	2	DWG KIA	Blue	top	Ornn	0	0	6	3	0	0	0	-416	-173	1874
3917	209	2022-08-13	7	Canyon	2	DWG KIA	Blue	jng	Vi	0	3	3	3	0	0	0	-1290	-561	1874
3918	209	2022-08-13	52	ShowMaker	2	DWG KIA	Blue	mid	Sylas	0	0	5	4	0	0	0	-805	-36	1874
3919	209	2022-08-13	15	deokdam	2	DWG KIA	Blue	bot	Zeri	0	4	3	2	0	0	0	-655	403	1874
3920	209	2022-08-13	32	Kellin	2	DWG KIA	Blue	sup	Braum	0	0	4	5	0	0	0	-237	-868	1874
3921	209	2022-08-13	62	Zeus	2	T1	Red	top	Gragas	1	4	1	10	1	1	1	416	173	1874
3922	209	2022-08-13	42	Oner	10	T1	Red	jng	Xin Zhao	1	7	0	12	1	1	1	1290	561	1874
3923	209	2022-08-13	22	Faker	10	T1	Red	mid	Ahri	1	3	3	10	1	1	1	805	36	1874
3924	209	2022-08-13	26	Gumayusi	10	T1	Red	bot	Draven	1	7	2	10	1	1	1	655	-403	1874
3925	209	2022-08-13	33	Keria	10	T1	Red	sup	Nautilus	1	0	1	12	1	1	1	237	868	1874
3926	210	2022-08-14	35	Kingen	10	DRX	Blue	top	Ornn	1	0	0	8	0	0	0	-743	-432	1946
3927	210	2022-08-14	47	Pyosik	1	DRX	Blue	jng	Vi	1	3	0	9	0	0	0	946	1123	1946
3928	210	2022-08-14	61	Zeka	1	DRX	Blue	mid	Ahri	1	3	0	4	0	0	0	772	1239	1946
3929	210	2022-08-14	13	Deft	1	DRX	Blue	bot	Aphelios	1	9	3	2	0	0	0	531	449	1946
3930	210	2022-08-14	4	BeryL	1	DRX	Blue	sup	Renata Glasc	1	1	0	13	0	0	0	470	545	1946
3931	210	2022-08-14	19	DuDu	1	Hanwha Life Esports	Red	top	Aatrox	0	0	2	0	1	1	1	743	432	1946
3932	210	2022-08-14	43	OnFleek	5	Hanwha Life Esports	Red	jng	Wukong	0	1	4	1	1	1	1	-946	-1123	1946
3933	210	2022-08-14	31	Karis	5	Hanwha Life Esports	Red	mid	Azir	0	0	4	2	1	1	1	-772	-1239	1946
3934	210	2022-08-14	51	SamD	5	Hanwha Life Esports	Red	bot	Jinx	0	1	2	2	1	1	1	-531	-449	1946
3935	210	2022-08-14	59	Vsta	5	Hanwha Life Esports	Red	sup	Tahm Kench	0	1	4	2	1	1	1	-470	-545	1946
3936	211	2022-08-14	19	DuDu	5	Hanwha Life Esports	Blue	top	Renekton	1	3	2	14	0	1	0	410	455	1970
3937	211	2022-08-14	43	OnFleek	5	Hanwha Life Esports	Blue	jng	Vi	1	3	4	10	0	1	0	1150	842	1970
3938	211	2022-08-14	31	Karis	5	Hanwha Life Esports	Blue	mid	Sylas	1	7	2	12	0	1	0	-662	118	1970
3939	211	2022-08-14	51	SamD	5	Hanwha Life Esports	Blue	bot	Kalista	1	8	2	8	0	1	0	-187	-87	1970
3940	211	2022-08-14	59	Vsta	5	Hanwha Life Esports	Blue	sup	Amumu	1	1	4	16	0	1	0	-219	-2	1970
3941	211	2022-08-14	35	Kingen	5	DRX	Red	top	Olaf	0	5	4	3	1	0	1	-410	-455	1970
3942	211	2022-08-14	47	Pyosik	1	DRX	Red	jng	Wukong	0	3	6	6	1	0	1	-1150	-842	1970
3943	211	2022-08-14	61	Zeka	1	DRX	Red	mid	Ahri	0	1	6	9	1	0	1	662	-118	1970
3944	211	2022-08-14	13	Deft	1	DRX	Red	bot	Varus	0	5	3	5	1	0	1	187	87	1970
3945	211	2022-08-14	4	BeryL	1	DRX	Red	sup	Braum	0	0	3	12	1	0	1	219	2	1970
3946	212	2022-08-14	35	Kingen	1	DRX	Blue	top	Ornn	0	1	4	2	0	0	0	-1768	-608	1841
3947	212	2022-08-14	47	Pyosik	1	DRX	Blue	jng	Wukong	0	3	5	1	0	0	0	-1816	-558	1841
3948	212	2022-08-14	61	Zeka	1	DRX	Blue	mid	Ahri	0	1	1	5	0	0	0	-941	35	1841
3949	212	2022-08-14	13	Deft	1	DRX	Blue	bot	Aphelios	0	1	5	3	0	0	0	-1330	-799	1841
3950	212	2022-08-14	4	BeryL	1	DRX	Blue	sup	Leona	0	1	3	4	0	0	0	-354	-3	1841
3951	212	2022-08-14	19	DuDu	1	Hanwha Life Esports	Red	top	Renekton	1	1	0	8	1	1	1	1768	608	1841
3952	212	2022-08-14	43	OnFleek	5	Hanwha Life Esports	Red	jng	Vi	1	3	0	12	1	1	1	1816	558	1841
3953	212	2022-08-14	31	Karis	5	Hanwha Life Esports	Red	mid	Lissandra	1	6	3	9	1	1	1	941	-35	1841
3954	212	2022-08-14	51	SamD	5	Hanwha Life Esports	Red	bot	Draven	1	7	2	6	1	1	1	1330	799	1841
3955	212	2022-08-14	59	Vsta	5	Hanwha Life Esports	Red	sup	Braum	1	1	2	14	1	1	1	354	3	1841
3956	213	2022-08-14	6	Canna	5	Nongshim RedForce	Blue	top	Renekton	1	2	0	5	1	1	1	440	1	1970
3957	213	2022-08-14	18	Dread	9	Nongshim RedForce	Blue	jng	Wukong	1	3	0	6	1	1	1	644	358	1970
3958	213	2022-08-14	3	Bdd	9	Nongshim RedForce	Blue	mid	Taliyah	1	3	0	8	1	1	1	-59	-862	1970
3959	213	2022-08-14	25	Ghost	9	Nongshim RedForce	Blue	bot	Aphelios	1	3	2	3	1	1	1	-769	-456	1970
3960	213	2022-08-14	53	SnowFlower	9	Nongshim RedForce	Blue	sup	Leona	1	0	1	10	1	1	1	-109	517	1970
3961	213	2022-08-14	34	Kiin	9	Kwangdong Freecs	Red	top	Gragas	0	0	2	2	0	0	0	-440	-1	1970
3962	213	2022-08-14	21	Ellim	7	Kwangdong Freecs	Red	jng	Poppy	0	0	3	3	0	0	0	-644	-358	1970
3963	213	2022-08-14	23	FATE	7	Kwangdong Freecs	Red	mid	Azir	0	0	2	2	0	0	0	59	862	1970
3964	213	2022-08-14	56	Teddy	7	Kwangdong Freecs	Red	bot	Jinx	0	1	2	2	0	0	0	769	456	1970
3965	213	2022-08-14	28	Hoit	7	Kwangdong Freecs	Red	sup	Rakan	0	2	2	1	0	0	0	109	-517	1970
3966	214	2022-08-14	34	Kiin	7	Kwangdong Freecs	Blue	top	Gnar	0	1	2	0	0	0	0	-1298	-530	1471
3967	214	2022-08-14	21	Ellim	7	Kwangdong Freecs	Blue	jng	Vi	0	0	5	2	0	0	0	-784	-203	1471
3968	214	2022-08-14	23	FATE	7	Kwangdong Freecs	Blue	mid	LeBlanc	0	0	1	2	0	0	0	-504	54	1471
3969	214	2022-08-14	56	Teddy	7	Kwangdong Freecs	Blue	bot	Kalista	0	2	4	0	0	0	0	-216	-511	1471
3970	214	2022-08-14	28	Hoit	7	Kwangdong Freecs	Blue	sup	Amumu	0	0	5	2	0	0	0	-798	-666	1471
3971	214	2022-08-14	6	Canna	7	Nongshim RedForce	Red	top	Renekton	1	2	0	11	1	1	1	1298	530	1471
3972	214	2022-08-14	18	Dread	9	Nongshim RedForce	Red	jng	Wukong	1	5	0	7	1	1	1	784	203	1471
3973	214	2022-08-14	3	Bdd	9	Nongshim RedForce	Red	mid	Azir	1	1	1	6	1	1	1	504	-54	1471
3974	214	2022-08-14	25	Ghost	9	Nongshim RedForce	Red	bot	Aphelios	1	8	1	3	1	1	1	216	511	1471
3975	214	2022-08-14	20	Effort	9	Nongshim RedForce	Red	sup	Leona	1	1	1	13	1	1	1	798	666	1471
3976	215	2022-08-17	17	Dove	9	Liiv SANDBOX	Blue	top	Ornn	1	3	0	9	1	0	1	308	-284	1832
3977	215	2022-08-17	11	Croco	8	Liiv SANDBOX	Blue	jng	Trundle	1	6	0	7	1	0	1	234	-385	1832
3978	215	2022-08-17	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	3	2	6	1	0	1	-316	-903	1832
3979	215	2022-08-17	46	Prince	8	Liiv SANDBOX	Blue	bot	Sivir	1	4	2	7	1	0	1	369	1021	1832
3980	215	2022-08-17	30	Kael	8	Liiv SANDBOX	Blue	sup	Yuumi	1	0	2	16	1	0	1	166	414	1832
3981	215	2022-08-17	35	Kingen	8	DRX	Red	top	Aatrox	0	0	3	2	0	1	0	-308	284	1832
3982	215	2022-08-17	47	Pyosik	1	DRX	Red	jng	Poppy	0	3	5	1	0	1	0	-234	385	1832
3983	215	2022-08-17	61	Zeka	1	DRX	Red	mid	LeBlanc	0	3	1	2	0	1	0	316	903	1832
3984	215	2022-08-17	13	Deft	1	DRX	Red	bot	Lucian	0	0	3	4	0	1	0	-369	-1021	1832
3985	215	2022-08-17	4	BeryL	1	DRX	Red	sup	Nami	0	0	4	5	0	1	0	-166	-414	1832
3986	216	2022-08-17	35	Kingen	1	DRX	Blue	top	Gwen	0	2	4	3	0	1	1	2032	1272	1918
3987	216	2022-08-17	47	Pyosik	1	DRX	Blue	jng	Poppy	0	1	3	5	0	1	1	-164	-644	1918
3988	216	2022-08-17	61	Zeka	1	DRX	Blue	mid	Swain	0	0	5	6	0	1	1	133	9	1918
3989	216	2022-08-17	13	Deft	1	DRX	Blue	bot	Zeri	0	5	3	2	0	1	1	-818	15	1918
3990	216	2022-08-17	4	BeryL	1	DRX	Blue	sup	Leona	0	0	4	6	0	1	1	-84	-249	1918
3991	216	2022-08-17	17	Dove	1	Liiv SANDBOX	Red	top	Ornn	1	0	3	9	1	0	0	-2032	-1272	1918
3992	216	2022-08-17	11	Croco	8	Liiv SANDBOX	Red	jng	Vi	1	4	1	8	1	0	0	164	644	1918
3993	216	2022-08-17	10	Clozer	8	Liiv SANDBOX	Red	mid	Ahri	1	5	0	12	1	0	0	-133	-9	1918
3994	216	2022-08-17	46	Prince	8	Liiv SANDBOX	Red	bot	Aphelios	1	10	0	6	1	0	0	818	-15	1918
3995	216	2022-08-17	30	Kael	8	Liiv SANDBOX	Red	sup	Tahm Kench	1	0	4	6	1	0	0	84	249	1918
3996	217	2022-08-17	35	Kingen	8	DRX	Blue	top	Jax	1	6	0	4	1	1	1	195	45	2110
3997	217	2022-08-17	47	Pyosik	1	DRX	Blue	jng	Poppy	1	3	3	11	1	1	1	472	-212	2110
3998	217	2022-08-17	61	Zeka	1	DRX	Blue	mid	Azir	1	5	0	8	1	1	1	609	25	2110
3999	217	2022-08-17	13	Deft	1	DRX	Blue	bot	Nilah	1	4	1	9	1	1	1	-1273	163	2110
4000	217	2022-08-17	4	BeryL	1	DRX	Blue	sup	Nautilus	1	0	3	13	1	1	1	339	1391	2110
4001	217	2022-08-17	17	Dove	1	Liiv SANDBOX	Red	top	Gwen	0	1	3	3	0	0	0	-195	-45	2110
4002	217	2022-08-17	11	Croco	8	Liiv SANDBOX	Red	jng	Skarner	0	0	8	4	0	0	0	-472	212	2110
4003	217	2022-08-17	10	Clozer	8	Liiv SANDBOX	Red	mid	Ahri	0	1	2	4	0	0	0	-609	-25	2110
4004	217	2022-08-17	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	0	4	3	3	0	0	0	1273	-163	2110
4005	217	2022-08-17	30	Kael	8	Liiv SANDBOX	Red	sup	Lulu	0	1	2	6	0	0	0	-339	-1391	2110
4006	218	2022-08-17	17	Dove	8	Liiv SANDBOX	Blue	top	Ornn	1	1	4	9	1	0	0	-1161	-271	3074
4007	218	2022-08-17	11	Croco	8	Liiv SANDBOX	Blue	jng	Poppy	1	2	5	4	1	0	0	-1	-933	3074
4008	218	2022-08-17	10	Clozer	8	Liiv SANDBOX	Blue	mid	Ahri	1	3	1	4	1	0	0	-132	247	3074
4009	218	2022-08-17	46	Prince	8	Liiv SANDBOX	Blue	bot	Aphelios	1	7	1	3	1	0	0	179	494	3074
4010	218	2022-08-17	30	Kael	8	Liiv SANDBOX	Blue	sup	Tahm Kench	1	0	2	9	1	0	0	-90	171	3074
4011	218	2022-08-17	35	Kingen	8	DRX	Red	top	Renekton	0	3	1	7	0	1	1	1161	271	3074
4012	218	2022-08-17	47	Pyosik	1	DRX	Red	jng	Morgana	0	3	4	8	0	1	1	1	933	3074
4013	218	2022-08-17	61	Zeka	1	DRX	Red	mid	Lissandra	0	1	3	8	0	1	1	132	-247	3074
4014	218	2022-08-17	13	Deft	1	DRX	Red	bot	Lucian	0	6	2	5	0	1	1	-179	-494	3074
4015	218	2022-08-17	4	BeryL	1	DRX	Red	sup	Nami	0	0	3	13	0	1	1	90	-171	3074
4016	219	2022-08-18	63	Burdol	1	DWG KIA	Blue	top	Renekton	1	1	0	2	0	0	1	164	-155	2572
4017	219	2022-08-18	7	Canyon	2	DWG KIA	Blue	jng	Wukong	1	2	2	5	0	0	1	-1008	-1056	2572
4018	219	2022-08-18	52	ShowMaker	2	DWG KIA	Blue	mid	LeBlanc	1	2	1	5	0	0	1	73	406	2572
4019	219	2022-08-18	15	deokdam	2	DWG KIA	Blue	bot	Lucian	1	6	0	4	0	0	1	879	963	2572
4020	219	2022-08-18	32	Kellin	2	DWG KIA	Blue	sup	Nami	1	1	1	9	0	0	1	282	343	2572
4021	219	2022-08-18	49	Rascal	2	KT Rolster	Red	top	Sejuani	0	0	3	4	1	1	0	-164	155	2572
4022	219	2022-08-18	12	Cuzz	6	KT Rolster	Red	jng	Viego	0	1	2	2	1	1	0	1008	1056	2572
4023	219	2022-08-18	58	VicLa	6	KT Rolster	Red	mid	Azir	0	2	3	0	1	1	0	-73	-406	2572
4024	219	2022-08-18	1	Aiming	6	KT Rolster	Red	bot	Zeri	0	1	3	1	1	1	0	-879	-963	2572
4025	219	2022-08-18	38	Life	6	KT Rolster	Red	sup	Lulu	0	0	1	3	1	1	0	-282	-343	2572
4026	220	2022-08-18	49	Rascal	6	KT Rolster	Blue	top	Ornn	0	3	3	5	0	1	0	-76	-225	2403
4027	220	2022-08-18	12	Cuzz	6	KT Rolster	Blue	jng	Trundle	0	3	3	8	0	1	0	-24	-177	2403
4028	220	2022-08-18	58	VicLa	6	KT Rolster	Blue	mid	Azir	0	3	5	4	0	1	0	-1239	-1025	2403
4029	220	2022-08-18	1	Aiming	6	KT Rolster	Blue	bot	Kalista	0	2	4	5	0	1	0	-1173	-237	2403
4030	220	2022-08-18	38	Life	6	KT Rolster	Blue	sup	Tahm Kench	0	1	4	8	0	1	0	-118	-205	2403
4031	220	2022-08-18	63	Burdol	6	DWG KIA	Red	top	Yone	1	4	5	9	1	0	1	76	225	2403
4032	220	2022-08-18	7	Canyon	2	DWG KIA	Red	jng	Poppy	1	2	1	13	1	0	1	24	177	2403
4033	220	2022-08-18	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	1	2	3	13	1	0	1	1239	1025	2403
4034	220	2022-08-18	15	deokdam	2	DWG KIA	Red	bot	Draven	1	10	2	3	1	0	1	1173	237	2403
4035	220	2022-08-18	32	Kellin	2	DWG KIA	Red	sup	Braum	1	1	1	16	1	0	1	118	205	2403
4036	221	2022-08-18	49	Rascal	2	KT Rolster	Blue	top	Swain	1	2	2	7	0	1	1	325	-145	1842
4037	221	2022-08-18	12	Cuzz	6	KT Rolster	Blue	jng	Wukong	1	1	1	6	0	1	1	-65	-106	1842
4038	221	2022-08-18	58	VicLa	6	KT Rolster	Blue	mid	Sylas	1	5	0	7	0	1	1	784	88	1842
4039	221	2022-08-18	1	Aiming	6	KT Rolster	Blue	bot	Lucian	1	4	0	4	0	1	1	10	510	1842
4040	221	2022-08-18	38	Life	6	KT Rolster	Blue	sup	Nami	1	2	1	11	0	1	1	300	205	1842
4041	221	2022-08-18	63	Burdol	6	DWG KIA	Red	top	Ornn	0	0	4	2	1	0	0	-325	145	1842
4042	221	2022-08-18	7	Canyon	2	DWG KIA	Red	jng	Viego	0	1	3	2	1	0	0	65	106	1842
4043	221	2022-08-18	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	0	0	4	2	1	0	0	-784	-88	1842
4044	221	2022-08-18	15	deokdam	2	DWG KIA	Red	bot	Aphelios	0	3	2	0	1	0	0	-10	-510	1842
4045	221	2022-08-18	32	Kellin	2	DWG KIA	Red	sup	Lulu	0	0	2	3	1	0	0	-300	-205	1842
4046	222	2022-08-18	63	Burdol	2	DWG KIA	Blue	top	Gwen	0	2	4	3	1	0	0	-1032	336	2422
4047	222	2022-08-18	7	Canyon	2	DWG KIA	Blue	jng	Vi	0	4	3	6	1	0	0	-493	528	2422
4048	222	2022-08-18	52	ShowMaker	2	DWG KIA	Blue	mid	Ahri	0	2	3	9	1	0	0	-561	-396	2422
4049	222	2022-08-18	15	deokdam	2	DWG KIA	Blue	bot	Nilah	0	6	3	8	1	0	0	1010	180	2422
4050	222	2022-08-18	32	Kellin	2	DWG KIA	Blue	sup	Yuumi	0	0	2	13	1	0	0	446	1132	2422
4051	222	2022-08-18	49	Rascal	2	KT Rolster	Red	top	Ornn	1	2	2	7	0	1	1	1032	-336	2422
4052	222	2022-08-18	12	Cuzz	6	KT Rolster	Red	jng	Wukong	1	3	2	8	0	1	1	493	-528	2422
4053	222	2022-08-18	58	VicLa	6	KT Rolster	Red	mid	Sylas	1	5	3	7	0	1	1	561	396	2422
4054	222	2022-08-18	1	Aiming	6	KT Rolster	Red	bot	Aphelios	1	5	2	5	0	1	1	-1010	-180	2422
4055	222	2022-08-18	38	Life	6	KT Rolster	Red	sup	Lulu	1	0	5	8	0	1	1	-446	-1132	2422
4056	223	2022-08-18	63	Burdol	6	DWG KIA	Blue	top	Camille	1	0	1	6	0	0	0	-507	453	2516
4057	223	2022-08-18	7	Canyon	2	DWG KIA	Blue	jng	Wukong	1	2	2	10	0	0	0	-110	635	2516
4058	223	2022-08-18	52	ShowMaker	2	DWG KIA	Blue	mid	Corki	1	10	2	5	0	0	0	877	26	2516
4059	223	2022-08-18	15	deokdam	2	DWG KIA	Blue	bot	Aphelios	1	4	1	7	0	0	0	185	985	2516
4060	223	2022-08-18	32	Kellin	2	DWG KIA	Blue	sup	Renata Glasc	1	0	2	13	0	0	0	-337	-150	2516
4061	223	2022-08-18	49	Rascal	2	KT Rolster	Red	top	Gragas	0	0	2	4	1	1	1	507	-453	2516
4062	223	2022-08-18	12	Cuzz	6	KT Rolster	Red	jng	Trundle	0	1	6	4	1	1	1	110	-635	2516
4063	223	2022-08-18	58	VicLa	6	KT Rolster	Red	mid	Taliyah	0	0	5	6	1	1	1	-877	-26	2516
4064	223	2022-08-18	1	Aiming	6	KT Rolster	Red	bot	Zeri	0	7	1	0	1	1	1	-185	-985	2516
4065	223	2022-08-18	38	Life	6	KT Rolster	Red	sup	Yuumi	0	0	2	7	1	1	1	337	150	2516
4066	224	2022-08-20	16	Doran	6	Gen.G	Blue	top	Aatrox	1	4	2	6	1	1	1	2512	1466	1726
4067	224	2022-08-20	44	Peanut	4	Gen.G	Blue	jng	Trundle	1	1	6	14	1	1	1	-717	30	1726
4068	224	2022-08-20	9	Chovy	4	Gen.G	Blue	mid	Azir	1	1	3	11	1	1	1	447	910	1726
4069	224	2022-08-20	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	10	3	10	1	1	1	1044	-1114	1726
4070	224	2022-08-20	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	6	3	15	1	1	1	1492	1431	1726
4071	224	2022-08-20	17	Dove	4	Liiv SANDBOX	Red	top	Sejuani	0	0	3	8	0	0	0	-2512	-1466	1726
4072	224	2022-08-20	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	0	3	6	13	0	0	0	717	-30	1726
4073	224	2022-08-20	10	Clozer	8	Liiv SANDBOX	Red	mid	Sylas	0	2	3	8	0	0	0	-447	-910	1726
4074	224	2022-08-20	46	Prince	8	Liiv SANDBOX	Red	bot	Sivir	0	10	4	3	0	0	0	-1044	1114	1726
4075	224	2022-08-20	30	Kael	8	Liiv SANDBOX	Red	sup	Amumu	0	1	6	11	0	0	0	-1492	-1431	1726
4076	225	2022-08-20	17	Dove	8	Liiv SANDBOX	Blue	top	Renekton	0	0	9	0	1	1	0	-1244	-968	2197
4077	225	2022-08-20	11	Croco	8	Liiv SANDBOX	Blue	jng	Sejuani	0	1	2	4	1	1	0	18	98	2197
4078	225	2022-08-20	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	0	2	1	1	1	1	0	206	435	2197
4079	225	2022-08-20	46	Prince	8	Liiv SANDBOX	Blue	bot	Nilah	0	3	2	2	1	1	0	440	1533	2197
4080	225	2022-08-20	30	Kael	8	Liiv SANDBOX	Blue	sup	Nautilus	0	1	6	2	1	1	0	463	366	2197
4081	225	2022-08-20	16	Doran	8	Gen.G	Red	top	Ornn	1	3	2	12	0	0	1	1244	968	2197
4082	225	2022-08-20	44	Peanut	4	Gen.G	Red	jng	Wukong	1	8	1	9	0	0	1	-18	-98	2197
4083	225	2022-08-20	9	Chovy	4	Gen.G	Red	mid	Ahri	1	3	0	11	0	0	1	-206	-435	2197
4084	225	2022-08-20	50	Ruler	4	Gen.G	Red	bot	Zeri	1	5	1	8	0	0	1	-440	-1533	2197
4085	225	2022-08-20	37	Lehends	4	Gen.G	Red	sup	Renata Glasc	1	1	3	13	0	0	1	-463	-366	2197
4086	226	2022-08-20	17	Dove	4	Liiv SANDBOX	Blue	top	Renekton	1	3	4	18	1	1	0	124	742	1894
4087	226	2022-08-20	11	Croco	8	Liiv SANDBOX	Blue	jng	Sejuani	1	5	2	17	1	1	0	-348	-40	1894
4088	226	2022-08-20	10	Clozer	8	Liiv SANDBOX	Blue	mid	Azir	1	5	5	13	1	1	0	42	-344	1894
4089	226	2022-08-20	46	Prince	8	Liiv SANDBOX	Blue	bot	Nilah	1	10	1	11	1	1	0	593	1686	1894
4090	226	2022-08-20	30	Kael	8	Liiv SANDBOX	Blue	sup	Nautilus	1	0	4	15	1	1	0	193	-13	1894
4091	226	2022-08-20	16	Doran	8	Gen.G	Red	top	Ornn	0	1	6	11	0	0	1	-124	-742	1894
4092	226	2022-08-20	44	Peanut	4	Gen.G	Red	jng	Wukong	0	5	5	9	0	0	1	348	40	1894
4093	226	2022-08-20	9	Chovy	4	Gen.G	Red	mid	Ahri	0	4	1	10	0	0	1	-42	344	1894
4094	226	2022-08-20	50	Ruler	4	Gen.G	Red	bot	Zeri	0	6	5	5	0	0	1	-593	-1686	1894
4095	226	2022-08-20	37	Lehends	4	Gen.G	Red	sup	Rakan	0	0	6	13	0	0	1	-193	13	1894
4096	227	2022-08-20	16	Doran	4	Gen.G	Blue	top	Aatrox	1	8	0	6	1	0	1	271	652	1356
4097	227	2022-08-20	44	Peanut	4	Gen.G	Blue	jng	Sejuani	1	0	2	13	1	0	1	77	539	1356
4098	227	2022-08-20	9	Chovy	4	Gen.G	Blue	mid	Azir	1	7	0	5	1	0	1	521	1188	1356
4099	227	2022-08-20	50	Ruler	4	Gen.G	Blue	bot	Sivir	1	1	1	12	1	0	1	1450	-245	1356
4100	227	2022-08-20	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	2	0	14	1	0	1	212	2268	1356
4101	227	2022-08-20	17	Dove	4	Liiv SANDBOX	Red	top	Renekton	0	0	4	1	0	1	0	-271	-652	1356
4102	227	2022-08-20	11	Croco	8	Liiv SANDBOX	Red	jng	Wukong	0	1	5	2	0	1	0	-77	-539	1356
4103	227	2022-08-20	10	Clozer	8	Liiv SANDBOX	Red	mid	Sylas	0	0	3	2	0	1	0	-521	-1188	1356
4104	227	2022-08-20	46	Prince	8	Liiv SANDBOX	Red	bot	Zeri	0	1	3	1	0	1	0	-1450	245	1356
4105	227	2022-08-20	30	Kael	8	Liiv SANDBOX	Red	sup	Rakan	0	1	3	2	0	1	0	-212	-2268	1356
4106	228	2022-08-21	62	Zeus	8	T1	Blue	top	Ornn	1	1	5	12	0	0	0	-906	-139	1504
4107	228	2022-08-21	42	Oner	10	T1	Blue	jng	Trundle	1	7	1	9	0	0	0	1054	229	1504
4108	228	2022-08-21	22	Faker	10	T1	Blue	mid	Azir	1	5	1	7	0	0	0	1122	1184	1504
4109	228	2022-08-21	26	Gumayusi	10	T1	Blue	bot	Sivir	1	5	0	5	0	0	0	419	-1071	1504
4110	228	2022-08-21	33	Keria	10	T1	Blue	sup	Yuumi	1	0	0	14	0	0	0	-290	414	1504
4111	228	2022-08-21	63	Burdol	10	DWG KIA	Red	top	Renekton	0	2	5	4	1	1	1	906	139	1504
4112	228	2022-08-21	7	Canyon	2	DWG KIA	Red	jng	Wukong	0	2	3	4	1	1	1	-1054	-229	1504
4113	228	2022-08-21	52	ShowMaker	2	DWG KIA	Red	mid	Taliyah	0	1	5	2	1	1	1	-1122	-1184	1504
4114	228	2022-08-21	15	deokdam	2	DWG KIA	Red	bot	Yasuo	0	1	3	4	1	1	1	-419	1071	1504
4115	228	2022-08-21	32	Kellin	2	DWG KIA	Red	sup	Senna	0	1	2	5	1	1	1	290	-414	1504
4116	229	2022-08-21	63	Burdol	2	DWG KIA	Blue	top	Renekton	0	0	4	1	1	1	1	-368	25	1534
4117	229	2022-08-21	7	Canyon	2	DWG KIA	Blue	jng	Poppy	0	3	2	5	1	1	1	898	-35	1534
4118	229	2022-08-21	52	ShowMaker	2	DWG KIA	Blue	mid	LeBlanc	0	4	1	4	1	1	1	-173	-132	1534
4119	229	2022-08-21	15	deokdam	2	DWG KIA	Blue	bot	Draven	0	3	5	3	1	1	1	-58	-357	1534
4120	229	2022-08-21	32	Kellin	2	DWG KIA	Blue	sup	Braum	0	0	4	6	1	1	1	33	252	1534
4121	229	2022-08-21	62	Zeus	2	T1	Red	top	Gnar	1	3	1	6	0	0	0	368	-25	1534
4122	229	2022-08-21	42	Oner	10	T1	Red	jng	Wukong	1	1	3	9	0	0	0	-898	35	1534
4123	229	2022-08-21	22	Faker	10	T1	Red	mid	Sylas	1	4	2	7	0	0	0	173	132	1534
4124	229	2022-08-21	26	Gumayusi	10	T1	Red	bot	Kalista	1	7	2	7	0	0	0	58	357	1534
4125	229	2022-08-21	33	Keria	10	T1	Red	sup	Amumu	1	1	2	9	0	0	0	-33	-252	1534
4126	230	2022-08-21	41	Nuguri	10	DWG KIA	Blue	top	Renekton	1	3	4	7	1	1	1	420	-250	2297
4127	230	2022-08-21	7	Canyon	2	DWG KIA	Blue	jng	Morgana	1	1	0	14	1	1	1	955	1049	2297
4128	230	2022-08-21	52	ShowMaker	2	DWG KIA	Blue	mid	Swain	1	3	1	11	1	1	1	316	150	2297
4129	230	2022-08-21	15	deokdam	2	DWG KIA	Blue	bot	Draven	1	8	1	5	1	1	1	912	837	2297
4130	230	2022-08-21	32	Kellin	2	DWG KIA	Blue	sup	Braum	1	0	2	12	1	1	1	140	-73	2297
4131	230	2022-08-21	62	Zeus	2	T1	Red	top	Aatrox	0	5	1	0	0	0	0	-420	250	2297
4132	230	2022-08-21	42	Oner	10	T1	Red	jng	Wukong	0	1	2	6	0	0	0	-955	-1049	2297
4133	230	2022-08-21	22	Faker	10	T1	Red	mid	Lissandra	0	0	4	6	0	0	0	-316	-150	2297
4134	230	2022-08-21	26	Gumayusi	10	T1	Red	bot	Kalista	0	2	3	4	0	0	0	-912	-837	2297
4135	230	2022-08-21	33	Keria	10	T1	Red	sup	Amumu	0	0	5	6	0	0	0	-140	73	2297
4136	231	2022-08-21	62	Zeus	10	T1	Blue	top	Camille	0	4	5	1	1	0	0	-631	-1265	1969
4137	231	2022-08-21	42	Oner	10	T1	Blue	jng	Vi	0	1	4	3	1	0	0	-356	82	1969
4138	231	2022-08-21	22	Faker	10	T1	Blue	mid	Azir	0	0	3	3	1	0	0	366	64	1969
4139	231	2022-08-21	26	Gumayusi	10	T1	Blue	bot	Nilah	0	0	4	3	1	0	0	-1149	546	1969
4140	231	2022-08-21	33	Keria	10	T1	Blue	sup	Sejuani	0	1	2	0	1	0	0	-263	1109	1969
4141	231	2022-08-21	63	Burdol	10	DWG KIA	Red	top	Yone	1	4	3	8	0	1	1	631	1265	1969
4142	231	2022-08-21	7	Canyon	2	DWG KIA	Red	jng	Wukong	1	1	1	10	0	1	1	356	-82	1969
4143	231	2022-08-21	52	ShowMaker	2	DWG KIA	Red	mid	Sylas	1	5	1	5	0	1	1	-366	-64	1969
4144	231	2022-08-21	15	deokdam	2	DWG KIA	Red	bot	Zeri	1	6	1	9	0	1	1	1149	-546	1969
4145	231	2022-08-21	32	Kellin	2	DWG KIA	Red	sup	Yuumi	1	2	0	12	0	1	1	263	-1109	1969
4146	232	2022-08-21	62	Zeus	2	T1	Blue	top	Gnar	1	2	0	5	0	1	0	-142	-23	2572
4147	232	2022-08-21	42	Oner	10	T1	Blue	jng	Wukong	1	2	1	5	0	1	0	287	-411	2572
4148	232	2022-08-21	22	Faker	10	T1	Blue	mid	Galio	1	1	1	6	0	1	0	-800	-463	2572
4149	232	2022-08-21	26	Gumayusi	10	T1	Blue	bot	Zeri	1	5	0	4	0	1	0	878	-985	2572
4150	232	2022-08-21	33	Keria	10	T1	Blue	sup	Yuumi	1	0	0	10	0	1	0	-1077	375	2572
4151	232	2022-08-21	63	Burdol	10	DWG KIA	Red	top	Azir	0	0	3	1	1	0	1	142	23	2572
4152	232	2022-08-21	7	Canyon	2	DWG KIA	Red	jng	Poppy	0	0	2	0	1	0	1	-287	411	2572
4153	232	2022-08-21	52	ShowMaker	2	DWG KIA	Red	mid	Yasuo	0	0	2	0	1	0	1	800	463	2572
4154	232	2022-08-21	15	deokdam	2	DWG KIA	Red	bot	Heimerdinger	0	1	1	1	1	0	1	-878	985	2572
4155	232	2022-08-21	32	Kellin	2	DWG KIA	Red	sup	Senna	0	1	2	1	1	0	1	1077	-375	2572
4156	233	2022-08-28	62	Zeus	2	T1	Blue	top	Ornn	0	0	4	4	0	1	0	-535	-36	2294
4157	233	2022-08-28	42	Oner	10	T1	Blue	jng	Wukong	0	2	4	4	0	1	0	634	131	2294
4158	233	2022-08-28	22	Faker	10	T1	Blue	mid	Ahri	0	2	4	4	0	1	0	-202	-247	2294
4159	233	2022-08-28	26	Gumayusi	10	T1	Blue	bot	Sivir	0	4	2	2	0	1	0	-109	499	2294
4160	233	2022-08-28	33	Keria	10	T1	Blue	sup	Amumu	0	0	5	4	0	1	0	168	599	2294
4161	233	2022-08-28	16	Doran	10	Gen.G	Red	top	Aatrox	1	2	3	8	1	0	1	535	36	2294
4162	233	2022-08-28	44	Peanut	4	Gen.G	Red	jng	Sejuani	1	0	0	14	1	0	1	-634	-131	2294
4163	233	2022-08-28	9	Chovy	4	Gen.G	Red	mid	Azir	1	1	2	15	1	0	1	202	247	2294
4164	233	2022-08-28	50	Ruler	4	Gen.G	Red	bot	Zeri	1	16	1	1	1	0	1	109	-499	2294
4165	233	2022-08-28	37	Lehends	4	Gen.G	Red	sup	Lulu	1	0	2	14	1	0	1	-168	-599	2294
4166	234	2022-08-28	62	Zeus	4	T1	Blue	top	Gnar	0	0	3	2	0	0	0	-1533	-1270	1572
4167	234	2022-08-28	42	Oner	10	T1	Blue	jng	Morgana	0	0	3	1	0	0	0	-661	-376	1572
4168	234	2022-08-28	22	Faker	10	T1	Blue	mid	Renekton	0	1	5	0	0	0	0	-1519	-583	1572
4169	234	2022-08-28	26	Gumayusi	10	T1	Blue	bot	Zeri	0	1	3	0	0	0	0	-1502	-1689	1572
4170	234	2022-08-28	33	Keria	10	T1	Blue	sup	Yuumi	0	0	3	1	0	0	0	-317	-14	1572
4171	234	2022-08-28	16	Doran	10	Gen.G	Red	top	Aatrox	1	2	1	8	1	1	1	1533	1270	1572
4172	234	2022-08-28	44	Peanut	4	Gen.G	Red	jng	Sejuani	1	2	1	9	1	1	1	661	376	1572
4173	234	2022-08-28	9	Chovy	4	Gen.G	Red	mid	Sylas	1	9	0	5	1	1	1	1519	583	1572
4174	234	2022-08-28	50	Ruler	4	Gen.G	Red	bot	Nilah	1	4	0	2	1	1	1	1502	1689	1572
4175	234	2022-08-28	37	Lehends	4	Gen.G	Red	sup	Singed	1	0	0	11	1	1	1	317	14	1572
4176	235	2022-08-28	16	Doran	4	Gen.G	Blue	top	Renekton	1	1	2	5	1	0	1	1509	903	2068
4177	235	2022-08-28	44	Peanut	4	Gen.G	Blue	jng	Xin Zhao	1	1	0	6	1	0	1	-911	-44	2068
4178	235	2022-08-28	9	Chovy	4	Gen.G	Blue	mid	Azir	1	3	0	5	1	0	1	-34	-126	2068
4179	235	2022-08-28	50	Ruler	4	Gen.G	Blue	bot	Zeri	1	6	1	2	1	0	1	-11	-711	2068
4180	235	2022-08-28	37	Lehends	4	Gen.G	Blue	sup	Yuumi	1	0	0	10	1	0	1	-38	509	2068
4181	235	2022-08-28	62	Zeus	4	T1	Red	top	Mordekaiser	0	0	5	1	0	1	0	-1509	-903	2068
4182	235	2022-08-28	42	Oner	10	T1	Red	jng	Vi	0	2	1	1	0	1	0	911	44	2068
4183	235	2022-08-28	22	Faker	10	T1	Red	mid	Ahri	0	0	2	2	0	1	0	34	126	2068
4184	235	2022-08-28	26	Gumayusi	10	T1	Red	bot	Sivir	0	1	2	1	0	1	0	11	711	2068
4185	235	2022-08-28	33	Keria	10	T1	Red	sup	Lulu	0	0	1	1	0	1	0	38	-509	2068
\.


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player (pid, ign, tid, team, "position", kda, kp, gd10) FROM stdin;
1	Aiming	6	KT Rolster	ADC	6	0.72	164
2	Aria	6	KT Rolster	Middle	4.1	0.74	-190
3	Bdd	9	Nongshim RedForce	Middle	3.3	0.69	-7
4	BeryL	1	DRX	Support	2.6	0.73	147
5	Bible	2	DWG KIA	Support	1.6	0.67	55
6	Canna	9	Nongshim RedForce	Top	2.6	0.59	123
7	Canyon	2	DWG KIA	Jungle	3.9	0.72	-93
8	Cheoni	5	Hanwha Life Esports	ADC	2	0.73	-447
9	Chovy	4	Gen.G	Middle	7	0.65	196
10	Clozer	8	Liiv SANDBOX	Middle	4.7	0.66	3
11	Croco	8	Liiv SANDBOX	Jungle	3.8	0.71	-2
12	Cuzz	6	KT Rolster	Jungle	3.9	0.69	61
13	Deft	1	DRX	ADC	3.7	0.71	-27
14	Delight	3	Fredit BRION	Support	2.3	0.7	-100
15	deokdam	2	DWG KIA	ADC	4.9	0.73	-29
16	Doran	4	Gen.G	Top	4.2	0.56	62
17	Dove	8	Liiv SANDBOX	Top	4.1	0.63	-281
18	Dread	9	Nongshim RedForce	Jungle	3.5	0.71	-12
19	DuDu	5	Hanwha Life Esports	Top	1.7	0.62	56
20	Effort	9	Nongshim RedForce	Support	2.3	0.71	-7
21	Ellim	7	Kwangdong Freecs	Jungle	2.3	0.73	-171
22	Faker	10	T1	Middle	4.2	0.65	90
23	FATE	7	Kwangdong Freecs	Middle	4	0.72	-67
24	Gamin	3	Fredit BRION	ADC	1.2	0.59	-222
25	Ghost	9	Nongshim RedForce	ADC	3.1	0.69	-151
26	Gumayusi	10	T1	ADC	4.5	0.71	52
27	Hena	3	Fredit BRION	ADC	2.9	0.72	-25
28	Hoit	7	Kwangdong Freecs	Support	3	0.73	134
29	Juhan	1	DRX	Jungle	1.6	0.6	-174
30	Kael	8	Liiv SANDBOX	Support	4.6	0.79	-81
31	Karis	5	Hanwha Life Esports	Middle	2	0.69	-207
32	Kellin	2	DWG KIA	Support	5	0.78	-58
33	Keria	10	T1	Support	4.5	0.68	55
34	Kiin	7	Kwangdong Freecs	Top	1.9	0.61	-4
35	Kingen	1	DRX	Top	3.1	0.61	-190
36	Lava	3	Fredit BRION	Middle	2.8	0.74	-6
37	Lehends	4	Gen.G	Support	5.6	0.72	25
38	Life	6	KT Rolster	Support	4.3	0.77	4
39	Moham	7	Kwangdong Freecs	Support	2.2	0.66	93
40	Morgan	3	Fredit BRION	Top	2.3	0.6	-109
41	Nuguri	2	DWG KIA	Top	3.2	0.58	157
42	Oner	10	T1	Jungle	4.4	0.74	203
43	OnFleek	5	Hanwha Life Esports	Jungle	1.7	0.68	-107
44	Peanut	4	Gen.G	Jungle	5.8	0.65	240
45	Peter	9	Nongshim RedForce	Support	2	0.67	-110
46	Prince	8	Liiv SANDBOX	ADC	6.2	0.73	211
47	Pyosik	1	DRX	Jungle	3.6	0.73	0
48	Raptor	3	Fredit BRION	Jungle	1.7	0.63	-104
49	Rascal	6	KT Rolster	Top	3.4	0.64	-5
50	Ruler	4	Gen.G	ADC	7.6	0.72	172
51	SamD	5	Hanwha Life Esports	ADC	1.8	0.62	-86
52	ShowMaker	2	DWG KIA	Middle	6	0.68	5
53	SnowFlower	9	Nongshim RedForce	Support	3.1	0.77	51
54	Sw0rd	3	Fredit BRION	Top	1.2	0.52	-197
55	Sylvie	9	Nongshim RedForce	Jungle	1.9	0.88	-69
56	Teddy	7	Kwangdong Freecs	ADC	3.2	0.78	-138
57	UmTi	3	Fredit BRION	Jungle	2.4	0.71	-90
58	VicLa	6	KT Rolster	Middle	4	0.68	1
59	Vsta	5	Hanwha Life Esports	Support	1.9	0.72	-140
60	Willer	5	Hanwha Life Esports	Jungle	1	0.6	-150
61	Zeka	1	DRX	Middle	4.3	0.73	54
62	Zeus	10	T1	Top	3.2	0.68	203
63	Burdol	2	DWG KIA	Top	1.7	0.48	-15
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (tid, name, games, wins, losses, fdragon, fturret, fherald, gd15, winrate) FROM stdin;
1	DRX	45	22	23	0.47	0.51	0.53	-276	0.49
2	DWG KIA	41	24	17	0.34	0.56	0.46	655	0.59
3	Fredit BRION	42	11	31	0.62	0.31	0.49	-544	0.26
4	Gen.G	40	35	5	0.58	0.78	0.5	2009	0.88
5	Hanwha Life Esports	46	12	34	0.37	0.35	0.57	-1191	0.26
6	KT Rolster	45	25	20	0.6	0.42	0.43	249	0.56
7	Kwangdong Freecs	42	13	29	0.38	0.36	0.44	-704	0.31
8	Liiv SANDBOX	41	27	14	0.66	0.49	0.38	-718	0.66
9	Nongshim RedForce	42	14	28	0.57	0.55	0.56	-299	0.33
10	T1	44	31	13	0.43	0.7	0.63	982	0.7
\.


--
-- Name: account_aid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_aid_seq', 1, false);


--
-- Name: game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_id_seq', 4185, true);


--
-- Name: player_pid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.player_pid_seq', 63, true);


--
-- Name: team_tid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.team_tid_seq', 20, true);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (aid);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (id);


--
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (pid);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (tid);


--
-- Name: game game_pid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pid_fkey FOREIGN KEY (pid) REFERENCES public.player(pid);


--
-- Name: game game_tid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_tid_fkey FOREIGN KEY (tid) REFERENCES public.team(tid);


--
-- Name: player player_tid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_tid_fkey FOREIGN KEY (tid) REFERENCES public.team(tid);


--
-- PostgreSQL database dump complete
--

