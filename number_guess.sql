--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)

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

DROP DATABASE number_guess_data;
--
-- Name: number_guess_data; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess_data OWNER TO freecodecamp;

\connect number_guess_data

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

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer DEFAULT nextval('public.games_games_id_seq'::regclass) NOT NULL,
    player_id integer,
    winninground integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_player_id_seq OWNER TO freecodecamp;

--
-- Name: users_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_player_id_seq OWNED BY public.users.player_id;


--
-- Name: users player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN player_id SET DEFAULT nextval('public.users_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 7);
INSERT INTO public.games VALUES (2, 2, 10);
INSERT INTO public.games VALUES (3, 1, 12);
INSERT INTO public.games VALUES (4, 1, 20);
INSERT INTO public.games VALUES (5, 3, 1);
INSERT INTO public.games VALUES (6, 3, 1);
INSERT INTO public.games VALUES (7, 4, 1);
INSERT INTO public.games VALUES (8, 4, 1);
INSERT INTO public.games VALUES (9, 3, 1);
INSERT INTO public.games VALUES (10, 3, 1);
INSERT INTO public.games VALUES (11, 3, 1);
INSERT INTO public.games VALUES (12, 5, 1);
INSERT INTO public.games VALUES (13, 5, 1);
INSERT INTO public.games VALUES (14, 6, 1);
INSERT INTO public.games VALUES (15, 6, 1);
INSERT INTO public.games VALUES (16, 5, 1);
INSERT INTO public.games VALUES (17, 5, 1);
INSERT INTO public.games VALUES (18, 5, 1);
INSERT INTO public.games VALUES (19, 7, 1);
INSERT INTO public.games VALUES (20, 7, 1);
INSERT INTO public.games VALUES (21, 8, 1);
INSERT INTO public.games VALUES (22, 8, 1);
INSERT INTO public.games VALUES (23, 7, 1);
INSERT INTO public.games VALUES (24, 7, 1);
INSERT INTO public.games VALUES (25, 7, 1);
INSERT INTO public.games VALUES (26, 9, 1);
INSERT INTO public.games VALUES (27, 9, 1);
INSERT INTO public.games VALUES (28, 10, 1);
INSERT INTO public.games VALUES (29, 10, 1);
INSERT INTO public.games VALUES (30, 9, 1);
INSERT INTO public.games VALUES (31, 9, 1);
INSERT INTO public.games VALUES (32, 9, 1);
INSERT INTO public.games VALUES (33, 11, 1);
INSERT INTO public.games VALUES (34, 11, 1);
INSERT INTO public.games VALUES (35, 12, 1);
INSERT INTO public.games VALUES (36, 12, 1);
INSERT INTO public.games VALUES (37, 11, 1);
INSERT INTO public.games VALUES (38, 11, 1);
INSERT INTO public.games VALUES (39, 11, 1);
INSERT INTO public.games VALUES (40, 13, 1);
INSERT INTO public.games VALUES (41, 13, 1);
INSERT INTO public.games VALUES (42, 14, 1);
INSERT INTO public.games VALUES (43, 14, 1);
INSERT INTO public.games VALUES (44, 13, 1);
INSERT INTO public.games VALUES (45, 13, 1);
INSERT INTO public.games VALUES (46, 13, 1);
INSERT INTO public.games VALUES (47, 15, 1);
INSERT INTO public.games VALUES (48, 15, 1);
INSERT INTO public.games VALUES (49, 16, 1);
INSERT INTO public.games VALUES (50, 16, 1);
INSERT INTO public.games VALUES (51, 15, 1);
INSERT INTO public.games VALUES (52, 15, 1);
INSERT INTO public.games VALUES (53, 15, 1);
INSERT INTO public.games VALUES (54, 17, 625);
INSERT INTO public.games VALUES (55, 17, 773);
INSERT INTO public.games VALUES (56, 18, 288);
INSERT INTO public.games VALUES (57, 18, 206);
INSERT INTO public.games VALUES (58, 17, 507);
INSERT INTO public.games VALUES (59, 17, 137);
INSERT INTO public.games VALUES (60, 17, 899);
INSERT INTO public.games VALUES (61, 19, 888);
INSERT INTO public.games VALUES (62, 19, 474);
INSERT INTO public.games VALUES (63, 20, 750);
INSERT INTO public.games VALUES (64, 20, 764);
INSERT INTO public.games VALUES (65, 19, 218);
INSERT INTO public.games VALUES (66, 19, 699);
INSERT INTO public.games VALUES (67, 19, 99);
INSERT INTO public.games VALUES (68, 21, 832);
INSERT INTO public.games VALUES (69, 21, 725);
INSERT INTO public.games VALUES (70, 22, 248);
INSERT INTO public.games VALUES (71, 22, 227);
INSERT INTO public.games VALUES (72, 21, 130);
INSERT INTO public.games VALUES (73, 21, 249);
INSERT INTO public.games VALUES (74, 21, 124);
INSERT INTO public.games VALUES (75, 23, 153);
INSERT INTO public.games VALUES (76, 23, 309);
INSERT INTO public.games VALUES (77, 24, 551);
INSERT INTO public.games VALUES (78, 24, 718);
INSERT INTO public.games VALUES (79, 23, 898);
INSERT INTO public.games VALUES (80, 23, 742);
INSERT INTO public.games VALUES (81, 23, 172);
INSERT INTO public.games VALUES (82, 25, 479);
INSERT INTO public.games VALUES (83, 25, 606);
INSERT INTO public.games VALUES (84, 26, 587);
INSERT INTO public.games VALUES (85, 26, 777);
INSERT INTO public.games VALUES (86, 25, 653);
INSERT INTO public.games VALUES (87, 25, 8);
INSERT INTO public.games VALUES (88, 25, 18);
INSERT INTO public.games VALUES (89, 27, 308);
INSERT INTO public.games VALUES (90, 27, 625);
INSERT INTO public.games VALUES (91, 28, 200);
INSERT INTO public.games VALUES (92, 28, 602);
INSERT INTO public.games VALUES (93, 27, 410);
INSERT INTO public.games VALUES (94, 27, 597);
INSERT INTO public.games VALUES (95, 27, 370);
INSERT INTO public.games VALUES (96, 29, 384);
INSERT INTO public.games VALUES (97, 29, 398);
INSERT INTO public.games VALUES (98, 30, 930);
INSERT INTO public.games VALUES (99, 30, 584);
INSERT INTO public.games VALUES (100, 29, 368);
INSERT INTO public.games VALUES (101, 29, 200);
INSERT INTO public.games VALUES (102, 29, 248);
INSERT INTO public.games VALUES (103, 31, 885);
INSERT INTO public.games VALUES (104, 31, 934);
INSERT INTO public.games VALUES (105, 32, 224);
INSERT INTO public.games VALUES (106, 32, 900);
INSERT INTO public.games VALUES (107, 31, 826);
INSERT INTO public.games VALUES (108, 31, 702);
INSERT INTO public.games VALUES (109, 31, 987);
INSERT INTO public.games VALUES (110, 33, 697);
INSERT INTO public.games VALUES (111, 33, 41);
INSERT INTO public.games VALUES (112, 34, 332);
INSERT INTO public.games VALUES (113, 34, 846);
INSERT INTO public.games VALUES (114, 33, 736);
INSERT INTO public.games VALUES (115, 33, 732);
INSERT INTO public.games VALUES (116, 33, 326);
INSERT INTO public.games VALUES (117, 35, 754);
INSERT INTO public.games VALUES (118, 35, 590);
INSERT INTO public.games VALUES (119, 36, 698);
INSERT INTO public.games VALUES (120, 36, 777);
INSERT INTO public.games VALUES (121, 35, 576);
INSERT INTO public.games VALUES (122, 35, 974);
INSERT INTO public.games VALUES (123, 35, 989);
INSERT INTO public.games VALUES (124, 37, 464);
INSERT INTO public.games VALUES (125, 37, 980);
INSERT INTO public.games VALUES (126, 38, 162);
INSERT INTO public.games VALUES (127, 38, 492);
INSERT INTO public.games VALUES (128, 37, 890);
INSERT INTO public.games VALUES (129, 37, 503);
INSERT INTO public.games VALUES (130, 37, 558);
INSERT INTO public.games VALUES (131, 39, 897);
INSERT INTO public.games VALUES (132, 39, 468);
INSERT INTO public.games VALUES (133, 40, 688);
INSERT INTO public.games VALUES (134, 40, 293);
INSERT INTO public.games VALUES (135, 39, 41);
INSERT INTO public.games VALUES (136, 39, 345);
INSERT INTO public.games VALUES (137, 39, 952);
INSERT INTO public.games VALUES (138, 41, 98);
INSERT INTO public.games VALUES (139, 41, 655);
INSERT INTO public.games VALUES (140, 42, 779);
INSERT INTO public.games VALUES (141, 42, 680);
INSERT INTO public.games VALUES (142, 41, 765);
INSERT INTO public.games VALUES (143, 41, 64);
INSERT INTO public.games VALUES (144, 41, 671);
INSERT INTO public.games VALUES (145, 43, 742);
INSERT INTO public.games VALUES (146, 43, 444);
INSERT INTO public.games VALUES (147, 44, 496);
INSERT INTO public.games VALUES (148, 44, 708);
INSERT INTO public.games VALUES (149, 43, 569);
INSERT INTO public.games VALUES (150, 43, 112);
INSERT INTO public.games VALUES (151, 43, 961);
INSERT INTO public.games VALUES (152, 45, 507);
INSERT INTO public.games VALUES (153, 45, 676);
INSERT INTO public.games VALUES (154, 46, 709);
INSERT INTO public.games VALUES (155, 46, 354);
INSERT INTO public.games VALUES (156, 45, 223);
INSERT INTO public.games VALUES (157, 45, 804);
INSERT INTO public.games VALUES (158, 45, 283);
INSERT INTO public.games VALUES (159, 47, 263);
INSERT INTO public.games VALUES (160, 47, 788);
INSERT INTO public.games VALUES (161, 48, 741);
INSERT INTO public.games VALUES (162, 48, 319);
INSERT INTO public.games VALUES (163, 47, 756);
INSERT INTO public.games VALUES (164, 47, 887);
INSERT INTO public.games VALUES (165, 47, 414);
INSERT INTO public.games VALUES (166, 49, 470);
INSERT INTO public.games VALUES (167, 49, 340);
INSERT INTO public.games VALUES (168, 50, 904);
INSERT INTO public.games VALUES (169, 50, 409);
INSERT INTO public.games VALUES (170, 49, 451);
INSERT INTO public.games VALUES (171, 49, 170);
INSERT INTO public.games VALUES (172, 49, 317);
INSERT INTO public.games VALUES (173, 51, 370);
INSERT INTO public.games VALUES (174, 51, 21);
INSERT INTO public.games VALUES (175, 52, 601);
INSERT INTO public.games VALUES (176, 52, 718);
INSERT INTO public.games VALUES (177, 51, 938);
INSERT INTO public.games VALUES (178, 51, 962);
INSERT INTO public.games VALUES (179, 51, 672);
INSERT INTO public.games VALUES (180, 53, 758);
INSERT INTO public.games VALUES (181, 53, 591);
INSERT INTO public.games VALUES (182, 54, 190);
INSERT INTO public.games VALUES (183, 54, 361);
INSERT INTO public.games VALUES (184, 53, 24);
INSERT INTO public.games VALUES (185, 53, 896);
INSERT INTO public.games VALUES (186, 53, 752);
INSERT INTO public.games VALUES (187, 55, 971);
INSERT INTO public.games VALUES (188, 55, 751);
INSERT INTO public.games VALUES (189, 56, 283);
INSERT INTO public.games VALUES (190, 56, 540);
INSERT INTO public.games VALUES (191, 55, 80);
INSERT INTO public.games VALUES (192, 55, 968);
INSERT INTO public.games VALUES (193, 55, 796);
INSERT INTO public.games VALUES (194, 57, 815);
INSERT INTO public.games VALUES (195, 57, 702);
INSERT INTO public.games VALUES (196, 58, 706);
INSERT INTO public.games VALUES (197, 58, 374);
INSERT INTO public.games VALUES (198, 57, 97);
INSERT INTO public.games VALUES (199, 57, 379);
INSERT INTO public.games VALUES (200, 57, 682);
INSERT INTO public.games VALUES (201, 59, 210);
INSERT INTO public.games VALUES (202, 59, 295);
INSERT INTO public.games VALUES (203, 60, 539);
INSERT INTO public.games VALUES (204, 60, 52);
INSERT INTO public.games VALUES (205, 59, 538);
INSERT INTO public.games VALUES (206, 59, 610);
INSERT INTO public.games VALUES (207, 59, 560);
INSERT INTO public.games VALUES (208, 61, 780);
INSERT INTO public.games VALUES (209, 61, 947);
INSERT INTO public.games VALUES (210, 62, 315);
INSERT INTO public.games VALUES (211, 62, 403);
INSERT INTO public.games VALUES (212, 61, 628);
INSERT INTO public.games VALUES (213, 61, 207);
INSERT INTO public.games VALUES (214, 61, 902);
INSERT INTO public.games VALUES (215, 63, 918);
INSERT INTO public.games VALUES (216, 63, 139);
INSERT INTO public.games VALUES (217, 64, 527);
INSERT INTO public.games VALUES (218, 64, 73);
INSERT INTO public.games VALUES (219, 63, 692);
INSERT INTO public.games VALUES (220, 63, 198);
INSERT INTO public.games VALUES (221, 63, 629);
INSERT INTO public.games VALUES (222, 65, 306);
INSERT INTO public.games VALUES (223, 65, 186);
INSERT INTO public.games VALUES (224, 66, 100);
INSERT INTO public.games VALUES (225, 66, 796);
INSERT INTO public.games VALUES (226, 65, 778);
INSERT INTO public.games VALUES (227, 65, 413);
INSERT INTO public.games VALUES (228, 65, 406);
INSERT INTO public.games VALUES (229, 67, 626);
INSERT INTO public.games VALUES (230, 67, 746);
INSERT INTO public.games VALUES (231, 68, 514);
INSERT INTO public.games VALUES (232, 68, 427);
INSERT INTO public.games VALUES (233, 67, 25);
INSERT INTO public.games VALUES (234, 67, 96);
INSERT INTO public.games VALUES (235, 67, 949);
INSERT INTO public.games VALUES (236, 69, 329);
INSERT INTO public.games VALUES (237, 69, 44);
INSERT INTO public.games VALUES (238, 70, 241);
INSERT INTO public.games VALUES (239, 70, 117);
INSERT INTO public.games VALUES (240, 69, 600);
INSERT INTO public.games VALUES (241, 69, 213);
INSERT INTO public.games VALUES (242, 69, 386);
INSERT INTO public.games VALUES (243, 71, 205);
INSERT INTO public.games VALUES (244, 71, 719);
INSERT INTO public.games VALUES (245, 72, 843);
INSERT INTO public.games VALUES (246, 72, 80);
INSERT INTO public.games VALUES (247, 71, 691);
INSERT INTO public.games VALUES (248, 71, 907);
INSERT INTO public.games VALUES (249, 71, 258);
INSERT INTO public.games VALUES (250, 73, 502);
INSERT INTO public.games VALUES (251, 73, 457);
INSERT INTO public.games VALUES (252, 74, 470);
INSERT INTO public.games VALUES (253, 74, 40);
INSERT INTO public.games VALUES (254, 73, 902);
INSERT INTO public.games VALUES (255, 73, 351);
INSERT INTO public.games VALUES (256, 73, 445);
INSERT INTO public.games VALUES (257, 75, 283);
INSERT INTO public.games VALUES (258, 75, 105);
INSERT INTO public.games VALUES (259, 76, 437);
INSERT INTO public.games VALUES (260, 76, 464);
INSERT INTO public.games VALUES (261, 75, 472);
INSERT INTO public.games VALUES (262, 75, 96);
INSERT INTO public.games VALUES (263, 75, 695);
INSERT INTO public.games VALUES (264, 77, 984);
INSERT INTO public.games VALUES (265, 77, 807);
INSERT INTO public.games VALUES (266, 78, 403);
INSERT INTO public.games VALUES (267, 78, 661);
INSERT INTO public.games VALUES (268, 77, 796);
INSERT INTO public.games VALUES (269, 77, 851);
INSERT INTO public.games VALUES (270, 77, 294);
INSERT INTO public.games VALUES (271, 79, 548);
INSERT INTO public.games VALUES (272, 79, 177);
INSERT INTO public.games VALUES (273, 80, 914);
INSERT INTO public.games VALUES (274, 80, 984);
INSERT INTO public.games VALUES (275, 79, 736);
INSERT INTO public.games VALUES (276, 79, 938);
INSERT INTO public.games VALUES (277, 79, 611);
INSERT INTO public.games VALUES (278, 81, 313);
INSERT INTO public.games VALUES (279, 81, 832);
INSERT INTO public.games VALUES (280, 82, 934);
INSERT INTO public.games VALUES (281, 82, 30);
INSERT INTO public.games VALUES (282, 81, 597);
INSERT INTO public.games VALUES (283, 81, 940);
INSERT INTO public.games VALUES (284, 81, 494);
INSERT INTO public.games VALUES (285, 83, 571);
INSERT INTO public.games VALUES (286, 83, 846);
INSERT INTO public.games VALUES (287, 84, 639);
INSERT INTO public.games VALUES (288, 84, 206);
INSERT INTO public.games VALUES (289, 83, 994);
INSERT INTO public.games VALUES (290, 83, 672);
INSERT INTO public.games VALUES (291, 83, 413);
INSERT INTO public.games VALUES (292, 85, 117);
INSERT INTO public.games VALUES (293, 85, 149);
INSERT INTO public.games VALUES (294, 86, 931);
INSERT INTO public.games VALUES (295, 86, 647);
INSERT INTO public.games VALUES (296, 85, 27);
INSERT INTO public.games VALUES (297, 85, 255);
INSERT INTO public.games VALUES (298, 85, 212);
INSERT INTO public.games VALUES (299, 87, 733);
INSERT INTO public.games VALUES (300, 87, 618);
INSERT INTO public.games VALUES (301, 88, 64);
INSERT INTO public.games VALUES (302, 88, 382);
INSERT INTO public.games VALUES (303, 87, 468);
INSERT INTO public.games VALUES (304, 87, 887);
INSERT INTO public.games VALUES (305, 87, 69);
INSERT INTO public.games VALUES (306, 89, 590);
INSERT INTO public.games VALUES (307, 89, 984);
INSERT INTO public.games VALUES (308, 90, 520);
INSERT INTO public.games VALUES (309, 90, 192);
INSERT INTO public.games VALUES (310, 89, 522);
INSERT INTO public.games VALUES (311, 89, 669);
INSERT INTO public.games VALUES (312, 89, 178);
INSERT INTO public.games VALUES (313, 91, 413);
INSERT INTO public.games VALUES (314, 91, 933);
INSERT INTO public.games VALUES (315, 92, 289);
INSERT INTO public.games VALUES (316, 92, 869);
INSERT INTO public.games VALUES (317, 91, 673);
INSERT INTO public.games VALUES (318, 91, 203);
INSERT INTO public.games VALUES (319, 91, 573);
INSERT INTO public.games VALUES (320, 93, 288);
INSERT INTO public.games VALUES (321, 93, 112);
INSERT INTO public.games VALUES (322, 94, 833);
INSERT INTO public.games VALUES (323, 94, 236);
INSERT INTO public.games VALUES (324, 93, 652);
INSERT INTO public.games VALUES (325, 93, 886);
INSERT INTO public.games VALUES (326, 93, 941);
INSERT INTO public.games VALUES (327, 95, 838);
INSERT INTO public.games VALUES (328, 95, 991);
INSERT INTO public.games VALUES (329, 96, 128);
INSERT INTO public.games VALUES (330, 96, 833);
INSERT INTO public.games VALUES (331, 95, 273);
INSERT INTO public.games VALUES (332, 95, 565);
INSERT INTO public.games VALUES (333, 95, 251);
INSERT INTO public.games VALUES (334, 97, 15);
INSERT INTO public.games VALUES (335, 97, 511);
INSERT INTO public.games VALUES (336, 98, 384);
INSERT INTO public.games VALUES (337, 98, 724);
INSERT INTO public.games VALUES (338, 97, 133);
INSERT INTO public.games VALUES (339, 97, 876);
INSERT INTO public.games VALUES (340, 97, 492);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Abel Ajibade');
INSERT INTO public.users VALUES (2, 'peter dury');
INSERT INTO public.users VALUES (3, 'user_1724951928732');
INSERT INTO public.users VALUES (4, 'user_1724951928731');
INSERT INTO public.users VALUES (5, 'user_1724952250191');
INSERT INTO public.users VALUES (6, 'user_1724952250190');
INSERT INTO public.users VALUES (7, 'user_1724952446581');
INSERT INTO public.users VALUES (8, 'user_1724952446580');
INSERT INTO public.users VALUES (9, 'user_1724952794803');
INSERT INTO public.users VALUES (10, 'user_1724952794802');
INSERT INTO public.users VALUES (11, 'user_1724953215981');
INSERT INTO public.users VALUES (12, 'user_1724953215980');
INSERT INTO public.users VALUES (13, 'user_1724953223937');
INSERT INTO public.users VALUES (14, 'user_1724953223936');
INSERT INTO public.users VALUES (15, 'user_1724953475381');
INSERT INTO public.users VALUES (16, 'user_1724953475380');
INSERT INTO public.users VALUES (17, 'user_1724954181339');
INSERT INTO public.users VALUES (18, 'user_1724954181338');
INSERT INTO public.users VALUES (19, 'user_1724954754303');
INSERT INTO public.users VALUES (20, 'user_1724954754302');
INSERT INTO public.users VALUES (21, 'user_1724954813122');
INSERT INTO public.users VALUES (22, 'user_1724954813121');
INSERT INTO public.users VALUES (23, 'user_1724955105176');
INSERT INTO public.users VALUES (24, 'user_1724955105175');
INSERT INTO public.users VALUES (25, 'user_1724955265887');
INSERT INTO public.users VALUES (26, 'user_1724955265886');
INSERT INTO public.users VALUES (27, 'user_1724955306062');
INSERT INTO public.users VALUES (28, 'user_1724955306061');
INSERT INTO public.users VALUES (29, 'user_1724955318663');
INSERT INTO public.users VALUES (30, 'user_1724955318662');
INSERT INTO public.users VALUES (31, 'user_1724955340147');
INSERT INTO public.users VALUES (32, 'user_1724955340146');
INSERT INTO public.users VALUES (33, 'user_1724955344695');
INSERT INTO public.users VALUES (34, 'user_1724955344694');
INSERT INTO public.users VALUES (35, 'user_1724955359590');
INSERT INTO public.users VALUES (36, 'user_1724955359589');
INSERT INTO public.users VALUES (37, 'user_1724955375107');
INSERT INTO public.users VALUES (38, 'user_1724955375106');
INSERT INTO public.users VALUES (39, 'user_1724955394893');
INSERT INTO public.users VALUES (40, 'user_1724955394892');
INSERT INTO public.users VALUES (41, 'user_1724955423376');
INSERT INTO public.users VALUES (42, 'user_1724955423375');
INSERT INTO public.users VALUES (43, 'user_1724955459297');
INSERT INTO public.users VALUES (44, 'user_1724955459296');
INSERT INTO public.users VALUES (45, 'user_1724955562644');
INSERT INTO public.users VALUES (46, 'user_1724955562643');
INSERT INTO public.users VALUES (47, 'user_1724955582815');
INSERT INTO public.users VALUES (48, 'user_1724955582814');
INSERT INTO public.users VALUES (49, 'user_1724955593177');
INSERT INTO public.users VALUES (50, 'user_1724955593176');
INSERT INTO public.users VALUES (51, 'user_1724955603579');
INSERT INTO public.users VALUES (52, 'user_1724955603578');
INSERT INTO public.users VALUES (53, 'user_1724955829837');
INSERT INTO public.users VALUES (54, 'user_1724955829836');
INSERT INTO public.users VALUES (55, 'user_1724955833915');
INSERT INTO public.users VALUES (56, 'user_1724955833914');
INSERT INTO public.users VALUES (57, 'user_1724955838117');
INSERT INTO public.users VALUES (58, 'user_1724955838116');
INSERT INTO public.users VALUES (59, 'user_1724955851422');
INSERT INTO public.users VALUES (60, 'user_1724955851421');
INSERT INTO public.users VALUES (61, 'user_1724955985626');
INSERT INTO public.users VALUES (62, 'user_1724955985625');
INSERT INTO public.users VALUES (63, 'user_1724955992814');
INSERT INTO public.users VALUES (64, 'user_1724955992813');
INSERT INTO public.users VALUES (65, 'user_1724956001008');
INSERT INTO public.users VALUES (66, 'user_1724956001007');
INSERT INTO public.users VALUES (67, 'user_1724956004029');
INSERT INTO public.users VALUES (68, 'user_1724956004028');
INSERT INTO public.users VALUES (69, 'user_1724956007140');
INSERT INTO public.users VALUES (70, 'user_1724956007139');
INSERT INTO public.users VALUES (71, 'user_1724956117934');
INSERT INTO public.users VALUES (72, 'user_1724956117933');
INSERT INTO public.users VALUES (73, 'user_1724956121230');
INSERT INTO public.users VALUES (74, 'user_1724956121229');
INSERT INTO public.users VALUES (75, 'user_1724956124265');
INSERT INTO public.users VALUES (76, 'user_1724956124264');
INSERT INTO public.users VALUES (77, 'user_1724956164938');
INSERT INTO public.users VALUES (78, 'user_1724956164937');
INSERT INTO public.users VALUES (79, 'user_1724956168414');
INSERT INTO public.users VALUES (80, 'user_1724956168413');
INSERT INTO public.users VALUES (81, 'user_1724956177326');
INSERT INTO public.users VALUES (82, 'user_1724956177325');
INSERT INTO public.users VALUES (83, 'user_1724956184270');
INSERT INTO public.users VALUES (84, 'user_1724956184269');
INSERT INTO public.users VALUES (85, 'user_1724956188084');
INSERT INTO public.users VALUES (86, 'user_1724956188083');
INSERT INTO public.users VALUES (87, 'user_1724956207417');
INSERT INTO public.users VALUES (88, 'user_1724956207416');
INSERT INTO public.users VALUES (89, 'user_1724956213217');
INSERT INTO public.users VALUES (90, 'user_1724956213216');
INSERT INTO public.users VALUES (91, 'user_1724956224436');
INSERT INTO public.users VALUES (92, 'user_1724956224435');
INSERT INTO public.users VALUES (93, 'user_1724956233363');
INSERT INTO public.users VALUES (94, 'user_1724956233362');
INSERT INTO public.users VALUES (95, 'user_1724956238566');
INSERT INTO public.users VALUES (96, 'user_1724956238565');
INSERT INTO public.users VALUES (97, 'user_1724956244561');
INSERT INTO public.users VALUES (98, 'user_1724956244560');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 340, true);


--
-- Name: users_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_player_id_seq', 98, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.users(player_id);


--
-- PostgreSQL database dump complete
--

