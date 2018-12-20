-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: s7dbproject
-- ------------------------------------------------------
-- Server version	5.6.38-log

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'company1'),(2,'company2');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districtname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'first'),(2,'Лягушатник');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeincludein`
--

DROP TABLE IF EXISTS `employeeincludein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeincludein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `dictrictid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeincludein`
--

LOCK TABLES `employeeincludein` WRITE;
/*!40000 ALTER TABLE `employeeincludein` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeincludein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `districtid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'Sergey',1,1),(3,'Bob',1,1),(5,'Carol',1,1),(6,'Божиею поспе́шествующею милостию Николай Вторы́й, император и самодержец Всероссийский, Московский, Киевский, Владимирский, Новгородский; царь Казанский, царь Астраханский, царь Польский, царь Сибирский, царь Херсонеса Таврического, царь Грузинский;',1,1),(7,'Bob',2,1),(8,'cerol',2,1),(9,'cc',2,1),(10,'Timmy',1,2),(11,'Shrek',1,2),(12,'Oleg',1,2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `positionname` varchar(255) DEFAULT NULL,
  `positiondescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'junior','ничего не умееет, но пытается'),(2,'intern','студент, хочет есть');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productincludein`
--

DROP TABLE IF EXISTS `productincludein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productincludein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `productlineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productincludein`
--

LOCK TABLES `productincludein` WRITE;
/*!40000 ALTER TABLE `productincludein` DISABLE KEYS */;
INSERT INTO `productincludein` VALUES (1,5,1),(2,1,2),(3,12,2),(4,14,3),(5,5,3);
/*!40000 ALTER TABLE `productincludein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlines`
--

DROP TABLE IF EXISTS `productlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productlinename` varchar(255) DEFAULT NULL,
  `productlinedescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlines`
--

LOCK TABLES `productlines` WRITE;
/*!40000 ALTER TABLE `productlines` DISABLE KEYS */;
INSERT INTO `productlines` VALUES (1,'messengers','штуки для инстант общения'),(2,'games','игрули'),(3,'doceditor','like word');
/*!40000 ALTER TABLE `productlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL,
  `productdescription` varchar(255) DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `readylvl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'BDApp','жалкая породия',1,10),(3,'BDApp','жалкая породия!',1,15),(4,'BDApp1','жалкая породия!',1,20),(5,'app','some app',2,25),(9,'Божиею поспе́шествующею милостию Николай Вторы́й, император и самодержец Всероссийский, Московский, Киевский, Владимирский, Новгородский; царь Казанский, царь Астраханский, царь Польский, царь Сибирский, царь Херсонеса Таврического, царь Грузинский;','Божиею поспе́шествующею милостию Николай Вторы́й, император и самодержец Всероссийский, Московский, Киевский, Владимирский, Новгородский; царь Казанский, царь Астраханский, царь Польский, царь Сибирский, царь Херсонеса Таврического, царь Грузинский;',1,45),(10,'some another product','useful think',1,50),(12,'ww','new game',NULL,NULL),(13,'ww1','new game1',NULL,NULL),(14,'my new app','awesome app',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respnsiblefor`
--

DROP TABLE IF EXISTS `respnsiblefor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respnsiblefor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respnsiblefor`
--

LOCK TABLES `respnsiblefor` WRITE;
/*!40000 ALTER TABLE `respnsiblefor` DISABLE KEYS */;
/*!40000 ALTER TABLE `respnsiblefor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'1','1');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workin`
--

DROP TABLE IF EXISTS `workin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workin`
--

LOCK TABLES `workin` WRITE;
/*!40000 ALTER TABLE `workin` DISABLE KEYS */;
INSERT INTO `workin` VALUES (1,2,5),(2,2,5),(3,2,1),(4,6,5),(5,2,9),(6,3,5),(7,5,5),(8,8,5),(9,10,5),(10,11,5),(11,12,5),(12,12,5);
/*!40000 ALTER TABLE `workin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 's7dbproject'
--
/*!50003 DROP PROCEDURE IF EXISTS `addEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addEmployee`(
	fullname varchar(255),
    position varchar(255)
)
BEGIN
	set @foundpositionid = (select positions.id
    from positions
    where positions.positionname like concat('%',position,'%')
    limit 1);
    
	if (@foundpositionid is null) then select 'unknown position';
    else
    
    insert into employees(fullname, positionid, districtid) values(fullname, @foundpositionid, 2);
    
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addEmployeeToProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addEmployeeToProduct`(
	employeename varchar(255),
    productname varchar(255)
)
BEGIN
	set @foundemployeeid = (select employees.id
    from employees
    where employees.fullname like concat(employeename)
    limit 1);
    
    set @foundproductid = (select products.id
    from products
    where products.productname like concat(productname)
    limit 1);
    
	if (@foundemployeeid is null) then select 'unknown employee';
    else
		if (@foundproductid is null) then select 'unknown product';
        else
			insert into workin(employeeid, productid) values(@foundemployeeid, @foundproductid);
		end if;
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProduct`(
	productname varchar(255),
    productdescription varchar(255)
)
BEGIN
	set @foundproductid = (select products.id
    from products
    where products.productname like concat(productname)
    limit 1);
    
	if (@foundproductid is not null) then select 'existing product';
    else
    
    insert into products(productname, productdescription) values(productname, productdescription);
    
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProductLine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProductLine`(
	productlinename varchar(255),
    productlinedescription varchar(255)
)
BEGIN
	set @foundproductlinename = (select productlines.id
    from productlines
    where productlines.productlinename like concat(productlinename)
    limit 1);
    
	if (@foundproductlinename is not null) then select 'existing productline';
    else
    
    insert into productlines(productlinename, productlinedescription) values(productlinename, productlinedescription);
    
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addProductToProductline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProductToProductline`(
	productname varchar(255),
    productlinename varchar(255)
)
BEGIN
	set @foundproductid = (select products.id
    from products
    where products.productname like concat(productname)
    limit 1);
    
    set @foundproductlineid = (select productlines.id
    from productlines
    where productlines.productlinename like concat(productlinename)
    limit 1);
    
	if (@foundproductid is null) then select 'unknown product';
    else
		if (@foundproductlineid is null) then select 'unknown productline';
        else
			insert into productincludein(productid, productlineid) values(@foundproductid, @foundproductlineid);
		end if;
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EmpByDist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EmpByDist`(
	clientname varchar(255),
    kek varchar(255)
)
BEGIN
    	set @foundid = (select district.id
    from district
    where district.districtname like concat(clientname)
    limit 1);
    
    if @foundid is null then select 'unknown client' ;
    else
    
    select fullname
    from employees
    where districtid = @foundid;
    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findActivepr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findActivepr`(
	left_ int,
    right_ int
)
BEGIN
	select productname, readylvl
    from products
    where readylvl > left_ and readylvl <right_;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findEmployeesByProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findEmployeesByProduct`(
	productname varchar(255),
    kek varchar(255)
)
BEGIN
	set @foundproductid = (select products.id
    from products
    where products.productname like productname
    limit 1);
    
	if (@foundproductid is null) then select 'unknown product';
    else
        select employees.fullname, positions.positionname
        from employees, positions
        where employees.id in (select workin.employeeid
							  from workin
                              where workin.productid = @foundproductid)
		and positions.id = employees.positionid;
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findProductByEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findProductByEmployee`(
	employeename varchar(255),
    kek varchar(255)
)
BEGIN
	set @foundemployeeid = (select employees.id
    from employees
    where employees.fullname like employeename
    limit 1);
    
	if (@foundemployeeid is null) then select 'unknown employee';
    else
		select products.productname, clients.clientname
        from products, clients
        where products.id in (select workin.productid
							  from workin
                              where workin.employeeid = @foundemployeeid)
		and products.clientid = clients.id;
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findProductByEmployeeID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findProductByEmployeeID`(
	currentEmployeeId int
)
BEGIN
    select products.productname
from products
where products.id in (
	select workin.productid
    from workin
    where workin.employeeid = currentEmployeeId
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLines`()
BEGIN
	select productlinename, productlinedescription
    from productlines;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProducts`()
BEGIN
	select productname, readylvl
    from products;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProfile`(
	IN employee VARCHAR(255),
    IN kek VARCHAR(20)
)
BEGIN
    set @empid = (select employees.id
    from employees
    where employees.fullname like concat(employee)
    limit 1);
    
    if(@empid is null) then
		select 'unknown employee';
	else
		set @fullname = (select fullname 
						 from employees
						 where id = @empid);
		
        set @pos = (select positionname
					from positions
                    where id = (select positionid 
								from employees
								where id = @empid
                                limit 1)
					limit 1
				   );
		
        set @dept = (select productname
					 from products
                     where id = (select productid
								 from workin
                                 where employeeid = @empid
                                 limit 1)
                     limit 1
                     );
                     
		set @dist = (select districtname 
						 from district
						 where id = (select districtid
									 from employees
									 where id = @empid
                                     limit 1)
                         limit 1);
        
	end if;
    
    select @fullname, @pos, @dept, @dist;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTable`(	
    tablename varchar(255),
    kek varchar(255)
    )
BEGIN
	set @accessCMD = concat('select * from ', tablename);
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers`()
BEGIN
	select fullname 
    from employees;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prbyline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prbyline`(
	clientname varchar(255),
    kek varchar(255)
)
BEGIN
    	set @foundid = (select productlines.id
    from productlines
    where productlines.productlinename like concat(clientname)
    limit 1);
    
    if @foundid is null then select 'unknown client' ;
    else
    
    select productname
    from products
    where id = (select productid from productincludein where productlineid = @foundid limit 1);
    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productOfClient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productOfClient`(
	clientname varchar(255),
    kek varchar(255)
)
BEGIN
    	set @foundid = (select clients.id
    from clients
    where clients.clientname like concat(clientname)
    limit 1);
    
    if @foundid is null then select 'unknown client' ;
    else
    
    select productname, readylvl
    from products
    where clientid = @foundid;
    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_createUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
<<<<<<< HEAD:db.sql
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
=======
>>>>>>> e2c66bb7ba6ba483f144815684afdbe43a207bd4:db.sql
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createUser`(
	IN p_username VARCHAR(20),
    IN p_password VARCHAR(20)
)
BEGIN
    SET @createUserCMD = concat('CREATE USER ''', p_username, '''@''', 'localhost', '''IDENTIFIED BY ''', p_password, ''';');
    PREPARE createUserStatement FROM @createUserCMD;
    EXECUTE createUserStatement;
    DEALLOCATE PREPARE createUserStatement;   
    
    set @accessCMD = concat('GRANT EXECUTE ON PROCEDURE s7dbproject.addEmployee to ', p_username,'@localhost;');
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
    set @accessCMD = concat('GRANT EXECUTE ON PROCEDURE s7dbproject.addEmployeeToProduct to ', p_username,'@localhost;');
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
    set @accessCMD = concat('GRANT EXECUTE ON PROCEDURE s7dbproject.addProduct to ', p_username,'@localhost;');
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
    set @accessCMD = concat('GRANT EXECUTE ON PROCEDURE s7dbproject.findProductByEmployee to ', p_username,'@localhost;');
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
    set @accessCMD = concat('GRANT EXECUTE ON PROCEDURE s7dbproject.findEmployeesByProduct to ', p_username,'@localhost;');
    PREPARE access FROM @accessCMD;
    EXECUTE access;
    DEALLOCATE PREPARE access; 
    FLUSH PRIVILEGES;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-28 10:14:50
