-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: Game_System
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `cod` int NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `genre` int NOT NULL,
  `producer` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `rate` decimal(4,2) NOT NULL,
  `cover` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `genre` (`genre`),
  KEY `producer` (`producer`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genres` (`cod`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `producers` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Mario Odissey',2,3,'In Super Mario Odyssey, the player plays as Mario on his adventures through lands beyond the Mushroom Kingdom with the help of a new character introduced to the game, Cappy. This \"living hat\" guarantees a new addition to the difficulty and dynamics already seen in previous games, because in addition to being a form of attack in addition to your traditional jump, it also gives the ability to \"capture\" charismatic enemies from the series and some objects. The new mechanic works as follows: by shaking the Joy-Cons or pressing a simple button, Cappy is thrown and returns to Mario s head automatically, only if he does not touch something he can interact with. There are also several other simple movements with the Joy-Cons that make the hat go around the scene in different ways, being useful in several ways, such as the possibility of collecting coins and eliminating enemies around you faster. Mechanics already seen previously such as \"Ground Pound\" and \"Wall Jump\" are also present in the game.',9.50,'mario.png'),(2,'Call of Dutty: Black Ops',1,5,'Call of Duty: Black Ops is a first-person shooter video game developed by Treyarch, published by Activision and released worldwide on November 9, 2010 for Microsoft Windows, Xbox 360, PlayStation 3, Wii, and Nintendo DS platforms. Announced on April 30, 2010, the game is the seventh installment in the Call of Duty series, and the first set during the Cold War. It is the third in the series to be developed by Treyarch, being a direct sequel to Call of Duty: World at War.\r\n\r\nIn its first 24 hours of release, the game sold over 5.6 million units, 4.2 million in the US and 1.4 million in the UK, beating the record set by its predecessor, Modern Warfare 2, at approximately 2.3 million copies. On May 1, 2012, the sequel Call of Duty: Black Ops II was revealed with a November 2012 release.',3.50,'cod.png'),(3,'League of Legends',1,2,'League of Legends abbreviated as RPG is a multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and Mac OS X. It is a free-to-play game inspired by the Defense of the Ancients mode of Warcraft III: The Frozen Throne.\r\n\r\nIn League of Legends, players take on the role of \"summoners\", controlling champions with unique abilities and who fight with their team against other summoners or computer-controlled champions. In the game`s most popular mode, each team`s objective is to destroy the opposing team`s nexus, a building located at the base and protected by other structures. Each game of League of Legends is distinct, as champions always start out weak and progress through accumulating gold and experience over the course of the match.',8.50,'lol.png'),(4,'Donkey Kong Tropical Freeze',2,3,'Donkey Kong Country: Tropical Freeze is a side-scrolling platform video game developed by Retro Studios that was published by Nintendo for the Wii U on February 21, 2014 in the United States. The seventeenth game in the series, and the first in high definition, follows the 2010 game Donkey Kong Country Returns, also by Retro Studios. It was announced during Nintendo`s E3 2013 pre-conference on June 11, 2013. The game`s story focuses on a group of Viking creatures, such as walruses, owls and penguins, that invade Donkey Kong Island, forcing the protagonist Donkey Kong to fight back. them with the help of their friends Diddy Kong and Dixie Kong, the latter making her first appearance in the series since Donkey Kong Country 3: Dixie Kongs Double Trouble, released in 1996. Even the old Cranky Kong joined in on the adventure.',8.00,'donkey.png'),(5,'Sonic the Hedgehog',2,7,'Sonic the Hedgehog is a video game franchise created and produced by Sega. The franchise is centered around a series of speed-focused platform games. The protagonist of the series is a blue hedgehog named Sonic, whose peaceful life is always interrupted by the main antagonist of the series, Dr. Eggman. Typically Sonic - usually along with one of his friends such as Tails, Amy and Knuckles - venture out to stop Eggman and his plans for world domination. The first game in the series, released in 1991, was conceived by Sega`s division Sonic Team after a request for a new mascot. The title was a hit, and was renewed for several sequels, which took Sega to the forefront of the 16-bit era video game consoles from the early to mid-90s.',8.50,'sonic.png'),(6,'God of War',1,4,'God of War is an action-adventure video game series loosely based on Greek mythology created by David Jaffe. Started in 2005, the series has become the flagship for the PlayStation brand, which consists of seven games across multiple platforms. An eighth title is in development; will be a soft reboot for the series and will be based on Norse mythology. The story centers around its playable character, Kratos, a Spartan warrior tricked into killing his wife and daughter by his former master, the god of war Ares. Kratos kills Ares at the behest of the goddess Athena and takes his place as the new god of war, but is still haunted by nightmares from his past. Revealed to be a demigod and son of Zeus, the king of the Olympian gods, who betrays Kratos. The Spartan then seeks revenge on the gods for their machinations. What follows is a series of attempts to break free from the influence of the gods and the titans and revenge. Each game is part of a saga with revenge as a central motif.',9.50,'gow.png'),(7,'Counter-Strike',1,11,'Counter-Strike (also abbreviated as CS) is a popular first-person shooter video game. Initially created as a Half-Life \"mod\" for online games, it was developed by Minh Le and Jess Cliffe and later acquired by Valve Corporation. It was released in 1999, but in 2000 it began to be officially marketed, and later versions were made for Xbox, Mac OS X and Linux. Currently the game is played in the Counter-Strike: Global Offensive version. The game is based on rounds in which teams of counter-terrorists and terrorists fight each other until the complete elimination of one of the teams, and its main objective is to plant and defuse bombs. , or kidnap and save hostages.\r\n\r\nCounter-Strike was one of those responsible for the massification of network games at the beginning of the century, being considered the main responsible for the popularization of LAN houses in the world. The game is considered to be the originator of \"e-sports\", where many players take it seriously and receive fixed salaries, there are even professional clans, and which are sponsored by large companies such as Intel and NVIDIA. Around the world there are professional leagues where Counter-Strike is present, such as the CPL (which ended its activities in 2008), ESWC, ESL, WCG and WEG. In the case of ESWC it works as follows: each country has its qualifications in which any clan can go to a qualification in a lan house in any part of the same country, then moving on to the best teams, the best teams from each country are then at the ESWC complex, located in Paris, to compete for the best Counter-Strike team in the world.',9.00,'cs.png'),(8,'Resident Evil 6',3,14,'Resident Evil 6, known as Biohazard 6 in Japan, is a third-person action video game developed and published by Capcom. Despite its name, it is the ninth game in the Resident Evil main series and was released on October 2, 2012 for PlayStation 3 and Xbox 360. The Microsoft Windows version was released on March 22, 2013. The game also gained a version for PlayStation 4 and Xbox One on March 29, 2016.\r\n\r\nThe story is told from the perspectives of Chris Redfield, BSAA member and founder traumatized by failing on a mission; Leon S. Kennedy, a Raccoon City survivor and government special agent; Jake Muller, illegitimate son of Albert Wesker and associate of Sherry Birkin; and Ada Wong, a lone agent with ties to Neo-Umbrella`s bio-terrorist attacks.\r\n\r\nThe game`s concept began in 2009, but production began the following year under the supervision of Hiroyuki Kobayashi, who had already produced Resident Evil 4. The production team eventually grew to become the largest ever working on a Resident Evil game. Resident Evil 6 was featured during a viral outreach campaign on the NoHopeLeft.com page.',7.50,'resident.png'),(9,'Grand Theft Auto V',2,13,'Grand Theft Auto V is an action-adventure video game developed by Rockstar North and published by Rockstar Games. It is the seventh main title in the Grand Theft Auto series and was originally released on September 17, 2013 for PlayStation 3 and Xbox 360, with remasters released on November 18, 2014 for PlayStation 4 and Xbox One, and on April 14, 2015. for Microsoft Windows. The game takes place in the fictional state of San Andreas, with the story of the single player campaign following three criminals and their efforts to carry out heists under the pressure of a government agency. The open world allows players to freely navigate the rural and urban areas of San Andreas.\r\n\r\nGameplay is shown in a third-person perspective and the world can be traversed on foot or with vehicles. Players control three protagonists and can switch between them during and outside of missions. The story is centered around heist sequences, with many missions involving shooting and driving gameplay. A \"wanted\" system defines the response and aggressiveness of law enforcement against crimes committed by the player. The multiplayer mode, Grand Theft Auto Online, allows up to thirty players to explore the world and engage in competitive or cooperative matches.',9.50,'gta.png'),(10,'Metal Gear Solid V',6,9,'Metal Gear Solid V: The Phantom Pain is a stealth action-adventure video game with RPG elements, produced by Kojima Productions and directed, designed, co-produced and co-written by Hideo Kojima. It was published by Konami for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360 and Xbox One on September 1, 2015. The Phantom Pain is the eighth canonical title in the Metal Gear series and the sixth within its fictional timeline. The game serves as a sequel to Metal Gear Solid V: Ground Zeroes, but its story predates the events that took place in the original Metal Gear game. It contains the same subtitle, Tactical Espionage Operations, first used in Metal Gear Solid: Peace Walker. The action takes place in 1984, nine years after Ground Zeroes, and follows Punished mercenary \"Venom\" Snake as he ventures into Africa (during the Angolan Civil War, on the Angola-Zaire border) and Afghanistan. during the Soviet-Afghan War, to seek revenge on the people who destroyed his forces and who nearly killed him during the events that took place at Ground Zeroes.',8.50,'metal.png'),(11,'Assassins Creed III',1,10,'Assassin`s Creed III is an action-adventure game produced by Ubisoft and published by Ubisoft during the months of October and November 2012 for Wii U, Xbox 360, PlayStation 3 and Microsoft Windows. It is the fifth main game in the Assassin`s Creed series and its third numbered title. Assassins Creed III is the direct sequel to 2011`s Assassins Creed: Revelations.\r\n\r\nThe plot takes place in a fictional story set within real events and follows the ancient battle between the Assassins, who fight for freedom, and the Templars. , who wish to control humanity. The plot takes place in the 21st century where Desmond Miles, the protagonist of the series, with the help of a machine known as the Animus, relives the memories of his ancestors to help him discover a way to prevent the Apocalypse of 2012. The main story unfolds. unfolds before, during and after the American Revolution between 1765 and 1783 and follows Desmond`s ancestor of Mohawk and English descent, Ratonhnhaké:ton, also known as Connor, as he fights the Templars attempts to control the new nation.',7.50,'assassin.png');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `cod` int NOT NULL,
  `genre` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Adventure'),(3,'Horror'),(4,'Platform'),(5,'Strategy'),(6,'RPG'),(7,'Sport'),(8,'Race'),(9,'Board'),(10,'Puzzle'),(11,'Fight'),(12,'Musical');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
  `cod` int NOT NULL,
  `producer` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (1,'Microsoft','USA'),(2,'Tencent','China'),(3,'Nintendo','Japan'),(4,'Sony','Japan'),(5,'Activision','USA'),(6,'EA','USA'),(7,'Sega','Japan'),(8,'Namco Bandai','Japan'),(9,'Konami','Japan'),(10,'Ubisoft','USA'),(11,'Valve','USA'),(12,'Square Enix','Japan'),(13,'Take Two','USA'),(14,'Capcom','Japan');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_game`
--

DROP TABLE IF EXISTS `users_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_game` (
  `users` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `name_user` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `passwd` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_user` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'editor',
  PRIMARY KEY (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_game`
--

LOCK TABLES `users_game` WRITE;
/*!40000 ALTER TABLE `users_game` DISABLE KEYS */;
INSERT INTO `users_game` VALUES ('admin','Andre Rodriguez Sabino','$2y$10$UpMQCcir.v649HrdLvUXiOC/ftU7xWhSxm8QhX.VzSe9LZHhvW/Ty','admin'),('teste','Lucas Rodriguez Sarti','$2y$10$w7on7cjLKNtmJUGkiHIXoOQAwTJzkgxXqLmjtfDUkCXmQK0784.IS','editor');
/*!40000 ALTER TABLE `users_game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-20 11:10:31
