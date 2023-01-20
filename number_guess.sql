--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(40) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 1);
INSERT INTO public.games VALUES (2, 872, 6);
INSERT INTO public.games VALUES (3, 356, 6);
INSERT INTO public.games VALUES (4, 560, 7);
INSERT INTO public.games VALUES (5, 437, 7);
INSERT INTO public.games VALUES (6, 249, 6);
INSERT INTO public.games VALUES (7, 31, 6);
INSERT INTO public.games VALUES (8, 746, 6);
INSERT INTO public.games VALUES (9, 666, 8);
INSERT INTO public.games VALUES (10, 857, 8);
INSERT INTO public.games VALUES (11, 527, 9);
INSERT INTO public.games VALUES (12, 200, 9);
INSERT INTO public.games VALUES (13, 572, 8);
INSERT INTO public.games VALUES (14, 366, 8);
INSERT INTO public.games VALUES (15, 467, 8);
INSERT INTO public.games VALUES (16, 92, 10);
INSERT INTO public.games VALUES (17, 278, 10);
INSERT INTO public.games VALUES (18, 455, 11);
INSERT INTO public.games VALUES (19, 778, 11);
INSERT INTO public.games VALUES (20, 747, 10);
INSERT INTO public.games VALUES (21, 962, 10);
INSERT INTO public.games VALUES (22, 88, 10);
INSERT INTO public.games VALUES (23, 792, 12);
INSERT INTO public.games VALUES (24, 244, 12);
INSERT INTO public.games VALUES (25, 400, 13);
INSERT INTO public.games VALUES (26, 423, 13);
INSERT INTO public.games VALUES (27, 65, 12);
INSERT INTO public.games VALUES (28, 296, 12);
INSERT INTO public.games VALUES (29, 698, 12);
INSERT INTO public.games VALUES (30, 840, 14);
INSERT INTO public.games VALUES (31, 471, 14);
INSERT INTO public.games VALUES (32, 133, 15);
INSERT INTO public.games VALUES (33, 335, 15);
INSERT INTO public.games VALUES (34, 573, 14);
INSERT INTO public.games VALUES (35, 532, 14);
INSERT INTO public.games VALUES (36, 141, 14);
INSERT INTO public.games VALUES (37, 731, 16);
INSERT INTO public.games VALUES (38, 929, 16);
INSERT INTO public.games VALUES (39, 13, 17);
INSERT INTO public.games VALUES (40, 647, 17);
INSERT INTO public.games VALUES (41, 253, 16);
INSERT INTO public.games VALUES (42, 385, 16);
INSERT INTO public.games VALUES (43, 561, 16);
INSERT INTO public.games VALUES (44, 570, 18);
INSERT INTO public.games VALUES (45, 325, 18);
INSERT INTO public.games VALUES (46, 21, 19);
INSERT INTO public.games VALUES (47, 76, 19);
INSERT INTO public.games VALUES (48, 29, 18);
INSERT INTO public.games VALUES (49, 547, 18);
INSERT INTO public.games VALUES (50, 805, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'pippo');
INSERT INTO public.users VALUES (2, 'user_1674126135183');
INSERT INTO public.users VALUES (3, 'user_1674126135182');
INSERT INTO public.users VALUES (4, 'user_1674201978627');
INSERT INTO public.users VALUES (5, 'user_1674201978626');
INSERT INTO public.users VALUES (6, 'user_1674202896780');
INSERT INTO public.users VALUES (7, 'user_1674202896779');
INSERT INTO public.users VALUES (8, 'user_1674203873387');
INSERT INTO public.users VALUES (9, 'user_1674203873386');
INSERT INTO public.users VALUES (10, 'user_1674204254886');
INSERT INTO public.users VALUES (11, 'user_1674204254885');
INSERT INTO public.users VALUES (12, 'user_1674204319361');
INSERT INTO public.users VALUES (13, 'user_1674204319360');
INSERT INTO public.users VALUES (14, 'user_1674204384922');
INSERT INTO public.users VALUES (15, 'user_1674204384921');
INSERT INTO public.users VALUES (16, 'user_1674204556582');
INSERT INTO public.users VALUES (17, 'user_1674204556581');
INSERT INTO public.users VALUES (18, 'user_1674204642921');
INSERT INTO public.users VALUES (19, 'user_1674204642920');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
