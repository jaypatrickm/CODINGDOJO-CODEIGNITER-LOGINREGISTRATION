CREATE DATABASE  IF NOT EXISTS `codingdojo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `codingdojo`;
-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: codingdojo
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id_idx` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (6,3,20,'Hello Harry!','2015-04-20 00:05:49','2015-04-20 00:05:49'),(7,3,17,'Harry, i love the coding dojo too!','2015-04-20 01:48:17','2015-04-20 01:48:17'),(8,3,13,'Hey Jaypatrick and Hermione! nice to see you on here!','2015-04-20 01:49:12','2015-04-20 01:49:12'),(9,3,21,'Hey don\'t forget about me!','2015-04-20 01:50:07','2015-04-20 01:50:07'),(10,2,21,'Nice Jay!','2015-04-20 01:50:14','2015-04-20 01:50:14'),(11,5,13,'I love you Ron!','2015-04-20 01:50:40','2015-04-20 01:50:40'),(12,7,22,'No you don\'t!','2015-04-20 17:13:26','2015-04-20 17:13:26');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (5,'Jquery','The easy stuff for javascript. ','2015-04-24 15:40:18','2015-04-24 15:40:18'),(8,'How to Algorithm','A class covering the fundamentals of problem solving!','2015-04-26 22:04:34','2015-04-26 22:04:34'),(9,'Introduction to Javascript','The first class about javascript. ','2015-04-26 22:08:28','2015-04-26 22:08:28'),(10,'Beginners class to web design','A class covering html and css','2015-04-26 22:10:47','2015-04-26 22:10:47'),(11,'CSS or Cascading Style Sheets','The design part of web design.','2015-04-26 22:15:56','2015-04-26 22:15:56'),(12,'What is MVC and How does one use it?','','2015-04-26 22:22:47','2015-04-26 22:22:47'),(13,'CSS II : Implementing SASS/LESS','An expanded view of css and working with css frameworks.','2015-04-29 16:23:11','2015-04-29 16:23:11'),(14,'To Delete Me Course','A class to delete for when Kris gets here.','2015-04-29 16:23:44','2015-04-29 16:23:44');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (2,19,'Let\'s test with using \"quotes.\" Because now I\'ve added a way to fix this... hopefully.. \" \" \" \" EAT THAT QUOTES!','2015-04-19 23:17:07','2015-04-19 23:17:07'),(3,13,'I\'m harry potter! I love the coding dojo!','2015-04-19 23:21:12','2015-04-19 23:21:12'),(4,20,'It\'s Levi-OOOOH-sa not LevioSAH','2015-04-19 23:23:25','2015-04-19 23:23:25'),(5,21,'Hello everyone, I\'m Ron Weasley!','2015-04-20 01:49:53','2015-04-20 01:49:53'),(7,19,'I make lame jokes!','2015-04-20 08:07:03','2015-04-20 08:07:03'),(8,22,'I\'ve made a huge mistake.','2015-04-20 17:13:19','2015-04-20 17:13:19'),(9,22,'can i delete this?','2015-04-20 17:24:22','2015-04-20 17:24:22');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Mega Mouse 2.0','A two handed mouse for expert selection.',15.99,'2015-04-27 00:12:59','2015-04-27 03:49:20'),(2,'Desk Fountain','A place for computer ducks to rest.',17.99,'2015-04-27 00:14:30','2015-04-27 00:14:30'),(4,'Head Cream','For headaches. Trust us. Really.',14.99,'2015-04-27 01:36:11','2015-04-27 03:49:43'),(5,'Volleyball Stilts','Take your game to the next level, with these new shoe add-ons!',27.99,'2015-04-27 01:40:14','2015-04-27 01:40:14'),(9,'Finger Sponges','Individual sponges for each finger. Clean as you type!',17.99,'2015-04-27 04:10:02','2015-04-27 04:10:02'),(10,'Cheesecake','Creamy milky delicious cheesecake!',10.99,'2015-04-27 04:10:46','2015-04-27 04:10:46'),(11,'Jacket','Coding dojo jacket',45.00,'2015-04-27 04:19:46','2015-04-27 04:19:46'),(12,'Contact Lens Keyboard','The keys are printed on your contacts, so you never have to look down again!',17.99,'2015-04-27 13:31:30','2015-04-27 13:31:38');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,'Jay','I make the lamest jokes.','2015-04-17 18:00:22','2015-04-17 18:00:22'),(2,'Hagrid','Yer a wizard harry','2015-04-17 18:01:23','2015-04-17 18:01:23'),(3,'Harry Potter','Alohomora!!!','2015-04-17 18:15:01','2015-04-17 18:15:01'),(4,'Hermione Granger','Honestly, don\'t you two read?','2015-04-17 18:43:53','2015-04-17 18:43:53'),(5,'Ron Weasley','Whot?','2015-04-17 18:44:21','2015-04-17 18:44:21'),(6,'Speros','This quote has a won\\\'t and a cool \\\"quote\\\" from \\\' stuff.','2015-04-17 18:47:02','2015-04-17 18:47:02'),(7,'jay','this is a new quote','2015-04-17 20:47:33','2015-04-17 20:47:33');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salt` varchar(44) NOT NULL,
  `password` varchar(32) NOT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'harry','potter','hpotter@gmail.com','e936dde122d2c95fff439f4720152f7194e761523133','353b071c268105cbd716d85448b7f278','','','2015-04-19 21:04:43','2015-04-19 21:04:43'),(17,'jaypatrick','manalansan','jaypatrickm@gmail.com','0200bc3a271e843af20403fd087b5448b25815ca88c1','a8e0b74b6ff47b1093bf92a69bc7fc9c','11/17/1988','squirtle.jpg','2015-04-19 21:50:02','2015-04-19 21:50:02'),(19,'jay','manalansan','jay@gmail.com','031a27035ad24f06418a8debfc9a00e357a16a6c5258','71d0ee2706f68c85ab50cb3e07b79202','','','2015-04-19 21:57:42','2015-04-19 21:57:42'),(20,'hermione','granger','hgranger@gmail.com','bbeb74533b2a4e263001f703e35bd2a612c7743ccd35','9b7e61d369a521822eaf68b98699f40c','','','2015-04-19 23:21:47','2015-04-19 23:21:47'),(21,'Ron','Weasley','rweasley@yahoo.com','8e042612ddba8f68533fbad426216ced3db3fe9afe76','12d9795e6ecaf44b7cc470d4736e6a49','','','2015-04-20 01:49:36','2015-04-20 01:49:36'),(22,'Rubeus','Hagrid','rhagrid@gmail.com','8b2296af2ae4e63a16e6b01baa1e4661747c6c609a73','89686f5829aaf60c43699b923b210179','','','2015-04-20 08:57:38','2015-04-20 08:57:38'),(23,'michael','scott','mscott@theoffice.com','69b7295f8e6fe06fae3ee2e867ad60e078654311d2ba','18d7eab34f6ab030260b29d35758dae3','','','2015-04-27 13:25:37','2015-04-27 13:25:37'),(24,'Ash','Ketchum','aketchum@pokemon.com','12041cdd0ccb408b7bf72a6ba50cc0e3c6babfb30c51','188b1160107cb288e748aee9d69c3fa6','','','2015-04-29 16:25:08','2015-04-29 16:25:08'),(25,'jay','manalansan','jaetotherescue@gmail.com','37cf06379070d098694e28c73fbc5a64f681f7f04755','fa2a7bb5602ddb819333b4af37911234','','','2015-04-29 16:32:22','2015-04-29 16:32:22'),(26,'jay','manalansan','spacejay@gmail.com','135d2557ba05233756bc211297436609332fcbc61b7a','17805d4ac4e879eb8444abbaa58273e4','','','2015-04-29 16:33:57','2015-04-29 16:33:57'),(27,'jay','manalansan','jay@pokemon.com','cdb7c9f72c796bb5babcc1b94826258ad363556eaa22','1ff8aca2ad6b53a795595e98c8b4441f','','','2015-04-29 16:37:57','2015-04-29 16:37:57'),(28,'jay','manalansan','jay@pokemon2.com','68700c051a1755e213a18ce56c7c0d2ea20d8f12f43e','9647a95016f8fb86640c6a429fc2b4b5','','','2015-04-29 16:38:29','2015-04-29 16:38:29'),(29,'jay','manalansan','jay@pokemon3.com','ffcebc9ce9659e1aa82edc2d6f2eb5fd5b00196a48ba','840dff06d9b2ed474822a7d918310dea','','','2015-04-29 16:39:41','2015-04-29 16:39:41'),(30,'gary','oak','garyoak@gmail.com','ae153b1ad165aa4ab2f2c5117ed114c2f3a7225a62b1','db84c1deb53fb6f89f909e399579f406','','','2015-04-29 16:40:20','2015-04-29 16:40:20'),(31,'misty','water','misty@pokemon.com','48c5827dc0d7c34414ec9b5cf932aa0f1e3baef1126c','3610e215e6660c20d941cfcd506acb23','','','2015-04-29 16:41:41','2015-04-29 16:41:41'),(32,'brock','brockgymtrainer','brock@pokemon.com','a1e568c649693c9ecb529e7672b6027a3c68aba7a21e','d2882d505d9127a1fd6080480f902353','','','2015-04-29 16:42:07','2015-04-29 16:42:07'),(33,'pikachu','pika','pika@pokemon.com','3a2612763c647a3d723ad050a641315214d32c803c20','c372c234439cae0d40394fa459ace2f3','','','2015-04-29 16:42:45','2015-04-29 16:42:45'),(34,'blastoise','blast','blastoise@pokemon.com','c5f333ebe9eceefe8bcc2776e4d1010dd2edccb692a8','cc7631a6bb8e9f95ddaec14efa09e385','','','2015-04-29 16:49:33','2015-04-29 16:49:33'),(35,'charizard','char','charizard@pokemon.com','e153dd4502b1c54c18bfe16218ca5c56d393ff0f7035','3c86fe9c80bd75f00e532fca4a38c218','','','2015-04-29 16:51:46','2015-04-29 16:51:46'),(36,'jay','manalansan','pokemon@gmail.com','629a68a37653e0ce7e5ae98bebd80e3fa9c87be4e36c','2158bfb045a14693855ad1bd7f40a96e','','','2015-04-29 16:54:17','2015-04-29 16:54:17'),(37,'jay','manalansan','pizza@gmail.com','ea2f0e89cc28661f5d928c9db54d33933ed9547e61ee','c537ccb0e4caec94dabddcaf55bfe947','','','2015-04-29 17:00:11','2015-04-29 17:00:11'),(38,'gary','oak','goak@pokemon.com','ebf604b245d859e8eb563a40da83422064b356db438d','b369dec835cd4d1c4f61496e07591f7c','','','2015-05-10 11:59:05','2015-05-10 11:59:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-10 12:01:20
