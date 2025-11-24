CREATE DATABASE my_movies;                                                

                                        -- Actors table 

CREATE TABLE actors (
  actor_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  birth_year INTEGER DEFAULT NULL
);

INSERT INTO actors (actor_id, name, birth_year) VALUES 
(50,'Yash',1986),
(51,'Sanjay Dutt',1959),
(52,'Benedict Cumberbatch',1976),
(53,'Elizabeth Olsen',1989),
(54,'Chris Hemsworth',1983),
(55,'Natalie Portman',1981),
(56,'Tom Hiddleston',1981),
(57,'Amitabh Bachchan',1942),
(58,'Jaya Bachchan',1948),
(59,'Shah Rukh Khan',1965),
(60,'Kajol',1974),
(61,'Aamir Khan',1965),
(62,'R. Madhavan',1970),
(63,'Sharman Joshi',1979),
(64,'Hrithik Roshan',1974),
(65,'Ranveer Singh',1985),
(66,'Deepika Padukone',1986),
(67,'Tim Robbins',1958),
(68,'Morgan Freeman',1937),
(69,'Leonardo DiCaprio',1974),
(70,'Ken Watanabe',1959),
(71,'Matthew McConaughey',1969),
(72,'Anne Hathaway',1982),
(73,'John David Washington',1984),
(74,'Robert Pattinson',1986),
(75,'Will Smith',1968),
(76,'Thandiwe Newton',1972),
(77,'Russell Crowe',1964),
(78,'Joaquin Phoenix',1974),
(79,'Kate Winslet',1975),
(80,'James Stewart',1908),
(81,'Donna Reed',1921),
(82,'Sam Worthington',1976),
(83,'Zoe Saldana',1978),
(84,'Marlon Brando',1924),
(85,'Al Pacino',1940),
(86,'Christian Bale',1974),
(87,'Heath Ledger',1979),
(88,'Liam Neeson',1952),
(89,'Ben Kingsley',1943),
(90,'Sam Neill',1947),
(91,'Laura Dern',1967),
(92,'Song Kang-ho',1967),
(93,'Lee Sun-kyun',1975),
(94,'Robert Downey Jr.',1965),
(95,'Chris Evans',1981),
(150,'Kanu Banerjee',1905),
(151,'Karuna Banerjee',1919),
(152,'Darsheel Safary',1997),
(153,'Sunil Dutt',1929),
(154,'Anushka Sharma',1988),
(155,'Ranbir Kapoor',1982),
(156,'Allu Arjun',1982),
(157,'Fahadh Faasil',1982),
(158,'N. T. Rama Rao Jr.',1983),
(159,'Ram Charan',1985),
(160,'Prabhas',1979),
(161,'Rana Daggubati',1984),
(162,'Mithun Chakraborty',1950),
(163,'Anupam Kher',1955),
(164,'Salman Khan',1964),
(165,'Nawazuddin Siddiqui',1967),
(166,'Tommy Lee Jones',1946),
(167,'Sebastian Stan',1982),
(168,'Anil Kapoor',1956),
(169,'Sidharth Malhotra',1985),
(170,'Kiara Advani',1991);
CREATE INDEX idx_actors_name ON actors(name);

SELECT * FROM ACTORS;

                                                      -- Financials table 


