-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: xzqa
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `xzqa_article`
--

DROP DATABASE  IF EXISTS `xzqa`;

CREATE DATABASE IF  NOT EXISTS  `xzqa` DEFAULT  CHARACTER SET 'utf8';

USE `xzqa`;

DROP TABLE IF EXISTS `xzqa_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xzqa_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID,主键且自增',
  `subject` varchar(50) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章简介',
  `content` mediumtext NOT NULL COMMENT '文章正文',
  `image` varchar(50) DEFAULT NULL COMMENT '文章缩略像',
  `category_id` smallint(5) unsigned NOT NULL COMMENT '外键,文章分类ID',
  `author_id` int(10) unsigned NOT NULL COMMENT '外键,作者ID',
  `created_at` int(10) unsigned NOT NULL COMMENT '发表日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xzqa_article`
--

-- 文章ID，subject文章标题，description文章简介，content文章内容，image文章缩略图，category_id外键文章分类id，author_id外键作者id，created_at发表日期
LOCK TABLES `xzqa_article` WRITE;
/*!40000 ALTER TABLE `xzqa_article` DISABLE KEYS */;
INSERT INTO `xzqa_article` (`id`, `subject`, `description`, `content`, `image`, `category_id`, `author_id`, `created_at`) VALUES (1,'网红经典唯美火烈鸟生日蛋糕','内容','侧面白色巧克力淋面，表面火烈鸟和棉花糖装饰，松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。','101.jpg',1,5,128),(2,'红丝绒乳酪生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','102.jpg',1,5,219),(3,'黑森林樱桃生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','103.jpg',1,5,108),(4,'冰淇淋生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','104.jpg',1,5,158),(5,'果仁天然奶油生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','105.jpg',1,5,183),(6,'草莓水果生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','106.jpg',1,5,138),(7,'牛奶生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','107.jpg',1,5,208),(8,'岁岁欢乐生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','108.jpg',1,5,328),(9,'坚果生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','109.jpg',1,5,169),(10,'射手座椰子天使奶油生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','110.jpg',1,5,249),(11,'法兰之吻创意小猪儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','401.jpg',4,5,298),(12,'奥特曼男孩创意生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','402.jpg',4,5,298),(13,'雅米哈利波特赫敏魔法学院哈迷儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','403.jpg',4,5,298),(14,'汽车人擎天柱变形金刚儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','404.jpg',4,5,398),(15,'蛋糕动物儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','405.jpg',4,5,298),(16,'钢铁侠加高款儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','406.jpg',4,5,398),(17,'人鱼公主美人鱼创意儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','407.jpg',4,5,398),(18,'迪士尼贝儿公主女孩生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','408.jpg',4,5,298),(19,'白雪公主动物奶油儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','409.jpg',4,5,398),(20,'雅米ins网红小鸭儿童生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','410.jpg',4,5,268),(21,'送母亲感恩节蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','201.jpg',2,5,258),(22,'母亲节鲜花生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','202.jpg',2,5,278),(23,'母亲节加高款鲜花蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','203.jpg',2,5,358),(24,'父母亲感恩节生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','204.jpg',2,5,298),(25,'父亲节父爱如山生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','205.jpg',2,5,268),(26,'爸您辛苦了感恩父亲生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','206.jpg',2,5,288),(27,'祝寿老人金婚生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','207.jpg',2,5,259),(28,'送母亲中式定制生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','208.jpg',2,5,298),(29,'送母亲母后大人生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','209.jpg',2,5,218),(30,'送父亲爸气十足生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','210.jpg',2,5,288),(31,'月亮船皇冠羽毛蛋糕小仙女公主生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','301.jpg',3,5,348),(32,'心形慕斯情侣生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','302.jpg',3,5,369),(33,'一见倾心情侣520情人节蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','303.jpg',3,5,389),(34,'鲜花玫瑰情人节蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','304.jpg',3,5,348),(35,'低调复古深色系男士蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','305.jpg',3,5,349),(36,'橙梦露甜甜圈浪漫生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','306.jpg',3,5,278),(37,'订婚求婚气质色系蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','307.jpg',3,5,338),(38,'可爱少女草莓房子生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','308.jpg',3,5,309),(39,'我心永恒心形情人节周年蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','309.jpg',3,5,268),(40,'【爱神的礼物】生日蛋糕','内容','松软可口的戚风蛋糕胚，内有水果粒夹层哦，奶油香醇不腻。天然奶油不及时食用，需要放在冰箱冷藏保存。8英寸直径约20cm，适合5-8人食用。','310.jpg',3,5,198);
/*!40000 ALTER TABLE `xzqa_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xzqa_author`
--

DROP TABLE IF EXISTS `xzqa_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xzqa_author` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '作者ID,主键且自增',
  `username` varchar(30) NOT NULL COMMENT '用户名,唯一',
  `password` varchar(32) NOT NULL COMMENT '密码,MD5',
  `nickname` varchar(30) DEFAULT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  `article_number` mediumint(9) NOT NULL DEFAULT '0' COMMENT '发表的文章数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xzqa_author`
--

LOCK TABLES `xzqa_author` WRITE;
/*!40000 ALTER TABLE `xzqa_author` DISABLE KEYS */;
INSERT INTO `xzqa_author` (`id`, `username`, `password`, `nickname`, `avatar`, `article_number`) VALUES (1,'Richard','c51c8bbd9e8c8bc49042ccd5d3e9864d','黑色纯牛M奶','00183a5ab206aea80120be1472a6f5.jpg',0),(2,'Johnny','d0f59baadadd3349e4a9b2674bcceae8','风之谷z','001f075ad3feeda8012138670b58f0.jpg',0),(3,'Martin','81d6f316d169150d0e8733866c38684d','庚方丽理','008c8f59e96a55a801216a4bbcbcb0.jpg',0),(4,'Christina','92109e2189cd79072b7df39317d94fa1','阐炜辉','00adca5a0d93daa80121985c9ef05f.jpg',0),(5,'Margaret','0513a3da7ff53b1aeb42245ebcc5a16e','伯启根','00b2e259575a7da8012193a331099a.jpg',0),(6,'Barbara','5c39b18d77d5f297ff92e4942e5522b5','旅行泡沫','00b3755b2b6eb6a8012034f78d8b5b.jpg',0),(7,'Diana','93b63feb993716772ef3b15b08b8e8a8','燕雨y传','00c1d55af1178ca801206abad941b6.jpg',0),(8,'Melody','ce2f3a5579d231b3b8f8b9e5fc46d361','稀稀哩哩','00d1345abc83d5a801218207516561.jpg',0),(9,'Debbie','28527cdbcc65c696f11897327cb9a6bb','最爱Kitty','00d4325a72b3b6a8012134661d177d.jpg',0),(10,'Scott','bc28af6f750004729474ccbb403bd0ee','游客学者麦','00da335a266f21a80120ba3858f56a.jpg',0),(11,'Shelly','f7ba507db5b5b1150eabf5707f0334dd','天街小雨','00fb2f5b2c9a39a8012034f76e8c48.jpg',0),(12,'Bob','2fc1c0beb992cd7096975cfebf9d5c3b','浮云不说话','010b6f5bb09ad5a8012099c8b8a41f.jpg',0),(13,'Amanda','9d910c8bf395fce35216f0f4fa85432e','左耳似水正','011b395cdd9efaa801208f8b1fb812.jpg',0),(14,'George','578ad8e10dc4edb52ff2bd4ec9bc93a3','吃草莓要吐籽','011c4e5ba0fabba801213deacb693c.jpg',0),(15,'Benjamin','861a744bccc0da5432f097d5838e4b83','没表有时间','0120cd5dc0e038a801209e1fc96ef7.jpg',0);
/*!40000 ALTER TABLE `xzqa_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xzqa_category`
--

DROP TABLE IF EXISTS `xzqa_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xzqa_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型ID,主键且自增',
  `category_name` varchar(30) NOT NULL COMMENT '类型名称,唯一',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xzqa_category`
--

LOCK TABLES `xzqa_category` WRITE;
/*!40000 ALTER TABLE `xzqa_category` DISABLE KEYS */;
INSERT INTO `xzqa_category` (`id`, `category_name`) VALUES (1,'UI'),(4,'交互'),(2,'电商'),(3,'网页');
/*!40000 ALTER TABLE `xzqa_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 16:59:51






DROP TABLE IF EXISTS `xzqa_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xzqa_shoppingcart` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表内容ID,主键且自增',
  `goodsid` mediumint(9) NOT NULL COMMENT '物品id,唯一',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goodsid` (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `xzqa_author`
--
/*!40000 ALTER TABLE `xzqa_author` DISABLE KEYS */;
INSERT INTO `xzqa_shoppingcart` (`id`, `goodsid`) VALUES (1,1);
/*!40000 ALTER TABLE `xzqa_author` ENABLE KEYS */;
UNLOCK TABLES;







