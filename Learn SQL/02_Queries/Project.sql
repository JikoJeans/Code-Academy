
--Queries to test your knowledge
    --Query 1: Query all the movie names in the table and name the output results as 'Movie Titles'.
    --Query 2: Query all the the unique movie genres.
    --Query 3: Query all the movies with a imdb_rating higher than 7 and name the results as 'Top Movies'.
    --Query 4: Query all the movie names that are released between 2010 and 2020.
    --Query 5: Query all the movies that that were apart of the action genre and have a imdb_rating higher than 7
    -- and name the results 'Top Action Flicks'
    --Query 6: Query all the movies that are either rated 6 or higher or are comedy genre.
    --Query 7: Query all the movies that were released in 2010 and order them according to their imdb_rating(in ascending order).
    --Query 8: Query all the movies that were released in 2008 and order them according to their name(in ascending order).
    --Query 9: Query all the movies that were released in 2008 and order them according to their imdb_rating(in descending order).
    --Query 10: Query all the movies that were released in 2008 and order them according to their name(in descending order).
    --Query 11: Query all the movies but limit the number of entries returned to 25.
    --Query 12: Query all the movies but for each imdb_rating section(10-7, 7-3, 3-0) and replace the rating with the following
    -- labels (Great, Descent, Avoid) and rename the results to be called 'Movie Review'.

