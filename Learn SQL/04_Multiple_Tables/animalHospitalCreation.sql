-- sqlite3
-- .open animalHospital.sqlite
-- .read animalHospitalCreation.sql
--Declare Animal Table
CREATE TABLE animals (
    ID INTEGER PRIMARY KEY,
    name TEXT,
    gender TEXT,
    type TEXT,
    birth_year INTEGER,
    owner_ID INTEGER
);

--Declare Owner Table
CREATE TABLE owners (
    ID INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    gender TEXT,
    address INTEGER,
    zipcode INTEGER
);

--Declare Order Table
CREATE TABLE orders (
    ID INTEGER PRIMARY KEY,
    animal_ID INTEGER,
    owner_ID INTEGER,
    type TEXT,
    cost INTEGER,
    year INTEGER,
    month INTEGER,
    status TEXT
);

--Declare inserts for animals table
--INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
--VALUES(ID, name, gender, type, birth_year, owner_ID);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(1,  	'Cookie', 	'Male',   	'Bird',	        2011,	23);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(2,  	'Gus',    	'Male',   	'Cat',	        2021,	100);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(3,  	'Apollo', 	'Male',   	'Hamster',	    2021,	95);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(4,  	'Bear',   	'Male',   	'Gecko',	    2022,	3);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(5,  	'Cookie', 	'Male',   	'Rabbit',	    2013,	96);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(6,  	'Dixie',  	'Male',   	'Gecko',	    2014,	34);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(7,  	'Nala',   	'Female', 	'Bird',	        2023,	6);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(8,  	'Angel',  	'Female', 	'Gecko',	    2015,	81);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(9,  	'Zeus',   	'Male',   	'Gecko',	    2006,	1);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(10, 	'Layla',  	'Female', 	'Dog',	        2019,	7);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(11, 	'Benji',  	'Male',   	'Cat',	        2010,	42);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(12, 	'Lucy',   	'Female', 	'Gecko',	    2011,	18);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(13, 	'Murphy', 	'Male',   	'Hamster',	    2018,	82);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(14, 	'Max',    	'Male',   	'Rabbit',	    2012,	88);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(15, 	'Charlie',  'Male',   	'Dog',	        2014,	46);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(16, 	'Moose',  	'Male',   	'Bird',	        2010,	26);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(17, 	'Thor',   	'Male',   	'Turtle',	    2017,	67);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(18, 	'Bentley',  'Male',   	'Gecko',	    2017,	53);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(19, 	'Izzy',   	'Female', 	'Rabbit',	    2014,	87);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(20, 	'Teddy',  	'Male',   	'Turtle',	    2010,	13);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(21, 	'Zoey',   	'Female', 	'Gecko',	    2021,	66);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(22, 	'Lucky',  	'Male',   	'Cat',	        2011,	38);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(23, 	'Leo',    	'Male',   	'Gecko',	    2013,	86);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(24, 	'Roxy',   	'Female', 	'Rabbit',	    2009,	15);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(25, 	'Lady',   	'Female', 	'Dog',	        2018,	13);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(26, 	'Winnie', 	'Female', 	'Cat',	        2024,	15);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(27, 	'Bailey', 	'Male',   	'Bird',	        2021,	19);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(28, 	'Milo',   	'Male',   	'Cat',	        2007,	94);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(29, 	'Lola',   	'Female', 	'Gecko',	    2020,	54);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(30, 	'Zoey',   	'Female', 	'Gecko',	    2018,	57);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(31, 	'Louie',  	'Male',   	'Bird',	        2014,	87);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(32, 	'Abby',   	'Female', 	'Cat',	        2022,	44);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(33, 	'Ace',    	'Male',   	'Rabbit',	    2017,	48);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(34, 	'Archie', 	'Male',   	'Dog',	        2023,	22);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(35, 	'Frankie',  'Male',   	'Rabbit',	    2007,	67);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(36, 	'Shadow', 	'Male',   	'Gecko',	    2019,	27);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(37, 	'Winnie', 	'Female', 	'Dog',	        2018,	47);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(38, 	'Buddy',  	'Male',   	'Hamster',	    2011,	49);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(39, 	'Ollie',  	'Male',   	'Turtle',	    2017,	83);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(40, 	'Lucy',   	'Female', 	'Cat',	        2009,	88);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(41, 	'Harley', 	'Male',   	'Dog',	        2018,	67);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(42, 	'Gracie', 	'Female', 	'Hamster',	    2010,	35);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(43, 	'Oliver', 	'Male',   	'Bird',	        2012,	25);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(44, 	'Rosie',  	'Female', 	'Turtle',	    2015,	29);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(45, 	'Remi',   	'Male',   	'Turtle',	    2011,	66);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(46, 	'Gigi',   	'Female', 	'Turtle',	    2020,	85);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(47, 	'Lily',   	'Female', 	'Hamster',	    2024,	51);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(48, 	'Blue',   	'Male',   	'Dog',	        2024,	61);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(49, 	'Jax',    	'Male',   	'Cat',	        2021,	32);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(50, 	'Finn',   	'Male',   	'Cat',	        2023,	13);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(51, 	'Lily',   	'Female', 	'Gecko',	    2022,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(52, 	'Maggie', 	'Female', 	'Cat',	        2023,	4);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(53, 	'Piper',  	'Female', 	'Turtle',	    2010,	6);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(54, 	'Riley',  	'Female', 	'Dog',	        2010,	25);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(55, 	'Bailey', 	'Male',   	'Gecko',	    2021,	38);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(56, 	'Winston',  'Male',   	'Hamster',	    2012,	12);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(57, 	'Lulu',   	'Female', 	'Dog',	        2008,	23);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(58, 	'Oliver', 	'Male',   	'Gecko',	    2013,	57);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(59, 	'Winston',  'Male',   	'Gecko',	    2024,	30);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(60, 	'Penny',  	'Female', 	'Bird',	        2005,	57);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(61, 	'Honey',  	'Female', 	'Dog',	        2006,	37);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(62, 	'Tucker', 	'Male',   	'Gecko',	    2017,	89);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(63, 	'Chloe',  	'Female', 	'Turtle',	    2011,	37);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(64, 	'Princess', 'Female', 	'Hamster',	    2012,	29);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(65, 	'Gracie', 	'Female', 	'Turtle',	    2012,	64);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(66, 	'Duke',   	'Male',   	'Turtle',	    2020,	57);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(67, 	'Luna',   	'Female', 	'Dog',	        2009,	17);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(68, 	'Oreo',   	'Male',   	'Bird',	        2022,	47);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(69, 	'Duke',   	'Male',   	'Turtle',	    2010,	28);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(70, 	'Sasha',  	'Female', 	'Gecko',	    2007,	61);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(71, 	'Ginger', 	'Female', 	'Turtle',	    2017,	67);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(72, 	'Willow', 	'Male',   	'Turtle',	    2022,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(73, 	'Pepper', 	'Female', 	'Cat',	        2007,	35);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(74, 	'Leo',    	'Male',   	'Hamster',	    2017,	81);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(75, 	'Lola',   	'Female', 	'Dog',	        2016,	37);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(76, 	'Bandit', 	'Male',   	'Gecko',	    2007,	38);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(77, 	'Baby',   	'Female', 	'Hamster',	    2010,	57);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(78, 	'Sophie', 	'Female', 	'Hamster',	    2007,	38);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(79, 	'Honey',  	'Female', 	'Turtle',	    2015,	2);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(80, 	'Koda',   	'Male',   	'Hamster',	    2016,	81);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(81, 	'Rosie',  	'Female', 	'Rabbit',	    2010,	6);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(82, 	'Ellie',  	'Female', 	'Turtle',	    2008,	83);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(83, 	'Toby',   	'Male',   	'Dog',	        2008,	84);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(84, 	'Gigi',   	'Female', 	'Rabbit',	    2012,	70);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(85, 	'Nala',   	'Female', 	'Hamster',	    2020,	19);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(86, 	'Benji',  	'Male',   	'Turtle',	    2006,	40);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(87, 	'Millie', 	'Female', 	'Gecko',	    2023,	49);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(88, 	'Thor',   	'Male',   	'Rabbit',	    2009,	1);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(89, 	'Scout',  	'Male',   	'Rabbit',	    2014,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(90, 	'Archie', 	'Male',   	'Cat',	        2005,	19);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(91, 	'Sophie', 	'Female', 	'Dog',	        2012,	39);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(92, 	'Rocky',  	'Male',   	'Dog',	        2005,	55);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(93, 	'Coco',   	'Female', 	'Dog',	        2017,	59);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(94, 	'Layla',  	'Female', 	'Gecko',	    2017,	70);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(95, 	'Jack',   	'Male',   	'Bird',	        2008,	75);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(96, 	'Diesel', 	'Male',   	'Rabbit',	    2021,	52);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(97, 	'Harley', 	'Male',   	'Dog',	        2010,	91);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(98, 	'Jax',    	'Male',   	'Gecko',	    2022,	4);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(99, 	'Cooper', 	'Male',   	'Hamster',	    2006,	12);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(100,	'Rocky',  	'Male',   	'Turtle',	    2020,	75);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(101,	'Bentley',   'Male',   	'Cat',	        2011,	96);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(102,	'Poppy',  	'Female', 	'Cat',	        2018,	70);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(103,	'Lady',   	'Female', 	'Bird',	        2022,	30);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(104,	'Henry',  	'Male',   	'Hamster',	    2022,	15);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(105,	'Nova',   	'Female', 	'Cat',	        2021,	90);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(106,	'Gus',    	'Male',   	'Rabbit',	    2015,	41);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(107,	'Princess', 'Female', 	'Turtle',	    2020,	58);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(108,	'Penny',  	'Female', 	'Bird',	        2006,	36);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(109,	'Loki',   	'Male',   	'Dog',	        2017,	97);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(110,	'Gizmo',  	'Male',   	'Hamster',	    2005,	18);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(111,	'Sasha',  	'Female', 	'Turtle',	    2015,	18);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(112,	'Bella',  	'Female', 	'Hamster',	    2017,	8);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(113,	'Moose',  	'Male',   	'Hamster',	    2024,	68);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(114,	'Mia',    	'Female', 	'Turtle',	    2018,	99);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(115,	'Molly',  	'Female', 	'Turtle',	    2022,	55);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(116,	'Peanut', 	'Female', 	'Cat',	        2006,	95);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(117,	'Zeus',   	'Male',   	'Cat',	        2023,	27);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(118,	'Coco',   	'Female', 	'Gecko',	    2017,	69);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(119,	'Lulu',   	'Female', 	'Rabbit',	    2022,	6);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(120,	'Charlie',  'Male',   	'Rabbit',	    2020,	93);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(121,	'Roxy',   	'Female', 	'Bird',	        2017,	84);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(122,	'Cooper', 	'Male',   	'Cat',	        2024,	41);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(123,	'Jake',   	'Male',   	'Rabbit',	    2019,	19);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(124,	'Stella', 	'Female', 	'Turtle',	    2019,	75);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(125,	'Bear',   	'Male',   	'Rabbit',	    2024,	96);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(126,	'Shadow', 	'Male',   	'Hamster',	    2015,	14);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(127,	'Riley',  	'Female', 	'Dog',	        2010,	86);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(128,	'Loki',   	'Male',   	'Bird',	        2018,	22);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(129,	'Stella', 	'Female', 	'Bird',	        2012,	64);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(130,	'Ollie',  	'Male',   	'Gecko',	    2006,	12);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(131,	'Frankie',  'Male',   	'Turtle',	    2006,	21);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(132,	'Pepper', 	'Female', 	'Turtle',	    2014,	40);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(133,	'Maverick', 'Male',   	'Hamster',	    2016,	53);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(134,	'Henry',  	'Male',   	'Gecko',	    2010,	42);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(135,	'Sadie',  	'Female', 	'Hamster',	    2005,	19);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(136,	'Blue',   	'Male',   	'Bird',	        2014,	16);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(137,	'Tucker', 	'Male',   	'Dog',	        2022,	33);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(138,	'Marley', 	'Male',   	'Bird',	        2021,	44);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(139,	'Lucky',  	'Male',   	'Turtle',	    2015,	2);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(140,	'Finn',   	'Male',   	'Cat',	        2009,	76);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(141,	'Ellie',  	'Female', 	'Cat',	        2009,	16);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(142,	'Milo',   	'Male',   	'Turtle',	    2014,	100);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(143,	'Ginger', 	'Female', 	'Bird',	        2014,	29);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(144,	'Oreo',   	'Male',   	'Cat',	        2016,	43);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(145,	'Angel',  	'Female', 	'Cat',	        2011,	25);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(146,	'Luna',   	'Female', 	'Dog',	        2006,	39);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(147,	'Hank',   	'Male',   	'Rabbit',	    2005,	14);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(148,	'Ruby',   	'Female', 	'Hamster',	    2005,	14);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(149,	'Zoe',    	'Female', 	'Hamster',	    2021,	45);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(150,	'Lexi',   	'Female', 	'Hamster',	    2007,	100);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(151,	'Jack',   	'Male',   	'Rabbit',	    2009,	29);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(152,	'Apollo', 	'Male',   	'Cat',	        2006,	31);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(153,	'Willow', 	'Male',   	'Hamster',	    2017,	13);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(154,	'Bandit', 	'Male',   	'Gecko',	    2024,	30);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(155,	'Mia',    	'Female', 	'Gecko',	    2010,	34);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(156,	'Daisy',  	'Female', 	'Turtle',	    2013,	93);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(157,	'Hazel',  	'Female', 	'Turtle',	    2019,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(158,	'Baby',   	'Female', 	'Gecko',	    2012,	17);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(159,	'Marley', 	'Male',   	'Bird',	        2023,	90);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(160,	'Ruby',   	'Female', 	'Turtle',	    2012,	25);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(161,	'Poppy',  	'Female', 	'Dog',	        2024,	87);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(162,	'Remi',   	'Male',   	'Dog',	        2012,	43);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(163,	'Buddy',  	'Male',   	'Cat',	        2010,	29);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(164,	'Peanut', 	'Female', 	'Bird',	        2023,	37);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(165,	'Molly',  	'Female', 	'Gecko',	    2008,	67);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(166,	'Chloe',  	'Female', 	'Dog',	        2016,	72);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(167,	'Koda',   	'Male',   	'Turtle',	    2019,	99);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(168,	'Toby',   	'Male',   	'Turtle',	    2016,	97);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(169,	'Abby',   	'Female', 	'Cat',	        2020,	70);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(170,	'Izzy',   	'Female', 	'Hamster',	    2018,	3);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(171,	'Bella',  	'Female', 	'Dog',	        2017,	60);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(172,	'Murphy', 	'Male',   	'Gecko',	    2005,	4);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(173,	'Lilly',  	'Male',   	'Cat',	        2010,	86);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(174,	'Piper',  	'Female', 	'Dog',	        2021,	3);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(175,	'Louie',  	'Male',   	'Hamster',	    2017,	48);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(176,	'Buster', 	'Male',   	'Hamster',	    2007,	44);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(177,	'Max',    	'Male',   	'Bird',	        2017,	23);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(178,	'Sadie',  	'Female', 	'Bird',	        2009,	50);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(179,	'Daisy',  	'Female', 	'Rabbit',	    2021,	65);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(180,	'Teddy',  	'Male',   	'Gecko',	    2023,	28);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(181,	'Millie', 	'Female', 	'Bird',	        2015,	56);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(182,	'Jake',   	'Male',   	'Rabbit',	    2010,	56);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(183,	'Hank',   	'Male',   	'Hamster',	    2022,	63);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(184,	'Buster', 	'Male',   	'Turtle',	    2015,	45);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(185,	'Gizmo',  	'Male',   	'Rabbit',	    2011,	8);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(186,	'Maggie', 	'Female', 	'Bird',	        2012,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(187,	'Lexi',   	'Female', 	'Gecko',	    2010,	49);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(188,	'Beau',   	'Female', 	'Gecko',	    2013,	66);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(189,	'Diesel', 	'Male',   	'Turtle',	    2023,	74);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(190,	'Nova',   	'Female', 	'Gecko',	    2010,	63);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(191,	'Lilly',  	'Male',   	'Gecko',	    2011,	64);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(192,	'Hazel',  	'Female', 	'Cat',	        2021,	66);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(193,	'Zoe',    	'Female', 	'Dog',	        2022,	9);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(194,	'Ace',    	'Male',   	'Gecko',	    2009,	72);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(195,	'Bruno',  	'Male',   	'Hamster',	    2016,	85);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(196,	'Beau',   	'Female', 	'Cat',	        2006,	6);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(197,	'Dixie',  	'Male',   	'Gecko',	    2021,	11);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(198,	'Maverick', 'Male',   	'Rabbit',	    2013,	70);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(199,	'Scout',  	'Male',   	'Rabbit',	    2016,	5);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(200,	'Bruno',  	'Male',   	'Dog',	        2019,	18);
--Null values for joining queries
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(201,	'Unknown',  'Male',   	'Dog',	        2019,	NULL);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(202,	'Unknown',  'Male',   	'Dog',	        2019,	NULL);
INSERT INTO animals (ID, name, gender, type, birth_year, owner_ID)
VALUES(203,	'Unknown',  'Male',   	'Dog',	        2019,	NULL);

--Declare inserts for owner table
--INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
--VALUES(ID, first_name, last_name, gender, address, zipcode);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(1,   'Theresa',      'Williams',     'Female',   '6360 Chypons Estate',      96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(2,   'Paul',         'Lee',          'Male',     '3950 Cwmbran Court',       44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(3,   'Bryan',        'Harris',       'Male',     '4465 Plank Houses',        21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(4,   'Karen',        'Allen',        'Female',   '7929 Far Common Road',     14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(5,   'Ryan',         'Clark',        'Male',     '7964 Kitching Lane',       17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(6,   'Nicole',       'Smith',        'Female',   '5646 Cossack Green',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(7,   'Pamela',       'Scott',        'Female',   '7964 Thurlow Garth',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(8,   'Philip',       'Wilson',       'Male',     '5804 Brights Close',      97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(9,   'Joshua',       'Lopez',        'Male',     '3950 Cwmbran Court',       44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(10,  'Alice',        'King',         'Female',   '7964 Beechlands Drive',    44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(11,  'Heather',      'Green',        'Female',   '7929 Whately Road',        17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(12,  'Aaron',        'Sanchez',      'Male',     '7964 Thurlow Garth',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(13,  'William',      'Lee',          'Male',     '7964 Beechlands Drive',    44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(14,  'Samuel',       'Wilson',       'Male',     '3950 Regatta Court',       97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(15,  'Andrew',       'Garcia',       'Male',     '4201 Almon Place',         17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(16,  'Keith',        'Rodriguez',    'Male',     '5990 Corsten Drive',       72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(17,  'Debra',        'Adams',        'Female',   '7929 Far Common Road',     14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(18,  'Grace',        'Adams',        'Female',   '1944 Glenugie Drive',      14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(19,  'Benjamin',     'Young',        'Male',     '5804 Brights Close',      97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(20,  'Ann',          'Mitchell',     'Female',   '5804 Clevehurst Close',    49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(21,  'Danielle',     'Robinson',     'Female',   '5990 Corsten Drive',       72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(22,  'Bruce',        'Walker',       'Male',     '3950 The Rowdens',         96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(23,  'Ronald',       'Green',        'Male',     '7929 Whately Road',        17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(24,  'John',         'Moore',        'Male',     '5897 Picts Lane',          52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(25,  'Julia',        'Roberts',      'Female',   '5990 Corsten Drive',       72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(26,  'Nicholas',     'Scott',        'Male',     '5646 Cossack Green',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(27,  'Brandon',      'Moore',        'Male',     '5804 Clevehurst Close',    49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(28,  'Betty',        'Perez',        'Female',   '5990 Knowlbank Road',      56241);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(29,  'Steven',       'Roberts',      'Male',     '2595 Dunnlynn Close',      72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(30,  'Donna',        'Rivera',       'Female',   '2595 Dunnlynn Close',      72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(31,  'Madison',      'Nelson',       'Female',   '4672 Kilsyth Avenue',      52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(32,  'Raymond',      'Lewis',        'Male',     '5804 Lifchild Close',      44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(33,  'Logan',        'Baker',        'Male',     '1944 Glenugie Drive',      14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(34,  'Nathan',       'Taylor',       'Male',     '7258 Fenshurst Gardens',   87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(35,  'Linda',        'Hill',         'Female',   '8897 Avern Gardens',       42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(36,  'Megan',        'Campbell',     'Female',   '7987 Harlescott Lane',     17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(37,  'Diana',        'Jackson',      'Female',   '4465 Bannerdale Close',    42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(38,  'Marilyn',      'Clark',        'Female',   '7964 Kitching Lane',       17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(39,  'Ashley',       'Torres',       'Female',   '6360 Chypons Estate',      96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(40,  'Denise',       'White',        'Female',   '3950 The Rowdens',         96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(41,  'Isabella',     'Thompson',     'Female',   '1156 Duchray Street',      87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(42,  'Sharon',       'Jones',        'Female',   '4465 Bannerdale Close',    42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(43,  'Shirley',      'Harris',       'Female',   '4465 Plank Houses',        21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(44,  'Eugene',       'Wright',       'Male',     '5804 Brights Close',      97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(45,  'Judy',         'Carter',       'Female',   '7964 Kitching Lane',       17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(46,  'Noah',         'Hernandez',    'Male',     '4465 Plank Houses',        21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(47,  'Billy',        'Campbell',     'Male',     '7987 Harlescott Lane',     17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(48,  'Larry',        'Thomas',       'Male',     '1156 Duchray Street',      87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(49,  'Austin',       'Brown',        'Male',     '7987 Harlescott Lane',     17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(50,  'Melissa',      'Lewis',        'Female',   '3950 Cwmbran Court',       44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(51,  'Jack',         'Hall',         'Male',     '7987 Rudolph Street',      21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(52,  'Amy',          'Taylor',       'Female',   '7258 Fenshurst Gardens',   87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(53,  'Kevin',        'Wright',       'Male',     '5804 Brights Close',      97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(54,  'Andrea',       'Flores',       'Female',   '7929 Whately Road',        17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(55,  'Rachel',       'Anderson',     'Female',   '7929 Far Common Road',     14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(56,  'Russell',      'King',         'Male',     '5804 Lifchild Close',      44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(57,  'Stephen',      'Martin',       'Male',     '5804 Clevehurst Close',    49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(58,  'Katherine',    'Nguyen',       'Female',   '4672 Kilsyth Avenue',      52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(59,  'Christopher',  'Martin',       'Male',     '5804 Lifchild Close',      44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(60,  'Jesse',        'Nguyen',       'Male',     '4672 Kilsyth Avenue',      52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(61,  'Gary',         'Davis',        'Male',     '1156 Hod Drive',           17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(62,  'Helen',        'Miller',       'Female',   '3808 Perth Square',        49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(63,  'Matthew',      'Williams',     'Male',     '3950 Regatta Court',       97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(64,  'Stephanie',    'Gonzalez',     'Female',   '1156 Hod Drive',           17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(65,  'Judith',       'Nelson',       'Female',   '5897 Picts Lane',          52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(66,  'Justin',       'Miller',       'Male',     '3808 Perth Square',        49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(67,  'Teresa',       'Thomas',       'Female',   '1156 Duchray Street',      87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(68,  'Elijah',       'Martinez',     'Male',     '3808 Perth Square',        49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(69,  'Nancy',        'Perez',        'Female',   '1944 The Churchills',      56241);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(70,  'Robert',       'Rodriguez',    'Male',     '5990 Corsten Drive',       72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(71,  'Carol',        'Young',        'Female',   '3950 Regatta Court',       97400);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(72,  'Bradley',      'Carter',       'Male',     '7964 Kitching Lane',       17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(73,  'Marie',        'Flores',       'Female',   '4201 Almon Place',         17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(74,  'Sandra',       'Ramirez',      'Female',   '1944 The Churchills',      56241);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(75,  'Ralph',        'Robinson',     'Male',     '2595 Dunnlynn Close',      72022);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(76,  'Peter',        'Hill',         'Male',     '8897 Avern Gardens',       42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(77,  'Alan',         'Jones',        'Male',     '3950 Cwmbran Court',       44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(78,  'Jacqueline',   'White',        'Female',   '6360 Chypons Estate',      96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(79,  'Kyle',         'Thompson',     'Male',     '7258 Fenshurst Gardens',   87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(80,  'Jordan',       'Baker',        'Male',     '1944 Glenugie Drive',      14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(81,  'George',       'Davis',        'Male',     '1156 Hod Drive',           17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(82,  'Juan',         'Hernandez',    'Male',     '4465 Plank Houses',        21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(83,  'Lisa',         'Hall',         'Female',   '7987 Rudolph Street',      21725);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(84,  'Victoria',     'Mitchell',     'Female',   '5897 Picts Lane',          52615);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(85,  'Sarah',        'Rivera',       'Female',   '1944 The Churchills',      56241);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(86,  'Jose',         'Sanchez',      'Male',     '5646 Cossack Green',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(87,  'Anthony',      'Johnson',      'Male',     '4465 Bannerdale Close',    42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(88,  'Douglas',      'Jackson',      'Male',     '4465 Bannerdale Close',    42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(89,  'Mason',        'Lopez',        'Male',     '7964 Beechlands Drive',    44856);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(90,  'David',        'Gonzalez',     'Male',     '4201 Almon Place',         17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(91,  'Emma',         'Garcia',       'Female',   '4201 Almon Place',         17854);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(92,  'Gabriel',      'Brown',        'Male',     '7987 Harlescott Lane',     17703);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(93,  'Evelyn',       'Ramirez',      'Female',   '5990 Knowlbank Road',      56241);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(94,  'Gregory',      'Martinez',     'Male',     '5804 Clevehurst Close',    49778);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(95,  'Arthur',       'Torres',       'Male',     '7258 Fenshurst Gardens',   87621);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(96,  'Frank',        'Anderson',     'Male',     '7929 Far Common Road',     14043);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(97,  'Dylan',        'Walker',       'Male',     '3950 The Rowdens',         96278);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(98,  'Cynthia',      'Smith',        'Female',   '7964 Thurlow Garth',       81534);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(99,  'Sophia',       'Johnson',      'Female',   '8897 Avern Gardens',       42770);
INSERT INTO owners (ID, first_name, last_name, gender, address, zipcode)
VALUES(100, 'Ruth',         'Allen',        'Female',   '7929 Far Common Road',     14043);

--Declare inserts for orders table
--INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
--VALUES(ID, animal_ID, owner_ID, type, cost, year, month, status);

INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(1,   147,    14,     'Shots',	49,	2006,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(2,   146,    39,     'Check up',	29,	2007,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(3,   147,    14,     'Check up',	29,	2007,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(4,   99,     12,     'Shots',	49,	2007,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(5,   146,    39,     'Check up',	29,	2008,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(6,   110,    18,     'Check up',	29,	2008,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(7,   165,    67,     'Shots',	49,	2009,	3,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(8,   28,     94,     'Check up',	29,	2009,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(9,   95,     75,     'Check up',	29,	2009,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(10,  140,    76,     'Shots',	49,	2010,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(11,  141,    16,     'Check up',	29,	2010,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(12,  152,    31,     'Shots',	49,	2010,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(13,  67,     17,     'Check up',	29,	2010,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(14,  135,    19,     'Shots',	49,	2011,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(15,  54,     25,     'Shots',	49,	2011,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(16,  127,    86,     'Shots',	49,	2011,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(17,  81,     6,      'Shots',	49,	2011,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(18,  152,    31,     'Check up',	29,	2011,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(19,  130,    12,     'Shots',	49,	2011,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(20,  81,     6,      'Check up',	29,	2011,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(21,  69,     28,     'Check up',	29,	2011,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(22,  151,    29,     'Shots',	49,	2011,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(23,  182,    56,     'Shots',	49,	2012,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(24,  151,    29,     'Check up',	29,	2012,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(25,  145,    25,     'Check up',	29,	2012,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(26,  101,    96,     'Shots',	49,	2012,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(27,  135,    19,     'Check up',	29,	2012,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(28,  147,    14,     'Check up',	29,	2012,	9,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(29,  101,    96,     'Check up',	29,	2012,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(30,  99,     12,     'Check up',	29,	2012,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(31,  108,    36,     'Shots',	49,	2012,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(32,  57,     23,     'Shots',	49,	2013,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(33,  134,    42,     'Shots',	49,	2013,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(34,  150,    100,    'Shots',	49,	2013,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(35,  16,     26,     'Shots',	49,	2013,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(36,  16,     26,     'Check up',	29,	2013,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(37,  88,     1,      'Shots',	49,	2013,	7,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(38,  76,     38,     'Check up',	29,	2013,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(39,  176,    44,     'Check up',	29,	2014,	2,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(40,  24,     15,     'Check up',	29,	2014,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(41,  129,    64,     'Shots',	49,	2014,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(42,  190,    63,     'Shots',	49,	2014,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(43,  127,    86,     'Check up',	29,	2014,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(44,  24,     15,     'Shots',	49,	2014,	12,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(45,  45,     66,     'Check up',	29,	2014,	12,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(46,  182,    56,     'Check up',	29,	2015,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(47,  182,    56,     'Check up',	29,	2015,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(48,  129,    64,     'Check up',	29,	2015,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(49,  127,    86,     'Check up',	29,	2015,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(50,  81,     6,      'Check up',	29,	2015,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(51,  63,     37,     'Check up',	29,	2015,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(52,  23,     86,     'Check up',	29,	2015,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(53,  19,     87,     'Shots',	49,	2015,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(54,  135,    19,     'Check up',	29,	2015,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(55,  40,     88,     'Check up',	29,	2015,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(56,  73,     35,     'Shots',	49,	2015,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(57,  89,     74,     'Check up',	29,	2015,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(58,  78,     38,     'Check up',	29,	2015,	11,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(59,  194,    72,     'Shots',	49,	2015,	11,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(60,  131,    21,     'Check up',	29,	2015,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(61,  140,    76,     'Check up',	29,	2015,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(62,  194,    72,     'Check up',	29,	2015,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(63,  56,     12,     'Shots',	49,	2016,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(64,  91,     39,     'Check up',	29,	2016,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(65,  44,     29,     'Check up',	29,	2016,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(66,  57,     23,     'Check up',	29,	2016,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(67,  185,    8,      'Shots',	49,	2016,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(68,  160,    25,     'Check up',	29,	2016,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(69,  136,    16,     'Shots',	49,	2016,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(70,  23,     86,     'Shots',	49,	2016,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(71,  176,    44,     'Check up',	29,	2016,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(72,  150,    100,    'Check up',	29,	2016,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(73,  191,    64,     'Check up',	29,	2017,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(74,  150,    100,    'Check up',	29,	2017,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(75,  22,     38,     'Check up',	29,	2017,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(76,  56,     12,     'Check up',	29,	2017,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(77,  144,    43,     'Shots',	49,	2017,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(78,  54,     25,     'Check up',	29,	2017,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(79,  38,     49,     'Check up',	29,	2017,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(80,  75,     37,     'Shots',	49,	2018,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(81,  11,     42,     'Shots',	49,	2018,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(82,  6,      34,     'Check up',	29,	2018,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(83,  8,      81,     'Check up',	29,	2018,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(84,  121,    84,     'Shots',	49,	2018,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(85,  187,    49,     'Check up',	29,	2018,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(86,  44,     29,     'Shots',	49,	2018,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(87,  16,     26,     'Check up',	29,	2018,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(88,  45,     66,     'Shots',	49,	2018,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(89,  15,     46,     'Shots',	49,	2018,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(90,  71,     67,     'Shots',	49,	2019,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(91,  58,     57,     'Shots',	49,	2019,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(92,  79,     2,      'Shots',	49,	2019,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(93,  139,    2,      'Shots',	49,	2019,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(94,  13,     82,     'Shots',	49,	2019,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(95,  77,     57,     'Check up',	29,	2019,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(96,  136,    16,     'Check up',	29,	2019,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(97,  40,     88,     'Shots',	49,	2019,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(98,  133,    53,     'Shots',	49,	2019,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(99,  112,    8,      'Shots',	49,	2019,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(100, 175,    48,     'Shots',	49,	2019,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(101, 6,      34,     'Shots',	49,	2020,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(102, 5,      96,     'Shots',	49,	2020,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(103, 139,    2,      'Check up',	29,	2020,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(104, 166,    72,     'Shots',	49,	2020,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(105, 58,     57,     'Check up',	29,	2020,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(106, 133,    53,     'Check up',	29,	2020,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(107, 136,    16,     'Check up',	29,	2020,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(108, 79,     2,      'Check up',	29,	2020,	10,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(109, 71,     67,     'Shots',	49,	2021,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(110, 158,    17,     'Shots',	49,	2021,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(111, 94,     70,     'Shots',	49,	2021,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(112, 13,     82,     'Check up',	29,	2021,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(113, 71,     67,     'Check up',	29,	2021,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(114, 64,     29,     'Check up',	29,	2021,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(115, 114,    99,     'Shots',	49,	2021,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(116, 186,    74,     'Check up',	29,	2022,	2,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(117, 153,    13,     'Shots',	49,	2022,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(118, 19,     87,     'Check up',	29,	2022,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(119, 171,    60,     'Shots',	49,	2022,	5,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(120, 56,     12,     'Check up',	29,	2022,	6,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(121, 166,    72,     'Check up',	29,	2022,	7,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(122, 118,    69,     'Shots',	49,	2022,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(123, 142,    100,    'Check up',	29,	2022,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(124, 36,     27,     'Shots',	49,	2022,	11,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(125, 143,    29,     'Check up',	29,	2022,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(126, 126,    14,     'Shots',	49,	2022,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(127, 80,     81,     'Check up',	29,	2022,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(128, 198,    70,     'Shots',	49,	2022,	12,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(129, 193,    9,      'Shots',	49,	2023,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(130, 119,    6,      'Check up',	29,	2023,	3,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(131, 6,      34,     'Check up',	29,	2023,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(132, 30,     57,     'Shots',	49,	2023,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(133, 32,     44,     'Shots',	49,	2023,	8,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(134, 107,    58,     'Shots',	49,	2023,	9,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(135, 188,    66,     'Check up',	29,	2023,	10,	'Pending Payment');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(136, 55,     38,     'Check up',	29,	2024,	1,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(137, 107,    58,     'Check up',	29,	2024,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(138, 66,     57,     'Shots',	49,	2024,	4,	'Paid');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(139, 33,     48,     'Shots',	49,	2024,	5,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(140, 29,     54,     'Check up',	29,	2024,	5,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(141, 115,    55,     'Shots',	49,	2024,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(142, 120,    93,     'Shots',	49,	2024,	10,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(143, 26,     15,     'Check up',	29,	2025,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(144, 94,     70,     'Check up',	29,	2025,	3,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(145, 104,    15,     'Shots',	49,	2025,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(146, 66,     57,     'Check up',	29,	2025,	7,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(147, 121,    84,     'Check up',	29,	2025,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(148, 125,    96,     'Shots',	49,	2025,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(149, 153,    13,     'Check up',	29,	2025,	10,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(150, 192,    66,     'Check up',	29,	2025,	11,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(151, 174,    3,      'Check up',	29,	2025,	11,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(152, 138,    44,     'Shots',	49,	2025,	11,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(153, 169,    70,     'Check up',	29,	2025,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(154, 34,     22,     'Shots',	49,	2026,	4,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(155, 48,     61,     'Shots',	49,	2026,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(156, 120,    93,     'Check up',	29,	2026,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(157, 177,    23,     'Check up',	29,	2026,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(158, 193,    9,      'Check up',	29,	2026,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(159, 34,     22,     'Check up',	29,	2026,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(160, 102,    70,     'Check up',	29,	2026,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(161, 171,    60,     'Check up',	29,	2026,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(162, 37,     47,     'Check up',	29,	2027,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(163, 120,    93,     'Check up',	29,	2027,	4,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(164, 30,     57,     'Check up',	29,	2027,	5,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(165, 125,    96,     'Check up',	29,	2027,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(166, 51,     74,     'Check up',	29,	2027,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(167, 114,    99,     'Check up',	29,	2027,	10,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(168, 26,     15,     'Shots',	49,	2028,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(169, 125,    96,     'Check up',	29,	2028,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(170, 179,    65,     'Shots',	49,	2028,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(171, 96,     52,     'Shots',	49,	2028,	7,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(172, 49,     32,     'Shots',	49,	2028,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(173, 34,     22,     'Check up',	29,	2028,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(174, 10,     7,      'Shots',	49,	2028,	11,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(175, 124,    75,     'Check up',	29,	2028,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(176, 36,     27,     'Check up',	29,	2029,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(177, 96,     52,     'Check up',	29,	2029,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(178, 104,    15,     'Check up',	29,	2029,	7,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(179, 174,    3,      'Check up',	29,	2029,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(180, 125,    96,     'Check up',	29,	2030,	1,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(181, 138,    44,     'Check up',	29,	2030,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(182, 26,     15,     'Check up',	29,	2030,	4,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(183, 122,    41,     'Shots',	49,	2030,	5,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(184, 192,    66,     'Check up',	29,	2030,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(185, 49,     32,     'Check up',	29,	2030,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(186, 4,      3,      'Check up',	29,	2030,	9,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(187, 179,    65,     'Check up',	29,	2030,	10,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(188, 21,     66,     'Check up',	29,	2030,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(189, 161,    87,     'Check up',	29,	2031,	6,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(190, 115,    55,     'Check up',	29,	2031,	7,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(191, 138,    44,     'Check up',	29,	2031,	7,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(192, 21,     66,     'Shots',	49,	2031,	10,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(193, 104,    15,     'Check up',	29,	2031,	11,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(194, 87,     49,     'Check up',	29,	2031,	12,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(195, 52,     4,      'Check up',	29,	2032,	2,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(196, 4,      3,      'Shots',	49,	2032,	4,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(197, 159,    90,     'Check up',	29,	2032,	4,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(198, 50,     13,     'Check up',	29,	2032,	5,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(199, 50,     13,     'Check up',	29,	2033,	8,	'Scheduled');
INSERT INTO orders (ID, animal_ID, owner_ID, type, cost, year, month, status)
VALUES(200, 59,     30,     'Shots',	49,	2034,	10,	'Scheduled');