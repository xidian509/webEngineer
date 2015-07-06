-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-07-06 11:07:26
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weibo`
--

-- --------------------------------------------------------

--
-- 表的结构 `concern`
--

CREATE TABLE IF NOT EXISTS `concern` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(20) DEFAULT NULL,
  `C_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `concern`
--

INSERT INTO `concern` (`num`, `ID`, `C_ID`) VALUES
(3, '002', '001'),
(4, '001', '002'),
(6, '003', '001'),
(8, '001', '003'),
(9, '001', '001'),
(10, '002', '001'),
(17, 'huyidao', 'xiaoxiao'),
(18, 'huan', 'tanweiling'),
(19, 'huan', 'jinhao'),
(20, 'huan', 'qiguang'),
(21, 'huan', 'jinxie'),
(22, 'tanweiling', 'zhenjiezhao'),
(23, 'tanweiling', 'jianhui'),
(24, 'tanweiling', 'huan'),
(25, 'tanweiling', 'jinxie'),
(26, 'jinxie', 'huan'),
(27, 'jinxie', 'weipeng'),
(28, 'jinxie', 'haishi'),
(29, 'jinxie', 'qiguang'),
(30, 'jinxie', 'tanweiling'),
(31, 'haishi', 'huan'),
(32, 'haishi', 'weipeng'),
(33, 'haishi', 'jinxie'),
(34, 'haishi', 'jianhui'),
(35, 'haishi', 'zhenjiezhao'),
(37, 'yuequan', 'jiezhao'),
(38, 'yuequan', 'jianhui'),
(39, 'yuequan', 'huan'),
(40, 'yuequan', 'qiguang'),
(41, 'yuequan', 'tanweiling'),
(42, 'yuequan', 'huan'),
(43, 'weipeng', 'yuequan'),
(44, '??', 'weipeng'),
(45, 'jiezhao', 'weipeng'),
(46, 'hahaha', 'weipeng');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `ID` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`ID`, `password`, `name`) VALUES
('001', '1234', NULL),
('01', '1234', NULL),
('huan', '1234', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `jiguan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`num`, `ID`, `password`, `name`, `sex`, `age`, `jiguan`) VALUES
(3, 'tanweiling', '1234', '张三', '男', '21', '陕西西安'),
(4, 'weipeng', '1234', '伟鹏', '男', '21', '陕西西安'),
(5, 'jiezhao', '1234', '杰昭', '男', '22', '陕西西安'),
(6, 'jinxia', '1234', '锦霞', '女', '21', '陕西西安'),
(7, 'jianhui', '1234', '剑辉', '男', '21', '陕西西安'),
(8, 'haishi', '1234', '海仕', '男', '21', '陕西西安'),
(9, 'qiguang', '1234', '启光', '男', '21', '陕西西安'),
(10, 'huan', '1234', '黄', '男', '20', '陕西西安'),
(11, 'yuequan', '1234', '悦全', '男', '20', '陕西西安');

-- --------------------------------------------------------

--
-- 表的结构 `weibo1`
--

CREATE TABLE IF NOT EXISTS `weibo1` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(20) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `weibo1`
--

INSERT INTO `weibo1` (`num`, `ID`, `content`) VALUES
(32, 'huan', '乱码不在！！！！！'),
(33, 'tanweiling', '第一次过来看看！！！'),
(34, 'jinxie', '这个杀手不太冷！！'),
(36, 'huan', '来个换页'),
(38, 'huan ', '事实如此！！'),
(39, 'yuequan', '试试看');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
