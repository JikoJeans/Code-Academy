--Queries to test your knowledge
    --Query 1: Query the number of apps that are not free.
    --Query 2: Query the amount of money needed to buy all of apps.
    --Query 3: Query the maximum number of downloads from all the apps.
    --Query 4: Query the average number of downloads of all the apps in the Books category.
    --Query 5: Query the average cost of an app in the Games category and rounded to the second decimal point.
    --Query 6: Query the total number of downloads 
    --Query 7: Query the average cost of the apps grouped by their category.
    --Query 8: Query the average downloads of the apps grouped by their category where each category must have more than 10 apps.
    --Query 9: Query the maximum cost of the apps for each category where each category must have a cost less than 9.99
    --Query 10: Query the average cost of the apps for each category where the we do not consider the free apps and we do not consider
    -- categorys that exceed 9.99 in price.

--Instructions to recreate the DB, Solutions below
    CREATE TABLE fake_apps (
        id INTEGER, 
        name TEXT,
        category TEXT,
        downloads INTEGER,
        price REAL
    );
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (3,	'siliconphase',	'Productivity',	17193,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (6,	'Donzolab',	'Education',	4259,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (10,	'Ittechi',	'Reference',	3874,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (13,	'Subdrill',	'Education',	7132,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (14,	'Anzoom	', 'Health & Fitness',	6941,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (21,	'kanity	', 'Health & Fitness',	2299,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (25,	'Zathcare',	'Books',	16281,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (30,	'Basecode',	'Sports',	21203,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (45,	'Hayholding',	'Medical',	15845,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (59,	'Sailflex',	'Productivity',	21984,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (60,	'waretam',	'Catalogs',	31087,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (62,	'Donelectrics',	'News',	6650,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (81,	'sonelectrics',	'Entertainment',	9297,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (89,	'Zoodom	Food &', 'Drink',	29619,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (94,	'Quohouse',	'Lifestyle',	4109,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (95,	'Quotetech	', 'Health & Fitness',	24934,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (104,	'Funtexon',	'Utilities',	11229,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (108,	'Ozerphase',	'Navigation',	14881,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (109,	'Kintonflex',	'Catalogs',	28705,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (110,	'Tamptom',	'Education',	5918,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (122,	'Whitetexon',	'Games',	30959,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (123,	'Lanela',	'Business',	21116,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (126,	'Ozerquote',	'Lifestyle',	19422,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (128,	'Unosantech',	'Finance',	15659,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (130,	'Canplus',	'Lifestyle',	22923,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (132,	'Mathzoom',	'Books',	30862,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (143,	'Canetouch',	'Books',	29463,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (156,	'Lexilane',	'News',	7630,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (157,	'Sunzoomron',	'Reference',	28861,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (159,	'Sailline',	'Sports',	9340,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (163,	'Gogoware',	'Games',	7287,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (166,	'bigzap',	'Games',	20126,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (175,	'O-electronics',	'Music',	2469,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (181,	'Flexlane',	'Navigation',	13576,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (182,	'Gogo-media',	'Reference',	17242,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (185,	'santech	', 'Health & Fitness',	21359,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (199,	'Mediajob',	'Games',	21821,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (200,	'Freelamfax',	'Catalogs',	29513,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (212,	'Superfan',	'Games',	2791,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (216,	'Bamgreen',	'Utilities',	2212,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (222,	'Tincan',	'Navigation',	17519,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (223,	'Konhow',	'Sports',	11789,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (226,	'alphalux',	'Books',	25956,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (233,	'Lamsoncode',	'Education',	3910,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (234,	'Vaiatamace',	'Productivity',	28473,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (245,	'Planetquote',	'Finance',	24163,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (248,	'Zotzenhow',	'Productivity',	15641,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (257,	'Duolux',	'Entertainment',	6046,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (258,	'Zummaline',	'Travel',	26779,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (259,	'E-planet	', 'Health & Fitness',	28069,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (272,	'superdrill',	'Business',	15195,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (277,	'Fixcode',	'Medical',	26243,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (282,	'Unoredware',	'Education',	15769,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (284,	'Ladex	Food &', 'Drink',	30789,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (287,	'Duokix',	'Medical',	15550,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (292,	'Biostrip',	'Games',	17887,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (298,	'Mathcane',	'Navigation',	10535,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (301,	'Daltquadla',	'Education',	22593,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (308,	'Sanbam',	'Business',	14554,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (314,	'Voyaelectronics',	'News',	27793,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (317,	'Streethex',	'Lifestyle',	17200,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (328,	'Indiace',	'Education',	7678,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (332,	'yearfix',	'Business',	4587,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (333,	'Newlam',	'Finance',	30605,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (338,	'keyit',	'Business',	22632,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (341,	'lanedax',	'Entertainment',	1673,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (345,	'Triozone	', 'Photo & Video',	23817,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (347,	'Fasetom',	'Games',	14555,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (349,	'Tamplam	', 'Health & Fitness',	31075,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (350,	'Zoovivaice	Social', 'Networking',	25682,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (352,	'Conelux',	'Weather',	15307,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (354,	'Anstreet',	'Catalogs',	4937,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (356,	'Zerzacom',	'Navigation',	5541,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (357,	'Zenice',	'Sports',	22849,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (362,	'Opetech',	'Travel',	4940,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (366,	'Streetzim',	'Travel',	28604,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (367,	'damgreen',	'Reference',	15363,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (384,	'Highflex',	'Business',	28488,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (390,	'technocorporation',	'Navigation',	21061,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (396,	'Zaptech',	'Reference',	11094,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (399,	'Danlane',	'Utilities',	6896,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (402,	'Spanis',	'Medical',	17651,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (403,	'Strong-techno	Social', 'Networking',	16479,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (408,	'K-fax	', 'Photo & Video',	16413,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (411,	'Cantechi',	'Entertainment',	6465,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (412,	'Ranplus',	'Weather',	17358,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (415,	'Technolux',	'Sports',	24479,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (422,	'Sumzone',	'Weather',	20344,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (428,	'Kontechnology	', 'Photo & Video',	20180,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (445,	'D-corporation	Food &', 'Drink',	18033,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (449,	'howtam',	'News',	1826,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (457,	'Solois',	'Weather',	27167,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (458,	'Tamp-can',	'Education',	17669,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (459,	'Ganzcity',	'Finance',	22201,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (466,	'Zercare',	'Travel',	24377,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (474,	'Saozone',	'Sports',	19280,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (490,	'Saltelectrics',	'Games',	14120,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (495,	'Saltcode',	'Travel',	2836,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (500,	'Line-house',	'Education',	28906,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (506,	'K-in',	'Reference',	23900,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (507,	'Damdox',	'News',	19533,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (526,	'Duodox',	'Music',	1654,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (536,	'Fasecan',	'Catalogs',	29165,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (540,	'Zamgreen',	'Catalogs',	22987,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (546,	'Stanunahex',	'Utilities',	23118,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (548,	'Geotexon',	'Utilities',	28419,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (560,	'Spandax',	'Reference',	27686,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (562,	'Canecanway',	'Weather',	12167,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (576,	'Domrancode',	'Games',	12542,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (577,	'Xxx-namex',	'Reference',	12107,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (578,	'Physelectrics',	'Travel',	3240,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (580,	'Roundtom',	'Finance',	18795,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (581,	'Redhouse',	'Productivity',	24308,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (585,	'Treeace	Social', 'Networking',	21477,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (586,	'Isis',	'Sports',	25640,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (590,	'Saltnix',	'Finance',	10839,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (591,	'Tinunolane',	'Navigation',	18388,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (592,	'stancity',	'Education',	15606,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (596,	'Fasezoom',	'Games',	14139,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (597,	'Roundfix	Social', 'Networking',	12734,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (600,	'tree-street',	'Weather',	20902,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (604,	'Solodotam',	'Weather',	7132,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (617,	'Joytechi	Food &', 'Drink',	7919,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (623,	'Zumholding',	'Travel',	23020,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (633,	'Move-street',	'News',	6476,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (635,	'Salthigh',	'Business',	8928,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (638,	'Zimlane',	'Music',	1387,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (640,	'fun-dax',	'Games',	16153,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (641,	'Fax-it',	'Entertainment',	28699,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (643,	'Joyice',	'Games',	22284,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (644,	'Viamatity',	'Entertainment',	6045,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (646,	'Fasezap',	'Lifestyle',	30829,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (651,	'subzim',	'Business',	30269,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (652,	'ontoline',	'Lifestyle',	4831,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (654,	'Domit',	'Navigation',	17791,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (656,	'Lamlane	', 'Photo & Video',	25946,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (658,	'Canstrip',	'Sports',	6152,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (659,	'voltrax',	'Utilities',	3304,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (669,	'Greenzone	Social', 'Networking',	30986,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (674,	'Funzap',	'Sports',	20020,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (675,	'Unala	', 'Photo & Video',	19350,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (681,	'Tinplex',	'Utilities',	2871,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (683,	'Trisholding',	'Music',	9036,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (687,	'Technotaxon',	'News',	21903,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (691,	'Highstrip',	'Finance',	29633,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (697,	'Tampzone',	'Music',	14633,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (703,	'Stanway	Social', 'Networking',	19191,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (706,	'Ranit	', 'Photo & Video',	28751,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (718,	'Goodhattom',	'Travel',	18940,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (731,	'Lexihow',	'Education',	4659,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (738,	'Faxdex	', 'Health & Fitness',	19020,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (740,	'Roundcity',	'Entertainment',	23584,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (743,	'Vivalatlab',	'Games',	4236,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (746,	'Doublelex	', 'Photo & Video',	5504,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (751,	'Alphatouch',	'Education',	21709,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (752,	'K-zap',	'Games',	12454,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (756,	'Newcity',	'Music',	3326,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (757,	'Inch-tone',	'Games',	11360,	14.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (758,	'Ronzim',	'Lifestyle',	13125,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (759,	'Dom-zoom',	'Travel',	21379,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (765,	'Trippletouch',	'Reference',	21905,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (779,	'Kinice',	'Navigation',	22277,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (782,	'Latzap',	'Medical',	1902,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (784,	'Jaytexon',	'Finance',	8151,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (785,	'rankdom',	'Weather',	23701,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (799,	'Hexgreen',	'Catalogs',	10206,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (819,	'Mediatom',	'Travel',	30990,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (821,	'Labtechno',	'Lifestyle',	15895,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (822,	'Yearhottom',	'Business',	15753,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (831,	'Can-taxon	Food &', 'Drink',	4590,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (834,	'Unaflex	', 'Health & Fitness',	16917,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (839,	'Labphase',	'Lifestyle',	30799,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (841,	'ontocode',	'Games',	13871,	2.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (850,	'Zimtrax	', 'Health & Fitness',	14941,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (859,	'Conebase',	'Sports',	1923,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (863,	'Tintonway',	'Books',	21242,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (865,	'mathtouch',	'Music',	5895,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (870,	'Toughlab',	'Books',	1731,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (883,	'Zer-tom',	'Navigation',	10545,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (885,	'Zer-zim',	'Business',	17204,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (886,	'opecone',	'Music',	20967,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (904,	'Hexquadline',	'Productivity',	10212,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (908,	'Trusting	', 'Photo & Video',	24652,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (913,	'Anholding	', 'Photo & Video',	9573,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (925,	'Solotrax',	'Education',	28916,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (934,	'J-electronics',	'Travel',	25921,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (945,	'Freezoom',	'Books',	13207,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (946,	'Biotex',	'Sports',	14313,	0.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (947,	'Singlelam',	'Finance',	18117,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (949,	'Stripplex',	'Lifestyle',	7699,	3.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (959,	'Lathouse',	'Travel',	31090,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (964,	'Quoace',	'Books',	22122,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (972,	'Villatouch',	'Weather',	17085,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (973,	'Roundhow	', 'Photo & Video',	10662,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (975,	'Groovelab',	'Catalogs',	9496,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (977,	'Plexlane',	'Utilities',	18050,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (982,	'Zotice',	'Catalogs',	20062,	1.99);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (985,	'tonkix',	'Games',	19498,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (992,	'Acecane',	'Entertainment',	13359,	0.0);
    INSERT INTO fake_apps (id, name, category, downloads, price) VALUES (1000,	'Plusvolzim',	'News',	11448,	0.0);

--Solutions to Query
    --Query 1: Query the number of apps that are not free.
        SELECT COUNT(*) 
            FROM fake_apps WHERE price != 0.0;
        -- Returns 127 are free out of 200 total entries.
    --Query 2: Query the amount of money needed to buy all of apps.
        SELECT SUM(price) 
            FROM fake_apps;
        -- Returns 404.73 dollars to buy all the apps.
    --Query 3: Query the maximum number of downloads from all the apps.
        SELECT MAX(downloads) 
            FROM fake_apps;
        -- Returns 31,090 which is the maximum number of downloads in any entry.
    --Query 4: Query the average number of downloads of all the apps in the Books category.
        SELECT AVG(downloads) 
            FROM fake_apps WHERE category = 'Books';
        -- Returns 20108.0 which is the average number of downloads from the books category.
    --Query 5: Query the average cost of an app in the Games category and rounded to the second decimal point.
        SELECT ROUND(AVG(price), 2) 
            FROM fake_apps WHERE category = 'Games';
        -- Returns 1.64 which is 1.64176470588235 rounded to the second value which represents the average cost of the apps in the game category.
    --Query 6: Query the total number of downloads 
        SELECT SUM(downloads) 
            FROM fake_apps;
        -- Returns 3,322,760 which is the total number of downloads of all the apps.
    --Query 7: Query the average cost of the apps grouped by their category.
        SELECT category, AVG(price) 
            FROM fake_apps 
            GROUP BY category;
        -- Returns the list of categories along with the average price of each category's apps.
    --Query 8: Query the average downloads of the apps grouped by their category where each category must have more than 10 apps.
        SELECT category, AVG(downloads) 
            FROM fake_apps 
            GROUP BY category HAVING COUNT(*) > 10;
        -- Returns the list of categories (educations, games, sports, and travel) that have more than 10 apps and the number of average downloads they have.
    --Query 9: Query the maximum cost of the apps for each category where each category must have a cost equal to or less than 9.99
        SELECT category, MAX(price)
            FROM fake_apps 
            GROUP BY category HAVING MAX(price) <= 9.99;
        -- Returns each category where the maximum app price is less than 9.99
    --Query 10: Query the average cost of the apps for each category where we do not consider the free apps and we do not consider
    -- categories that exceed 9.99 in price and sort in price ascending order. Round the output averages by 2 decimal places.
        SELECT category, ROUND(AVG(price), 2)
            FROM fake_apps WHERE price != 0.0
            GROUP BY category HAVING MAX(price) < 10
            ORDER BY price ASC;