CREATE TABLE financials (
  budget INTEGER PRIMARY KEY,
  financialscol DECIMAL(10,2) DEFAULT NULL,
  revenue DECIMAL(10,2) DEFAULT NULL,
  unit VARCHAR(20) DEFAULT NULL,
  currency CHAR(3) DEFAULT NULL
);
INSERT INTO financials (budget, financialscol, revenue, unit, currency) VALUES 
(101,1.00,12.50,'Billions','INR'),
(102,200.00,954.80,'Millions','USD'),
(103,165.00,644.80,'Millions','USD'),
(104,180.00,854.00,'Millions','USD'),
(105,250.00,670.00,'Millions','USD'),
(107,400.00,2000.00,'Millions','INR'),
(108,550.00,4000.00,'Millions','INR'),
(109,390.00,1360.00,'Millions','INR'),
(110,1.40,3.50,'Billions','INR'),
(111,25.00,73.30,'Millions','USD'),
(113,165.00,701.80,'Millions','USD'),
(114,205.00,365.30,'Millions','USD'),
(115,55.00,307.10,'Millions','USD'),
(116,103.00,460.50,'Millions','USD'),
(117,200.00,2202.00,'Millions','USD'),
(118,3.18,3.30,'Millions','USD'),
(119,237.00,2847.00,'Millions','USD'),
(120,7.20,291.00,'Millions','USD'),
(121,185.00,1006.00,'Millions','USD'),
(122,22.00,322.20,'Millions','USD'),
(123,63.00,1046.00,'Millions','USD'),
(124,15.50,263.10,'Millions','USD'),
(125,400.00,2798.00,'Millions','USD'),
(126,400.00,2048.00,'Millions','USD'),
(127,70000.00,100000.00,'Thousands','INR'),
(128,120.00,1350.00,'Millions','INR'),
(129,100.00,410.00,'Millions','INR'),
(130,850.00,8540.00,'Millions','INR'),
(131,1.00,5.90,'Billions','INR'),
(132,2.00,3.60,'Billions','INR'),
(133,5.50,12.00,'Billions','INR'),
(134,1.80,6.50,'Billions','INR'),
(135,250.00,3409.00,'Millions','INR'),
(136,900.00,11690.00,'Millions','INR'),
(137,216.70,370.60,'Millions','USD'),
(138,177.00,714.40,'Millions','USD'),
(139,1.80,3.10,'Billions','INR'),
(140,500.00,950.00,'Millions','INR'),
(406,30.00,350.00,'Millions','INR'),
(412,160.00,836.80,'Millions','USD');
SELECT * FROM FINANCIALS;



                                               -- Languages table 

CREATE TABLE languages (
  language_id SERIAL PRIMARY KEY,
  name VARCHAR(45) DEFAULT NULL UNIQUE
);

INSERT INTO languages (language_id, name) VALUES 
(7,'Bengali'),
(5,'English'),
(6,'French'),
(8,'Gujarati'),
(1,'Hindi'),
(3,'Kannada'),
(4,'Tamil'),
(2,'Telugu');

select * from languages;


                                                      -- Movies table

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  industry VARCHAR(45) DEFAULT NULL,
  release_year INTEGER DEFAULT NULL,
  imdb_rating DECIMAL(3,1) DEFAULT NULL,
  studio VARCHAR(45) DEFAULT NULL,
  language_id INTEGER NOT NULL,
  director VARCHAR(45) DEFAULT NULL,
  FOREIGN KEY (language_id) REFERENCES languages(language_id)
);

CREATE INDEX idx_movies_title ON movies(title);
CREATE INDEX idx_movies_language_id ON movies(language_id);

