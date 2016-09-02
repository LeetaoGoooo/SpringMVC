-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 test.rest 结构
CREATE TABLE IF NOT EXISTS `rest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cityid` varchar(50) NOT NULL DEFAULT '0',
  `gridname` varchar(50) NOT NULL DEFAULT '0',
  `gridid` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='java测试表';

-- 正在导出表  test.rest 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `rest` DISABLE KEYS */;
INSERT INTO `rest` (`id`, `cityid`, `gridname`, `gridid`) VALUES
	(1, '0', '0', '0'),
	(2, '0', '0', '0'),
	(3, '1111', '11111', '11'),
	(4, '12121', '11111', '1212'),
	(5, '1212', '12121', '1212');
/*!40000 ALTER TABLE `rest` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