--Instructions to recreate the DB and Solutions below
    CREATE TABLE movies (
        id INTEGER PRIMARY KEY, 
        name TEXT UNIQUE,
        genre TEXT,
        year INTEGER,
        imdb_rating FLOAT
    );
    --230 entries for the test database
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (1,	'Avatar',	'action',	2009,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (2,	'Jurassic World',	'action',	2015,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (3,	'The Avengers',	'action',	2012,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (4,	'The Dark Knight',	'action',	2008,	9.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (5,	'Star Wars: Episode I - The Phantom; Menace',	'action',	1999,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (6,	'Star Wars',	'action',	1977,	8.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (7,	'Avengers: Age of Ultron',	'action',	2015,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (8,	'The Dark Knight Rises',	'action',	2012,	8.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (9,	'Pirates of the Caribbean: Dead Mans Chest',	'action',	2006,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (10,	'Iron Man 3',	'action',	2013,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (11,	'Spider-Man',	'action',	2002,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (12,	'Transformers: Revenge of the Fallen',	'action',	2009,	6.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (13,	'Star Wars: Episode III - Revenge of the Sith',	'action',	2005,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (14,	'Spider-Man 2',	'action',	2004,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (15,	'Transformers: Dark of the Moon',	'action',	2011,	6.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (16,	'American Sniper',	'action',	2014,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (17,	'Furious Seven',	'action',	2015,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (18,	'Spider-Man 3',	'action',	2007,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (19,	'Guardians of the Galaxy',	'action',	2014,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (20,	'Transformers',	'action',	2007,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (21,	'Iron Man',	'action',	2008,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (22,	'Indiana Jones and the Kingdom of the Crystal Skull',	'action',	2008,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (23,	'Iron Man 2',	'action',	2010,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (24,	'Star Wars: Episode II - Attack of the Clones',	'action',	2002,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (25,	'Pirates of the Caribbean: At Worlds End',	'action',	2007,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (26,	'Star Wars: Episode VI - Return of the Jedi',	'action',	1983,	8.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (27,	'Independence Day',	'action',	1996,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (28,	'Pirates of the Caribbean: The Curse of the Black Pearl',	'action',	2003,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (29,	'Skyfall',	'action',	2012,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (30,	'Inception',	'action',	2010,	8.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (31,	'Man of Steel',	'action',	2013,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (32,	'Star Wars: Episode V - The Empire Strikes Back',	'action',	1980,	8.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (33,	'The Matrix Reloaded',	'action',	2003,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (34,	'The Amazing Spider-Man',	'action',	2012,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (35,	'The Incredibles',	'action',	2004,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (36,	'Captain America: The Winter Soldier',	'action',	2014,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (37,	'The Lego Movie',	'action',	2014,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (38,	'Star Trek',	'action',	2009,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (39,	'Batman',	'action',	1989,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (40,	'Night at the Museum',	'action',	2006,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (41,	'Transformers: Age of Extinction',	'action',	2014,	5.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (42,	'Twister',	'action',	1996,	6.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (43,	'Maleficent',	'action',	2014,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (44,	'Pirates of the Caribbean: On Stranger Tides',	'action',	2011,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (45,	'Fast & Furious 6',	'action',	2013,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (46,	'Beverly Hills Cop',	'action',	1984,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (47,	'X-Men: The Last Stand',	'action',	2006,	6.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (48,	'X-Men: Days of Future Past',	'action',	2014,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (49,	'The Lost World: Jurassic Park',	'action',	1997,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (50,	'Star Trek Into Darkness',	'action',	2013,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (51,	'Shrek 2',	'comedy',	2004,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (52,	'Toy Story 3',	'comedy',	2010,	8.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (53,	'Frozen',	'comedy',	2013,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (54,	'Finding Nemo',	'comedy',	2003,	8.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (55,	'Despicable Me 2',	'comedy',	2013,	7.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (56,	'Inside Out',	'comedy',	2015,	8.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (57,	'Shrek the Third',	'comedy',	2007,	6.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (58,	'Minions',	'comedy',	2015,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (59,	'Up',	'comedy',	2009,	8.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (60,	'Monsters Inc.',	'comedy',	2001,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (61,	'Home Alone',	'comedy',	1990,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (62,	'Meet the Fockers',	'comedy',	2004,	6.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (63,	'The Hangover',	'comedy',	2009,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (64,	'Monsters University',	'comedy',	2013,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (65,	'Shrek',	'comedy',	2001,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (66,	'How the Grinch Stole Christmas',	'comedy',	2000,	6.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (67,	'The Hangover Part II',	'comedy',	2011,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (68,	'Despicable Me',	'comedy',	2010,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (69,	'Men in Black',	'comedy',	1997,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (70,	'Toy Story 2',	'comedy',	1999,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (71,	'Cars',	'comedy',	2006,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (72,	'Bruce Almighty',	'comedy',	2003,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (73,	'My Big Fat Greek Wedding',	'comedy', 2002, 6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (74,	'Shrek Forever After',	'comedy',	2010,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (75,	'Brave',	'comedy',	2012,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (76,	'Ghostbusters',	'comedy',	1984,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (77,	'Rush Hour 2',	'comedy',	2001,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (78,	'Big Hero 6',	'comedy',	2014,	7.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (79,	'Alvin and the Chipmunks: The Squeakquel',	'comedy',	2009,	4.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (80,	'Mrs. Doubtfire',	'comedy',	1993,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (81,	'Ted',	'comedy',	2012,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (82,	'Aladdin',	'comedy',	1992,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (83,	'Alvin and the Chipmunks',	'comedy',	2007,	5.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (84,	'Madagascar 3: Europes Most Wanted',	'comedy',	2012,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (85,	'Kung Fu Panda',	'comedy',	2008,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (86,	'The Lorax',	'comedy',	2012,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (87,	'Austin Powers in Goldmember',	'comedy',	2002,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (88,	'Back to the Future',	'comedy',	1985,	8.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (89,	'Wedding Crashers',	'comedy',	2005,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (90,	'Charlie and the Chocolate Factory',	'comedy',	2005,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (91,	'Ratatouille',	'comedy',	2007,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (92,	'Austin Powers: The Spy Who Shagged Me',	'comedy',	1999,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (93,	'Tangled',	'comedy',	2010,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (94,	'Monsters vs. Aliens',	'comedy',	2009,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (95,	'Happy Feet',	'comedy',	2006,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (96,	'Ice Age: Dawn of the Dinosaurs',	'comedy',	2009,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (97,	'Ice Age: The Meltdown',	'comedy',	2006,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (98,	'World War Z',	'horror',	2013,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (99,	'What Lies Beneath',	'horror',	2000,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (100,	'Gremlins',	'horror',	1984,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (101,	'The Blair Witch Project',	'horror',	1999,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (102,	'The Conjuring',	'horror',	2013,	7.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (103,	'The Ring',	'horror',	2002,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (104,	'The Grudge',	'horror',	2004,	5.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (105,	'Paranormal Activity',	'horror',	2007,	6.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (106,	'Interview with the Vampire: The Vampire Chronicles',	'horror',	1994,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (107,	'Paranormal Activity 3',	'horror',	2011,	5.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (108,	'Scream',	'horror',	1996,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (109,	'Jaws 2',	'horror',	1978,	5.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (110,	'Scream 2',	'horror',	1997,	6.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (111,	'Sleepy Hollow',	'horror',	1999,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (112,	'The Others',	'horror',	2001,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (113,	'The Haunting',	'horror',	1999,	4.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (114,	'Scream 3',	'horror',	2000,	5.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (115,	'Saw II',	'horror',	2005,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (116,	'The Amityville Horror',	'horror',	1979,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (117,	'Aliens',	'horror',	1986,	8.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (118,	'Paranormal Activity 2',	'horror',	2010,	5.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (119,	'Annabelle',	'horror',	2014,	5.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (120,	'Scooby-Doo 2: Monsters Unleashed',	'horror',	2004,	4.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (121,	'Insidious: Chapter 2',	'horror',	2013,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (122,	'Dracula',	'horror',	1992,	7.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (123,	'Freddy vs. Jason',	'horror',	2003,	5.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (124,	'Blade II',	'horror',	2002,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (125,	'Saw III',	'horror',	2006,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (126,	'The Texas Chainsaw Massacre',	'horror',	2003,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (127,	'Cloverfield',	'horror',	2008,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (128,	'Dark Shadows',	'horror',	2012,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (129,	'The Ring Two',	'horror',	2005,	5.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (130,	'Zombieland',	'horror',	2009,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (131,	'Constantine',	'horror',	2005,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (132,	'The Exorcism of Emily Rose',	'horror',	2005,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (133,	'I Know What You Did Last Summer',	'horror',	1997,	5.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (134,	'1408',	'horror',	2007,	6.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (135,	'Mama',	'horror',	2013,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (136,	'The Purge: Anarchy',	'horror',	2014,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (137,	'Scary Movie 2',	'horror',	2001,	5.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (138,	'Blade',	'horror',	1998,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (139,	'End of Days',	'horror',	1999,	5.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (140,	'The Forgotten',	'horror',	2004,	5.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (141,	'The Final Destination',	'horror',	2009,	5.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (142,	'Warm Bodies',	'horror',	2013,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (143,	'Anaconda',	'horror',	1997,	4.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (144,	'Wolf',	'horror',	1994,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (145,	'Friday the 13th',	'horror',	2009,	5.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (146,	'The Purge',	'horror',	2013,	5.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (147,	'Titanic',	'romance',	1997,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (148,	'Forrest Gump',	'romance',	1994,	8.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (149,	'The Twilight Saga: Eclipse',	'romance',	2010,	4.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (150,	'The Twilight Saga: New Moon',	'romance',	2009,	4.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (151,	'The Twilight Saga: Breaking Dawn - Part 2',	'romance',	2012,	5.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (152,	'The Twilight Saga: Breaking Dawn - Part 1',	'romance',	2011,	4.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (153,	'Beauty and the Beast',	'romance',	1991,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (154,	'King Kong',	'romance',	2005,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (155,	'Ghost',	'romance',	1990,	7.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (156,	'Cinderella',	'romance',	2015,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (157,	'Gone with the Wind',	'romance',	1939,	8.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (158,	'Pearl Harbor',	'romance',	2001,	6.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (159,	'Twilight',	'romance',	2008,	5.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (160,	'Mr. & Mrs. Smith',	'romance',	2005,	6.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (161,	'Snow White and the Seven Dwarfs',	'romance',	1937,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (162,	'What Women Want',	'romance',	2000,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (163,	'Top Gun',	'romance',	1986,	6.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (164,	'Pretty Woman',	'romance',	1990,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (165,	'Hitch',	'romance',	2005,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (166,	'Tootsie',	'romance',	1982,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (167,	'Theres Something About Mary',	'romance',	1998,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (168,	'Elf',	'romance',	2003,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (169,	'Tarzan',	'romance',	1999,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (170,	'Bridesmaids',	'romance',	2011,	6.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (171,	'Fifty Shades of Grey',	'romance',	2015,	4.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (172,	'Robin Hood: Prince of Thieves',	'romance',	1991,	6.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (173,	'The Proposal',	'romance',	2009,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (174,	'The Sound of Music',	'romance',	1965,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (175,	'Jerry Maguire',	'romance',	1996,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (176,	'Sex and the City',	'romance',	2008,	5.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (177,	'Runaway Bride',	'romance',	1999,	5.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (178,	'Les Misérables',	'romance',	2012,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (179,	'Knocked Up',	'romance',	2007,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (180,	'Little Fockers',	'romance',	2010,	5.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (181,	'As Good as It Gets',	'romance',	1997,	7.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (182,	'American Pie 2',	'romance',	2001,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (183,	'The Great Gatsby',	'romance',	2013,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (184,	'Mamma Mia!',	'romance',	2008,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (185,	'Juno',	'romance',	2007,	7.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (186,	'Marley & Me',	'romance',	2008,	7.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (187,	'Pocahontas',	'romance',	1995,	6.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (188,	'Slumdog Millionaire',	'romance',	2008,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (189,	'Look Whos Talking',	'romance',	1989,	5.8);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (190,	'Click',	'romance',	2006,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (191,	'The Lion King',	'drama',	1994,	8.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (192,	'Harry Potter and the Deathly Hallows: Part 2',	'drama',	2011,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (193,	'The Sixth Sense',	'drama',	1999,	8.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (194,	'Jaws',	'drama',	1975,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (195,	'I Am Legend',	'drama',	2007,	7.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (196,	'The Blind Side',	'drama',	2009,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (197,	'Cast Away',	'drama',	2000,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (198,	'Signs',	'drama',	2002,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (199,	'Saving Private Ryan',	'drama',	1998,	8.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (200,	'Dawn of the Planet of the Apes',	'drama',	2014,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (201,	'Interstellar',	'drama',	2014,	8.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (202,	'Gladiator',	'drama',	2000,	8.5);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (203,	'Dances with Wolves',	'drama',	1990,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (204,	'The Perfect Storm',	'drama',	2000,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (205,	'Lincoln',	'drama',	2012,	7.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (206,	'Rise of the Planet of the Apes',	'drama',	2011,	7.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (207,	'The Karate Kid',	'drama',	2010,	6.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (208,	'Rain Man',	'drama',	1988,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (209,	'Air Force One',	'drama',	1997,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (210,	'True Grit',	'drama',	2010,	7.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (211,	'A Beautiful Mind',	'drama',	2001,	8.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (212,	'The Help',	'drama',	2011,	8.1);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (213,	'3 Men and a Baby',	'drama',	1987,	5.9);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (214,	'Gone Girl',	'drama',	2014,	8.2);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (215,	'Kung Fu Panda 2',	'drama',	2011,	7.3);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (216,	'Hannibal',	'drama',	2001,	6.7);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (217,	'Catch Me If You Can',	'drama',	2002,	8.0);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (218,	'Big Daddy',	'drama',	1999,	6.4);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (219,	'Se7en',	'drama',	1995,	8.6);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (220,	'Seven',	'drama',	1979,	6.1);
    INSERT INTO movies (id, name) VALUES (221,	'The Good, the Bad and the Ugly');
    INSERT INTO movies (id, name, genre, year) VALUES (222,	'Dawn of the Dead',	'horror',	1978	);
    INSERT INTO movies (id, name, genre, year) VALUES (223,	'Shawn of the Dead',	'comedy',	2004	);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (224,	'Star Wars: The Force Awakens',	'action',	2015,	8.1);
    INSERT INTO movies (id, name, genre, year) VALUES (225,	'Star Wars: The Last Jedi',	'action',	2017);
    INSERT INTO movies (id, name, genre, year, imdb_rating) VALUES (226,	'The Shining',	'horror',	1985,	8.4);
    INSERT INTO movies (id, name, year, imdb_rating) VALUES (227,	'The Devil and Daniel Johnston', 2005,	8.0);
    INSERT INTO movies (id, name, year) VALUES (228,	'Ali Wong: Baby, Cobra', 2016);
    INSERT INTO movies (id, name, genre, year) VALUES (229,	'The Big Sick',	'romance',	2017);
    INSERT INTO movies (id, name, genre, year) VALUES (230,	'Deadpool',	'action', 2016);

--Solutions
    --Query 1: Query all the movie names in the table and name the output results as 'Movie Titles'.
        SELECT name AS 'Movie Titles' FROM movies;
    --Query 2: Query all the the unique movie genres.
        SELECT DISTINCT genre FROM movies;
    --Query 3: Query all the movie names with a imdb_rating higher than 7 and name the results as 'Top Movies'.
        SELECT name AS 'Top Movies' FROM movies WHERE imdb_rating > 7;
    --Query 4: Query all the movie names that are released between 2010 and 2020.
        SELECT * FROM movies WHERE year BETWEEN 2010 AND 2020;
    --Query 5: Query all the movie names that were apart of the action genre and have a imdb_rating higher than 7
    -- and name the results 'Top Action Flicks'
        SELECT name AS 'Top Action Flicks' FROM movies
            WHERE genre = 'action' AND imdb_rating > 7;
    --Query 6: Query all the movies that are either rated 6 or higher or are comedy genre.
        SELECT * FROM movies
            WHERE genre = 'comedy' OR imdb_rating > 5;
    --Query 7: Query all the movies that were released in 2010 and order them according to their imdb_rating(in ascending order).
        SELECT * FROM movies
            WHERE year = 2010
                ORDER BY imdb_rating ASC;
    --Query 8: Query all the movies that were released in 2008 and order them according to their name(in ascending order).
        SELECT * FROM movies
            WHERE year = 2008
                ORDER BY name ASC;
    --Query 9: Query all the movies that were released in 2008 and order them according to their imdb_rating(in descending order).
        SELECT * FROM movies
            WHERE year = 2008
                ORDER BY imdb_rating DESC;
    --Query 10: Query all the movies that were released in 2010 and order them according to their name(in descending order).
        SELECT * FROM movies
            WHERE year = 2010
                ORDER BY name DESC;
    --Query 11: Query all the movies but limit the number of entries returned to 25.
        SELECT * FROM movies LIMIT 25;
    --Query 12: Query all the movies but for each imdb_rating section(10-7, 7-3, 3-0) and replace the rating with the following
    -- labels (Great, Descent, Avoid) and rename the results to be called 'Movie Review'.
        SELECT name, imdb_rating,
            CASE
                WHEN imdb_rating > 7 THEN 'Great'
                WHEN imdb_rating > 3 THEN 'Descent'
                WHEN imdb_rating < 4 THEN 'Avoid'
            END AS 'Movie Review' FROM movies;
