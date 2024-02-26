-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-12-19 17:03:33
-- 服务器版本： 8.0.12
-- PHP 版本： 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `123`
--

-- --------------------------------------------------------

--
-- 表的结构 `body_info`
--

CREATE TABLE `body_info` (
  `Sno` varchar(20) NOT NULL COMMENT '学号',
  `Sname` varchar(20) NOT NULL COMMENT '姓名',
  `high` float NOT NULL COMMENT '身高',
  `weight` float NOT NULL COMMENT '体重',
  `fhl` float NOT NULL COMMENT '肺活量',
  `wsm` float NOT NULL COMMENT '50米',
  `ldty` float NOT NULL COMMENT '立定跳远'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `body_info`
--

INSERT INTO `body_info` (`Sno`, `Sname`, `high`, `weight`, `fhl`, `wsm`, `ldty`) VALUES
('21001701', '张三', 156, 68, 4149, 7, 2),
('21001702', '李四', 163, 63, 2000, 11, 2),
('21001703', '王二', 160, 80.5, 4466, 12.5, 2.12),
('21001704', '张伟', 168, 50, 4330, 8, 2),
('21001705', '王丽', 167, 52, 1500, 12, 1),
('21001706', '王玲', 167, 56, 4116, 7, 3),
('21001708', '王敏', 140, 40, 2000, 12, 2.35),
('21001707', '吴笛', 170, 60, 4000, 8, 1),
('21001709', '道名', 170, 60, 4000, 7.7, 2.5);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `Sno` varchar(8) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name` varchar(20) NOT NULL,
  `className` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `sex` char(1) NOT NULL DEFAULT '男',
  `nation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `Sno`, `name`, `className`, `birthday`, `sex`, `nation`) VALUES
(1, '21001701', '张三', '软件2', '2002-01-01', '男', '汉族'),
(2, '21001702', '李四', '信息1', '2013-04-22', '男', '汉族'),
(3, '21001703', '王二', '计科1', '2017-11-16', '男', '汉族'),
(4, '21001704', '张伟', '信息2', '2016-12-22', '男', '汉族'),
(5, '21001705', '王丽', '计科2', '2021-12-08', '女', '汉族'),
(11, '21001706', '王玲', '人工1', '2001-05-01', '女', '汉族'),
(12, '21001707', '吴笛', '计科3', '2018-11-05', '男', '汉族');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(48) NOT NULL,
  `role` varchar(40) NOT NULL COMMENT '角色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(3, '21001701', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'student'),
(4, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin'),
(10, '21001702', 'a22cb3f24e2e1f3625162c951fdde22281fafe07', 'student'),
(11, 'qwer', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin');

--
-- 转储表的索引
--

--
-- 表的索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
