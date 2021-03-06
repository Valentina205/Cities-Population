-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: info
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id_country` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('1','Afghanistan'),('10','Argentina'),('100','Iceland'),('101','India'),('102','Indonesia'),('103','Iran'),('104','Iraq'),('105','Ireland'),('106','Israel'),('107','Italy'),('108','Jamaica'),('109','Japan'),('11','Armenia'),('110','Jersey'),('111','Jordan'),('112','Kazakhstan'),('113','Kenya'),('114','Kiribati'),('115','Korea North'),('116','Korea South'),('117','Kuwait'),('118','Kyrgyzstan'),('119','Laos'),('12','Aruba'),('120','Latvia'),('121','Lebanon'),('122','Lesotho'),('123','Liberia'),('124','Libya'),('125','Liechtenstein'),('126','Lithuania'),('127','Luxembourg'),('128','Macau S.A.R.'),('129','Macedonia'),('13','Australia'),('130','Madagascar'),('131','Malawi'),('132','Malaysia'),('133','Maldives'),('134','Mali'),('135','Malta'),('136','Man (Isle of)'),('137','Marshall Islands'),('138','Martinique'),('139','Mauritania'),('14','Austria'),('140','Mauritius'),('141','Mayotte'),('142','Mexico'),('143','Micronesia'),('144','Moldova'),('145','Monaco'),('146','Mongolia'),('147','Montserrat'),('148','Morocco'),('149','Mozambique'),('15','Azerbaijan'),('150','Myanmar'),('151','Namibia'),('152','Nauru'),('153','Nepal'),('154','Netherlands Antilles'),('155','Netherlands The'),('156','New Caledonia'),('157','New Zealand'),('158','Nicaragua'),('159','Niger'),('16','Bahamas The'),('160','Nigeria'),('161','Niue'),('162','Norfolk Island'),('163','Northern Mariana Islands'),('164','Norway'),('165','Oman'),('166','Pakistan'),('167','Palau'),('168','Palestinian Territory Occupied'),('169','Panama'),('17','Bahrain'),('170','Papua new Guinea'),('171','Paraguay'),('172','Peru'),('173','Philippines'),('174','Pitcairn Island'),('175','Poland'),('176','Portugal'),('177','Puerto Rico'),('178','Qatar'),('179','Reunion'),('18','Bangladesh'),('180','Romania'),('181','Russia'),('182','Rwanda'),('183','Saint Helena'),('184','Saint Kitts And Nevis'),('185','Saint Lucia'),('186','Saint Pierre and Miquelon'),('187','Saint Vincent And The Grenadines'),('188','Samoa'),('189','San Marino'),('19','Barbados'),('190','Sao Tome and Principe'),('191','Saudi Arabia'),('192','Senegal'),('193','Serbia'),('194','Seychelles'),('195','Sierra Leone'),('196','Singapore'),('197','Slovakia'),('198','Slovenia'),('199','Smaller Territories of the UK'),('2','Albania'),('20','Belarus'),('200','Solomon Islands'),('201','Somalia'),('202','South Africa'),('203','South Georgia'),('204','South Sudan'),('205','Spain'),('206','Sri Lanka'),('207','Sudan'),('208','Suriname'),('209','Svalbard And Jan Mayen Islands'),('21','Belgium'),('210','Swaziland'),('211','Sweden'),('212','Switzerland'),('213','Syria'),('214','Taiwan'),('215','Tajikistan'),('216','Tanzania'),('217','Thailand'),('218','Togo'),('219','Tokelau'),('22','Belize'),('220','Tonga'),('221','Trinidad And Tobago'),('222','Tunisia'),('223','Turkey'),('224','Turkmenistan'),('225','Turks And Caicos Islands'),('226','Tuvalu'),('227','Uganda'),('228','Ukraine'),('229','United Arab Emirates'),('23','Benin'),('230','United Kingdom'),('231','United States'),('232','United States Minor Outlying Islands'),('233','Uruguay'),('234','Uzbekistan'),('235','Vanuatu'),('236','Vatican City State (Holy See)'),('237','Venezuela'),('238','Vietnam'),('239','Virgin Islands (British)'),('24','Bermuda'),('240','Virgin Islands (US)'),('241','Wallis And Futuna Islands'),('242','Western Sahara'),('243','Yemen'),('244','Yugoslavia'),('245','Zambia'),('246','Zimbabwe'),('25','Bhutan'),('26','Bolivia'),('27','Bosnia and Herzegovina'),('28','Botswana'),('29','Bouvet Island'),('3','Algeria'),('30','Brazil'),('31','British Indian Ocean Territory'),('32','Brunei'),('33','Bulgaria'),('34','Burkina Faso'),('35','Burundi'),('36','Cambodia'),('37','Cameroon'),('38','Canada'),('39','Cape Verde'),('4','American Samoa'),('40','Cayman Islands'),('41','Central African Republic'),('42','Chad'),('43','Chile'),('44','China'),('45','Christmas Island'),('46','Cocos (Keeling) Islands'),('47','Colombia'),('48','Comoros'),('49','Republic Of The Congo'),('5','Andorra'),('50','Democratic Republic Of The Congo'),('51','Cook Islands'),('52','Costa Rica'),('53','Cote D\'\'Ivoire (Ivory Coast)'),('54','Croatia (Hrvatska)'),('55','Cuba'),('56','Cyprus'),('57','Czech Republic'),('58','Denmark'),('59','Djibouti'),('6','Angola'),('60','Dominica'),('61','Dominican Republic'),('62','East Timor'),('63','Ecuador'),('64','Egypt'),('65','El Salvador'),('66','Equatorial Guinea'),('67','Eritrea'),('68','Estonia'),('69','Ethiopia'),('7','Anguilla'),('70','External Territories of Australia'),('71','Falkland Islands'),('72','Faroe Islands'),('73','Fiji Islands'),('74','Finland'),('75','France'),('76','French Guiana'),('77','French Polynesia'),('78','French Southern Territories'),('79','Gabon'),('8','Antarctica'),('80','Gambia The'),('81','Georgia'),('82','Germany'),('83','Ghana'),('84','Gibraltar'),('85','Greece'),('86','Greenland'),('87','Grenada'),('88','Guadeloupe'),('89','Guam'),('9','Antigua And Barbuda'),('90','Guatemala'),('91','Guernsey and Alderney'),('92','Guinea'),('93','Guinea-Bissau'),('94','Guyana'),('95','Haiti'),('96','Heard and McDonald Islands'),('97','Honduras'),('98','Hong Kong S.A.R.'),('99','Hungary');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-25 11:17:49
