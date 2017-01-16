-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 �?01 �?16 �?16:40
-- 服务器版本: 5.5.53
-- PHP 版本: 5.6.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zsyj`
--

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_article`
--

CREATE TABLE IF NOT EXISTS `zsyj_article` (
  `id` varchar(32) NOT NULL COMMENT '文章Id，由函数自动生成',
  `editorId` varchar(32) DEFAULT NULL COMMENT '编辑人Id',
  `title` varchar(128) DEFAULT NULL COMMENT '文章名称',
  `author` varchar(32) DEFAULT NULL COMMENT '文章作者',
  `publish_date` datetime DEFAULT NULL COMMENT '文章发布日期',
  `clicks` bigint(20) DEFAULT NULL COMMENT '文章点击量',
  `content` text COMMENT '文章内容',
  `attachUrls` varchar(1024) DEFAULT NULL COMMENT '附件url',
  `articleType` varchar(32) DEFAULT NULL COMMENT '文章类型',
  `articleState` varchar(32) DEFAULT NULL COMMENT '文章状态',
  `source` varchar(128) DEFAULT NULL COMMENT '文章来源',
  `isTop` char(32) DEFAULT NULL COMMENT '是否置顶',
  `attachNames` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_article_user` (`editorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `zsyj_article`
--

INSERT INTO `zsyj_article` (`id`, `editorId`, `title`, `author`, `publish_date`, `clicks`, `content`, `attachUrls`, `articleType`, `articleState`, `source`, `isTop`, `attachNames`) VALUES
('zsyj56f91b6b3a9a81zsyj82400581', NULL, '武汉工商学院新通知', '刘翘', '2016-03-28 11:53:00', NULL, '', '', '1', '1', '官网', '1', ''),
('zsyj56fd28db279206zsyj08600704', NULL, '1', '1', NULL, NULL, '', '', '0', '1', '1', '0', ''),
('zsyj56fd294b4286c2zsyj73479880', NULL, '1', '1', NULL, NULL, '', '', '0', '1', '1', '0', ''),
('zsyj56fd2812561525zsyj35811666', NULL, '11', '11', NULL, NULL, '', '', '0', '1', '1', '1', ''),
('zsyj56fd288e9c6bf4zsyj93485634', NULL, '1', '1', NULL, NULL, '', '', '0', '1', '1', '1', ''),
('zsyj56f91a3d9c32d7zsyj83139111', NULL, '武汉工商学院新公告', '柳瑶', '2016-03-28 11:48:00', NULL, '<p>\n	清明放10天假</p>\n', '', '1', '1', '某网站', '1', ''),
('zsyj56f90893364672zsyj51469345', NULL, '热烈祝贺我校学子获得电子商务三创大赛特等奖', '张金龙', '2016-03-31 00:00:00', 1000, '<h1 style="color: red; text-align: center;">\n	<strong>热烈祝贺我校学子李罗奥获得电子商务三创大赛特点</strong></h1>\n<h1 style="color: red;">\n	<span style="font-size:16px;"><strong>&nbsp; &nbsp; &nbsp; 经过激烈的校赛，省赛选拔，我校学子李罗奥同学终于突破重重关卡，勇夺第六届电子商务&ldquo;创新、创意、创业&rdquo;第一名，被腾讯、阿里巴巴、百度等知名互联网企业以100万年薪聘请</strong></span></h1>\n<h1 style="color: red;">\n	<strong style="font-size: 16px; color: rgb(34, 34, 34);">&nbsp; &nbsp; 李罗奥寝室室友表示强烈的抗议！</strong></h1>\n', '', '0', '1', '武汉工商学院', '0', ''),
('zsyj56f91b9b39cf02zsyj51731505', NULL, '新闻', '某作者', '2016-03-28 11:54:00', NULL, '', '', '0', '1', '1111', '1', ''),
('zsyj56f934f5c9aa89zsyj70807716', NULL, '一篇文章', '一个作者', '2016-03-28 13:42:00', NULL, '<p>\n	正文</p>\n', 'upload/doc/2016032821431468.doc', '2', '1', '一个来源', '1', 'Key to Unit1 导学案'),
('zsyj56fd298232b122zsyj48552617', NULL, '11', '11', NULL, NULL, '', '', '0', '1', '11', '0', ''),
('zsyj56fd2a299c0eb9zsyj43879481', NULL, '对对对', '对对对', NULL, NULL, '', '', '0', '1', '弟弟', '0', ''),
('zsyj56fd2a680d2154zsyj29783556', NULL, '对对对', '对对对', NULL, NULL, '', '', '0', '1', '弟弟', '0', ''),
('zsyj56fd2be119f6b2zsyj87521200', NULL, '111', '111', NULL, NULL, '<p>\n	1111</p>\n', '', '0', '1', '111', '0', ''),
('zsyj56fd2c6c3ba4f2zsyj14215342', NULL, '1', '1', NULL, NULL, '', '', '0', '1', '1', '1', ''),
('zsyj571872f939df79zsyj05472391', NULL, '某风投公司将对紫薯原浆公司进行A轮融资', '紫薯原浆', '2016-04-21 14:25:00', NULL, '<p class="news_2" style="margin: 5px 0px; padding: 0px; font-size: medium; font-family: 宋体; font-weight: 600; color: rgb(0, 0, 0); float: left; line-height: 1.5;">\n	据相关消息显示，某风投公司已经确认将对紫薯原浆公司进行A轮融资。</p>\n<p style="margin: 5px 0px; padding: 0px; font-size: medium; font-family: 宋体; font-weight: 600; color: rgb(0, 0, 0); float: left; line-height: 1.5;">\n	融资额将达到1000万人民币&hellip;&hellip;</p>\n', '', '8', '1', '电商新闻', '0', ''),
('zsyj56ff3e873b0c09zsyj08909475', NULL, 'TP框架的用户权限控制', '李罗奥', '2016-04-02 11:37:00', NULL, '<h1>\n	<span style="color:#ff8c00;"><strong>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</strong></span></h1>\n', 'upload/doc/2016040211363035.docx', '1', '1', '网络', '1', '李罗奥');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_backendmenu`
--

CREATE TABLE IF NOT EXISTS `zsyj_backendmenu` (
  `id` varchar(32) NOT NULL COMMENT '菜单表ID',
  `menuName` varchar(16) DEFAULT NULL COMMENT '菜单名称',
  `menuUrl` varchar(64) DEFAULT NULL,
  `state` char(32) DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL COMMENT '菜单编码001000后面三个零表示一级菜单001001表示该级菜单下的二级 菜单',
  `uplevelMenu` varchar(32) DEFAULT NULL,
  `menuLevel` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- 转存表中的数据 `zsyj_backendmenu`
--

INSERT INTO `zsyj_backendmenu` (`id`, `menuName`, `menuUrl`, `state`, `orderBy`, `uplevelMenu`, `menuLevel`) VALUES
('m1e2n3u4113', '系统管理', '', '1', 1, '', '1'),
('zsyj56f77c4f846846zsyj72130122', '前台管理', '', '1', 0, NULL, '1'),
('zsyj56f6739225fa82zsyj80104703', '企业通知', '', '1', 1, 'zsyj56efdf4f156a04zsyj10887485', '2'),
('12121322323', '菜单管理', '', '1', 3, 'm1e2n3u4113', '2'),
('zsyj56f67449c0a472zsyj46330864', '通知列表', 'index.php?r=inform/list', '1', 0, 'zsyj56f6739225fa82zsyj80104703', '3'),
('zsyj56ee792c1a87c1zsyj14184681', '用户管理', '', '1', 2, NULL, '1'),
('5178f4e19db54299bda33d10ad621605', '书目管理', '/admin/book/book_list.jsp', '1', 1, '1fb2f41ff7db4011a90067e8ef1eb601', '3'),
('53453453453', '菜单管理', 'index.php?r=backend-menu/list', '1', 1, '12121322323', '3'),
('zsyj56fa2629031da4zsyj72052553', '原材料消耗', 'index.php?r=material-cost/list', '1', 1, 'zsyj56efe6572508d5zsyj61081734', '3'),
('8ebc14009b004809af6ca78f99c02460', '字典管理', 'index.php?r=dict/list', '1', 1, '32cbf32300a748e7be1531efa7a99c5e', '3'),
('c0afaa3ac1aa48538fe0414fd4840cfd', '基础数据管理', '/admin/webContent/webContent_list.jsp', '1', 0, '977884d3d35d4c398ba0eda2bcc13a3c', '3'),
('df66d028a25d4bb7b63482bfaa4f169c', '文章管理', '/admin/article/article_list.jsp', '1', 0, 'b3c6d9606ed24584bd9cf9be19f100c5', '3'),
('1fb2f41ff7db4011a90067e8ef1eb601', '书目管理', '', '1', 1, '4d8f467181a543319c59c1e91ec5d8fe', '2'),
('32cbf32300a748e7be1531efa7a99c5e', '字典管理', '', '1', 1, 'm1e2n3u4113', '2'),
('zsyj56fa230ab5e903zsyj92280218', '库存详情', 'index.php?r=material-cost/inventory', '1', 2, 'zsyj56efe6572508d5zsyj61081734', '3'),
('977884d3d35d4c398ba0eda2bcc13a3c', '基础数据管理', '', '1', 3, '4d8f467181a543319c59c1e91ec5d8fe', '2'),
('b3c6d9606ed24584bd9cf9be19f100c5', '文章管理', '', '1', 0, '4d8f467181a543319c59c1e91ec5d8fe', '2'),
('zsyj56ee7a7cc118d1zsyj32072693', '管理用户', '', '1', 0, 'zsyj56ee792c1a87c1zsyj14184681', '2'),
('zsyj56ee7a9c77cf29zsyj98949860', '后台用户', 'index.php?r=user/list', '1', 0, 'zsyj56ee7a7cc118d1zsyj32072693', '3'),
('zsyj56efdf4f156a04zsyj10887485', '组织管理', '', '1', 3, NULL, '1'),
('zsyj56efdf67d3f219zsyj93451621', '部门管理', '', '1', 0, 'zsyj56efdf4f156a04zsyj10887485', '2'),
('zsyj56efdf793fc040zsyj54721445', '管理部门', 'index.php?r=department/list', '1', 0, 'zsyj56efdf67d3f219zsyj93451621', '3'),
('zsyj56efe49f5a59a6zsyj34467234', '库存管理', '', '1', 4, NULL, '1'),
('zsyj56efe6572508d5zsyj61081734', '原材料管理', '', '1', 0, 'zsyj56efe49f5a59a6zsyj34467234', '2'),
('zsyj56efe6748a3ba1zsyj26304182', '添加原材料', 'index.php?r=material/list', '1', 0, 'zsyj56efe6572508d5zsyj61081734', '3'),
('zsyj56efe625a79c38zsyj64274235', '角色管理', '', '1', 0, 'm1e2n3u4113', '2'),
('zsyj56efe64db26ad7zsyj86164003', '角色管理', 'index.php?r=role/list', '1', 0, 'zsyj56efe625a79c38zsyj64274235', '3'),
('zsyj56f77c822a89c9zsyj20293471', '产品管理', '', '1', 1, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj56f77cb5b14a97zsyj15908714', '产品管理', 'index.php?r=product/list', '1', 0, 'zsyj56f77c822a89c9zsyj20293471', '3'),
('zsyj56f7ce8b4b2bc1zsyj28942224', '文章管理', '', '1', 2, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj56f7ce9a402642zsyj51823144', '文章管理', 'index.php?r=article/list', '1', 0, 'zsyj56f7ce8b4b2bc1zsyj28942224', '3'),
('zsyj56f7cff2e016f4zsyj23442352', '订单管理', '', '1', 5, NULL, '1'),
('zsyj56f7d064c06558zsyj00180289', '管理订单', '', '1', 0, 'zsyj56f7cff2e016f4zsyj23442352', '2'),
('zsyj56f7d0956adc27zsyj93195142', '订单列表', 'index.php?r=user-order/list', '1', 0, 'zsyj56f7d064c06558zsyj00180289', '3'),
('zsyj56ff5462351211zsyj62360399', '栏目管理', '', '0', 0, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj56ff546d2e0107zsyj56394901', '栏目管理', 'index.php?r=column/list', '0', 0, 'zsyj56ff5462351211zsyj62360399', '3'),
('zsyj5701e4c02dfc96zsyj34311460', '发帖管理', '', '1', 3, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj5701e4ccc01db6zsyj90900737', '管理帖子', 'index.php?r=message/list', '1', 4, 'zsyj5701e4c02dfc96zsyj34311460', '3'),
('zsyj57020cf5d38b28zsyj24719994', '留言管理', '', '1', 4, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj57020d15e45959zsyj69055545', '查看留言', 'index.php?r=contact/list', '1', 5, 'zsyj57020cf5d38b28zsyj24719994', '3'),
('zsyj570717302a2e48zsyj33830687', '前台用户', '', '1', 0, 'zsyj56ee792c1a87c1zsyj14184681', '2'),
('zsyj5707178e669434zsyj05067312', '一般用户', 'index.php?r=frontuser/list', '1', 0, 'zsyj570717302a2e48zsyj33830687', '3'),
('zsyj57077323cddbc9zsyj04915782', '人才招聘', '', '1', 5, 'zsyj56f77c4f846846zsyj72130122', '2'),
('zsyj5707735c515a90zsyj24327483', '人才招聘', 'index.php?r=recruitment/list', '1', 0, 'zsyj57077323cddbc9zsyj04915782', '3'),
('zsyj57086b1873f5d5zsyj72716274', '发布通知', 'index.php?r=inform/add', '1', 2, 'zsyj56f6739225fa82zsyj80104703', '3'),
('zsyj5708b7a7e79768zsyj02811623', '企业用户', 'index.php?r=companyuser/list', '1', 0, 'zsyj570717302a2e48zsyj33830687', '3'),
('zsyj57138be1f0e7a5zsyj73756031', '区域管理', '', '1', 2, 'zsyj56f7cff2e016f4zsyj23442352', '2'),
('zsyj57138bf4d6b8d2zsyj39799352', '分配负责人', 'index.php?r=order-charge/list', '1', 0, 'zsyj57138be1f0e7a5zsyj73756031', '3');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_contact`
--

CREATE TABLE IF NOT EXISTS `zsyj_contact` (
  `id` varchar(32) NOT NULL COMMENT '联系id  自动生成',
  `username` varchar(32) DEFAULT NULL,
  `mobilephone` varchar(16) DEFAULT NULL COMMENT '电话',
  `content` text COMMENT '留言内容',
  `createDateTime` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zsyj_contact`
--

INSERT INTO `zsyj_contact` (`id`, `username`, `mobilephone`, `content`, `createDateTime`) VALUES
('zsyj570f7f29504da7zsyj16073953', '柳瑶', '15527931998', '需求很多，写不下怎么办', '2016-04-14 19:29:45'),
('zsyj571a062ebbc039zsyj53302938', '', '', '', '2016-04-22 19:08:30'),
('zsyj571a06650d75c1zsyj38267721', '', '', '', '2016-04-22 19:09:25'),
('zsyj571a07f83aa410zsyj66748640', '', '', '', '2016-04-22 19:16:08'),
('zsyj571a0810de1248zsyj03346706', '', '', '', '2016-04-22 19:16:33'),
('zsyj571a08978c3629zsyj58204076', 's', 's', '', '2016-04-22 19:18:47'),
('zsyj571a135e65d4f4zsyj96479111', '', '', '', '2016-04-22 20:04:46'),
('zsyj571a13847b5c12zsyj78517579', '', '', '', '2016-04-22 20:05:24'),
('zsyj571a1aeacc02f3zsyj38254928', '', '', '', '2016-04-22 20:36:59'),
('zsyj571a1aefc40631zsyj77840262', '', '', '', '2016-04-22 20:37:03'),
('zsyj571a1b0e66b3a4zsyj92083035', '11', '11111111111', '11', '2016-04-22 20:37:34'),
('zsyj571a1b2daa46f4zsyj64452096', '', '', '', '2016-04-22 20:38:05'),
('zsyj571a1b48ca2674zsyj75869946', '', '', '', '2016-04-22 20:38:32'),
('zsyj571a1b74c90e31zsyj71016335', '', '', '', '2016-04-22 20:39:16'),
('zsyj571a1ba27ebe14zsyj15745178', '', '', '', '2016-04-22 20:40:02'),
('zsyj571a1bed7a6b29zsyj45084792', '', '', '', '2016-04-22 20:41:17'),
('zsyj571a1c159f99a0zsyj45735553', '', '', '', '2016-04-22 20:41:57'),
('zsyj571a1c4f2328b9zsyj55326160', '', '', '', '2016-04-22 20:42:55'),
('zsyj571a1d486e2c69zsyj06641458', '', '', '', '2016-04-22 20:47:04'),
('zsyj571a1f9c64ead4zsyj41262099', '', '', '', '2016-04-22 20:57:00'),
('zsyj571a1fcce48c52zsyj19132020', '', '', '', '2016-04-22 20:57:49'),
('zsyj571a1fcf423a22zsyj78371917', '', '', '', '2016-04-22 20:57:51'),
('zsyj571a205032f015zsyj37346219', '', '', '', '2016-04-22 21:00:00'),
('zsyj571a213bdac796zsyj81304148', '', '', '', '2016-04-22 21:03:56'),
('zsyj571a21b7bf74f4zsyj65324460', '', '', '', '2016-04-22 21:05:59'),
('zsyj571a21ce970120zsyj83719558', '', '', '', '2016-04-22 21:06:22'),
('zsyj571a21d40841f7zsyj57743281', '', '', '', '2016-04-22 21:06:28'),
('zsyj571a21e09d1d80zsyj97142459', '', '', '', '2016-04-22 21:06:40'),
('zsyj571a2214194403zsyj75738353', '', '', '', '2016-04-22 21:07:32'),
('zsyj571a222bc34632zsyj57168359', '', '', '', '2016-04-22 21:07:55'),
('zsyj571a2d43b24a67zsyj71018922', '', '', '', '2016-04-22 21:55:16'),
('zsyj571a2d4a33ea90zsyj49700020', '', '', '', '2016-04-22 21:55:22'),
('zsyj571a2db3853891zsyj46394104', '', '', '', '2016-04-22 21:57:07'),
('zsyj571a2db6771a21zsyj50101994', '', '', '', '2016-04-22 21:57:10'),
('zsyj571a3056df37e3zsyj44509238', 'ww', '11111111111', '11', '2016-04-22 22:08:24'),
('zsyj571a342e0c17e4zsyj33351673', '1111', '', '', '2016-04-22 22:24:46'),
('zsyj571a3433c5b884zsyj48893717', '11111', '', '', '2016-04-22 22:24:51'),
('zsyj571a3454dca4d4zsyj39309195', 'www', '11111111111', '', '2016-04-22 22:25:24'),
('zsyj571a345c436d24zsyj66666273', '11', '11111111111', '', '2016-04-22 22:25:32'),
('zsyj571a34bf4c60b0zsyj59106122', 'qq', '11111111111', '', '2016-04-22 22:27:11'),
('zsyj571a37043f7e79zsyj72573079', '11', '11111111111', '', '2016-04-22 22:36:52'),
('zsyj571a3754430d82zsyj40040827', '11', '11111111111', '11', '2016-04-22 22:38:12'),
('zsyj571dd4470f3085zsyj96028272', 'qq', '12312312311', '1233', '2016-04-25 16:24:39');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_department`
--

CREATE TABLE IF NOT EXISTS `zsyj_department` (
  `id` varchar(32) NOT NULL COMMENT '部门表Id',
  `departmentName` varchar(32) DEFAULT NULL COMMENT '部门名称',
  `departmentDiscri` varchar(512) DEFAULT NULL COMMENT '部门描述',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级Id',
  `departmentLevel` varchar(4) DEFAULT NULL COMMENT '部门级别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门表';

--
-- 转存表中的数据 `zsyj_department`
--

INSERT INTO `zsyj_department` (`id`, `departmentName`, `departmentDiscri`, `parentId`, `departmentLevel`) VALUES
('zsyj570637931740e0zsyj99721518', '科研部', '1', '', '0'),
('zsyj5706180734b523zsyj32715678', '市场部', '1', '', '0'),
('zsyj56ff3bf461b2d1zsyj97161727', '技术部', '', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_dict`
--

CREATE TABLE IF NOT EXISTS `zsyj_dict` (
  `dictCode` varchar(32) NOT NULL COMMENT '字典标识，ID由系统管理员添加，添加时注意查重，采取英文命名，并注意命名时含其意',
  `dictName` varchar(32) DEFAULT NULL COMMENT '字典项中文名称',
  `state` char(32) DEFAULT NULL,
  `intro` varchar(64) DEFAULT NULL COMMENT '字典项描述，具体是什么字典，以及编码规则',
  PRIMARY KEY (`dictCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字典表';

--
-- 转存表中的数据 `zsyj_dict`
--

INSERT INTO `zsyj_dict` (`dictCode`, `dictName`, `state`, `intro`) VALUES
('DICT_ITEMLEVEL', '试题难度系数', '1', '1，1；2,2'),
('DICT_ITEMSHAPE', '题型', '1', '1 单选 2 多选 3 判断'),
('DICT_LEVEL', '考试级别字典', '1', '000助理电子商务师、001电子商务师'),
('DICT_MANAGE_EXAM', '安排考试', '1', '0 可以安排考试；1 不能安排考试'),
('DICT_NATION', '民族', '1', ''),
('DICT_SCORE_STATE', '是否批改', '1', '0 待批改 1 批改'),
('DICT_SEX', '性别', '1', '0表示男；1表示女'),
('DICT_STATE', '状态', '1', '0 禁用 1 可用'),
('DICT_USERLEVEL', '管理员级别', '1', '0表示超级管理员，1表示地方管理员'),
('DICT_USERSTATE', '用户状态字典', '1', '0表示报名（未交费），1表示审核通过（已交费）'),
('DICT_WEBUSER_ROLE', '考生查询试卷权限', '1', '0 可查询答案 1 可查询分数 2 可查询答案和分数'),
('DICT_MATERIALNAME', '原材料名称', '1', '0表示鸡蛋；1表示面粉；2表示玉米'),
('DICT_MATERIALUNIT', '原材料单位', '1', '0表示克；1表示千克；2表示吨'),
('DICT_MATERIALTYPE', '原材料类型', '1', '0表示晶体；1表示非晶体'),
('DICT_DEPLEVEL', '部门级别', '1', '0表示1级，1表示2级'),
('DICT_MENU_LEVEL', '菜单级别', '1', '1表示一级菜单\n2表示二级菜单\n3表示三级菜单'),
('DICT_PRODUCTUNIT', '产品单位', '1', ''),
('DICT_PRODUCTSTATE', '产品上架状态', '1', ''),
('DICT_INFORM_TYPE', '通知类别', '1', '1表示通知；2表示新闻；3表示公告'),
('DICT_IS_TOP', '是否置顶', '1', '0表示置顶；1表示否'),
('DICT_PRODUCTTYPE', '产品包装类型', '1', ''),
('DICT_ARTICLE_TYPE', '文章类型', '1', '0是简介，1是专利，2是专著，3是论文，4是科研设备，5是研究项目，6是应用领域，7是方式'),
('DICT_ORDERSTATE', '订单状态', '1', '0表示未接单；1表示已接单|未发货；2表示已发货；3表示已签收'),
('DICT_ORDERTYPE', '订单类型', '1', '0表示企业；1表示个人'),
('DICT_PRODUCTLIST', '产品上架', '1', '产品上架'),
('DICT_ISINDEX', '产品图片首页展示', '1', '产品是否在首页展示'),
('DICT_MEMBER', '等级', '1', '用户等级');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_dictitem`
--

CREATE TABLE IF NOT EXISTS `zsyj_dictitem` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `dictCode` varchar(32) DEFAULT NULL COMMENT '外键，关联dict表ID',
  `dictItemCode` varchar(32) DEFAULT NULL,
  `dictItemName` varchar(32) DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `state` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字典项表';

--
-- 转存表中的数据 `zsyj_dictitem`
--

INSERT INTO `zsyj_dictitem` (`id`, `dictCode`, `dictItemCode`, `dictItemName`, `orderBy`, `state`) VALUES
('zsyj56ee78c0317005.57538099', 'DICT_STATE', '0', '禁用', 0, '1'),
('zsyj56ee78c035d513.92216094', 'DICT_STATE', '1', '可用', 1, '1'),
('zsyj56ee78f94e1130.48073359', 'DICT_SEX', '0', '男', 0, '1'),
('zsyj56ee78f9527646.22992030', 'DICT_SEX', '1', '女', 1, '1'),
('zsyj56efed86ab8db9zsyj52760000', 'DICT_MATERIALNAME', '0', '鸡蛋', 0, '1'),
('zsyj56efed86b551e6zsyj94872746', 'DICT_MATERIALNAME', '1', '面粉', 1, '1'),
('zsyj56eff427180022zsyj08949627', 'DICT_MATERIALNAME', '2', '玉米', 2, '1'),
('zsyj56eff4e8c65627zsyj88389696', 'DICT_MATERIALUNIT', '0', '克', 0, '1'),
('zsyj56eff4e8d058d4zsyj28376344', 'DICT_MATERIALUNIT', '1', '千克', 1, '1'),
('zsyj56eff4e8d4fc68zsyj00807096', 'DICT_MATERIALUNIT', '2', '吨', 2, '1'),
('zsyj56eff6a7c9e4a0zsyj44439086', 'DICT_MATERIALTYPE', '0', '晶体', 0, '1'),
('zsyj56eff6a7dbf5e7zsyj32383277', 'DICT_MATERIALTYPE', '1', '非晶体', 1, '1'),
('zsyj56f0b8c814db74zsyj50362198', 'DICT_DEPLEVEL', '0', '一级部门', 0, '1'),
('zsyj56f0b8c8204872zsyj37326859', 'DICT_DEPLEVEL', '1', '二级部门', 1, '1'),
('zsyj56f66eea9062e0zsyj38208351', 'DICT_MENU_LEVEL', '3', '三级菜单', 2, '1'),
('zsyj56f66eea8f2a62zsyj05764206', 'DICT_MENU_LEVEL', '2', '二级菜单', 1, '1'),
('zsyj56f66eea898cd1zsyj31107126', 'DICT_MENU_LEVEL', '1', '一级菜单', 0, '1'),
('zsyj56f782d5b0f858zsyj68482142', 'DICT_PRODUCTUNIT', '1', '箱', 0, '1'),
('zsyj56f782d5b6d462zsyj49128707', 'DICT_PRODUCTUNIT', '2', '袋', 1, '1'),
('zsyj56f78647151086zsyj88322703', 'DICT_PRODUCTSTATE', '0', '已上架', 0, '1'),
('zsyj56f786471a3111zsyj77519286', 'DICT_PRODUCTSTATE', '1', '未上架', 1, '1'),
('zsyj56f789d299cb17zsyj90931102', 'DICT_INFORM_TYPE', '1', '通知', 0, '1'),
('zsyj56f789d2a6bbc3zsyj27275791', 'DICT_INFORM_TYPE', '2', '新闻', 1, '1'),
('zsyj56f789d2a8ee45zsyj72401145', 'DICT_INFORM_TYPE', '3', '公告', 2, '1'),
('zsyj56f78f871f9c07zsyj76094936', 'DICT_IS_TOP', '0', '是', 0, '1'),
('zsyj56f78f8727e924zsyj18286346', 'DICT_IS_TOP', '1', '否', 1, '1'),
('zsyj56f7cc1ca675c8zsyj06016488', 'DICT_PRODUCTTYPE', '0', '盒装', 0, '1'),
('zsyj56f7cc1cb55a75zsyj85625841', 'DICT_PRODUCTTYPE', '1', '袋装', 1, '1'),
('zsyj56f7cc1cb65483zsyj36738024', 'DICT_PRODUCTTYPE', '2', '瓶装', 2, '1'),
('zsyj56f7d99365e967zsyj13659813', 'DICT_ARTICLE_TYPE', '0', '简介', 0, '1'),
('zsyj56f7d99370a796zsyj54067115', 'DICT_ARTICLE_TYPE', '1', '专利', 1, '1'),
('zsyj56f7d9937589a2zsyj10316973', 'DICT_ARTICLE_TYPE', '2', '专著', 2, '1'),
('zsyj57073204134d28zsyj41056093', 'DICT_ARTICLE_TYPE', '3', '科研设备', 3, '1'),
('zsyj5707320417b239zsyj42987143', 'DICT_ARTICLE_TYPE', '4', '研究项目', 4, '1'),
('zsyj56f7e8407ee730zsyj50915263', 'DICT_ORDERTYPE', '0', '企业', 0, '1'),
('zsyj56f7e84087efd9zsyj15715037', 'DICT_ORDERTYPE', '1', '个人', 1, '1'),
('zsyj56f8f6baa0cd69zsyj90496412', 'DICT_PRODUCTLIST', '0', '已上架', 0, '1'),
('zsyj56f8f6baa95905zsyj00459044', 'DICT_PRODUCTLIST', '1', '未上架', 1, '1'),
('zsyj56f94b3de0bf38zsyj95261423', 'DICT_MATERIALNAME', '3', '紫薯', 2, '1'),
('zsyj570732041c55c4zsyj81580584', 'DICT_ARTICLE_TYPE', '5', '应用领域', 5, '1'),
('zsyj57073204217657zsyj09839440', 'DICT_ARTICLE_TYPE', '6', '分离方式', 6, '1'),
('zsyj570746690577b4zsyj37493354', 'DICT_MEMBER', '0', '普通用户', 0, '1'),
('zsyj570746690a9843zsyj51461907', 'DICT_MEMBER', '1', '大众会员', 1, '1'),
('zsyj570746690b53c5zsyj58273923', 'DICT_MEMBER', '2', '钻石会员', 2, '1'),
('zsyj57175eaa8884e0zsyj47598026', 'DICT_ARTICLE_TYPE', '7', '论文', 7, '1'),
('zsyj57106c162e7878zsyj70009112', 'DICT_PRODUCTUNIT', '3', '瓶', 2, '1'),
('zsyj56f94bd54e5fc1zsyj51201624', 'DICT_MATERIALNAME', '4', '酱菜', 2, '1'),
('zsyj56f9519e05ecb9zsyj38904155', 'DICT_MATERIALNAME', '5', '木瓜', 2, '1'),
('zsyj56f9520fe07506zsyj94643914', 'DICT_MATERIALNAME', '6', '牛奶', 2, '1'),
('zsyj56fd2921055a85zsyj85490068', 'DICT_ORDERSTATE', '0', '未接单', 0, '1'),
('zsyj56fd29210bf213zsyj36997048', 'DICT_ORDERSTATE', '1', '已接单|未发货', 1, '1'),
('zsyj56fd2921134530zsyj34425559', 'DICT_ORDERSTATE', '2', '已发货', 2, '1'),
('zsyj56fd292117e8c4zsyj91099837', 'DICT_ORDERSTATE', '3', '已签收', 3, '1'),
('zsyj570701576ddf44zsyj90012361', 'DICT_ISINDEX', '0', '展示', 0, '1'),
('zsyj57070157757d42zsyj58469363', 'DICT_ISINDEX', '1', '不展示', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_evaluation`
--

CREATE TABLE IF NOT EXISTS `zsyj_evaluation` (
  `id` varchar(32) NOT NULL COMMENT '评价表id',
  `productId` varchar(32) DEFAULT NULL COMMENT '对应的产品id',
  `userId` varchar(32) DEFAULT NULL COMMENT '对应的评论人id',
  `starNum` varchar(32) DEFAULT NULL COMMENT '评价几颗星，从数据字典中读取',
  `content` text COMMENT '评论的内容',
  `evaluatedateTime` datetime DEFAULT NULL COMMENT '评论的时间',
  PRIMARY KEY (`id`),
  KEY `FK_evaluation_product` (`productId`),
  KEY `FK_evaluation_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品评价表';

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_inform`
--

CREATE TABLE IF NOT EXISTS `zsyj_inform` (
  `id` varchar(32) NOT NULL COMMENT '企业内容通知表id',
  `title` varchar(128) DEFAULT NULL COMMENT '通知标题',
  `senderId` varchar(32) DEFAULT NULL COMMENT '发送者',
  `sender` varchar(32) DEFAULT NULL COMMENT '发送者真实姓名',
  `senderDateTime` datetime DEFAULT NULL COMMENT '信息推送时间',
  `content` text COMMENT '消息内容',
  `click` int(11) DEFAULT NULL COMMENT '消息点击量',
  `isTop` varchar(32) DEFAULT NULL COMMENT '消息状态，从字典中读取',
  `attachUrls` varchar(1024) DEFAULT NULL COMMENT '附件链接',
  `informType` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `attachNames` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_inform_user` (`senderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='企业内容通知、新闻、公告';

--
-- 转存表中的数据 `zsyj_inform`
--

INSERT INTO `zsyj_inform` (`id`, `title`, `senderId`, `sender`, `senderDateTime`, `content`, `click`, `isTop`, `attachUrls`, `informType`, `attachNames`) VALUES
('zsyj56fbadedef3922zsyj93017365', '新通知', 'zsyj56efb44f3e3f25zsyj99652025', '徐方凯', '2016-03-23 10:41:00', '<p>\n	<strong><span style="font-family:arial,helvetica,sans-serif;"><span style="font-family:tahoma,geneva,sans-serif;"><span style="font-family:times new roman,times,serif;"><span style="font-size:18px;"><span style="background-color:#ff0000;">这是一篇新的通知</span></span></span></span></span></strong></p>\n', 1, '1', '', '1', ''),
('zsyj56fd0f0c4abbc5zsyj17130458', '4月1日不许耍人', 'zsyj56efb44f3e3f25zsyj99652025', '徐方凯', '2016-04-02 11:49:00', '<p>\n	谁耍人谁是王八蛋</p>\n', 100, '0', '', '3', ''),
('zsyj56fd3014402b86zsyj05233738', '11', 'zsyj56efb44f3e3f25zsyj99652025', '徐方凯', '2016-03-17 14:11:00', '', NULL, '1', '', '2', ''),
('zsyj57077d142dddd8zsyj82212935', '员工动员大会', 'zsyj56efb44f3e3f25zsyj99652025', '徐方凯', '2016-04-08 09:42:00', '<p>\n	今天晚上7点</p>\n', NULL, '1', '', '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_material`
--

CREATE TABLE IF NOT EXISTS `zsyj_material` (
  `id` varchar(32) NOT NULL COMMENT '原材料采购表id',
  `materialname` varchar(32) DEFAULT NULL COMMENT '原材料名称，从数据字典中读取',
  `materialprice` float DEFAULT NULL COMMENT '原材料采购价格',
  `materialdiscri` varchar(512) DEFAULT NULL COMMENT '原材料描述',
  `materialunit` varchar(32) DEFAULT NULL COMMENT '原材料单位，从数据字典中读取',
  `materialnum` float DEFAULT NULL COMMENT '原材料数量',
  `materialtype` varchar(32) DEFAULT NULL COMMENT '原材料种类，从数据字典中读取',
  `purchasedatetime` datetime DEFAULT NULL COMMENT '原材料采购时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='原材料表';

--
-- 转存表中的数据 `zsyj_material`
--

INSERT INTO `zsyj_material` (`id`, `materialname`, `materialprice`, `materialdiscri`, `materialunit`, `materialnum`, `materialtype`, `purchasedatetime`) VALUES
('zsyj56fe417a9c8ce5zsyj77060705', '4', 1.8, '好酱菜', '2', 15, '1', '2016-04-22 09:37:00'),
('zsyj56fe41973dbc24zsyj42289673', '1', 10, '一袋一袋的', '', 190, '1', '2016-07-14 09:38:00'),
('zsyj56fe41b0e7c580zsyj30319530', '6', 15, '大瓶的', '', 100, '0', '2016-01-05 09:38:00'),
('zsyj56fd1cddb6a964zsyj97213777', '1', 1212, 'qazwsx', '0', 12, '1', '2016-04-04 12:49:00'),
('zsyj56fe4160cf75b7zsyj26465946', '0', 1, '好鸡蛋', '1', 12, '0', '2016-04-29 09:37:00');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_materialcost`
--

CREATE TABLE IF NOT EXISTS `zsyj_materialcost` (
  `id` varchar(32) NOT NULL COMMENT '原材料消耗表id',
  `materialId` varchar(32) DEFAULT NULL COMMENT '原材料id',
  `materialName` varchar(32) DEFAULT NULL COMMENT '原材料名称',
  `costNum` float DEFAULT NULL COMMENT '原材料消耗量',
  `materialUnit` varchar(32) DEFAULT NULL COMMENT '原材料单位，从数据字典中读取',
  PRIMARY KEY (`id`),
  KEY `FK_materialCost_material` (`materialId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='原材料消耗表';

--
-- 转存表中的数据 `zsyj_materialcost`
--

INSERT INTO `zsyj_materialcost` (`id`, `materialId`, `materialName`, `costNum`, `materialUnit`) VALUES
('zsyj56fa7883a9d470zsyj25510367', 'zsyj56f7bda677f5a5zsyj42489381', '1', 1, '0'),
('zsyj56fb9d20e6ed73zsyj70809380', 'zsyj56fb9a91628504zsyj23992231', '3', 1, '0');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_materialinventory`
--

CREATE TABLE IF NOT EXISTS `zsyj_materialinventory` (
  `id` varchar(32) NOT NULL COMMENT '原材料库存表id',
  `materialId` varchar(32) DEFAULT NULL COMMENT '原材料id',
  `materialName` varchar(32) DEFAULT NULL COMMENT '原材料名称',
  `inventory` float DEFAULT NULL COMMENT '原材料库存',
  `materialUnit` varchar(32) DEFAULT NULL COMMENT '原材料单位，从字典表获取',
  PRIMARY KEY (`id`),
  KEY `FK_materialInventory_material` (`materialId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='原材料库存表';

--
-- 转存表中的数据 `zsyj_materialinventory`
--

INSERT INTO `zsyj_materialinventory` (`id`, `materialId`, `materialName`, `inventory`, `materialUnit`) VALUES
('zsyj56fb9a918d7d17zsyj10831874', 'zsyj56fb9a91628504zsyj23992231', '3', 0, '0');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_message`
--

CREATE TABLE IF NOT EXISTS `zsyj_message` (
  `id` varchar(32) NOT NULL COMMENT '主贴id',
  `userId` varchar(32) DEFAULT NULL COMMENT '留言人Id',
  `username` varchar(64) DEFAULT NULL COMMENT '发帖人用户名',
  `content` text COMMENT '发帖内容',
  `createDateTime` datetime DEFAULT NULL COMMENT '发帖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';

--
-- 转存表中的数据 `zsyj_message`
--

INSERT INTO `zsyj_message` (`id`, `userId`, `username`, `content`, `createDateTime`) VALUES
('11111111111', NULL, '溪寂', 'hello world', '2016-04-04 13:55:27'),
('zsyj5704c7ae840d01zsyj64563199', NULL, '林钢', 'this is a good web', '2016-04-06 16:24:14'),
('zsyj57050d6c5dc4d6zsyj56647240', NULL, '柳瑶', '<script>\n$("body").html(''柳瑶到此一游！'');\n\n</script>', '2016-04-06 21:21:48'),
('zsyj5705deffbf2025zsyj67476783', NULL, '林钢', '我不钢', '2016-04-07 12:15:59'),
('zsyj5705deffee70e6zsyj80566799', NULL, '林钢', '我不钢', '2016-04-07 12:16:00'),
('zsyj5705df073ca565zsyj20943677', NULL, '林钢', '我不钢', '2016-04-07 12:16:07'),
('zsyj5706fefe336607zsyj55373640', NULL, '游客', '我是一个路人', '2016-04-08 08:44:46'),
('zsyj57076a72162d52zsyj58982313', 'zsyj56efb43a0399b1zsyj99326152', 'lla', 'good job', '2016-04-08 16:23:14'),
('zsyj57076b025acae9zsyj49780463', 'zsyj5705d7bd321248zsyj52535638', '888', '邓立生是叼', '2016-04-08 16:25:38'),
('zsyj57076aeac3ffc5zsyj45165774', 'zsyj5705d7bd321248zsyj52535638', '888', '刘翘 狗逼', '2016-04-08 16:25:14'),
('zsyj57076c0e5289d8zsyj83378471', 'zsyj57074fc010c7b3zsyj02980968', 'a', '爱不完', '2016-04-08 16:30:06'),
('zsyj5708c2a79f3d63zsyj51998635', 'zsyj56efb43a0399b1zsyj99326152', 'lla', '刷新', '2016-04-09 16:51:51'),
('zsyj5708c1fd8d7bf2zsyj86748474', 'zsyj56efb43a0399b1zsyj99326152', 'lla', '测试', '2016-04-09 16:49:01'),
('zsyj571386ef3d3b94zsyj74302895', 'zsyj57074fc010c7b3zsyj02980968', 'a', 'hello', '2016-04-17 20:51:59'),
('zsyj571386e83bea09zsyj06007653', 'zsyj57074fc010c7b3zsyj02980968', 'a', 'hello', '2016-04-17 20:51:52'),
('zsyj571386e1d2f2b9zsyj70114157', 'zsyj57074fc010c7b3zsyj02980968', 'a', 'hello', '2016-04-17 20:51:45'),
('zsyj5708afe35c51f5zsyj61688938', NULL, 'lz', '诶', '2016-04-09 15:31:47'),
('zsyj57079cbd3b3147zsyj77276162', '', '游客', '', '2016-04-08 19:57:49'),
('zsyj5713874feecdb9zsyj51827675', 'zsyj57074fc010c7b3zsyj02980968', 'a', 'hello', '2016-04-17 20:53:36'),
('zsyj571387555d13d8zsyj28750666', 'zsyj57074fc010c7b3zsyj02980968', 'a', 'hello', '2016-04-17 20:53:41');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_ordercharge`
--

CREATE TABLE IF NOT EXISTS `zsyj_ordercharge` (
  `id` varchar(32) NOT NULL COMMENT '区域负责人表id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户id',
  `areaAddress` varchar(16) DEFAULT NULL COMMENT '区域代码，从数据字典中读取',
  `areaName` varchar(32) DEFAULT NULL COMMENT '区域名',
  PRIMARY KEY (`id`),
  KEY `FK_orderCharge_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单负责人制定表';

--
-- 转存表中的数据 `zsyj_ordercharge`
--

INSERT INTO `zsyj_ordercharge` (`id`, `userId`, `areaAddress`, `areaName`) VALUES
('zsyj571e048ea74db1zsyj91622336', 'zsyj56efb44f3e3f25zsyj99652025', '110000', '北京'),
('zsyj571e048eac6e50zsyj01312892', 'zsyj56efb44f3e3f25zsyj99652025', '530000', '云南省'),
('zsyj571e048ea26ba2zsyj26731652', 'zsyj56efb44f3e3f25zsyj99652025', '520000', '贵州省'),
('zsyj571e048e9dc817zsyj00185278', 'zsyj56efb44f3e3f25zsyj99652025', '620000', '甘肃省'),
('zsyj571e048e98a780zsyj76990063', 'zsyj56efb44f3e3f25zsyj99652025', '430000', '湖南省'),
('zsyj571e048e920fe4zsyj91500674', 'zsyj56efb44f3e3f25zsyj99652025', '500000', '重庆'),
('zsyj571e048e8cef57zsyj57607924', 'zsyj56efb44f3e3f25zsyj99652025', '210000', '辽宁省'),
('zsyj571e048e880d48zsyj63867052', 'zsyj56efb44f3e3f25zsyj99652025', '810000', '香港特别'),
('zsyj571e048e83a830zsyj20409565', 'zsyj56efb44f3e3f25zsyj99652025', '130000', '河北省'),
('zsyj571e048e7e4921zsyj73898191', 'zsyj56efb44f3e3f25zsyj99652025', '710000', '台湾省'),
('zsyj571e048e78ab93zsyj42849426', 'zsyj56efb44f3e3f25zsyj99652025', '460000', '海南省'),
('zsyj571e048e7196f3zsyj16236566', 'zsyj56efb44f3e3f25zsyj99652025', '310000', '上海'),
('zsyj571e048e6cb4e1zsyj43416186', 'zsyj56efb44f3e3f25zsyj99652025', '350000', '福建省'),
('zsyj571e048e681154zsyj71872698', 'zsyj56efb44f3e3f25zsyj99652025', '540000', '西藏'),
('zsyj571e048e632f43zsyj49085550', 'zsyj56efb44f3e3f25zsyj99652025', '440000', '广东省'),
('zsyj571e048e5e0ea4zsyj52759804', 'zsyj56efb44f3e3f25zsyj99652025', '610000', '陕西省'),
('zsyj571e048e592c96zsyj15891042', 'zsyj56efb44f3e3f25zsyj99652025', '120000', '天津'),
('zsyj571e048e544a85zsyj87329033', 'zsyj56efb44f3e3f25zsyj99652025', '150000', '内蒙古'),
('zsyj571e048e4fa6f1zsyj98121904', 'zsyj56efb44f3e3f25zsyj99652025', '630000', '青海省'),
('zsyj571e048e4bbee2zsyj47964428', 'zsyj56efb44f3e3f25zsyj99652025', '230000', '黑龙江省'),
('zsyj571e048e45a459zsyj86499357', 'zsyj56efb44f3e3f25zsyj99652025', '320000', '江苏省'),
('zsyj571e048e40c237zsyj81710093', 'zsyj56efb44f3e3f25zsyj99652025', '410000', '河南省'),
('zsyj571e048e3be022zsyj91586057', 'zsyj56efb44f3e3f25zsyj99652025', '450000', '广西壮族'),
('zsyj571e048e36fe17zsyj75250697', 'zsyj56efb44f3e3f25zsyj99652025', '360000', '江西省'),
('zsyj571e048e321c01zsyj48597923', 'zsyj56efb44f3e3f25zsyj99652025', '650000', '维吾尔'),
('zsyj571e048e2d7871zsyj18734167', 'zsyj56efb44f3e3f25zsyj99652025', '370000', '山东省'),
('zsyj571e048e27dae2zsyj44801817', 'zsyj56efb44f3e3f25zsyj99652025', '420000', '湖北省'),
('zsyj571e048e22ba46zsyj96612121', 'zsyj56efb44f3e3f25zsyj99652025', '330000', '浙江省'),
('zsyj571e048e1dd839zsyj33475954', 'zsyj56efb44f3e3f25zsyj99652025', '340000', '安徽省'),
('zsyj571e048e154c91zsyj21227285', 'zsyj56efb44f3e3f25zsyj99652025', '820000', '澳门'),
('zsyj571e048eb18ee2zsyj01164099', 'zsyj56efb44f3e3f25zsyj99652025', '220000', '吉林省'),
('zsyj571e048eb5f3f2zsyj54121170', 'zsyj56efb44f3e3f25zsyj99652025', '140000', '山西省'),
('zsyj571e048ebad607zsyj98571814', 'zsyj56efb44f3e3f25zsyj99652025', '510000', '四川省'),
('zsyj571e048ebe4110zsyj53574482', 'zsyj56efb44f3e3f25zsyj99652025', '640000', '宁夏');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_product`
--

CREATE TABLE IF NOT EXISTS `zsyj_product` (
  `id` varchar(32) NOT NULL COMMENT '产品id',
  `productTitle` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `productDiscri` varchar(512) DEFAULT NULL COMMENT '产品描述',
  `productPrice` float DEFAULT NULL COMMENT '产品价格',
  `productDiscount` float DEFAULT NULL COMMENT '产品折扣',
  `productUnit` varchar(32) DEFAULT NULL COMMENT '产品单位，从数据字典中读取',
  `picUrl` varchar(1024) DEFAULT NULL COMMENT '产品图片组图',
  `thumbnailUrl` varchar(1024) DEFAULT NULL COMMENT '产品缩略图',
  `inventory` float DEFAULT NULL COMMENT '产品库存',
  `productState` varchar(32) DEFAULT NULL COMMENT '产品状态，从数据字典中读取',
  `productType` varchar(32) DEFAULT NULL COMMENT '产品类别，从数据字典中读取',
  `isIndex` varchar(32) DEFAULT NULL COMMENT '产品图片是否显示在首页',
  `productSize` varchar(32) DEFAULT NULL COMMENT '产品规格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品表';

--
-- 转存表中的数据 `zsyj_product`
--

INSERT INTO `zsyj_product` (`id`, `productTitle`, `productDiscri`, `productPrice`, `productDiscount`, `productUnit`, `picUrl`, `thumbnailUrl`, `inventory`, `productState`, `productType`, `isIndex`, `productSize`) VALUES
('zsyj570f7f29504da7zsyj16073953', '冰红茶', '无', 3, 1, '3', 'upload/pic/2016041912091425.jpeg', 'upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;', 1000, '0', '2', '1', '500ml/瓶'),
('zsyj56fe417fd824d5zsyj99876196', '紫薯原浆', '无', 100, 0.9, '2', 'upload/pic/2016041912091425.jpeg', 'upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;', 100, '0', '2', '0', '1L/瓶'),
('zsyj5706667e62b860zsyj20208771', '苹果醋', '无', 25, 0.9, '3', 'upload/pic/2016041912091425.jpeg', 'upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;', 1000, '0', '2', '0', '250ml/瓶'),
('zsyj570781ce6d7121zsyj28462516', '草莓果酱', '无', 9, 1, '3', 'upload/pic/2016041912091425.jpeg', 'upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;upload/pic/2016041912091425.jpeg;', 100, '0', '2', '0', '300ml/瓶');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_productorder`
--

CREATE TABLE IF NOT EXISTS `zsyj_productorder` (
  `id` varchar(32) NOT NULL COMMENT '详细订单Id，由函数生成',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `productId` varchar(32) DEFAULT NULL COMMENT '产品Id，关联产品表',
  `productName` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `productNum` int(11) DEFAULT NULL COMMENT '购买产品的数量',
  `productPrice` float DEFAULT NULL COMMENT '产品的价格',
  `productDiscount` float DEFAULT NULL COMMENT '产品折扣',
  PRIMARY KEY (`id`),
  KEY `FK_detailOrder_order` (`orderId`),
  KEY `FK_detailOrder_product` (`productId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户订单详细表';

--
-- 转存表中的数据 `zsyj_productorder`
--

INSERT INTO `zsyj_productorder` (`id`, `orderId`, `productId`, `productName`, `productNum`, `productPrice`, `productDiscount`) VALUES
('zsyj571df47807d908zsyj37379280', 'zsyj571df477da8a04zsyj74031034', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj570e38282d76f7zsyj10305953', 'zsyj570e38282141c0zsyj62429091', 'zsyj5706274e763342zsyj48002786', NULL, 2, NULL, NULL),
('zsyj570e3e99b70054zsyj79966769', 'zsyj570e3e99a0c882zsyj73643866', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj570e3e99ae3638zsyj91581334', 'zsyj570e3e99a0c882zsyj73643866', 'zsyj5706274e763342zsyj48002786', NULL, 2, NULL, NULL),
('zsyj570e3dd5ce6381zsyj90633987', 'zsyj570e3dd5b7aeb5zsyj45130151', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj570e3dd5c1efd1zsyj36487450', 'zsyj570e3dd5b7aeb5zsyj45130151', 'zsyj5706274e763342zsyj48002786', NULL, NULL, NULL, NULL),
('zsyj570e48c0154951zsyj56906183', 'zsyj570e48c009cfb8zsyj92008993', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj570e48c6889c87zsyj07518109', 'zsyj570e48c67c6751zsyj10103104', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj570e48cc36a8c3zsyj09361958', 'zsyj570e48cc29f691zsyj25513759', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj570e4b851e3604zsyj64114425', 'zsyj570e4b850e18c0zsyj99783680', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj570e4b852c20b5zsyj50260667', 'zsyj570e4b850e18c0zsyj99783680', 'zsyj570781ce6d7121zsyj28462516', NULL, 1, NULL, NULL),
('zsyj570f3315196078zsyj64837562', 'zsyj570f33150904b7zsyj38743912', 'zsyj56fe417fd824d5zsyj99876196', NULL, 2, NULL, NULL),
('zsyj570f3315270ca6zsyj45533879', 'zsyj570f33150904b7zsyj38743912', 'zsyj5706274e763342zsyj48002786', NULL, 2, NULL, NULL),
('zsyj570f331d7f8b89zsyj58073514', 'zsyj570f331d66a437zsyj08473885', 'zsyj56fe417fd824d5zsyj99876196', NULL, 2, NULL, NULL),
('zsyj570f331d90e145zsyj24741321', 'zsyj570f331d66a437zsyj08473885', 'zsyj5706274e763342zsyj48002786', NULL, 2, NULL, NULL),
('zsyj570f446af26083zsyj26148100', 'zsyj570f446ae669d0zsyj12080791', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj570f446b0d5fb8zsyj79737043', 'zsyj570f446ae669d0zsyj12080791', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj570f446b156e50zsyj40438822', 'zsyj570f446ae669d0zsyj12080791', 'zsyj570781ce6d7121zsyj28462516', NULL, 1, NULL, NULL),
('zsyj570f447558b694zsyj29570092', 'zsyj570f44754acbe3zsyj14929034', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj570f4475646ec9zsyj86662622', 'zsyj570f44754acbe3zsyj14929034', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj570f4475773b87zsyj64109191', 'zsyj570f44754acbe3zsyj14929034', 'zsyj570781ce6d7121zsyj28462516', NULL, 1, NULL, NULL),
('zsyj570f87e9770a92zsyj98778569', 'zsyj570f87e969db64zsyj07463978', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj571091c406ddc3zsyj61551574', 'zsyj571091c3ef0b19zsyj88359097', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5710ad85d53cf8zsyj63637053', 'zsyj5710ad85c07c23zsyj29971837', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5710ad85f30660zsyj01405953', 'zsyj5710ad85c07c23zsyj29971837', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5710ad860d4a12zsyj19892035', 'zsyj5710ad85c07c23zsyj29971837', 'zsyj570781ce6d7121zsyj28462516', NULL, 5, NULL, NULL),
('zsyj5710ad86551224zsyj13741001', 'zsyj5710ad86491b76zsyj64916512', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5710ad86656de5zsyj79744579', 'zsyj5710ad86491b76zsyj64916512', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5710ad8674cf96zsyj24775998', 'zsyj5710ad86491b76zsyj64916512', 'zsyj570781ce6d7121zsyj28462516', NULL, 5, NULL, NULL),
('zsyj5710ad92be3990zsyj73121197', 'zsyj5710ad929fb4a7zsyj86687837', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5710ad92e605a0zsyj88640974', 'zsyj5710ad929fb4a7zsyj86687837', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5710ad9303f2f6zsyj16066333', 'zsyj5710ad929fb4a7zsyj86687837', 'zsyj570781ce6d7121zsyj28462516', NULL, 5, NULL, NULL),
('zsyj5710ad98418bb0zsyj08804621', 'zsyj5710ad9835d387zsyj94708701', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5710ad984ff363zsyj30973077', 'zsyj5710ad9835d387zsyj94708701', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5710ad9854d578zsyj17343162', 'zsyj5710ad9835d387zsyj94708701', 'zsyj570781ce6d7121zsyj28462516', NULL, 5, NULL, NULL),
('zsyj5711e6a3d53c46zsyj77951735', 'zsyj5711e6a3c98417zsyj91025235', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5711e6a6e75841zsyj76890699', 'zsyj5711e6a6da6799zsyj81649180', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5711e7515f0d80zsyj33686545', 'zsyj5711e7509a5e59zsyj16204848', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5711eba0413bc6zsyj78647839', 'zsyj5711eba034c820zsyj02457763', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5711ebdcef2d51zsyj37054037', 'zsyj5711ebdce3f227zsyj53059018', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj57121066104007zsyj41931294', 'zsyj57121066011cd8zsyj37076155', 'zsyj5706274e763342zsyj48002786', NULL, 5, NULL, NULL),
('zsyj571210ab0bd7a1zsyj06212866', 'zsyj571210aab024f0zsyj95437435', 'zsyj5706667e62b860zsyj20208771', NULL, 2, NULL, NULL),
('zsyj571232eb45bdd9zsyj38942225', 'zsyj571232eb32f111zsyj17152189', 'zsyj56fe417fd824d5zsyj99876196', NULL, 5, NULL, NULL),
('zsyj571232eb4b99e2zsyj57463348', 'zsyj571232eb32f111zsyj17152189', 'zsyj5706274e763342zsyj48002786', NULL, 30, NULL, NULL),
('zsyj571242a0eb5c91zsyj82286147', 'zsyj571242a0d61ec8zsyj84283520', 'zsyj5706274e763342zsyj48002786', NULL, 2, NULL, NULL),
('zsyj571242a16c2bd7zsyj06277158', 'zsyj571242a14b7455zsyj63107531', 'zsyj5706274e763342zsyj48002786', NULL, NULL, NULL, NULL),
('zsyj5713829b953c24zsyj23067438', 'zsyj5713829b77b136zsyj44749128', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj5713829ba614e6zsyj45796375', 'zsyj5713829b77b136zsyj44749128', 'zsyj5706274e763342zsyj48002786', NULL, 3, NULL, NULL),
('zsyj5713846e366ea3zsyj51156753', 'zsyj5713846e274b75zsyj90030341', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj571384d80b60a7zsyj22333768', 'zsyj571384d7efe464zsyj37877560', 'zsyj56fe417fd824d5zsyj99876196', NULL, 2, NULL, NULL),
('zsyj57144c9da78cc1zsyj98815624', 'zsyj57144c9d7fc0b8zsyj61328428', 'zsyj5706274e763342zsyj48002786', NULL, 1, NULL, NULL),
('zsyj5714585cc0f093zsyj45991615', 'zsyj5714585ca88638zsyj98732033', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5714832f5d47b5zsyj85667251', 'zsyj5714832f2ea581zsyj74889092', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5714854b47dfe8zsyj66335101', 'zsyj5714854ae2e618zsyj12032100', '', NULL, NULL, NULL, NULL),
('zsyj5714bdf11d7373zsyj12277811', 'zsyj5714bdf0ef0b99zsyj65285577', 'zsyj5706274e763342zsyj48002786', NULL, 7, NULL, NULL),
('zsyj5714bdf1272029zsyj49091601', 'zsyj5714bdf0ef0b99zsyj65285577', 'zsyj56fe417fd824d5zsyj99876196', NULL, 20, NULL, NULL),
('zsyj5715edd644e5a2zsyj34216668', 'zsyj5715edd62659f0zsyj58694163', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5715edd651e8c0zsyj89933230', 'zsyj5715edd62659f0zsyj58694163', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj5715edd65309a6zsyj93297331', 'zsyj5715edd62659f0zsyj58694163', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj571624f70273e9zsyj19418301', 'zsyj571624f6e32cc1zsyj00885977', 'zsyj570781ce6d7121zsyj28462516', NULL, 1, NULL, NULL),
('zsyj571624f7096d50zsyj71967939', 'zsyj571624f6e32cc1zsyj00885977', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj571624f70be1a3zsyj04306917', 'zsyj571624f6e32cc1zsyj00885977', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj571624f70d8ce8zsyj33135216', 'zsyj571624f6e32cc1zsyj00885977', 'zsyj570f7f29504da7zsyj16073953', NULL, 3, NULL, NULL),
('zsyj5716275feb8160zsyj23890754', 'zsyj5716275fe12b77zsyj04146717', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5716285bd80018zsyj90340887', 'zsyj5716285babf970zsyj94699573', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj5716285bdd2342zsyj61258871', 'zsyj5716285babf970zsyj94699573', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj5716285bdec279zsyj62838528', 'zsyj5716285babf970zsyj94699573', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5716285cbc3ac5zsyj76985125', 'zsyj5716285c83f826zsyj45910304', 'zsyj5706667e62b860zsyj20208771', NULL, NULL, NULL, NULL),
('zsyj5716285cd4ae51zsyj59548241', 'zsyj5716285c83f826zsyj45910304', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5716285cdbc046zsyj15027843', 'zsyj5716285c83f826zsyj45910304', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57162903a1da18zsyj01178959', 'zsyj5716290373b4e1zsyj62904646', '', NULL, NULL, NULL, NULL),
('zsyj571629edca46d0zsyj88034497', 'zsyj571629edb9e379zsyj85137370', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj57162a7b8d2606zsyj99548196', 'zsyj57162a7b80f6e5zsyj73620156', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57162bbc5b1054zsyj60742539', 'zsyj57162bbc4fb310zsyj78216926', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj57162c17a650d3zsyj37044512', 'zsyj57162c179c81f5zsyj95547884', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57162ccd9ea017zsyj81121781', 'zsyj57162ccd8dc752zsyj15847709', 'zsyj570f7f29504da7zsyj16073953', NULL, 3, NULL, NULL),
('zsyj57162cd3c56071zsyj96280649', 'zsyj57162cd3b310b1zsyj78390880', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57162cdedd5541zsyj20088559', 'zsyj57162cdeaf3014zsyj02796296', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57162dd4492ac2zsyj51954820', 'zsyj57162dd4352575zsyj85528176', '', NULL, NULL, NULL, NULL),
('zsyj57162e1e362de9zsyj64884418', 'zsyj57162e1e2d2c60zsyj51107558', 'zsyj570781ce6d7121zsyj28462516', NULL, 1, NULL, NULL),
('zsyj57162e6a22e959zsyj44848339', 'zsyj57162e6a119395zsyj30604885', '', NULL, NULL, NULL, NULL),
('zsyj571630bf41e035zsyj09261032', 'zsyj571630bf2d9c64zsyj76021871', '', NULL, NULL, NULL, NULL),
('zsyj5716314bac8d26zsyj60240079', 'zsyj5716314ba3b318zsyj87618696', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571631d7c9b831zsyj81159913', 'zsyj571631d7bb80e7zsyj16921895', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5716327461f2e9zsyj04608967', 'zsyj5716327457d2d3zsyj84177469', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571632b30ee8e9zsyj56720010', 'zsyj571632b2f33542zsyj45794195', 'zsyj56fe417fd824d5zsyj99876196', NULL, 1, NULL, NULL),
('zsyj571638095348e8zsyj84698812', 'zsyj57163808ea6704zsyj29390360', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571638095ffb11zsyj41057896', 'zsyj57163808ea6704zsyj29390360', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj57163809678ca9zsyj32545166', 'zsyj57163808ea6704zsyj29390360', 'zsyj56fe417fd824d5zsyj99876196', NULL, 3, NULL, NULL),
('zsyj571639ebba0607zsyj51763915', 'zsyj571639eba9aa58zsyj16572545', '', NULL, NULL, NULL, NULL),
('zsyj57163a4c42ccf6zsyj95467807', 'zsyj57163a4c31b5b3zsyj87622410', '', NULL, NULL, NULL, NULL),
('zsyj57173a12071c79zsyj28890176', 'zsyj57173a11e779a9zsyj07627369', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj57173aaf46c591zsyj54400494', 'zsyj57173aaf372557zsyj61131626', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57173c2d953428zsyj75013786', 'zsyj57173c2d8228e2zsyj03443781', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj57173de4d4ada4zsyj60912910', 'zsyj57173de4c31962zsyj21916919', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571742326b0183zsyj16406720', 'zsyj571742324e3215zsyj08873739', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571743056404e9zsyj64748951', 'zsyj5717430552eda1zsyj92097144', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5717438fa11a93zsyj87706580', 'zsyj5717438f8b2148zsyj13572684', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57174e47b4f074zsyj04668237', 'zsyj57174e47a0eb23zsyj95725685', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57174ed3b72375zsyj48226278', 'zsyj57174ed3a83eb9zsyj86476302', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57174f06de6d51zsyj18913991', 'zsyj57174f06cd1792zsyj26164356', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57174f657d9a83zsyj69789575', 'zsyj57174f65662a38zsyj96297300', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571779d7945f18zsyj90903643', 'zsyj571779d7840352zsyj61526370', 'zsyj56fe417fd824d5zsyj99876196', NULL, 6, NULL, NULL),
('zsyj571779d7a09441zsyj29010617', 'zsyj571779d7840352zsyj61526370', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57177fcc49e2c7zsyj95874546', 'zsyj57177fcc3abf95zsyj63655175', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj57177fcc52eb67zsyj04401117', 'zsyj57177fcc3abf95zsyj63655175', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj57178012680042zsyj64923275', 'zsyj571780125206f6zsyj28280108', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5717801274b271zsyj69636002', 'zsyj571780125206f6zsyj28280108', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj5717805be73806zsyj45299620', 'zsyj5717805bd332b4zsyj43502930', 'zsyj56fe417fd824d5zsyj99876196', NULL, NULL, NULL, NULL),
('zsyj5717805c0081b0zsyj55023017', 'zsyj5717805bd332b4zsyj43502930', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571789a3043261zsyj26096297', 'zsyj571789a2bf5644zsyj80833638', 'zsyj570f7f29504da7zsyj16073953', NULL, 11, NULL, NULL),
('zsyj571789a32edc38zsyj03787376', 'zsyj571789a3263ae4zsyj03710333', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571789bdaded03zsyj37495250', 'zsyj571789bda377c3zsyj79751037', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj57178a0f702d99zsyj66555395', 'zsyj57178a0f677ae0zsyj91616385', 'zsyj570f7f29504da7zsyj16073953', NULL, 3, NULL, NULL),
('zsyj57178a1e938cd6zsyj92332101', 'zsyj57178a1e8aa716zsyj32374897', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj57178a8daa3798zsyj87278367', 'zsyj57178a8da08300zsyj89426142', 'zsyj5706667e62b860zsyj20208771', NULL, 2, NULL, NULL),
('zsyj57178a8daf7296zsyj93018389', 'zsyj57178a8da08300zsyj89426142', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj57178a8db16065zsyj11114801', 'zsyj57178a8da08300zsyj89426142', 'zsyj56fe417fd824d5zsyj99876196', NULL, 4, NULL, NULL),
('zsyj57178aa418b5e3zsyj23708964', 'zsyj57178aa40f93f8zsyj43464750', 'zsyj570781ce6d7121zsyj28462516', NULL, 2, NULL, NULL),
('zsyj57178aa41c4e52zsyj90543751', 'zsyj57178aa40f93f8zsyj43464750', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj57178aa41d3be7zsyj26009233', 'zsyj57178aa40f93f8zsyj43464750', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5718b047353dc6zsyj54667497', 'zsyj5718b046ef7603zsyj63373807', 'zsyj5706667e62b860zsyj20208771', NULL, 2, NULL, NULL),
('zsyj5718ce1f7cb697zsyj46149804', 'zsyj5718ce1f1c15c0zsyj83251631', 'zsyj5706667e62b860zsyj20208771', NULL, NULL, NULL, NULL),
('zsyj5718cec197f9f3zsyj02685426', 'zsyj5718cec12767a2zsyj45265755', 'zsyj570781ce6d7121zsyj28462516', NULL, NULL, NULL, NULL),
('zsyj5718cec1b11a56zsyj72020071', 'zsyj5718cec12767a2zsyj45265755', 'zsyj5706667e62b860zsyj20208771', NULL, 0, NULL, NULL),
('zsyj5718cec2779dd0zsyj98308774', 'zsyj5718cec12767a2zsyj45265755', 'zsyj56fe417fd824d5zsyj99876196', NULL, 0, NULL, NULL),
('zsyj5718ceda6c8142zsyj83601283', 'zsyj5718cec12767a2zsyj45265755', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5718cee5d08912zsyj98199299', 'zsyj5718cee5c10971zsyj03171296', '', NULL, NULL, NULL, NULL),
('zsyj5719a9dd57ad35zsyj57728198', 'zsyj5719a9dd40d336zsyj30396951', '', NULL, NULL, NULL, NULL),
('zsyj571db23aca18c3zsyj77506359', 'zsyj571db23ab363e9zsyj82405660', 'zsyj570f7f29504da7zsyj16073953', NULL, 0, NULL, NULL),
('zsyj571dd85a411e40zsyj24452213', 'zsyj571dd85a1a0e16zsyj34687261', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571df478d85b00zsyj22766886', 'zsyj571df478bf73b9zsyj35097338', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571df49a2521f2zsyj26402665', 'zsyj571df49a094c90zsyj48838361', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571df4c41ee203zsyj55573000', 'zsyj571df4c40d8c46zsyj94924795', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571df5809d7d42zsyj78635117', 'zsyj571df58082e061zsyj35660403', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj571df636082ab2zsyj06343593', 'zsyj571df635e9c074zsyj77332817', 'zsyj5706667e62b860zsyj20208771', NULL, 1, NULL, NULL),
('zsyj571df9ffd9ed95zsyj87904486', 'zsyj571df9ffc8d653zsyj11886336', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571dfa16a38f02zsyj53710016', 'zsyj571dfa16923948zsyj91411730', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571dfa257560f9zsyj82750570', 'zsyj571dfa2564c6b8zsyj88706063', 'zsyj570f7f29504da7zsyj16073953', NULL, 5, NULL, NULL),
('zsyj571e00f25ba013zsyj01959511', 'zsyj571e00f24911d4zsyj70794734', 'zsyj5706667e62b860zsyj20208771', NULL, 3, NULL, NULL),
('zsyj571e00f269c958zsyj48925539', 'zsyj571e00f24911d4zsyj70794734', 'zsyj570f7f29504da7zsyj16073953', NULL, 5, NULL, NULL),
('zsyj571e0b2512a261zsyj01618433', 'zsyj571e0b24e2a3e4zsyj92509687', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571e0b256bfeb2zsyj58493486', 'zsyj571e0b255549e9zsyj86482226', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0b25c32884zsyj51667207', 'zsyj571e0b25b155b2zsyj54704538', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0b26374582zsyj47023228', 'zsyj571e0b262013b3zsyj27392344', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0b268b0441zsyj17423314', 'zsyj571e0b26750af4zsyj45391201', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0b26d44353zsyj96185758', 'zsyj571e0b26c55e97zsyj05400328', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0b6b0c7135zsyj19197646', 'zsyj571e0b6aef7df1zsyj17367743', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571e0b6b64d370zsyj61470520', 'zsyj571e0b6b589e41zsyj81167493', 'zsyj570f7f29504da7zsyj16073953', NULL, NULL, NULL, NULL),
('zsyj571e0d19239675zsyj18678855', 'zsyj571e0d19176146zsyj49947085', '', NULL, NULL, NULL, NULL),
('zsyj571e0efa0cc115zsyj07205065', 'zsyj571e0ef9f08956zsyj48838295', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571e0f75c14f96zsyj27803811', 'zsyj571e0f75b0f3d4zsyj70661803', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj571e1c78329931zsyj95906557', 'zsyj571e1c781ed261zsyj88823652', 'zsyj570f7f29504da7zsyj16073953', NULL, 5, NULL, NULL),
('zsyj571e1c9c7d9179zsyj16017039', 'zsyj571e1c9c6d35b7zsyj66160709', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj571f67b215bfb4zsyj11248930', 'zsyj571f67b1ddf105zsyj33031299', 'zsyj56fe417fd824d5zsyj99876196', '紫薯原浆', 1, 100, 0.9),
('zsyj571f67b225dce2zsyj67656762', 'zsyj571f67b1ddf105zsyj33031299', 'zsyj570f7f29504da7zsyj16073953', '冰红茶', 1, 3, 1),
('zsyj571f6880807ea2zsyj74209944', 'zsyj571f688066dbc5zsyj06283943', 'zsyj56fe417fd824d5zsyj99876196', '紫薯原浆', 2, 100, 0.9),
('zsyj571f68808ee650zsyj94255624', 'zsyj571f688066dbc5zsyj06283943', 'zsyj570f7f29504da7zsyj16073953', '冰红茶', 1, 3, 1),
('zsyj5720b998223ea6zsyj56978924', 'zsyj5720b998129e62zsyj28989615', 'zsyj570f7f29504da7zsyj16073953', NULL, 2, NULL, NULL),
('zsyj5720ba0d6d5e79zsyj93034299', 'zsyj5720ba0d20b453zsyj23453171', 'zsyj570f7f29504da7zsyj16073953', NULL, 1, NULL, NULL),
('zsyj5720bee515a574zsyj75617901', 'zsyj5720bee4f1dc17zsyj79620716', 'zsyj570f7f29504da7zsyj16073953', '冰红茶', 1, 3, 1),
('zsyj573485e835a0b3zsyj73844976', 'zsyj573485e819c743zsyj03973075', 'zsyj570f7f29504da7zsyj16073953', '冰红茶', 2, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_receive`
--

CREATE TABLE IF NOT EXISTS `zsyj_receive` (
  `id` varchar(32) NOT NULL COMMENT '消息接收表id',
  `informId` varchar(32) DEFAULT NULL COMMENT '通知id',
  `receiverId` varchar(32) DEFAULT NULL COMMENT '接收人id',
  `receiveState` varchar(32) DEFAULT NULL COMMENT '接收人查看状态，从数据字典中读取',
  `receiveDateTime` datetime DEFAULT NULL COMMENT '查看时间',
  PRIMARY KEY (`id`),
  KEY `FK_receive_inform` (`informId`),
  KEY `FK_receive_user` (`receiverId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息接收表';

--
-- 转存表中的数据 `zsyj_receive`
--

INSERT INTO `zsyj_receive` (`id`, `informId`, `receiverId`, `receiveState`, `receiveDateTime`) VALUES
('zsyj570878569b7cf0zsyj00788466', 'zsyj56fd0f0c4abbc5zsyj17130458', 'zsyj56efb43a0399b1zsyj99326152', NULL, NULL),
('zsyj57077d4b4af4e8zsyj86874907', 'zsyj57077d142dddd8zsyj82212935', 'zsyj56efb44f3e3f25zsyj99652025', NULL, NULL),
('zsyj5708a1b509ac00zsyj14293177', 'zsyj5708a1a957e0c6zsyj69007468', 'zsyj56efb43a0399b1zsyj99326152', NULL, NULL),
('zsyj5708a1b50a6782zsyj18129363', 'zsyj5708a1a957e0c6zsyj69007468', 'zsyj56efb43a0399b1zsyj99326152', NULL, NULL),
('zsyj57090c125e2086zsyj45994737', 'zsyj57090b7011a452zsyj03571751', 'Pre_zsyj56ff3bf461b2d1zsyj971617', NULL, NULL),
('zsyj57090c12420ca9zsyj39034468', 'zsyj57090b7011a452zsyj03571751', 'Pre_zsyj5706180734b523zsyj327156', NULL, NULL),
('zsyj57090b96f05a65zsyj24863822', 'zsyj57090b7011a452zsyj03571751', 'zsyj5706180734b523zsyj32715678', NULL, NULL),
('zsyj57090b97001e78zsyj76166997', 'zsyj57090b7011a452zsyj03571751', 'zsyj56ff3bf461b2d1zsyj97161727', NULL, NULL),
('zsyj57090c126302a6zsyj30705704', 'zsyj57090b7011a452zsyj03571751', 'zsyj5706180734b523zsyj32715678', NULL, NULL),
('zsyj57090c1266ac21zsyj87771036', 'zsyj57090b7011a452zsyj03571751', 'zsyj56ff3bf461b2d1zsyj97161727', NULL, NULL),
('zsyj57090c126bccc9zsyj88187578', 'zsyj57090b7011a452zsyj03571751', 'zsyj56ff3bf461b2d1zsyj97161727', NULL, NULL),
('zsyj57090c12707056zsyj70997169', 'zsyj57090b7011a452zsyj03571751', 'zsyj56ff3bf461b2d1zsyj97161727', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_recruitment`
--

CREATE TABLE IF NOT EXISTS `zsyj_recruitment` (
  `id` varchar(32) NOT NULL,
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `positionname` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `responsibilities` varchar(255) DEFAULT NULL COMMENT '职责',
  `claim` varchar(255) DEFAULT NULL COMMENT '要求',
  `wage` varchar(255) DEFAULT NULL COMMENT '工资',
  `uploadUrl` varchar(255) DEFAULT NULL COMMENT '上传地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zsyj_recruitment`
--

INSERT INTO `zsyj_recruitment` (`id`, `position`, `positionname`, `responsibilities`, `claim`, `wage`, `uploadUrl`) VALUES
('zsyj5707b9d5360a94zsyj88320868', '职位一', '技术研发工程师', '从事天然产物提取、食品研究开发工作;#查阅国内外资料，了解与研究课题相关的技术及市场背景;#制订研究项目试验方案，主持或参与试验活动;#撰写试验总结报告，提出科研成果产业化建议。', '生物、食品或相关专业本科及以上学历，有工厂工作经验；#身体健康，品行良好，遵纪守法；#较强的主观能动性、独立思考的能力、较强的实验、分析、操作动手能力；#能熟练查阅中、英文文献，能独立承担研发工作；#较强的工作责任心，饱满的工作热情，较强的敬业精神和团队合作意识;#具有相关工作经历者优先录用。', '如符合上述条件者，可直接带有效证件来我公司面谈。', NULL),
('zsyj5708703b502584zsyj04116508', '职位二', '化工设计工程师', '从事膜分离工艺及设备设计工作；#负责设备维护和售后技术支持。', '化工机械或化工工艺等相关专业本科学历，三年以上工厂工作经验，熟练使用Auto CAD制图，懂3D制图；#身体健康，品行良好，遵纪守法；#具有扎实的专业基础，具备独立思考、独立开展化工工艺及相关设备设计工作的能力；#较强的工作责任心，饱满的工作热情，较强的敬业精神和团队合作意识；#具有相关工作经历者优先录用。#能持续稳定发展者优先录用。', '如符合上述条件者，可直接带有效证件来我公司面谈。', NULL),
('zsyj57087077944c94zsyj62942691', '职位三', '氩弧焊工', '不锈钢设备制作；#领导及公司布置的其它任务。', '身体健康，品行良好，遵纪守法；#较强的工作责任心，饱满的工作热情，较强的敬业精神和团队合作意识；#具有专业资格证书。', '如符合上述条件者，可直接带有效证件来我公司面谈。', NULL),
('zsyj5708b7c60df0a8zsyj68820761', '2', '2', '2', '2', '2', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_reminder`
--

CREATE TABLE IF NOT EXISTS `zsyj_reminder` (
  `id` varchar(32) NOT NULL COMMENT '催单表id',
  `reminderId` varchar(32) DEFAULT NULL COMMENT '催单人id',
  `remindername` varchar(64) DEFAULT NULL COMMENT '催单人姓名',
  `userType` varchar(32) DEFAULT NULL COMMENT '用户类型',
  `reminderDatetime` datetime DEFAULT NULL COMMENT '催单时间',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单Id',
  PRIMARY KEY (`id`),
  KEY `FK_reminder_order` (`orderId`),
  KEY `FK_reminder_user` (`reminderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='催单表';

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_role`
--

CREATE TABLE IF NOT EXISTS `zsyj_role` (
  `id` varchar(32) NOT NULL COMMENT 'role表Id',
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `state` char(32) DEFAULT NULL COMMENT '角色状态，当角色状态为禁用时，相应的用户权限也没有了',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- 转存表中的数据 `zsyj_role`
--

INSERT INTO `zsyj_role` (`id`, `name`, `state`) VALUES
('zsyj56f9625f628235zsyj85977534', '市/州机构（三级权限）', '1'),
('zsyj56f961d987f241zsyj86632229', '省级机构（二级权限）', '1'),
('zsyj56f961a48c16d4zsyj97629372', '区域中心（一级权限）', '1'),
('zsyj56f96285332f63zsyj04905299', '县/区机构（四级权限）', '1');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_role_menu`
--

CREATE TABLE IF NOT EXISTS `zsyj_role_menu` (
  `id` varchar(32) NOT NULL,
  `roleId` varchar(32) DEFAULT NULL COMMENT '角色id 关联角色表',
  `menuId` varchar(32) DEFAULT NULL COMMENT '菜单Id 关联菜单表',
  PRIMARY KEY (`id`),
  KEY `FK_roleMenu_menu` (`menuId`),
  KEY `FK_roleMenu_role` (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限表';

--
-- 转存表中的数据 `zsyj_role_menu`
--

INSERT INTO `zsyj_role_menu` (`id`, `roleId`, `menuId`) VALUES
('zsyj571393931e48f1zsyj67870056', 'zsyj56f961a48c16d4zsyj97629372', '53453453453'),
('zsyj571393933c8f69zsyj83850393', 'zsyj56f961a48c16d4zsyj97629372', '32cbf32300a748e7be1531efa7a99c5e'),
('zsyj5713939357e7d0zsyj98746367', 'zsyj56f961a48c16d4zsyj97629372', '8ebc14009b004809af6ca78f99c02460'),
('zsyj571393936499f0zsyj96993368', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56efe625a79c38zsyj64274235'),
('zsyj571393936c2b94zsyj37038566', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56efe64db26ad7zsyj86164003'),
('zsyj57139393714c22zsyj69414894', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56f77c4f846846zsyj72130122'),
('zsyj5713939373bd32zsyj58068886', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56f77c822a89c9zsyj20293471'),
('zsyj57139393766cc1zsyj57470096', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56f77cb5b14a97zsyj15908714'),
('zsyj5713939389f502zsyj28509652', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56f7ce8b4b2bc1zsyj28942224'),
('zsyj57139393904e24zsyj45487828', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj56f7ce9a402642zsyj51823144'),
('zsyj5713939392bf21zsyj70135367', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj5701e4c02dfc96zsyj34311460'),
('zsyj57139393a126e3zsyj41707245', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj5701e4ccc01db6zsyj90900737'),
('zsyj57139393b33829zsyj93420501', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj57020cf5d38b28zsyj24719994'),
('zsyj56f961a48c16d4zsyj97621111', 'zsyj56f961a48c16d4zsyj97629372', 'm1e2n3u4113'),
('zsyj57139393084fa0zsyj63579440', 'zsyj56f961a48c16d4zsyj97629372', '12121322323'),
('zsyj57139393d5e3a4zsyj24045061', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj57020d15e45959zsyj69055545'),
('zsyj57139393f3ad16zsyj57048417', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj57077323cddbc9zsyj04915782'),
('zsyj5713939407d633zsyj37619112', 'zsyj56f961a48c16d4zsyj97629372', 'zsyj5707735c515a90zsyj24327483');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_shopcart`
--

CREATE TABLE IF NOT EXISTS `zsyj_shopcart` (
  `id` varchar(32) NOT NULL COMMENT '函数生成',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户Id，关联用户表',
  `productId` varchar(32) DEFAULT NULL COMMENT '产品Id',
  `productName` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `productNum` int(11) DEFAULT NULL COMMENT '产品数量',
  `productPrice` float DEFAULT NULL COMMENT '产品单价',
  `productDiscount` float DEFAULT NULL COMMENT '产品折扣',
  `datetime` datetime DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`),
  KEY `FK_shopCart_product` (`productId`),
  KEY `FK_shopCart_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_submessage`
--

CREATE TABLE IF NOT EXISTS `zsyj_submessage` (
  `id` varchar(32) NOT NULL COMMENT '留言回复表id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复者id',
  `username` varchar(64) DEFAULT NULL COMMENT '回复者用户名',
  `content` text COMMENT '回复内容',
  `createDateTime` datetime DEFAULT NULL COMMENT '回复时间',
  `parentId` varchar(32) DEFAULT NULL COMMENT '自留言上级留言id',
  PRIMARY KEY (`id`),
  KEY `FK_subMessage_message` (`parentId`),
  KEY `FK_subMessage_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言回复表';

--
-- 转存表中的数据 `zsyj_submessage`
--

INSERT INTO `zsyj_submessage` (`id`, `userId`, `username`, `content`, `createDateTime`, `parentId`) VALUES
('zsyj57021adc1f4037zsyj39883009', NULL, '林钢', 'SB', '2016-04-04 15:42:00', '11111111111'),
('zsyj57021b18aac4c8zsyj45744205', NULL, '林钢', 'SB child', '2016-04-04 15:42:00', '11111111111'),
('zsyj5705cd6e5bb499zsyj96663535', NULL, '林钢', 'SB', '2016-04-07 11:01:02', 'zsyj57050d6c5dc4d6zsyj56647240');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_userinfo`
--

CREATE TABLE IF NOT EXISTS `zsyj_userinfo` (
  `id` varchar(32) NOT NULL COMMENT '用户基本信息表Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '外键，关联用户表id',
  `recipientName` varchar(64) DEFAULT NULL COMMENT '收件人姓名',
  `mobilephone` varchar(16) DEFAULT NULL COMMENT '收件人手机号码',
  `areaAddress` varchar(32) DEFAULT NULL COMMENT '收件区域地址',
  `detailAddress` varchar(512) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `userInfoClicks` int(11) DEFAULT NULL COMMENT '用户使用地址次数，按照这个次数降序排列',
  `userInfoState` varchar(32) DEFAULT NULL COMMENT '用户地址信息状态',
  `truename` varchar(32) DEFAULT NULL COMMENT '收货人',
  `hcity` int(11) DEFAULT NULL COMMENT '省对应的编号',
  `hcityname` varchar(32) DEFAULT NULL COMMENT '省名',
  PRIMARY KEY (`id`),
  KEY `FK_userInfo_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户基本信息表，用户保存用户的订单联系方式';

--
-- 转存表中的数据 `zsyj_userinfo`
--

INSERT INTO `zsyj_userinfo` (`id`, `userId`, `recipientName`, `mobilephone`, `areaAddress`, `detailAddress`, `postcode`, `userInfoClicks`, `userInfoState`, `truename`, `hcity`, `hcityname`) VALUES
('zsyj5720be6e3a5dc9zsyj88349285', 'zsyj57074fc010c7b3zsyj02980968', '欧亚', '1241234', '湖北省-宜昌市-夷陵区', '小事', '12', NULL, '0', NULL, 420000, NULL),
('zsyj56ff3bf461b2d1zsyj97161727', 'zsyj56efb43a0399b1zsyj99326152', '李罗奥', '12333334444', '湖北省武汉市', '武汉工商学院', '434343', NULL, '0', NULL, 420000, ''),
('zsyj571de5a8f12590zsyj34114172', 'zsyj57144c24890cd8zsyj20843405', '234', '2', '澳门-澳门-市区', '2', '2', NULL, '0', NULL, 820000, ''),
('zsyj570f8483abf2f3zsyj71449010', 'zsyj57065bd820ef29zsyj87738190', '卡卡西', '15527931998', '维吾尔-博尔塔拉蒙古-精河县', '香港路12号', '111111', NULL, '0', NULL, 650000, ''),
('zsyj57123245da4f92zsyj30190822', 'zsyj57122fabc83888zsyj41239619', '柳瑶', '15527931998', '澳门-澳门-市区', '相关路', NULL, NULL, '0', NULL, 820000, ''),
('zsyj57148327017da2zsyj79222880', 'zsyj5714828d9a1974zsyj95136279', '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, NULL, '1', NULL, 420000, '');

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_userorder`
--

CREATE TABLE IF NOT EXISTS `zsyj_userorder` (
  `id` varchar(32) NOT NULL COMMENT '订单ID',
  `userId` varchar(32) DEFAULT NULL COMMENT '外键，关联用户表id',
  `chargerId` varchar(32) DEFAULT NULL COMMENT '订单负责人的id',
  `recipientName` varchar(64) DEFAULT NULL COMMENT '收件人姓名',
  `mobilephone` varchar(16) DEFAULT NULL COMMENT '收件人手机号码',
  `areaAddress` varchar(32) DEFAULT NULL COMMENT '收件区域地址',
  `detailAddress` varchar(512) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `totalCost` float DEFAULT NULL COMMENT '订单总金额',
  `orderCode` varchar(32) DEFAULT NULL COMMENT '订单号',
  `orderState` varchar(32) DEFAULT NULL COMMENT '订单状态',
  `orderType` varchar(32) DEFAULT NULL COMMENT '订单类别,企业;个人',
  `orderdateTime` datetime DEFAULT NULL COMMENT '下单时间',
  `principal` varchar(32) DEFAULT NULL COMMENT '负责人',
  `truename` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`),
  KEY `FK_order_charger_user` (`chargerId`),
  KEY `FK_order_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单信息表';

--
-- 转存表中的数据 `zsyj_userorder`
--

INSERT INTO `zsyj_userorder` (`id`, `userId`, `chargerId`, `recipientName`, `mobilephone`, `areaAddress`, `detailAddress`, `postcode`, `totalCost`, `orderCode`, `orderState`, `orderType`, `orderdateTime`, `principal`, `truename`) VALUES
('zsyj57162cd3b310b1zsyj78390880', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 9, '2016041951985654', '0', '1', '2016-04-19 21:04:19', NULL, NULL),
('zsyj571630bf2d9c64zsyj76021871', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 0, '2016041910251521', '0', '1', '2016-04-19 21:21:03', NULL, NULL),
('zsyj57162ccd8dc752zsyj15847709', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 9, '2016041910057495', '0', '1', '2016-04-19 21:04:13', NULL, NULL),
('zsyj573485e819c743zsyj03973075', 'zsyj5714828d9a1974zsyj95136279', 'zsyj56efb44f3e3f25zsyj99652025', '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 6, '2016051256491024', '0', '1', '2016-05-12 21:32:24', NULL, NULL),
('zsyj571242a0d61ec8zsyj84283520', 'zsyj57065bd820ef29zsyj87738190', NULL, '卡卡西', '15527931998', '维吾尔-博尔塔拉蒙古-精河县', '香港路12号', '111111', 6, '2016041648100999', '0', '1', '2016-04-16 21:48:16', NULL, NULL),
('zsyj571242a14b7455zsyj63107531', 'zsyj57065bd820ef29zsyj87738190', NULL, '卡卡西', '15527931998', '维吾尔-博尔塔拉蒙古-精河县', '香港路12号', '111111', 6, '2016041649531029', '0', '1', '2016-04-16 21:48:17', NULL, NULL),
('zsyj5714832f2ea581zsyj74889092', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 22.5, '2016041810251555', '0', '1', '2016-04-18 14:48:15', NULL, NULL),
('zsyj571f67b1ddf105zsyj33031299', 'zsyj5714828d9a1974zsyj95136279', 'zsyj56efb44f3e3f25zsyj99652025', '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 93, '2016042649101985', '0', '1', '2016-04-26 21:05:53', NULL, NULL),
('zsyj5711eba034c820zsyj02457763', 'zsyj57065bd820ef29zsyj87738190', NULL, '卡卡西', '15527931998', '维吾尔-博尔塔拉蒙古-精河县', '香港路12号', '111111', 90, 'A5711eba038b022.95966177', '0', '1', '2016-04-16 15:37:04', NULL, NULL),
('zsyj57121066011cd8zsyj37076155', 'zsyj57065bd820ef29zsyj87738190', NULL, '卡卡西', '15527931998', '维吾尔-博尔塔拉蒙古-精河县', '香港路12号', '111111', 15, 'A57121066054364.68072181', '2', '1', '2016-04-16 18:13:58', NULL, NULL),
('zsyj57162cdeaf3014zsyj02796296', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 9, '2016041910198102', '0', '1', '2016-04-19 21:04:30', NULL, NULL),
('zsyj571232eb32f111zsyj17152189', 'zsyj57122fabc83888zsyj41239619', NULL, '柳瑶', '15527931998', '澳门-澳门-市区', '相关路', NULL, 540, 'A571232eb3717a3.14334654', '2', '1', '2016-04-16 20:41:15', NULL, NULL),
('zsyj57162dd4352575zsyj85528176', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 0, '2016041952519855', '0', '1', '2016-04-19 21:08:36', NULL, NULL),
('zsyj57162e6a119395zsyj30604885', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 0, '2016041997495310', '0', '1', '2016-04-19 21:11:06', NULL, NULL),
('zsyj571779d7840352zsyj61526370', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 543, '2016042055565650', '0', '1', '2016-04-20 20:45:11', NULL, NULL),
('zsyj571639eba9aa58zsyj16572545', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 0, '2016041998971004', '0', '1', '2016-04-19 22:00:11', NULL, NULL),
('zsyj57163a4c31b5b3zsyj87622410', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 0, '2016041999515357', '0', '1', '2016-04-19 22:01:48', NULL, NULL),
('zsyj57173a11e779a9zsyj07627369', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 6, '2016042049101981', '0', '1', '2016-04-20 16:13:05', NULL, NULL),
('zsyj57173aaf372557zsyj61131626', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042010251979', '0', '1', '2016-04-20 16:15:43', NULL, NULL),
('zsyj57173c2d8228e2zsyj03443781', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 6, '2016042010056544', '0', '1', '2016-04-20 16:22:05', NULL, NULL),
('zsyj57173de4c31962zsyj21916919', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042052995651', '0', '1', '2016-04-20 16:29:24', NULL, NULL),
('zsyj5717430552eda1zsyj92097144', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042053535457', '0', '1', '2016-04-20 16:51:17', NULL, NULL),
('zsyj5717438f8b2148zsyj13572684', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042010256102', '0', '1', '2016-04-20 16:53:35', NULL, NULL),
('zsyj57174e47a0eb23zsyj95725685', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042055975548', '0', '1', '2016-04-20 17:39:19', NULL, NULL),
('zsyj57174ed3a83eb9zsyj86476302', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042051979950', '0', '1', '2016-04-20 17:41:39', NULL, NULL),
('zsyj57174f06cd1792zsyj26164356', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042054100481', '0', '1', '2016-04-20 17:42:30', NULL, NULL),
('zsyj57174f65662a38zsyj96297300', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 3, '2016042053554854', '0', '1', '2016-04-20 17:44:05', NULL, NULL),
('zsyj57177fcc3abf95zsyj63655175', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 543, '2016042099524849', '0', '1', '2016-04-20 21:10:36', NULL, NULL),
('zsyj571780125206f6zsyj28280108', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 543, '2016042050535497', '0', '1', '2016-04-20 21:11:46', NULL, NULL),
('zsyj5717805bd332b4zsyj43502930', 'zsyj5714828d9a1974zsyj95136279', NULL, '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 543, '2016042098100564', '0', '1', '2016-04-20 21:12:59', NULL, NULL),
('zsyj571dd85a1a0e16zsyj34687261', 'zsyj57144c24890cd8zsyj20843405', NULL, '阿什顿', '', '浙江省-杭州市-淳安县', '', NULL, 3, '2016042597505151', '0', '1', '2016-04-25 16:42:02', NULL, NULL),
('zsyj571f688066dbc5zsyj06283943', 'zsyj5714828d9a1974zsyj95136279', 'zsyj56efb44f3e3f25zsyj99652025', '林钢', '13407155419', '湖北省-武汉市-洪山区', '黄家湖西路3号', NULL, 183, '2016042648549852', '0', '1', '2016-04-26 21:09:20', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_usershare`
--

CREATE TABLE IF NOT EXISTS `zsyj_usershare` (
  `id` varchar(32) NOT NULL COMMENT '分享文章统计表id',
  `userId` varchar(32) DEFAULT NULL COMMENT '分享用户id',
  `articleTitle` varchar(128) DEFAULT NULL COMMENT '分享文章的名称',
  `articleId` varchar(32) DEFAULT NULL COMMENT '分享文章的id',
  `shareDateTime` datetime DEFAULT NULL COMMENT '分享的时间',
  `shareTo` varchar(32) DEFAULT NULL COMMENT '分享的去处,从数据字典中读取',
  `sharePara` varchar(512) DEFAULT NULL COMMENT '分享出去的参数:分享表id+去处标识',
  `clicks` bigint(20) DEFAULT NULL COMMENT '分享去处的用户点击量',
  PRIMARY KEY (`id`),
  KEY `FK_share_article` (`articleId`),
  KEY `FK_share_user` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分享统计表';

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_user_role`
--

CREATE TABLE IF NOT EXISTS `zsyj_user_role` (
  `adminId` varchar(32) DEFAULT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_websitcolumn`
--

CREATE TABLE IF NOT EXISTS `zsyj_websitcolumn` (
  `columnId` varchar(16) NOT NULL COMMENT '栏目标识，在增加栏目的时候填写，并验证唯一性，16个字符',
  `title` varchar(16) DEFAULT NULL COMMENT '栏目名称',
  `discri` varchar(512) DEFAULT NULL COMMENT '栏目描述',
  `clicks` bigint(20) DEFAULT NULL COMMENT '点击量统计',
  `url` varchar(64) DEFAULT NULL COMMENT '栏目url',
  `ordeyBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`columnId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

--
-- 转存表中的数据 `zsyj_websitcolumn`
--

INSERT INTO `zsyj_websitcolumn` (`columnId`, `title`, `discri`, `clicks`, `url`, `ordeyBy`) VALUES
('zsyj56ff6e6d0a1e', '菜单管理', '', NULL, '1', 3),
('zsyj56ff7cbd0cf1', '组织管理', '', NULL, '2', 2),
('zsyj56ffc718ee3b', '库存管理', '', NULL, '3', 3);

-- --------------------------------------------------------

--
-- 表的结构 `zsyj_websiteuser`
--

CREATE TABLE IF NOT EXISTS `zsyj_websiteuser` (
  `id` varchar(32) NOT NULL COMMENT '用户ID采用唯一函数生产',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门id',
  `roleId` varchar(32) DEFAULT NULL COMMENT '角色Id',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `truename` varchar(32) DEFAULT NULL COMMENT '用户真实名称',
  `mobilephone` varchar(16) DEFAULT NULL COMMENT '用户手机号码',
  `tellphone` varchar(16) DEFAULT NULL COMMENT '用户座机电话',
  `areaAddress` varchar(32) DEFAULT NULL COMMENT '用户地址，区域地址',
  `detailAddress` varchar(512) DEFAULT NULL COMMENT '用户详细地址',
  `postcode` varchar(6) DEFAULT NULL COMMENT '用户邮政编码',
  `qq` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL COMMENT '用户邮箱',
  `userState` varchar(32) DEFAULT NULL COMMENT '用户的状态，是否可用',
  `userType` varchar(32) DEFAULT NULL COMMENT '一般采购用户-0；企业采购用户-1；后台界面-2',
  `registerTime` datetime DEFAULT NULL COMMENT '注册时间',
  `point` bigint(20) DEFAULT NULL COMMENT '积分',
  `member` varchar(32) DEFAULT NULL COMMENT '会员等级，从字典中读取',
  `sex` varchar(32) DEFAULT NULL COMMENT '用户性别，从字典读取',
  PRIMARY KEY (`id`),
  KEY `FK_user_department` (`departmentId`),
  KEY `FK_user_role` (`roleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一般用户表/企业用户表/管理员';

--
-- 转存表中的数据 `zsyj_websiteuser`
--

INSERT INTO `zsyj_websiteuser` (`id`, `departmentId`, `roleId`, `username`, `password`, `truename`, `mobilephone`, `tellphone`, `areaAddress`, `detailAddress`, `postcode`, `qq`, `email`, `userState`, `userType`, `registerTime`, `point`, `member`, `sex`) VALUES
('zsyj56efb466b6ef93zsyj25955295', 'zsyj56ff3bf461b2d1zsyj97161727', 'zsyj56f9625f628235zsyj85977534', 'lq', 'f36b63f4ca5d8a47097f5c0b69d9d306', '刘翘', '12345678906', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, '0'),
('zsyj56efb44f3e3f25zsyj99652025', 'zsyj5706180734b523zsyj32715678', 'zsyj56f9625f628235zsyj85977534', 'xfk', '1f82c942befda29b6ed487a51da199f78fce7f05', '徐方凯', '12345678909', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, '0'),
('zsyj56efb43a0399b1zsyj99326152', 'zsyj56ff3bf461b2d1zsyj97161727', '', 'lla', '1f82c942befda29b6ed487a51da199f78fce7f05', '李罗奥', '12333334444', NULL, NULL, NULL, '1', NULL, '911430818@qq.com', '1', '2', NULL, NULL, NULL, '0'),
('zsyj56efaa2ec20398zsyj96176859', 'zsyj56ff3bf461b2d1zsyj97161727', '', 'ly', '7c4a8d09ca3762af61e59520943dc26494f8941b', '柳瑶', '15527931998', NULL, NULL, NULL, NULL, NULL, 'nutpea@qq.com', '1', '2', NULL, NULL, NULL, '0'),
('zsyj5714bb9cb57dc8zsyj61986435', NULL, NULL, 'lzlz', '7c4a8d09ca3762af61e59520943dc26494f8941b', '刘政', '15071214632', NULL, NULL, NULL, NULL, NULL, '395417752@qq.com', '1', '0', '2016-04-18 18:49:00', 100, '1', '0'),
('zsyj5714828d9a1974zsyj95136279', NULL, NULL, '林钢', 'b445f900ed58339d1bcb29fb4ef4e59b447d0cd4', '林钢', '13407155419', NULL, NULL, NULL, NULL, NULL, '911430818@qq.com', '1', '0', '2016-04-18 14:45:33', 100, '1', '0'),
('zsyj57065bd820ef29zsyj87738190', NULL, NULL, 'lg', '7a7be6101b8423613d66e79c46410def22109922', '林钢', '13978969586', NULL, NULL, NULL, '438631', NULL, '506140058@qq.com', '1', '0', '2016-04-07 21:08:40', 11, '2', '0'),
('zsyj5705d7bd321248zsyj52535638', NULL, NULL, '888', 'f36b63f4ca5d8a47097f5c0b69d9d306', 'haha', '13564587845', NULL, 'hahh', '供热个人', '441333', NULL, '1212344586@qq.com', '1', '0', '2016-04-07 11:45:01', 8888888888, '0', '0'),
('zsyj5709bf9d053735zsyj02942813', NULL, NULL, '刘氏企业', 'f36b63f4ca5d8a47097f5c0b69d9d306', 'undefined', '13596874525', NULL, NULL, '武汉工商学院', '441333', NULL, '1414311246@qq.com', '1', '1', NULL, 100, '1', NULL),
('zsyj570663497c58b6zsyj81058586', NULL, NULL, 'lz', 'cfcd208495d565ef66e7dff9f98764da', NULL, '1501214632', NULL, NULL, NULL, '', NULL, '395417752@qq.com', '1', '0', '2016-04-07 21:40:25', NULL, NULL, '0'),
('zsyj57086fa1462e38zsyj13460144', NULL, NULL, 'zx', 'cfcd208495d565ef66e7dff9f98764da', 'zx', '11011011011', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', NULL, NULL, '0', '0'),
('zsyj571391ea6b9b55zsyj06487457', NULL, 'zsyj56f961a48c16d4zsyj97629372', 'lg1', '7c4a8d09ca3762af61e59520943dc26494f8941b', '林钢', '15527931997', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', NULL, NULL, NULL, '0'),
('zsyj5709c25f254af6zsyj52343757', NULL, NULL, '徐氏企业', 'f36b63f4ca5d8a47097f5c0b69d9d306', 'undefined', '13598745214', NULL, NULL, '', NULL, NULL, '', '1', '1', '2016-04-10 11:02:55', 8888, '0', NULL),
('zsyj57144c24890cd8zsyj20843405', NULL, NULL, 'dk1', '7c4a8d09ca3762af61e59520943dc26494f8941b', '邓力升', '13432145678', NULL, NULL, NULL, '', NULL, '745166072qq.com', '1', '0', '2016-04-18 10:53:24', 100, '1', '0'),
('zsyj57074fc010c7b3zsyj02980968', NULL, NULL, 'a', '135d5e575a28de413b4ff2312839cc0d90fd0e46', '哈', '13578945632', NULL, NULL, NULL, '', NULL, '1315241582@qq.com', '1', '0', '2016-04-08 14:29:20', NULL, NULL, '0'),
('zsyj57122fabc83888zsyj41239619', NULL, NULL, 'ly', '854d6fae5ee42911677c739ee1734486', '柳瑶', '15527931998', NULL, NULL, NULL, NULL, NULL, 'nutpea@qq.com', '1', '0', '2016-04-16 20:27:23', NULL, '0', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