INSERT INTO movies (movie_id, title, industry, release_year, imdb_rating, studio, language_id, director) VALUES 
(101,'K.G.F: Chapter 2','Bollywood',2022,8.4,'Hombale Films',3,NULL),
(102,'Doctor Strange in the Multiverse of Madness','Hollywood',2022,7.0,'Marvel Studios',5,NULL),
(103,'Thor: The Dark World ','Hollywood',2013,6.8,'Marvel Studios',5,NULL),
(104,'Thor: Ragnarok ','Hollywood',2017,7.9,'Marvel Studios',5,NULL),
(105,'Thor: Love and Thunder ','Hollywood',2022,6.8,'Marvel Studios',5,NULL),
(106,'Sholay','Bollywood',1975,8.1,'United Producers',1,NULL),
(107,'Dilwale Dulhania Le Jayenge','Bollywood',1995,8.0,'Yash Raj Films',1,NULL),
(108,'3 Idiots','Bollywood',2009,8.4,'Vinod Chopra Films',1,NULL),
(109,'Kabhi Khushi Kabhie Gham','Bollywood',2001,7.4,'Dharma Productions',1,NULL),
(110,'Bajirao Mastani ','Bollywood',2015,7.2,'',1,NULL),
(111,'The Shawshank Redemption','Hollywood',1994,9.3,'Castle Rock Entertainment',5,NULL),
(112,'Inception','Hollywood',2010,8.8,'Warner Bros. Pictures',5,NULL),
(113,'Interstellar','Hollywood',2014,8.6,'Warner Bros. Pictures',5,NULL),
(115,'The Pursuit of Happyness','Hollywood',2006,8.0,'Columbia Pictures',5,NULL),
(116,'Gladiator','Hollywood',2000,8.5,'Universal Pictures  ',5,NULL),
(117,'Titanic','Hollywood',1997,7.9,'Paramount Pictures',5,NULL),
(118,'It''s a Wonderful Life','Hollywood',1946,8.6,'Liberty Films',5,NULL),
(119,'Avatar','Hollywood',2009,7.8,'20th Century Fox',5,NULL),
(120,'The Godfather','Hollywood',1972,9.2,'Paramount Pictures',5,NULL),
(121,'The Dark Knight','Hollywood',2008,9.0,'Syncopy',5,NULL),
(122,'Schindler''s List','Hollywood',1993,9.0,'Universal Pictures',5,NULL),
(123,'Jurassic Park','Hollywood',1993,8.2,'Universal Pictures',5,NULL),
(124,'Parasite','Hollywood',2019,8.5,'',5,NULL),
(125,'Avengers: Endgame','Hollywood',2019,8.4,'Marvel Studios',5,NULL),
(126,'Avengers: Infinity War','Hollywood',2018,8.4,'Marvel Studios',5,NULL),
(127,'Pather Panchali','Bollywood',1955,8.3,'Government of West Bengal',7,NULL),
(128,'Taare Zameen Par','Bollywood',2007,8.3,'',1,NULL),
(129,'Munna Bhai M.B.B.S.','Bollywood',2003,8.1,'Vinod Chopra Productions',1,NULL),
(130,'PK','Bollywood',2014,8.1,'Vinod Chopra Films',1,NULL),
(131,'Sanju','Bollywood',2018,NULL,'Vinod Chopra Films',1,NULL),
(132,'Pushpa: The Rise - Part 1','Bollywood',2021,7.6,'Mythri Movie Makers',2,NULL),
(133,'RRR','Bollywood',2022,8.0,'DVV Entertainment',2,NULL),
(134,'Baahubali: The Beginning','Bollywood',2015,8.0,'Arka Media Works',2,NULL),
(135,'The Kashmir Files','Bollywood',2022,8.3,'Zee Studios',1,NULL),
(136,'Bajrangi Bhaijaan','Bollywood',2015,8.1,'Salman Khan Films',1,NULL),
(137,'Captain America: The First Avenger','Hollywood',2011,6.9,'Marvel Studios',5,NULL),
(138,'Captain America: The Winter Soldier','Hollywood',2014,7.8,'Marvel Studios',5,NULL),
(139,'Race 3','Bollywood',2018,1.9,'Salman Khan Films',1,NULL),
(140,'Shershaah','Bollywood',2021,8.4,'Dharma Productions',1,NULL);

SELECT * FROM movies;



	                                      -- Movie_Actor junction table 

CREATE TABLE movie_actor (
  actor_id INTEGER NOT NULL,
  movie_id INTEGER NOT NULL,
  PRIMARY KEY (actor_id, movie_id),
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE INDEX idx_movie_actor_movie_id ON movie_actor(movie_id);

INSERT INTO movie_actor (actor_id, movie_id) VALUES 
(50,101),(51,101),(52,102),(53,102),(54,103),(55,103),(56,103),(54,104),
(56,104),(54,105),(55,105),(57,106),(58,106),(59,107),(60,107),(61,108),
(62,108),(63,108),(57,109),(59,109),(64,109),(65,110),(66,110),(67,111),
(68,111),(69,112),(70,112),(71,113),(72,113),(75,115),(76,115),(77,116),
(78,116),(69,117),(79,117),(80,118),(81,118),(82,119),(83,119),(84,120),
(85,120),(86,121),(87,121),(88,122),(89,122),(90,123),(91,123),(92,124),
(93,124),(54,125),(94,125),(95,125),(54,126),(94,126),(95,126),(150,127),
(151,127),(61,128),(152,128),(51,129),(153,129),(61,130),(154,130),(154,131),
(155,131),(156,132),(157,132),(158,133),(159,133),(160,134),(161,134),(162,135),
(163,135),(164,136),(165,136),(95,137),(166,137),(95,138),(167,138),(164,139),
(168,139),(169,140),(170,140);

SELECT * FROM MOVIE_ACTOR;







