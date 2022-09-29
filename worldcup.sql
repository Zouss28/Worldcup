--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (51, 2018, 'Final', 4, 2, 250, 251);
INSERT INTO public.games VALUES (52, 2018, 'Third Place', 2, 0, 252, 253);
INSERT INTO public.games VALUES (53, 2018, 'Semi-Final', 2, 1, 251, 253);
INSERT INTO public.games VALUES (54, 2018, 'Semi-Final', 1, 0, 250, 252);
INSERT INTO public.games VALUES (55, 2018, 'Quarter-Final', 3, 2, 251, 254);
INSERT INTO public.games VALUES (56, 2018, 'Quarter-Final', 2, 0, 253, 255);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 2, 1, 252, 256);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 2, 0, 250, 257);
INSERT INTO public.games VALUES (59, 2018, 'Eighth-Final', 2, 1, 253, 258);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 1, 0, 255, 259);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 3, 2, 252, 260);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 2, 0, 256, 261);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 2, 1, 251, 262);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 2, 1, 254, 263);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 2, 1, 257, 264);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 4, 3, 250, 265);
INSERT INTO public.games VALUES (67, 2014, 'Final', 1, 0, 266, 265);
INSERT INTO public.games VALUES (68, 2014, 'Third Place', 3, 0, 267, 256);
INSERT INTO public.games VALUES (69, 2014, 'Semi-Final', 1, 0, 265, 267);
INSERT INTO public.games VALUES (70, 2014, 'Semi-Final', 7, 1, 266, 256);
INSERT INTO public.games VALUES (71, 2014, 'Quarter-Final', 1, 0, 267, 268);
INSERT INTO public.games VALUES (72, 2014, 'Quarter-Final', 1, 0, 265, 252);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 2, 1, 256, 258);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 1, 0, 266, 250);
INSERT INTO public.games VALUES (75, 2014, 'Eighth-Final', 2, 1, 256, 269);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 2, 0, 258, 257);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 2, 0, 250, 270);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 2, 1, 266, 271);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 2, 1, 267, 261);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 2, 1, 268, 272);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 1, 0, 265, 259);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 2, 1, 252, 273);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (250, 'France');
INSERT INTO public.teams VALUES (251, 'Croatia');
INSERT INTO public.teams VALUES (252, 'Belgium');
INSERT INTO public.teams VALUES (253, 'England');
INSERT INTO public.teams VALUES (254, 'Russia');
INSERT INTO public.teams VALUES (255, 'Sweden');
INSERT INTO public.teams VALUES (256, 'Brazil');
INSERT INTO public.teams VALUES (257, 'Uruguay');
INSERT INTO public.teams VALUES (258, 'Colombia');
INSERT INTO public.teams VALUES (259, 'Switzerland');
INSERT INTO public.teams VALUES (260, 'Japan');
INSERT INTO public.teams VALUES (261, 'Mexico');
INSERT INTO public.teams VALUES (262, 'Denmark');
INSERT INTO public.teams VALUES (263, 'Spain');
INSERT INTO public.teams VALUES (264, 'Portugal');
INSERT INTO public.teams VALUES (265, 'Argentina');
INSERT INTO public.teams VALUES (266, 'Germany');
INSERT INTO public.teams VALUES (267, 'Netherlands');
INSERT INTO public.teams VALUES (268, 'Costa Rica');
INSERT INTO public.teams VALUES (269, 'Chile');
INSERT INTO public.teams VALUES (270, 'Nigeria');
INSERT INTO public.teams VALUES (271, 'Algeria');
INSERT INTO public.teams VALUES (272, 'Greece');
INSERT INTO public.teams VALUES (273, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 82, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 273, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

