-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 02 2017 г., 13:31
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `evo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

--
-- Дамп данных таблицы `modx_active_users`
--

INSERT INTO `modx_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('v6uhl0r3qf48cn2d7fr7oaip10', 1, 'admin', 1488457738, '32', NULL),
('8v3vtrdfc0cpm06lt8ir259l76', 2, 'adminko', 1488457780, '2', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_locks`
--

CREATE TABLE `modx_active_user_locks` (
  `id` int(10) NOT NULL,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

--
-- Дамп данных таблицы `modx_active_user_locks`
--

INSERT INTO `modx_active_user_locks` (`id`, `sid`, `internalKey`, `elementType`, `elementId`, `lasthit`) VALUES
(415, 'v6uhl0r3qf48cn2d7fr7oaip10', 1, 7, 5, 1488456374);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_sessions`
--

CREATE TABLE `modx_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

--
-- Дамп данных таблицы `modx_active_user_sessions`
--

INSERT INTO `modx_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('v6uhl0r3qf48cn2d7fr7oaip10', 1, 1488457887, '127.0.0.1'),
('8v3vtrdfc0cpm06lt8ir259l76', 2, 1488457780, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `category`) VALUES
(1, 'Demo Content'),
(2, 'Js'),
(3, 'Manager and Admin'),
(4, 'Search'),
(5, 'Navigation'),
(6, 'Content'),
(7, 'Forms'),
(8, 'Login'),
(9, 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_event_log`
--

CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_keyword_xref`
--

CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1, 1488234601, 1, 'admin', 58, '-', 'MODX', 'Logged in'),
(2, 1488234604, 1, 'admin', 17, '-', '-', 'Editing settings'),
(3, 1488234651, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(4, 1488234667, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(5, 1488234687, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(6, 1488234702, 1, 'admin', 5, '-', 'home page', 'Saving resource'),
(7, 1488234702, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(8, 1488234706, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(9, 1488234727, 1, 'admin', 17, '-', '-', 'Editing settings'),
(10, 1488234748, 1, 'admin', 30, '-', '-', 'Saving settings'),
(11, 1488234764, 1, 'admin', 17, '-', '-', 'Editing settings'),
(12, 1488234772, 1, 'admin', 30, '-', '-', 'Saving settings'),
(13, 1488234782, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(14, 1488234800, 1, 'admin', 17, '-', '-', 'Editing settings'),
(15, 1488234824, 1, 'admin', 30, '-', '-', 'Saving settings'),
(16, 1488234840, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(17, 1488235035, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(18, 1488235035, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(19, 1488235100, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(20, 1488235100, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(21, 1488235378, 1, 'admin', 19, '-', 'New Template', 'Creating a new template'),
(22, 1488235479, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(23, 1488235482, 1, 'admin', 19, '-', 'New Template', 'Creating a new template'),
(24, 1488235505, 1, 'admin', 96, '3', 'Minimal Template Duplicate', 'Duplicate Template'),
(25, 1488235505, 1, 'admin', 16, '5', 'Minimal Template Duplicate', 'Editing template'),
(26, 1488235536, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(27, 1488235537, 1, 'admin', 76, '-', '-', 'Element management'),
(28, 1488235541, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(29, 1488235566, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(30, 1488235566, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(31, 1488235646, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(32, 1488235661, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(33, 1488235665, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(34, 1488235667, 1, 'admin', 5, '2', 'home page', 'Saving resource'),
(35, 1488235669, 1, 'admin', 3, '2', 'home page', 'Viewing data for resource'),
(36, 1488235681, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(37, 1488235687, 1, 'admin', 5, '2', 'home page', 'Saving resource'),
(38, 1488235688, 1, 'admin', 3, '2', 'home page', 'Viewing data for resource'),
(39, 1488235697, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(40, 1488235717, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(41, 1488235728, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(42, 1488235755, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(43, 1488235882, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(44, 1488235882, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(45, 1488236150, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(46, 1488236216, 1, 'admin', 76, '-', '-', 'Element management'),
(47, 1488236221, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(48, 1488236225, 1, 'admin', 76, '-', '-', 'Element management'),
(49, 1488236234, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(50, 1488236246, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(51, 1488236272, 1, 'admin', 79, '-', 'head', 'Saving Chunk (HTML Snippet)'),
(52, 1488236272, 1, 'admin', 78, '9', 'head', 'Editing Chunk (HTML Snippet)'),
(53, 1488236313, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(54, 1488236313, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(55, 1488236344, 1, 'admin', 19, '-', 'New Template', 'Creating a new template'),
(56, 1488236350, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(57, 1488236366, 1, 'admin', 79, '-', 'header', 'Saving Chunk (HTML Snippet)'),
(58, 1488236366, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(59, 1488236399, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(60, 1488236399, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(61, 1488236402, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(62, 1488236402, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(63, 1488236484, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(64, 1488236508, 1, 'admin', 79, '-', 'slider', 'Saving Chunk (HTML Snippet)'),
(65, 1488236508, 1, 'admin', 76, '-', '-', 'Element management'),
(66, 1488236529, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(67, 1488236529, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(68, 1488236569, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(69, 1488236579, 1, 'admin', 79, '-', 'footer', 'Saving Chunk (HTML Snippet)'),
(70, 1488236579, 1, 'admin', 76, '-', '-', 'Element management'),
(71, 1488236589, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(72, 1488236590, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(73, 1488236594, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(74, 1488236608, 1, 'admin', 78, '9', 'head', 'Editing Chunk (HTML Snippet)'),
(75, 1488236613, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(76, 1488236627, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(77, 1488236639, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(78, 1488236639, 1, 'admin', 76, '-', '-', 'Element management'),
(79, 1488236651, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(80, 1488236656, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(81, 1488236656, 1, 'admin', 76, '-', '-', 'Element management'),
(82, 1488236664, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(83, 1488236806, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(84, 1488236831, 1, 'admin', 5, '2', 'home page', 'Saving resource'),
(85, 1488236833, 1, 'admin', 3, '2', 'home page', 'Viewing data for resource'),
(86, 1488236851, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(87, 1488236872, 1, 'admin', 301, '1', 'blogContent', 'Edit Template Variable'),
(88, 1488236876, 1, 'admin', 301, '2', 'Tags', 'Edit Template Variable'),
(89, 1488236880, 1, 'admin', 301, '3', 'loginName', 'Edit Template Variable'),
(90, 1488236898, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(91, 1488236919, 1, 'admin', 17, '-', '-', 'Editing settings'),
(92, 1488236949, 1, 'admin', 76, '-', '-', 'Element management'),
(93, 1488236962, 1, 'admin', 31, '-', '-', 'Using file manager'),
(94, 1488236965, 1, 'admin', 112, '1', 'Doc Manager', 'Execute module'),
(95, 1488236992, 1, 'admin', 112, '2', 'Extras', 'Execute module'),
(96, 1488237007, 1, 'admin', 17, '-', '-', 'Editing settings'),
(97, 1488237026, 1, 'admin', 30, '-', '-', 'Saving settings'),
(98, 1488237043, 1, 'admin', 76, '-', '-', 'Element management'),
(99, 1488237048, 1, 'admin', 17, '-', '-', 'Editing settings'),
(100, 1488237073, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(101, 1488237104, 1, 'admin', 61, '2', 'home page', 'Publishing a resource'),
(102, 1488237105, 1, 'admin', 3, '2', 'home page', 'Viewing data for resource'),
(103, 1488237130, 1, 'admin', 301, '1', 'blogContent', 'Edit Template Variable'),
(104, 1488237151, 1, 'admin', 301, '2', 'Tags', 'Edit Template Variable'),
(105, 1488237157, 1, 'admin', 301, '3', 'loginName', 'Edit Template Variable'),
(106, 1488237164, 1, 'admin', 16, '4', 'MODX startup - Bootstrap', 'Editing template'),
(107, 1488237214, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(108, 1488237222, 1, 'admin', 78, '9', 'head', 'Editing Chunk (HTML Snippet)'),
(109, 1488237246, 1, 'admin', 16, '4', 'MODX startup - Bootstrap', 'Editing template'),
(110, 1488237272, 1, 'admin', 16, '4', 'MODX startup - Bootstrap', 'Editing template'),
(111, 1488237283, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(112, 1488237294, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(113, 1488237298, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(114, 1488237313, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(115, 1488237325, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(116, 1488237331, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(117, 1488237333, 1, 'admin', 3, '1', 'Home', 'Viewing data for resource'),
(118, 1488237333, 1, 'admin', 27, '2', 'home page', 'Editing resource'),
(119, 1488237348, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(120, 1488237349, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(121, 1488237350, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(122, 1488237356, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(123, 1488289772, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(124, 1488292231, 1, 'admin', 78, '9', 'head', 'Editing Chunk (HTML Snippet)'),
(125, 1488292255, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(126, 1488292257, 1, 'admin', 78, '11', 'slider', 'Editing Chunk (HTML Snippet)'),
(127, 1488292304, 1, 'admin', 79, '11', 'slider', 'Saving Chunk (HTML Snippet)'),
(128, 1488292304, 1, 'admin', 76, '-', '-', 'Element management'),
(129, 1488292332, 1, 'admin', 78, '11', 'slider', 'Editing Chunk (HTML Snippet)'),
(130, 1488298523, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(131, 1488298566, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(132, 1488298566, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(133, 1488298663, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(134, 1488298663, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(135, 1488298667, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(136, 1488298670, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(137, 1488298677, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(138, 1488298686, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(139, 1488298686, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(140, 1488298769, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(141, 1488298780, 1, 'admin', 79, '-', 'modal', 'Saving Chunk (HTML Snippet)'),
(142, 1488298780, 1, 'admin', 76, '-', '-', 'Element management'),
(143, 1488298792, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(144, 1488298792, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(145, 1488298801, 1, 'admin', 16, '4', 'MODX startup - Bootstrap', 'Editing template'),
(146, 1488298819, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(147, 1488298901, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(148, 1488298901, 1, 'admin', 76, '-', '-', 'Element management'),
(149, 1488298903, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(150, 1488299220, 1, 'admin', 22, '14', 'Wayfinder', 'Editing Snippet'),
(151, 1488299316, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(152, 1488299321, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(153, 1488299336, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(154, 1488299336, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(155, 1488299360, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(156, 1488299360, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(157, 1488299389, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(158, 1488299420, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(159, 1488299427, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(160, 1488299432, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(161, 1488299441, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(162, 1488299447, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(163, 1488299458, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(164, 1488299474, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(165, 1488299474, 1, 'admin', 76, '-', '-', 'Element management'),
(166, 1488299496, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(167, 1488299507, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(168, 1488299507, 1, 'admin', 76, '-', '-', 'Element management'),
(169, 1488299565, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(170, 1488299570, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(171, 1488299570, 1, 'admin', 76, '-', '-', 'Element management'),
(172, 1488299591, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(173, 1488299596, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(174, 1488299596, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(175, 1488299608, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(176, 1488299618, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(177, 1488299619, 1, 'admin', 3, '1', 'Home', 'Viewing data for resource'),
(178, 1488299620, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(179, 1488299634, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(180, 1488299635, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(181, 1488299727, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(182, 1488299739, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(183, 1488299739, 1, 'admin', 76, '-', '-', 'Element management'),
(184, 1488299753, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(185, 1488300034, 1, 'admin', 79, '10', 'header', 'Saving Chunk (HTML Snippet)'),
(186, 1488300034, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(187, 1488300081, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(188, 1488300098, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(189, 1488300101, 1, 'admin', 5, '-', 'news', 'Saving resource'),
(190, 1488300102, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(191, 1488300105, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(192, 1488300110, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(193, 1488300111, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(194, 1488300113, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(195, 1488300120, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(196, 1488300122, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(197, 1488300123, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(198, 1488300126, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(199, 1488300127, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(200, 1488300128, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(201, 1488300132, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(202, 1488300134, 1, 'admin', 3, '1', 'Home', 'Viewing data for resource'),
(203, 1488300138, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(204, 1488300156, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(205, 1488300172, 1, 'admin', 5, '-', 'contact', 'Saving resource'),
(206, 1488300173, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(207, 1488300182, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(208, 1488300186, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(209, 1488300187, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(210, 1488313409, 1, 'admin', 78, '11', 'slider', 'Editing Chunk (HTML Snippet)'),
(211, 1488313418, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(212, 1488313438, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(213, 1488313438, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(214, 1488313447, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(215, 1488313450, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(216, 1488313473, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(217, 1488313478, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(218, 1488313499, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(219, 1488313510, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(220, 1488313514, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(221, 1488313516, 1, 'admin', 3, '1', 'Home', 'Viewing data for resource'),
(222, 1488316093, 1, 'admin', 22, '3', 'Ditto', 'Editing Snippet'),
(223, 1488326579, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(224, 1488326603, 1, 'admin', 5, '-', 'first', 'Saving resource'),
(225, 1488326604, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(226, 1488326611, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(227, 1488326620, 1, 'admin', 5, '-', 'second', 'Saving resource'),
(228, 1488326622, 1, 'admin', 3, '6', 'second', 'Viewing data for resource'),
(229, 1488326623, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(230, 1488326630, 1, 'admin', 61, '5', 'first', 'Publishing a resource'),
(231, 1488326631, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(232, 1488326637, 1, 'admin', 61, '6', 'second', 'Publishing a resource'),
(233, 1488326638, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(234, 1488326657, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(235, 1488326661, 1, 'admin', 5, '5', 'first', 'Saving resource'),
(236, 1488326662, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(237, 1488326664, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(238, 1488326673, 1, 'admin', 5, '6', 'second', 'Saving resource'),
(239, 1488326674, 1, 'admin', 3, '6', 'second', 'Viewing data for resource'),
(240, 1488365762, 1, 'admin', 19, '-', 'New Template', 'Creating a new template'),
(241, 1488365821, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(242, 1488365853, 1, 'admin', 20, '-', 'News page', 'Saving template'),
(243, 1488365853, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(244, 1488365860, 1, 'admin', 78, '10', 'header', 'Editing Chunk (HTML Snippet)'),
(245, 1488365896, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(246, 1488365901, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(247, 1488365918, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(248, 1488365920, 1, 'admin', 3, '1', 'Home', 'Viewing data for resource'),
(249, 1488365923, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(250, 1488365942, 1, 'admin', 20, '5', 'Main page', 'Saving template'),
(251, 1488365942, 1, 'admin', 76, '-', '-', 'Element management'),
(252, 1488365945, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(253, 1488365957, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(254, 1488365961, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(255, 1488365964, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(256, 1488365965, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(257, 1488365968, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(258, 1488366047, 1, 'admin', 17, '-', '-', 'Editing settings'),
(259, 1488366108, 1, 'admin', 30, '-', '-', 'Saving settings'),
(260, 1488366114, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(261, 1488366121, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(262, 1488366123, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(263, 1488379940, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(264, 1488379951, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(265, 1488379962, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(266, 1488379963, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(267, 1488379980, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(268, 1488379983, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(269, 1488379986, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(270, 1488379987, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(271, 1488402509, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(272, 1488402530, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(273, 1488402569, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(274, 1488402586, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(275, 1488402587, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(276, 1488402892, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(277, 1488402898, 1, 'admin', 96, '5', 'Main page Duplicate', 'Duplicate Template'),
(278, 1488402898, 1, 'admin', 16, '7', 'Main page Duplicate', 'Editing template'),
(279, 1488402923, 1, 'admin', 20, '7', 'About page', 'Saving template'),
(280, 1488402923, 1, 'admin', 76, '-', '-', 'Element management'),
(281, 1488402926, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(282, 1488402930, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(283, 1488402932, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(284, 1488402933, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(285, 1488403339, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(286, 1488403366, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(287, 1488403370, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(288, 1488403374, 1, 'admin', 96, '6', 'News page Duplicate', 'Duplicate Template'),
(289, 1488403375, 1, 'admin', 16, '8', 'News page Duplicate', 'Editing template'),
(290, 1488403392, 1, 'admin', 20, '8', 'News-ne page', 'Saving template'),
(291, 1488403393, 1, 'admin', 76, '-', '-', 'Element management'),
(292, 1488403407, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(293, 1488403411, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(294, 1488403413, 1, 'admin', 5, '5', 'first', 'Saving resource'),
(295, 1488403414, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(296, 1488403415, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(297, 1488403417, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(298, 1488403419, 1, 'admin', 5, '6', 'second', 'Saving resource'),
(299, 1488403421, 1, 'admin', 3, '6', 'second', 'Viewing data for resource'),
(300, 1488403422, 1, 'admin', 16, '8', 'News-ne page', 'Editing template'),
(301, 1488403426, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(302, 1488403427, 1, 'admin', 76, '-', '-', 'Element management'),
(303, 1488403692, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(304, 1488403710, 1, 'admin', 79, '-', 'news-article', 'Saving Chunk (HTML Snippet)'),
(305, 1488403710, 1, 'admin', 76, '-', '-', 'Element management'),
(306, 1488403727, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(307, 1488403732, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(308, 1488403769, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(309, 1488403770, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(310, 1488403811, 1, 'admin', 76, '-', '-', 'Element management'),
(311, 1488403814, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(312, 1488403822, 1, 'admin', 79, '14', 'news-article', 'Saving Chunk (HTML Snippet)'),
(313, 1488403822, 1, 'admin', 76, '-', '-', 'Element management'),
(314, 1488403870, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(315, 1488403875, 1, 'admin', 79, '14', 'news-article', 'Saving Chunk (HTML Snippet)'),
(316, 1488403875, 1, 'admin', 76, '-', '-', 'Element management'),
(317, 1488403929, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(318, 1488403933, 1, 'admin', 79, '14', 'news-article', 'Saving Chunk (HTML Snippet)'),
(319, 1488403933, 1, 'admin', 76, '-', '-', 'Element management'),
(320, 1488403948, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(321, 1488403958, 1, 'admin', 79, '14', 'news-article', 'Saving Chunk (HTML Snippet)'),
(322, 1488403958, 1, 'admin', 76, '-', '-', 'Element management'),
(323, 1488404028, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(324, 1488404048, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(325, 1488404112, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(326, 1488404114, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(327, 1488404117, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(328, 1488404125, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(329, 1488404127, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(330, 1488404129, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(331, 1488404144, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(332, 1488404144, 1, 'admin', 76, '-', '-', 'Element management'),
(333, 1488404153, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(334, 1488404171, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(335, 1488404172, 1, 'admin', 76, '-', '-', 'Element management'),
(336, 1488404193, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(337, 1488404203, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(338, 1488404203, 1, 'admin', 76, '-', '-', 'Element management'),
(339, 1488404215, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(340, 1488404240, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(341, 1488404240, 1, 'admin', 76, '-', '-', 'Element management'),
(342, 1488404259, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(343, 1488404292, 1, 'admin', 5, '5', 'first', 'Saving resource'),
(344, 1488404293, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(345, 1488404625, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(346, 1488404632, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(347, 1488404633, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(348, 1488404645, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(349, 1488404651, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(350, 1488404653, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(351, 1488404667, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(352, 1488404678, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(353, 1488404713, 1, 'admin', 5, '-', 'third', 'Saving resource'),
(354, 1488404715, 1, 'admin', 3, '7', 'third', 'Viewing data for resource'),
(355, 1488404725, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(356, 1488404730, 1, 'admin', 5, '7', 'third', 'Saving resource'),
(357, 1488404731, 1, 'admin', 3, '7', 'third', 'Viewing data for resource'),
(358, 1488404871, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(359, 1488404880, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(360, 1488404891, 1, 'admin', 5, '-', 'fourth', 'Saving resource'),
(361, 1488404892, 1, 'admin', 3, '8', 'fourth', 'Viewing data for resource'),
(362, 1488404893, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(363, 1488404898, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(364, 1488404900, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(365, 1488404924, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(366, 1488404929, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(367, 1488404936, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(368, 1488404938, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(369, 1488404942, 1, 'admin', 5, '6', 'second', 'Saving resource'),
(370, 1488404943, 1, 'admin', 3, '6', 'second', 'Viewing data for resource'),
(371, 1488404947, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(372, 1488404956, 1, 'admin', 5, '5', 'first', 'Saving resource'),
(373, 1488404957, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(374, 1488404958, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(375, 1488404961, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(376, 1488404966, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(377, 1488404969, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(378, 1488405156, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(379, 1488405161, 1, 'admin', 5, '7', 'third', 'Saving resource'),
(380, 1488405162, 1, 'admin', 3, '7', 'third', 'Viewing data for resource'),
(381, 1488405163, 1, 'admin', 27, '8', 'fourth', 'Editing resource'),
(382, 1488405167, 1, 'admin', 5, '8', 'fourth', 'Saving resource'),
(383, 1488405168, 1, 'admin', 3, '8', 'fourth', 'Viewing data for resource'),
(384, 1488405174, 1, 'admin', 3, '8', 'fourth', 'Viewing data for resource'),
(385, 1488405732, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(386, 1488405830, 1, 'admin', 79, '-', 'paginate-page', 'Saving Chunk (HTML Snippet)'),
(387, 1488405830, 1, 'admin', 76, '-', '-', 'Element management'),
(388, 1488405833, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(389, 1488405897, 1, 'admin', 79, '-', 'paginate-next', 'Saving Chunk (HTML Snippet)'),
(390, 1488405897, 1, 'admin', 76, '-', '-', 'Element management'),
(391, 1488405904, 1, 'admin', 78, '16', 'paginate-next', 'Editing Chunk (HTML Snippet)'),
(392, 1488405922, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(393, 1488405968, 1, 'admin', 79, '-', 'paginate-prev', 'Saving Chunk (HTML Snippet)'),
(394, 1488405968, 1, 'admin', 76, '-', '-', 'Element management'),
(395, 1488406007, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(396, 1488406093, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(397, 1488406094, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(398, 1488406152, 1, 'admin', 78, '15', 'paginate-page', 'Editing Chunk (HTML Snippet)'),
(399, 1488406175, 1, 'admin', 79, '15', 'paginate-page', 'Saving Chunk (HTML Snippet)'),
(400, 1488406175, 1, 'admin', 76, '-', '-', 'Element management'),
(401, 1488406215, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(402, 1488406264, 1, 'admin', 79, '-', 'paginate-current', 'Saving Chunk (HTML Snippet)'),
(403, 1488406264, 1, 'admin', 76, '-', '-', 'Element management'),
(404, 1488406269, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(405, 1488406298, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(406, 1488406300, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(407, 1488407056, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(408, 1488407069, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(409, 1488407086, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(410, 1488407101, 1, 'admin', 79, '-', 'news-pagination', 'Saving Chunk (HTML Snippet)'),
(411, 1488407101, 1, 'admin', 76, '-', '-', 'Element management'),
(412, 1488407108, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(413, 1488407113, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(414, 1488407276, 1, 'admin', 79, '19', 'news-pagination', 'Saving Chunk (HTML Snippet)'),
(415, 1488407276, 1, 'admin', 76, '-', '-', 'Element management'),
(416, 1488407291, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(417, 1488407292, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(418, 1488407312, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(419, 1488407410, 1, 'admin', 5, '5', 'first', 'Saving resource'),
(420, 1488407411, 1, 'admin', 3, '5', 'first', 'Viewing data for resource'),
(421, 1488407440, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(422, 1488407446, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(423, 1488407450, 1, 'admin', 5, '6', 'second', 'Saving resource'),
(424, 1488407452, 1, 'admin', 3, '6', 'second', 'Viewing data for resource'),
(425, 1488407453, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(426, 1488407457, 1, 'admin', 5, '7', 'third', 'Saving resource'),
(427, 1488407458, 1, 'admin', 3, '7', 'third', 'Viewing data for resource'),
(428, 1488407459, 1, 'admin', 27, '8', 'fourth', 'Editing resource'),
(429, 1488407463, 1, 'admin', 5, '8', 'fourth', 'Saving resource'),
(430, 1488407465, 1, 'admin', 3, '8', 'fourth', 'Viewing data for resource'),
(431, 1488407488, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(432, 1488407496, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(433, 1488407499, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(434, 1488407599, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(435, 1488407600, 1, 'admin', 76, '-', '-', 'Element management'),
(436, 1488407637, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(437, 1488407716, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(438, 1488407722, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(439, 1488407724, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(440, 1488407798, 1, 'admin', 27, '5', 'first', 'Editing resource'),
(441, 1488407806, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(442, 1488407807, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(443, 1488407808, 1, 'admin', 27, '6', 'second', 'Editing resource'),
(444, 1488407812, 1, 'admin', 5, '6', 'С чего начать поиск работы 2', 'Saving resource'),
(445, 1488407813, 1, 'admin', 3, '6', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(446, 1488407814, 1, 'admin', 27, '7', 'third', 'Editing resource'),
(447, 1488407819, 1, 'admin', 5, '7', 'С чего начать поиск работы 3', 'Saving resource'),
(448, 1488407820, 1, 'admin', 3, '7', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(449, 1488407821, 1, 'admin', 27, '8', 'fourth', 'Editing resource'),
(450, 1488407825, 1, 'admin', 5, '8', 'С чего начать поиск работы 4', 'Saving resource'),
(451, 1488407827, 1, 'admin', 3, '8', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(452, 1488408156, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(453, 1488408163, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(454, 1488408166, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(455, 1488408167, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(456, 1488408578, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(457, 1488408661, 1, 'admin', 300, '-', 'New Template Variable', 'Create Template Variable'),
(458, 1488408704, 1, 'admin', 302, '-', 'image', 'Save Template Variable'),
(459, 1488408704, 1, 'admin', 76, '-', '-', 'Element management'),
(460, 1488408712, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(461, 1488408761, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(462, 1488408763, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(463, 1488408766, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(464, 1488408782, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(465, 1488408839, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(466, 1488408885, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(467, 1488408885, 1, 'admin', 76, '-', '-', 'Element management'),
(468, 1488408914, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(469, 1488408934, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(470, 1488408934, 1, 'admin', 76, '-', '-', 'Element management'),
(471, 1488408955, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(472, 1488408966, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(473, 1488409021, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(474, 1488409050, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(475, 1488409089, 1, 'admin', 79, '-', 'news-sidebar', 'Saving Chunk (HTML Snippet)'),
(476, 1488409089, 1, 'admin', 76, '-', '-', 'Element management'),
(477, 1488409118, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(478, 1488409145, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(479, 1488409152, 1, 'admin', 5, '6', 'С чего начать поиск работы 2', 'Saving resource'),
(480, 1488409153, 1, 'admin', 3, '6', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(481, 1488409155, 1, 'admin', 27, '7', 'С чего начать поиск работы 3', 'Editing resource'),
(482, 1488409161, 1, 'admin', 5, '7', 'С чего начать поиск работы 3', 'Saving resource'),
(483, 1488409163, 1, 'admin', 3, '7', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(484, 1488409164, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(485, 1488409171, 1, 'admin', 5, '8', 'С чего начать поиск работы 4', 'Saving resource'),
(486, 1488409173, 1, 'admin', 3, '8', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(487, 1488409181, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(488, 1488409196, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(489, 1488409211, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(490, 1488409224, 1, 'admin', 79, '20', 'news-sidebar', 'Saving Chunk (HTML Snippet)'),
(491, 1488409224, 1, 'admin', 76, '-', '-', 'Element management'),
(492, 1488409242, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(493, 1488409291, 1, 'admin', 79, '20', 'news-sidebar', 'Saving Chunk (HTML Snippet)'),
(494, 1488409291, 1, 'admin', 76, '-', '-', 'Element management'),
(495, 1488409370, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(496, 1488409654, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(497, 1488409663, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(498, 1488409664, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(499, 1488409667, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(500, 1488409677, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(501, 1488409678, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(502, 1488409703, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(503, 1488409761, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(504, 1488409763, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(505, 1488409960, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(506, 1488409971, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(507, 1488409971, 1, 'admin', 76, '-', '-', 'Element management'),
(508, 1488409993, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(509, 1488410004, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(510, 1488410006, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(511, 1488410015, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(512, 1488410030, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(513, 1488410056, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(514, 1488410057, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(515, 1488410084, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(516, 1488410155, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(517, 1488410156, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(518, 1488410232, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(519, 1488410243, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(520, 1488410245, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(521, 1488410245, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(522, 1488410253, 1, 'admin', 5, '6', 'С чего начать поиск работы 2', 'Saving resource'),
(523, 1488410255, 1, 'admin', 27, '7', 'С чего начать поиск работы 3', 'Editing resource'),
(524, 1488410260, 1, 'admin', 5, '7', 'С чего начать поиск работы 3', 'Saving resource'),
(525, 1488410261, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(526, 1488410273, 1, 'admin', 5, '8', 'С чего начать поиск работы 4', 'Saving resource'),
(527, 1488410274, 1, 'admin', 3, '8', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(528, 1488410286, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(529, 1488410312, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(530, 1488410314, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(531, 1488410319, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(532, 1488410325, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(533, 1488410327, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(534, 1488410337, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(535, 1488410508, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(536, 1488410509, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(537, 1488410514, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(538, 1488410545, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(539, 1488410605, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(540, 1488410607, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(541, 1488410627, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(542, 1488410669, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(543, 1488410671, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(544, 1488410689, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(545, 1488410832, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(546, 1488410834, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(547, 1488410845, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(548, 1488410863, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(549, 1488411062, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(550, 1488411063, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(551, 1488411076, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(552, 1488411438, 1, 'admin', 106, '-', '-', 'Viewing Modules'),
(553, 1488411449, 1, 'admin', 112, '2', 'Extras', 'Execute module'),
(554, 1488411453, 1, 'admin', 106, '-', '-', 'Viewing Modules'),
(555, 1488411532, 1, 'admin', 76, '-', '-', 'Element management'),
(556, 1488411537, 1, 'admin', 101, '-', 'New Plugin', 'Create new plugin'),
(557, 1488411562, 1, 'admin', 103, '-', 'phx', 'Saving plugin'),
(558, 1488411562, 1, 'admin', 76, '-', '-', 'Element management'),
(559, 1488411607, 1, 'admin', 114, '-', '-', 'View event log'),
(560, 1488411657, 1, 'admin', 76, '-', '-', 'Element management'),
(561, 1488411665, 1, 'admin', 102, '10', 'phx', 'Edit plugin'),
(562, 1488411679, 1, 'admin', 103, '10', 'phx', 'Saving plugin'),
(563, 1488411679, 1, 'admin', 76, '-', '-', 'Element management'),
(564, 1488411689, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(565, 1488411692, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(566, 1488411742, 1, 'admin', 102, '10', 'phx', 'Edit plugin'),
(567, 1488411790, 1, 'admin', 103, '10', 'phx', 'Saving plugin'),
(568, 1488411790, 1, 'admin', 76, '-', '-', 'Element management'),
(569, 1488411794, 1, 'admin', 102, '10', 'phx', 'Edit plugin'),
(570, 1488411822, 1, 'admin', 103, '10', 'PHx', 'Saving plugin'),
(571, 1488411822, 1, 'admin', 76, '-', '-', 'Element management'),
(572, 1488411845, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(573, 1488411858, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(574, 1488411859, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(575, 1488411872, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(576, 1488411886, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(577, 1488411888, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(578, 1488411888, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(579, 1488411898, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(580, 1488411900, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(581, 1488411914, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(582, 1488411924, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(583, 1488411926, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(584, 1488411942, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(585, 1488411950, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(586, 1488411952, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(587, 1488411952, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(588, 1488411959, 1, 'admin', 5, '6', 'С чего начать поиск работы 2', 'Saving resource'),
(589, 1488411960, 1, 'admin', 3, '6', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(590, 1488411961, 1, 'admin', 27, '7', 'С чего начать поиск работы 3', 'Editing resource'),
(591, 1488411967, 1, 'admin', 5, '7', 'С чего начать поиск работы 3', 'Saving resource'),
(592, 1488411968, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(593, 1488411974, 1, 'admin', 5, '8', 'С чего начать поиск работы 4', 'Saving resource'),
(594, 1488411975, 1, 'admin', 3, '8', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(595, 1488413247, 1, 'admin', 53, '-', '-', 'Viewing system info'),
(596, 1488413258, 1, 'admin', 13, '-', '-', 'Viewing logging'),
(597, 1488413262, 1, 'admin', 53, '-', '-', 'Viewing system info'),
(598, 1488413287, 1, 'admin', 75, '-', '-', 'User/ role management'),
(599, 1488413372, 1, 'admin', 22, '5', 'eForm', 'Editing Snippet'),
(600, 1488413443, 1, 'admin', 99, '-', '-', 'Manage Web Users'),
(601, 1488413444, 1, 'admin', 86, '-', '-', 'Role management'),
(602, 1488413446, 1, 'admin', 40, '-', '-', 'Editing Access Permissions'),
(603, 1488413447, 1, 'admin', 91, '-', '-', 'Editing Web Access Permissions'),
(604, 1488413449, 1, 'admin', 75, '-', '-', 'User/ role management'),
(605, 1488413451, 1, 'admin', 12, '1', 'admin', 'Editing user'),
(606, 1488413478, 1, 'admin', 32, '1', 'admin', 'Saving user'),
(607, 1488413478, 1, 'admin', 75, '-', '-', 'User/ role management'),
(608, 1488438502, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(609, 1488438509, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(610, 1488438784, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(611, 1488438784, 1, 'admin', 76, '-', '-', 'Element management'),
(612, 1488438786, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(613, 1488438853, 1, 'admin', 79, '-', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(614, 1488438853, 1, 'admin', 76, '-', '-', 'Element management'),
(615, 1488438858, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(616, 1488438863, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(617, 1488438863, 1, 'admin', 76, '-', '-', 'Element management'),
(618, 1488438867, 1, 'admin', 78, '14', 'news-article', 'Editing Chunk (HTML Snippet)'),
(619, 1488438872, 1, 'admin', 80, '14', 'news-article', 'Deleting Chunk (HTML Snippet)'),
(620, 1488438872, 1, 'admin', 76, '-', '-', 'Element management'),
(621, 1488439017, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(622, 1488439043, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(623, 1488439043, 1, 'admin', 76, '-', '-', 'Element management'),
(624, 1488439098, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(625, 1488439219, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(626, 1488439233, 1, 'admin', 79, '-', 'tpl_thank', 'Saving Chunk (HTML Snippet)'),
(627, 1488439233, 1, 'admin', 76, '-', '-', 'Element management'),
(628, 1488439238, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(629, 1488439543, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(630, 1488439543, 1, 'admin', 76, '-', '-', 'Element management'),
(631, 1488439694, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(632, 1488439740, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(633, 1488439774, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(634, 1488439774, 1, 'admin', 76, '-', '-', 'Element management'),
(635, 1488439869, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(636, 1488439938, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(637, 1488439962, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(638, 1488439962, 1, 'admin', 76, '-', '-', 'Element management'),
(639, 1488439994, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(640, 1488440363, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(641, 1488440421, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(642, 1488440602, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(643, 1488440615, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(644, 1488440659, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(645, 1488440659, 1, 'admin', 76, '-', '-', 'Element management'),
(646, 1488440683, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(647, 1488440688, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(648, 1488440695, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(649, 1488440695, 1, 'admin', 76, '-', '-', 'Element management'),
(650, 1488440786, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(651, 1488440798, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(652, 1488440798, 1, 'admin', 76, '-', '-', 'Element management'),
(653, 1488440963, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(654, 1488440975, 1, 'admin', 22, '5', 'eForm', 'Editing Snippet'),
(655, 1488441001, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(656, 1488441347, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(657, 1488441356, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(658, 1488441356, 1, 'admin', 76, '-', '-', 'Element management'),
(659, 1488441515, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(660, 1488441537, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(661, 1488441550, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(662, 1488441770, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(663, 1488441838, 1, 'admin', 79, '-', 'tpl_report', 'Saving Chunk (HTML Snippet)'),
(664, 1488441838, 1, 'admin', 76, '-', '-', 'Element management'),
(665, 1488441840, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(666, 1488441851, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(667, 1488441852, 1, 'admin', 76, '-', '-', 'Element management'),
(668, 1488441914, 1, 'admin', 22, '5', 'eForm', 'Editing Snippet'),
(669, 1488442342, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(670, 1488442355, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(671, 1488442355, 1, 'admin', 76, '-', '-', 'Element management'),
(672, 1488442361, 1, 'admin', 78, '22', 'tpl_thank', 'Editing Chunk (HTML Snippet)'),
(673, 1488442371, 1, 'admin', 79, '22', 'tpl_thank', 'Saving Chunk (HTML Snippet)'),
(674, 1488442371, 1, 'admin', 76, '-', '-', 'Element management'),
(675, 1488442450, 1, 'admin', 22, '5', 'eForm', 'Editing Snippet'),
(676, 1488442517, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(677, 1488442527, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(678, 1488442538, 1, 'admin', 79, '23', 'tpl_report', 'Saving Chunk (HTML Snippet)'),
(679, 1488442538, 1, 'admin', 76, '-', '-', 'Element management'),
(680, 1488442835, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(681, 1488442877, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(682, 1488442877, 1, 'admin', 76, '-', '-', 'Element management'),
(683, 1488442883, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(684, 1488442913, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(685, 1488442913, 1, 'admin', 76, '-', '-', 'Element management'),
(686, 1488442944, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(687, 1488442952, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(688, 1488442952, 1, 'admin', 76, '-', '-', 'Element management'),
(689, 1488443035, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(690, 1488443084, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(691, 1488443084, 1, 'admin', 76, '-', '-', 'Element management'),
(692, 1488443086, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(693, 1488443146, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(694, 1488443160, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(695, 1488443160, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(696, 1488443175, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(697, 1488443176, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(698, 1488443212, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(699, 1488443244, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(700, 1488443274, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(701, 1488443274, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(702, 1488443594, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(703, 1488443594, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(704, 1488443652, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(705, 1488443653, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(706, 1488443658, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(707, 1488443700, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(708, 1488443725, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(709, 1488443725, 1, 'admin', 76, '-', '-', 'Element management'),
(710, 1488443767, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(711, 1488443786, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(712, 1488443786, 1, 'admin', 76, '-', '-', 'Element management'),
(713, 1488443992, 1, 'admin', 53, '-', '-', 'Viewing system info'),
(714, 1488443996, 1, 'admin', 70, '-', '-', 'Viewing site schedule'),
(715, 1488443998, 1, 'admin', 114, '-', '-', 'View event log'),
(716, 1488444007, 1, 'admin', 115, '4', '-', 'View event log details'),
(717, 1488444045, 1, 'admin', 114, '-', '-', 'View event log'),
(718, 1488444048, 1, 'admin', 115, '3', '-', 'View event log details'),
(719, 1488444049, 1, 'admin', 114, '-', '-', 'View event log'),
(720, 1488444051, 1, 'admin', 115, '2', '-', 'View event log details'),
(721, 1488444053, 1, 'admin', 114, '-', '-', 'View event log'),
(722, 1488444054, 1, 'admin', 115, '1', '-', 'View event log details'),
(723, 1488444057, 1, 'admin', 114, '-', '-', 'View event log'),
(724, 1488444061, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(725, 1488444076, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(726, 1488444076, 1, 'admin', 76, '-', '-', 'Element management'),
(727, 1488444105, 1, 'admin', 114, '-', '-', 'View event log'),
(728, 1488444111, 1, 'admin', 115, '5', '-', 'View event log details'),
(729, 1488444131, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(730, 1488444146, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(731, 1488444146, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(732, 1488444207, 1, 'admin', 114, '-', '-', 'View event log'),
(733, 1488444211, 1, 'admin', 115, '6', '-', 'View event log details'),
(734, 1488444339, 1, 'admin', 114, '-', '-', 'View event log'),
(735, 1488444344, 1, 'admin', 115, '7', '-', 'View event log details'),
(736, 1488444382, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(737, 1488444396, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(738, 1488444396, 1, 'admin', 76, '-', '-', 'Element management'),
(739, 1488444440, 1, 'admin', 114, '-', '-', 'View event log'),
(740, 1488444444, 1, 'admin', 115, '8', '-', 'View event log details'),
(741, 1488444707, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(742, 1488444712, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(743, 1488444724, 1, 'admin', 79, '23', 'tpl_report', 'Saving Chunk (HTML Snippet)'),
(744, 1488444725, 1, 'admin', 76, '-', '-', 'Element management'),
(745, 1488444728, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(746, 1488444780, 1, 'admin', 114, '-', '-', 'View event log'),
(747, 1488444790, 1, 'admin', 115, '10', '-', 'View event log details'),
(748, 1488445896, 1, 'admin', 114, '-', '-', 'View event log'),
(749, 1488445900, 1, 'admin', 115, '11', '-', 'View event log details'),
(750, 1488446967, 1, 'admin', 114, '-', '-', 'View event log'),
(751, 1488446981, 1, 'admin', 114, '-', '-', 'View event log'),
(752, 1488447896, 1, 'admin', 114, '-', '-', 'View event log'),
(753, 1488447902, 1, 'admin', 114, '-', '-', 'View event log'),
(754, 1488447903, 1, 'admin', 116, '-', '-', 'Delete event log'),
(755, 1488447903, 1, 'admin', 114, '-', '-', 'View event log'),
(756, 1488447906, 1, 'admin', 114, '-', '-', 'View event log'),
(757, 1488447936, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(758, 1488447948, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(759, 1488447962, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(760, 1488447981, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(761, 1488447982, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(762, 1488448056, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(763, 1488448065, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(764, 1488448065, 1, 'admin', 76, '-', '-', 'Element management'),
(765, 1488448068, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(766, 1488448081, 1, 'admin', 79, '23', 'tpl_report', 'Saving Chunk (HTML Snippet)'),
(767, 1488448081, 1, 'admin', 76, '-', '-', 'Element management'),
(768, 1488448088, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(769, 1488448164, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(770, 1488448164, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(771, 1488449383, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(772, 1488449408, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(773, 1488449409, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(774, 1488449730, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(775, 1488449746, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(776, 1488449776, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(777, 1488450143, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(778, 1488450148, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(779, 1488450148, 1, 'admin', 76, '-', '-', 'Element management'),
(780, 1488450468, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(781, 1488450646, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(782, 1488451226, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(783, 1488451226, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(784, 1488451294, 1, 'admin', 79, '21', 'tpl_form', 'Saving Chunk (HTML Snippet)'),
(785, 1488451294, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(786, 1488452019, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(787, 1488452040, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(788, 1488452041, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(789, 1488452111, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(790, 1488452111, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(791, 1488452132, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(792, 1488452147, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(793, 1488452368, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(794, 1488452387, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(795, 1488452463, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(796, 1488452464, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(797, 1488452466, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(798, 1488452528, 1, 'admin', 79, '-', 'tpl_contact_form', 'Saving Chunk (HTML Snippet)'),
(799, 1488452528, 1, 'admin', 76, '-', '-', 'Element management'),
(800, 1488452536, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(801, 1488452561, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(802, 1488452563, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(803, 1488452727, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(804, 1488452739, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(805, 1488452740, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(806, 1488452755, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(807, 1488452762, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(808, 1488452763, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(809, 1488452776, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(810, 1488452821, 1, 'admin', 5, '2', 'about ', 'Saving resource'),
(811, 1488452823, 1, 'admin', 3, '2', 'about ', 'Viewing data for resource'),
(812, 1488452906, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(813, 1488452914, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(814, 1488452914, 1, 'admin', 76, '-', '-', 'Element management'),
(815, 1488452939, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(816, 1488452942, 1, 'admin', 78, '24', 'tpl_contact_form', 'Editing Chunk (HTML Snippet)'),
(817, 1488452945, 1, 'admin', 79, '24', 'tpl_contact_form', 'Saving Chunk (HTML Snippet)'),
(818, 1488452945, 1, 'admin', 76, '-', '-', 'Element management'),
(819, 1488452947, 1, 'admin', 78, '23', 'tpl_report', 'Editing Chunk (HTML Snippet)'),
(820, 1488452971, 1, 'admin', 79, '23', 'tpl_report', 'Saving Chunk (HTML Snippet)'),
(821, 1488452972, 1, 'admin', 76, '-', '-', 'Element management'),
(822, 1488452974, 1, 'admin', 77, '-', 'New Chunk', 'Creating a new Chunk (HTML Snippet)'),
(823, 1488453026, 1, 'admin', 79, '-', 'tpl_contact_report', 'Saving Chunk (HTML Snippet)'),
(824, 1488453026, 1, 'admin', 76, '-', '-', 'Element management'),
(825, 1488453184, 1, 'admin', 78, '25', 'tpl_contact_report', 'Editing Chunk (HTML Snippet)'),
(826, 1488453189, 1, 'admin', 79, '25', 'tpl_contact_report', 'Saving Chunk (HTML Snippet)'),
(827, 1488453189, 1, 'admin', 76, '-', '-', 'Element management'),
(828, 1488453197, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(829, 1488453206, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(830, 1488453207, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(831, 1488453215, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(832, 1488453492, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(833, 1488453511, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(834, 1488453518, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(835, 1488453530, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(836, 1488453531, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(837, 1488453540, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(838, 1488453574, 1, 'admin', 5, '1', 'Home', 'Saving resource'),
(839, 1488453574, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(840, 1488453622, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(841, 1488453631, 1, 'admin', 27, '2', 'about ', 'Editing resource'),
(842, 1488453652, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(843, 1488453667, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(844, 1488453685, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(845, 1488453685, 1, 'admin', 76, '-', '-', 'Element management'),
(846, 1488453705, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(847, 1488453712, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(848, 1488453726, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(849, 1488453783, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(850, 1488453798, 1, 'admin', 16, '8', 'News-one page', 'Editing template'),
(851, 1488453819, 1, 'admin', 20, '8', 'News-one page', 'Saving template'),
(852, 1488453819, 1, 'admin', 76, '-', '-', 'Element management'),
(853, 1488454020, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(854, 1488454024, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(855, 1488454037, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(856, 1488454059, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(857, 1488454060, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(858, 1488454084, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(859, 1488454098, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(860, 1488454100, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(861, 1488454151, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(862, 1488454204, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(863, 1488454205, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(864, 1488454205, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(865, 1488454209, 1, 'admin', 5, '6', 'С чего начать поиск работы 2', 'Saving resource'),
(866, 1488454210, 1, 'admin', 27, '7', 'С чего начать поиск работы 3', 'Editing resource'),
(867, 1488454214, 1, 'admin', 5, '7', 'С чего начать поиск работы 3', 'Saving resource'),
(868, 1488454215, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(869, 1488454219, 1, 'admin', 5, '8', 'С чего начать поиск работы 4', 'Saving resource'),
(870, 1488454220, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(871, 1488454865, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(872, 1488454923, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(873, 1488454924, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(874, 1488454955, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(875, 1488455023, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(876, 1488455023, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(877, 1488455050, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(878, 1488455050, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(879, 1488455073, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(880, 1488455074, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(881, 1488455088, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(882, 1488455114, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(883, 1488455114, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(884, 1488455143, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(885, 1488455144, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(886, 1488455162, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(887, 1488455162, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(888, 1488455174, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(889, 1488455175, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(890, 1488455190, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(891, 1488455190, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(892, 1488455207, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(893, 1488455207, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(894, 1488455220, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(895, 1488455220, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(896, 1488455229, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(897, 1488455242, 1, 'admin', 62, '5', 'С чего начать поиск работы 1', 'Un-publishing a resource'),
(898, 1488455243, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(899, 1488455247, 1, 'admin', 61, '5', 'С чего начать поиск работы 1', 'Publishing a resource'),
(900, 1488455248, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(901, 1488455262, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(902, 1488455273, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(903, 1488455281, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(904, 1488455282, 1, 'admin', 3, '5', 'С чего начать поиск работы 1', 'Viewing data for resource'),
(905, 1488455287, 1, 'admin', 27, '6', 'С чего начать поиск работы 2', 'Editing resource'),
(906, 1488455291, 1, 'admin', 27, '7', 'С чего начать поиск работы 3', 'Editing resource'),
(907, 1488455294, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(908, 1488455305, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(909, 1488455315, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(910, 1488455316, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(911, 1488455319, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(912, 1488455329, 1, 'admin', 61, '5', 'С чего начать поиск работы 1', 'Publishing a resource'),
(913, 1488455330, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(914, 1488455348, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(915, 1488455369, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(916, 1488455388, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(917, 1488455414, 1, 'admin', 78, '19', 'news-pagination', 'Editing Chunk (HTML Snippet)'),
(918, 1488455426, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(919, 1488455480, 1, 'admin', 27, '8', 'С чего начать поиск работы 4', 'Editing resource'),
(920, 1488455510, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(921, 1488455541, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(922, 1488455570, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(923, 1488455585, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(924, 1488455585, 1, 'admin', 76, '-', '-', 'Element management'),
(925, 1488455603, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(926, 1488455623, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(927, 1488455642, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(928, 1488455643, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(929, 1488455645, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(930, 1488455659, 1, 'admin', 20, '6', 'News page', 'Saving template'),
(931, 1488455659, 1, 'admin', 76, '-', '-', 'Element management'),
(932, 1488455820, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(933, 1488455832, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(934, 1488455847, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(935, 1488455848, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(936, 1488455876, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(937, 1488455876, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(938, 1488455887, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(939, 1488455887, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(940, 1488455902, 1, 'admin', 5, '5', 'С чего начать поиск работы 1', 'Saving resource'),
(941, 1488455902, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(942, 1488455915, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(943, 1488455924, 1, 'admin', 5, '3', 'news', 'Saving resource'),
(944, 1488455925, 1, 'admin', 3, '3', 'news', 'Viewing data for resource'),
(945, 1488455950, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(946, 1488455975, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(947, 1488456067, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(948, 1488456078, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(949, 1488456082, 1, 'admin', 16, '6', 'News page', 'Editing template'),
(950, 1488456095, 1, 'admin', 16, '5', 'Main page', 'Editing template'),
(951, 1488456099, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(952, 1488456106, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(953, 1488456110, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(954, 1488456122, 1, 'admin', 78, '20', 'news-sidebar', 'Editing Chunk (HTML Snippet)'),
(955, 1488456139, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(956, 1488456330, 1, 'admin', 16, '7', 'About page', 'Editing template'),
(957, 1488456334, 1, 'admin', 96, '7', 'About page Duplicate', 'Duplicate Template'),
(958, 1488456334, 1, 'admin', 16, '9', 'About page Duplicate', 'Editing template'),
(959, 1488456350, 1, 'admin', 20, '9', 'Contact page', 'Saving template'),
(960, 1488456350, 1, 'admin', 76, '-', '-', 'Element management'),
(961, 1488456354, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(962, 1488456358, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(963, 1488456361, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(964, 1488456362, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(965, 1488456366, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(966, 1488456370, 1, 'admin', 27, '3', 'news', 'Editing resource'),
(967, 1488456375, 1, 'admin', 27, '5', 'С чего начать поиск работы 1', 'Editing resource'),
(968, 1488456442, 1, 'admin', 301, '2', 'Tags', 'Edit Template Variable'),
(969, 1488456446, 1, 'admin', 301, '1', 'blogContent', 'Edit Template Variable'),
(970, 1488456556, 1, 'admin', 16, '9', 'Contact page', 'Editing template'),
(971, 1488456565, 1, 'admin', 78, '21', 'tpl_form', 'Editing Chunk (HTML Snippet)'),
(972, 1488456574, 1, 'admin', 78, '24', 'tpl_contact_form', 'Editing Chunk (HTML Snippet)'),
(973, 1488456578, 1, 'admin', 78, '13', 'modal', 'Editing Chunk (HTML Snippet)'),
(974, 1488456587, 1, 'admin', 79, '13', 'modal', 'Saving Chunk (HTML Snippet)'),
(975, 1488456587, 1, 'admin', 76, '-', '-', 'Element management'),
(976, 1488456598, 1, 'admin', 16, '9', 'Contact page', 'Editing template'),
(977, 1488456603, 1, 'admin', 27, '4', 'contact', 'Editing resource'),
(978, 1488456611, 1, 'admin', 5, '4', 'contact', 'Saving resource'),
(979, 1488456612, 1, 'admin', 3, '4', 'contact', 'Viewing data for resource'),
(980, 1488456671, 1, 'admin', 114, '-', '-', 'View event log'),
(981, 1488456677, 1, 'admin', 116, '-', '-', 'Delete event log'),
(982, 1488456677, 1, 'admin', 114, '-', '-', 'View event log'),
(983, 1488456689, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(984, 1488456738, 1, 'admin', 16, '9', 'Contact page', 'Editing template'),
(985, 1488456743, 1, 'admin', 53, '-', '-', 'Viewing system info'),
(986, 1488456777, 1, 'admin', 75, '-', '-', 'User/ role management'),
(987, 1488456797, 1, 'admin', 106, '-', '-', 'Viewing Modules'),
(988, 1488456804, 1, 'admin', 9, '-', '-', 'Viewing help'),
(989, 1488457119, 1, 'admin', 17, '-', '-', 'Editing settings'),
(990, 1488457166, 1, 'admin', 30, '-', '-', 'Saving settings'),
(991, 1488457171, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(992, 1488457218, 1, 'admin', 4, '-', 'New Resource', 'Creating a resource'),
(993, 1488457220, 1, 'admin', 5, '-', '404', 'Saving resource'),
(994, 1488457222, 1, 'admin', 3, '9', '404', 'Viewing data for resource'),
(995, 1488457235, 1, 'admin', 27, '9', '404', 'Editing resource'),
(996, 1488457244, 1, 'admin', 5, '9', '404', 'Saving resource'),
(997, 1488457245, 1, 'admin', 3, '9', '404', 'Viewing data for resource'),
(998, 1488457246, 1, 'admin', 27, '9', '404', 'Editing resource'),
(999, 1488457630, 1, 'admin', 27, '1', 'Home', 'Editing resource'),
(1000, 1488457675, 1, 'admin', 99, '-', '-', 'Manage Web Users'),
(1001, 1488457677, 1, 'admin', 87, '-', 'New Web User', 'Create new web user'),
(1002, 1488457680, 1, 'admin', 75, '-', '-', 'User/ role management'),
(1003, 1488457681, 1, 'admin', 11, '-', 'New User', 'Creating a user'),
(1004, 1488457720, 1, 'admin', 11, '-', 'New User', 'Creating a user'),
(1005, 1488457733, 1, 'admin', 11, '-', 'New User', 'Creating a user'),
(1006, 1488457738, 1, 'admin', 32, '-', 'adminko', 'Saving user'),
(1007, 1488457780, 2, 'adminko', 58, '-', 'MODX', 'Logged in');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_users`
--

CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

--
-- Дамп данных таблицы `modx_manager_users`
--

INSERT INTO `modx_manager_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$P$BJmROBecDQ182v03NOy9wVlXj.POhF/'),
(2, 'adminko', '$P$BShY2MnUbQ9CBV4c.V0Po6QvPyHCXS/');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_access`
--

CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `haskeywords`, `hasmetatags`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Home', '', '', 'home1', '', 1, 0, 0, 0, 0, '', '<!--services start-->\r\n<section class=\"services animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\"><a href=\"#\"> <span class=\"icon_item\"> <img class=\"img\" src=\"/assets/templates/test/assets/images/icon1.png\" alt=\"\" /> <img class=\"hover_img\" src=\"assets/images/icon1h.png\" alt=\"\" /> </span> <span class=\"title\">массовый подбор</span></a>\r\n<p>Кадровое агентство &laquo;Vasko-personal&raquo; оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\"><a href=\"#\"> <span class=\"icon_item\"> <img class=\"img\" src=\"/assets/templates/test/assets/images/icon2.png\" alt=\"\" /> <img class=\"hover_img\" src=\"assets/images/icon2h.png\" alt=\"\" /> </span> <span class=\"title\">Рекрутинг</span></a>\r\n<p>Кадровое агентство &laquo;Vasko-personal&raquo; оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\"><a href=\"#\"> <span class=\"icon_item\"> <img class=\"img\" src=\"/assets/templates/test/assets/images/icon3.png\" alt=\"\" /> <img class=\"hover_img\" src=\"assets/images/icon3h.png\" alt=\"\" /> </span> <span class=\"title\">Поиск в регионах</span></a>\r\n<p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы в бухгалтерии</p>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\"><a href=\"#\"> <span class=\"icon_item\"> <img class=\"img\" src=\"/assets/templates/test/assets/images/icon4.png\" alt=\"\" /> <img class=\"hover_img\" src=\"assets/images/icon4h.png\" alt=\"\" /> </span> <span class=\"title\">Executive search</span></a>\r\n<p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-12\"><a class=\"btn btn_grey\" href=\"#\">Заполнить техническое задание</a></div>\r\n</div>\r\n</section>\r\n<!--services end-->\r\n<p>&nbsp;</p>\r\n<!--about_index start-->\r\n<section class=\"about_index\">\r\n<div class=\"container\">\r\n<div class=\"col-md-8 col-sm-12 col-xs-12 about_item animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\"><strong class=\"heading\">о компании</strong></div>\r\n<div class=\"col-md-3 col-sm-3 col-xs-3 img_hold\"><img src=\"/assets/templates/test/assets/images/about_img.png\" alt=\"\" /></div>\r\n<div class=\"col-md-9 col-sm-9 col-xs-9\">\r\n<div class=\"content\">\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n</div>\r\n<a class=\"btn btn_transp\" href=\"#\">подробнее</a></div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-12 col-xs-12 news_item animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\"><strong class=\"heading\">Последние новости</strong> <!-- .carousel -->\r\n<div class=\"owl-carousel-news owl-theme\"><a class=\"item\" href=\"#\"> <img src=\"assets/templates/test/assets/images/new1.jpg\" alt=\"First slide\" /></a>\r\n<div class=\"info_news\"><span class=\"date\">21/05/2014</span> <span class=\"title_new\">С чего начать поиск работы1</span>\r\n<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n</div>\r\n<a class=\"item\" href=\"#\"> <img src=\"assets/templates/test/assets/images/new1.jpg\" alt=\"Second slide\" /></a>\r\n<div class=\"info_news\"><span class=\"date\">21/05/2014</span> <span class=\"title_new\">С чего начать поиск работы2</span>\r\n<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n</div>\r\n<a class=\"item\" href=\"#\"> <img src=\"assets/templates/test/assets/images/new1.jpg\" alt=\"Third slide\" /></a>\r\n<div class=\"info_news\"><span class=\"date\">21/05/2014</span> <span class=\"title_new\">С чего начать поиск работы3</span>\r\n<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n</div>\r\n</div>\r\n<!-- /.carousel --> <a class=\"btn btn_transp\" href=\"#\">Все новости</a></div>\r\n</div>\r\n</section>\r\n<!--about_index end-->\r\n<p>&nbsp;</p>\r\n<!--benefits start-->\r\n<section class=\"benefits animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n<div class=\"container\">\r\n<div class=\"col-sm-12\"><strong class=\"title_section\">Наш подход</strong></div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 benefits_block\">\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\"><span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon5.png\" alt=\"\" /></span> <span class=\"title\">Экономия времени</span></div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\"><span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon6.png\" alt=\"\" /></span> <span class=\"title\">гарантия</span></div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\"><span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon7.png\" alt=\"\" /></span> <span class=\"title\">Профессионализм</span></div>\r\n<div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\"><span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon8.png\" alt=\"\" /></span> <span class=\"title\">экономия финансов</span></div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-12 content\">\r\n<p>Кадровое агентство в Киеве &laquo;Vasko-personal&raquo; &mdash; один из лидеров в своей отралси. Основа нашего успеха заключается<br />в четкой концентрации на едином направлении - рекрутинге.</p>\r\n</div>\r\n</div>\r\n</section>\r\n<!--benefits end-->', 1, 5, 0, 1, 1, 1, 1130304721, 1, 1488453573, 0, 0, 0, 1130304721, 1, 'Главная', 0, 0, 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'about ', '', '', 'about', '', 1, 0, 0, 0, 0, '', ' <!--main start-->\r\n      <div class=\"main wrap_about\">\r\n        <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n          <div class=\"row\">\r\n            <!--about start-->\r\n            <div id=\"about\" class=\"col-sm-12\">\r\n              <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n                <strong class=\"heading\">Кадровое агентство Vasko-personal</strong>\r\n                <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n                <div class=\"quote\"> Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n              </div>\r\n              <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n                <div class=\"owl-carousel owl-theme\">\r\n                  <div class=\"item\"><img src=\"/assets/templates/test/assets/images/slider1.jpg\" alt=\"\"></div>\r\n                  <div class=\"item\"><img src=\"/assets/templates/test/assets/images/slider1.jpg\" alt=\"\"></div>\r\n                  <div class=\"item\"><img src=\"/assets/templates/test/assets/images/slider1.jpg\" alt=\"\"></div>\r\n                </div>\r\n              </div>\r\n            </div><!--about end-->\r\n            <!--mission start-->\r\n            <div id=\"mission\" class=\"col-sm-12\">\r\n              <div class=\"col-sm-12\">\r\n                <strong class=\"heading\">Миссия и цели</strong>\r\n              </div>\r\n              <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n                <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. </p>\r\n                <p>И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n              </div>\r\n              <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n                <ul class=\"purp\">\r\n                  <li><span>ЭКОНОМИЯ ВРЕМЕНИ.</span>\r\n                  Собеседования проводятся только с отобранными,\r\n                  по Вашим заявкам, соискателями.</li>  \r\n                  <li><span>ГАРАНТИЯ</span>\r\n                  закрытия вакансии в требуемый Вами срок.</li>\r\n                  <li><span>КАЧЕСТВО.</span>\r\n                  Подбором кандидатов занимаются опытные специалисты.</li>\r\n                  <li><span>ЭКОНОМИЯ ФИНАНСОВ</span>\r\n                  на размещении вакансий в специализированных изданиях и на сайтах.</li>                        \r\n                </ul>\r\n              </div>\r\n            </div><!--mission end-->\r\n            <!--benefits start-->\r\n            <div id=\"benefits\" class=\"col-sm-12\">\r\n              <div class=\"col-sm-12\">\r\n                <strong class=\"heading\">Преимущества</strong>\r\n              </div>\r\n              <div class=\"col-sm-12 benefits_block\">\r\n                <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n                  <span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon5.png\" alt=\"\" /></span>\r\n                  <span class=\"title\">Экономия времени</span>\r\n                </div>\r\n                <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n                  <span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon6.png\" alt=\"\" /></span>\r\n                  <span class=\"title\">гарантия</span>\r\n                </div>\r\n                <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n                  <span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon7.png\" alt=\"\" /></span>\r\n                  <span class=\"title\">Профессионализм</span>\r\n                </div>\r\n                <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n                  <span class=\"icon_item\"><img src=\"/assets/templates/test/assets/images/icon8.png\" alt=\"\" /></span>\r\n                  <span class=\"title\">экономия финансов</span>\r\n                </div>\r\n              </div>\r\n              <div class=\"col-sm-12 content\">\r\n                <p>Кадровое агентство в Киеве «Vasko-personal» — один из лидеров в своей отралси. Основа нашего успеха заключается<br/>в четкой концентрации на едином направлении - рекрутинге.</p>\r\n              </div>\r\n            </div> <!--benefits end-->\r\n            <!--news start-->\r\n            <div id=\"news\" class=\"col-sm-12 news_block\">\r\n              <div class=\"col-sm-12\">\r\n                <strong class=\"heading\">Новости</strong>\r\n              </div>\r\n              <ul class=\"news_list\">\r\n                <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n                  <a href=\"#\">\r\n                    <img src=\"/assets/templates/test/assets/images/new2.jpg\" alt=\"First slide\">\r\n                    <div class=\"info_news\">\r\n                      <span class=\"date\">21/05/2014</span>\r\n                      <span class=\"title_new\">С чего начать поиск работы</span>\r\n                      <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n                    </div>\r\n                  </a>\r\n                </li>\r\n                <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n                  <a href=\"#\">\r\n                    <img src=\"/assets/templates/test/assets/images/new3.jpg\" alt=\"First slide\">\r\n                    <div class=\"info_news\">\r\n                      <span class=\"date\">21/05/2014</span>\r\n                      <span class=\"title_new\">С чего начать поиск работы</span>\r\n                      <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n                    </div>\r\n                  </a>\r\n                </li>\r\n                <li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n                  <a href=\"#\">\r\n                    <img src=\"/assets/templates/test/assets/images/new4.jpg\" alt=\"First slide\">\r\n                    <div class=\"info_news\">\r\n                      <span class=\"date\">21/05/2014</span>\r\n                      <span class=\"title_new\">С чего начать поиск работы</span>\r\n                      <p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n                    </div>\r\n                  </a>\r\n                </li>\r\n              </ul>\r\n              <a href=\"#\" class=\"btn btn_transp details\">Все новости</a>\r\n            </div><!--news end-->\r\n          </div>\r\n        </div>\r\n      </div><!--main end-->\r\n   ', 1, 7, 1, 0, 0, 1, 1488234702, 1, 1488452821, 0, 0, 0, 1488237104, 1, 'О нас', 0, 0, 0, 0, 0, 0, 0, 1),
(9, 'document', 'text/html', '404', '', '', '404', '', 1, 0, 0, 0, 0, '', '  <!--main start-->\r\n      <div class=\"main wrap_404\">\r\n        <div class=\"container\">\r\n          <div class=\"col-md-11 col-sm-12 col-xs-12 block_404\">\r\n            <strong class=\"heading\">404</strong>\r\n            <span class=\"title\">Ошибка! Страница не найдена</span>\r\n            <a href=\"#\" class=\"btn btn_grey\">На главную</a>\r\n          </div>  \r\n        </div>\r\n      </div><!--main end-->', 1, 9, 4, 1, 1, 1, 1488457220, 1, 1488457244, 0, 0, 0, 1488457244, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(3, 'document', 'text/html', 'news', '', '', 'news', '', 1, 1488373080, 0, 0, 1, '', '', 1, 6, 2, 1, 0, 1, 1488300101, 1, 1488455924, 0, 0, 0, 1488373080, 1, 'Новости', 0, 0, 0, 0, 0, 0, 0, 1),
(4, 'document', 'text/html', 'contact', '', '', 'contact', '', 1, 0, 0, 0, 0, '', ' <!--pagetitle start-->\r\n      <section class=\"pagetitle\">\r\n        <div class=\"container\">\r\n          <div class=\"col-sm-12\">\r\n            <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">Контакты</strong>\r\n          </div>\r\n        </div>\r\n      </section><!--pagetitle end-->\r\n      <!--map start-->\r\n      <section class=\"map animated\" data-animation=\"fadeIn\" data-animation-delay=\"600\">\r\n        <div id=\"map-canvas\"></div>\r\n        <div id=\"address_content\">\r\n          <div class=\"content\">\r\n            <strong>Агентство \"Vasko-personal\"</strong>\r\n            <p>г. Киев, ул. Старокиевская, 10Г</br>\r\n            офисный центр \"Вектор\"</br>\r\n            корп. А, офис 505</br>\r\n            ПН - ПТ: 8:00 - 18:00</p>\r\n          </div>  \r\n        </div>\r\n      </section><!--map end-->\r\n      <!--main start-->\r\n      <div class=\"main contacts\">\r\n        <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n          <div class=\"contact_block col-md-6 col-sm-12 col-xs-12\">\r\n            <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n              <li>Агентство \"Vasko-personal\"</li>\r\n              <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n              <li>офисный центр \"Вектор\"</li>\r\n              <li>корп. А, офис 505</li>\r\n              <li>ПН - ПТ: 8:00 - 18:00</li>\r\n            </ul>\r\n            <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n              <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n              <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n              <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n              <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n            </ul>\r\n          </div>  \r\n          <div class=\"feedback_block form\">\r\n            <div class=\"col-sm-12\">\r\n              <strong class=\"heading\">Обратная связь</strong>\r\n            </div>\r\n			   [!eForm? &formid=`contact_form` &to=`[(emailsender)]` &tpl=`tpl_contact_form` &report=`tpl_contact_report`\r\n				&subject=`Contact form`!]\r\n          </div>\r\n        </div>\r\n      </div><!--main end-->\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>', 1, 9, 3, 1, 1, 1, 1488300172, 1, 1488456611, 0, 0, 0, 1488300186, 1, 'контакты', 0, 0, 0, 0, 0, 0, 0, 1),
(5, 'document', 'text/html', 'С чего начать поиск работы 1', '', '', 'first', '', 1, 0, 0, 3, 0, '', ' <div class=\"img_new\">\r\n                  <img src=\"/assets/templates/test/assets/images/new_img1.jpg\" alt=\"\" />\r\n                  <span class=\"date\">[*publishedon:date=`%d/%m/%Y`*]</span>\r\n                </div>\r\n                <div class=\"content\">\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </div>\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <blockquote>\r\n                    Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </blockquote>\r\n                  <p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                </div>', 1, 8, 0, 1, 0, 1, 1488326602, 1, 1488455902, 0, 0, 0, 1488455329, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(6, 'document', 'text/html', 'С чего начать поиск работы 2', '', '', 'second', '', 1, 1488327420, 0, 3, 0, '', ' <div class=\"img_new\">\r\n                  <img src=\"/assets/templates/test/assets/images/new_img1.jpg\" alt=\"\" />\r\n                  <span class=\"date\">[*publishedon:date=`%d/%m/%Y`*]</span>\r\n                </div>\r\n                <div class=\"content\">\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </div>\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <blockquote>\r\n                    Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </blockquote>\r\n                  <p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                </div>', 1, 8, 1, 1, 0, 1, 1488326620, 1, 1488454209, 0, 0, 0, 1488327420, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(7, 'document', 'text/html', 'С чего начать поиск работы 3', '', '', 'third', '', 1, 1488327420, 0, 3, 0, '', ' <div class=\"img_new\">\r\n                  <img src=\"/assets/templates/test/assets/images/new_img1.jpg\" alt=\"\" />\r\n                  <span class=\"date\">[*publishedon:date=`%d/%m/%Y`*]</span>\r\n                </div>\r\n                <div class=\"content\">\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </div>\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <blockquote>\r\n                    Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </blockquote>\r\n                  <p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                </div>', 1, 8, 2, 1, 0, 1, 1488404713, 1, 1488454214, 0, 0, 0, 1488327420, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(8, 'document', 'text/html', 'С чего начать поиск работы 4', '', '', 'fourth', '', 1, 1488241020, 0, 3, 0, '', ' <div class=\"img_new\">\r\n                  <img src=\"/assets/templates/test/assets/images/new_img1.jpg\" alt=\"\" />\r\n                  <span class=\"date\">[*publishedon:date=`%d/%m/%Y`*]</span>\r\n                </div>\r\n                <div class=\"content\">\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </div>\r\n                  <p> Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                  <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n                  <blockquote>\r\n                    Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования. \r\n                  </blockquote>\r\n                  <p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n                </div>', 1, 8, 3, 1, 0, 1, 1488404891, 1, 1488454219, 0, 0, 0, 1488241020, 1, '', 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content_metatags`
--

CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `editor_name`, `category`, `cache_type`, `snippet`, `locked`) VALUES
(1, 'AjaxSearch_tplAjaxGrpResult', 'Grp Result Tpl for AjaxSearch', 0, 'none', 1, 0, '[+as.grpResultsDef:is=`1`:then=`\n<div id=\"[+as.grpResultId+]\" class=\"AS_ajax_grpResult\">\n[+as.headerGrpResult+]\n[+as.listResults+]\n[+as.footerGrpResult+]\n</div>\n`:else=`\n<div class=\"AS_ajax_grpResultName\">[+as.grpResultNameShow:is=`1`:then=`[+as.grpResultName+]`+]\n<span class=\"ajaxSearch_grpResultsDisplayed\">[+as.grpResultsDisplayedText+]</span></div>\n`+]', 0),
(2, 'AjaxSearch_tplAjaxResult', 'Result Tpl for AjaxSearch', 0, 'none', 1, 0, '<div class=\"[+as.resultClass+]\">\n  <strong><a class=\"[+as.resultLinkClass+]\" href=\"[+as.resultLink+]\" title=\"[+as.longtitle+]\">[+as.pagetitle+]</a></strong>\n[+as.descriptionShow:is=`1`:then=`\n  <small><span class=\"[+as.descriptionClass+]\">[+as.description+]</span></small>\n`+]\n[+as.extractShow:is=`1`:then=`\n  <div class=\"[+as.extractClass+]\"><p>[+as.extract+]</p></div>\n`+]\n[+as.breadcrumbsShow:is=`1`:then=`\n  <span class=\"[+as.breadcrumbsClass+]\">[+as.breadcrumbs+]</span>\n`+]\n</div>', 0),
(3, 'AjaxSearch_tplAjaxResults', 'Results Tpl for AjaxSearch', 0, 'none', 1, 0, '<div id=\"search_results\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\n  <div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n        <h3 class=\"modal-title\">Search Results</h3>\n      </div>\n      <div class=\"modal-body\">\n        [+as.noResults:is=`1`:then=`\n		  <div class=\"[+as.noResultClass+]\">\n			[+as.noResultText+]\n		  </div>\n		`:else=`\n		<p class=\"AS_ajax_resultsInfos\">[+as.resultsFoundText+]<span class=\"AS_ajax_resultsDisplayed\">[+as.resultsDisplayedText+]</span></p>\n		[+as.listGrpResults+]\n		`+]\n		[+as.moreResults:is=`1`:then=`\n		  <div class=\"[+as.moreClass+]\">\n			<a href=\"[+as.moreLink+]\" title=\"[+as.moreTitle+]\">[+as.moreText+]</a>\n		  </div>\n		`+]\n		[+as.showCmt:is=`1`:then=`\n		[+as.comment+]\n		`+]\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">Close</button>\n      </div>\n    </div><!-- /.modal-content -->\n  </div><!-- /.modal-dialog -->\n</div><!-- /.modal -->\n<script>$(\'#search_results\').modal(\'show\')</script>', 0),
(4, 'AjaxSearch_tplInput', 'Input-Form for AjaxSearch', 0, 'none', 1, 0, '[+as.showInputForm:is=`1`:then=`\n<form id=\"[+as.formId+]\" action=\"[+as.formAction+]\" method=\"post\">\n    [+as.showAsId:is=`1`:then=`<input type=\"hidden\" name=\"[+as.asName+]\" value=\"[+as.asId+]\" />`+]\n    <input type=\"hidden\" name=\"advsearch\" value=\"[+as.advSearch+]\" />\n	<div class=\"input-group\">\n		<input id=\"[+as.inputId+]\" class=\"form-control cleardefault\" type=\"text\" name=\"search\" value=\"[+as.inputValue+]\"[+as.inputOptions+] />\n		[+as.liveSearch:is=`0`:then=`\n		<span class=\"input-group-btn\">\n			<button class=\"btn btn-primary\" type=\"submit\"><i class=\"fa fa-search\"></i></button>	\n		</span>\n		`:else=`\n		<div class=\"input-group-addon\"><i class=\"fa fa-search\"></i></div>\n		`+]		\n	</div>\n</form>\n`+]\n[+as.showIntro:is=`1`:then=`\n<p class=\"ajaxSearch_intro\" id=\"ajaxSearch_intro\">[+as.introMessage+]</p>\n`+]', 0),
(5, 'Comments_tplComments', 'Comments (Jot) Form-Template', 0, 'none', 1, 0, '<a name=\"jc[+jot.link.id+][+comment.id+]\"></a>\n<div class=\"panel panel-[+chunk.rowclass:ne=``:then=`primary`:else=`info`+] [+comment.published:is=`0`:then=`jot-row-up`+]\">\n	<div class=\"panel-heading\"><span class=\"jot-subject\">[+comment.title:limit:esc+]<span class=\"pull-right\">\n		[+phx:userinfo=`lastlogin`:ifempty=`9999999999`:lt=`[+comment.createdon+]`:then=`\n		<i class=\"fa fa-fw fa-comment-o\" aria-hidden=\"true\"></i>\n		`:else=`\n		<i class=\"fa fa-fw fa-commenting-o\" aria-hidden=\"true\"></i>\n		`:strip+]\n		</span></span>\n	</div>\n	<div class=\"panel-body\">\n		<div class=\"jot-comment\">\n			<div class=\"jot-user\">\n				[+comment.createdby:isnt=`0`:then=`<b>`+][+comment.createdby:userinfo=`username`:ifempty=`[+comment.custom.name:ifempty=`[+jot.guestname+]`:esc+]`+]\n				[+comment.createdby:isnt=`0`:then=`</b>`+]\n				<br>Posts: [+comment.userpostcount+]\n			</div>\n			<div class=\"jot-content\">\n				<div class=\"pull-right btn-group\">\n					[+jot.moderation.enabled:is=`1`:then=`\n					<a class=\"btn btn-xs btn-danger\" href=\"[+jot.link.delete:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to delete this comment?\')\" title=\"Delete Comment\"><i class=\"fa fa-fw fa-trash\" aria-hidden=\"true\"></i></a> \n					[+comment.published:is=`0`:then=`\n					<a class=\"btn btn-xs btn-info\"href=\"[+jot.link.publish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to publish this comment?\')\" title=\"Publish Comment\"><i class=\"fa fa-fw fa-arrow-up\" aria-hidden=\"true\"></i></a> \n					`+]\n					[+comment.published:is=`1`:then=`\n					<a class=\"btn btn-xs btn-warning\" href=\"[+jot.link.unpublish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to unpublish this comment?\')\" title=\"Unpublish Comment\"><i class=\"fa fa-fw fa-arrow-down\" aria-hidden=\"true\"></i></a> \n					`+]\n					`:strip+]\n					[+jot.user.canedit:is=`1`:and:if=`[+comment.createdby+]`:is=`[+jot.user.id+]`:or:if=`[+jot.moderation.enabled+]`:is=`1`:then=`\n					<a class=\"btn btn-xs btn-success\" href=\"[+jot.link.edit:esc+][+jot.querykey.id+]=[+comment.id+]#jf[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to edit this comment?\')\" title=\"Edit Comment\"><i class=\"fa fa-fw fa-pencil-square-o\" aria-hidden=\"true\"></i></a>\n					`:strip+]\n				</div>\n				<span class=\"jot-poster\"><b>Reply #[+comment.postnumber+] on :</b> [+comment.createdon:date=`%a %B %d, %Y, %H:%M:%S`+]</span>\n				<hr>\n				<div class=\"jot-message\">[+comment.content:wordwrap:esc:nl2br+]</div>\n				<div class=\"jot-extra\">\n					[+comment.editedon:isnt=`0`:then=`\n					<span class=\"jot-editby\">Last Edit: [+comment.editedon:date=`%B %d, %Y, %H:%M:%S`+] by [+comment.editedby:userinfo=`username`:ifempty=` * `+]</span>\n					&nbsp;`+] [+jot.moderation.enabled:is=`1`:then=`<a target=\"_blank\" href=\"http://www.ripe.net/perl/whois?searchtext=[+comment.secip+]\">[+comment.secip+]</a>`+]\n				</div>\n			</div>\n		</div>\n	</div>\n</div>', 0),
(6, 'Comments_tplForm', 'Comments (Jot) Form-Template', 0, 'none', 1, 0, '<a name=\"jf[+jot.link.id+]\"></a>\n<h2>[+form.edit:is=`1`:then=`Edit comment`:else=`Write a comment`+]</h2>\n<div class=\"jot-list\">\n<ul>\n	<li>Required fields are marked with <b>*</b>.</li>\n</ul>\n</div>\n[+form.error:isnt=`0`:then=`\n<div class=\"jot-err\">\n[+form.error:select=`\n&-3=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&-2=Your comment has been rejected.\n&-1=Your comment has been saved, it will first be reviewed before it is published.\n&1=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&2=The security code you entered was incorrect.\n&3=You can only post once each [+jot.postdelay+] seconds.\n&4=Your comment has been rejected.\n&5=[+form.errormsg:ifempty=`You didn\'t enter all the required fields`+]\n`+]\n</div>\n`:strip+]\n[+form.confirm:isnt=`0`:then=`\n<div class=\"jot-cfm\">\n[+form.confirm:select=`\n&1=Your comment has been published.\n&2=Your comment has been saved, it will first be reviewed before it is published.\n&3=Comment saved.\n`+]\n</div>\n`:strip+]\n<form method=\"post\" action=\"[+form.action:esc+]#jf[+jot.link.id+]\" class=\"jot-form\">\n	<fieldset>\n	<input name=\"JotForm\" type=\"hidden\" value=\"[+jot.id+]\" />\n	<input name=\"JotNow\" type=\"hidden\" value=\"[+jot.seed+]\" />\n	<input name=\"parent\" type=\"hidden\" value=\"[+form.field.parent+]\" />\n	\n	[+form.moderation:is=`1`:then=`\n		<div class=\"jot-row\">\n			<b>Created on:</b> [+form.field.createdon:date=`%a %B %d, %Y at %H:%M`+]<br />\n			<b>Created by:</b> [+form.field.createdby:userinfo=`username`:ifempty=`[+jot.guestname+]`+]<br />\n			<b>IP address:</b> [+form.field.secip+]<br />\n			<b>Published:</b> [+form.field.published:select=`0=No&1=Yes`+]<br />\n			[+form.field.publishedon:gt=`0`:then=`\n				<b>Published on:</b> [+form.field.publishedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Published by:</b> [+form.field.publishedby:userinfo=`username`:ifempty=` - `+]<br />\n			`+]\n			[+form.field.editedon:gt=`0`:then=`\n				<b>Edited on:</b> [+form.field.editedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Edited by:</b> [+form.field.editedby:userinfo=`username`:ifempty=` -`+]<br />\n			`+]\n		</div>\n	`:strip+]\n	\n	[+form.guest:is=`1`:then=`\n		<div class=\"form-group\">\n			<label for=\"name[+jot.id+]\">Name:</label>\n			<input tabindex=\"[+jot.seed:math=`?+1`+]\" name=\"name\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.name:esc+]\" id=\"name[+jot.id+]\" />\n		</div>\n		<div class=\"form-group\">\n			<label for=\"email[+jot.id+]\">Email:</label>\n			<input tabindex=\"[+jot.seed:math=`?+2`+]\" name=\"email\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.email:esc+]\" id=\"email[+jot.id+]\"/>\n		</div>\n	`:strip+]\n	<div class=\"form-group\">\n		<label for=\"title[+jot.id+]\">Subject:</label>\n		<input tabindex=\"[+jot.seed:math=`?+3`+]\" name=\"title\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.title:esc+]\" id=\"title[+jot.id+]\"/>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"content[+jot.id+]\">Comment: *</label>\n		<textarea tabindex=\"[+jot.seed:math=`?+4`+]\" name=\"content\" class=\"form-control\" rows=\"8\" id=\"content[+jot.id+]\">[+form.field.content:esc+]</textarea>\n	</div>\n	\n[+jot.captcha:is=`1`:then=`\n	<div style=\"width:150px;margin-top: 5px;margin-bottom: 5px;\">\n		<a href=\"[+jot.link.current:esc+]\">\n			<img src=\"[(modx_manager_url)]includes/veriword.php?rand=[+jot.seed+]\" width=\"148\" height=\"60\" alt=\"If you have trouble reading the code, click on the code itself to generate a new random code.\" style=\"border: 1px solid #003399\" />\n		</a>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"vericode[+jot.id+]\">Help prevent spam - enter security code above:</label>\n		<input type=\"text\" name=\"vericode\" style=\"width:150px;\" size=\"20\" id=\"vericode[+jot.id+]\" />\n	</div>\n`:strip+]\n\n	<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-primary\" type=\"submit\" value=\"[+form.edit:is=`1`:then=`Save Comment`:else=`Post Comment`+]\" />\n	[+form.edit:is=`1`:then=`\n		<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-default\" type=\"submit\" value=\"Cancel\" onclick=\"history.go(-1);return false;\" />\n	`+] \n	</fieldset>\n</form>', 0),
(7, 'mm_rules', 'Default ManagerManager rules.', 0, 'none', 2, 0, '// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n', 0),
(8, 'WebLogin_tplForm', 'WebLogin Tpl', 0, 'none', 1, 0, '<!-- #declare:separator <hr> -->\n<!-- login form section-->\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\">\n	<input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\">\n	<div class=\"form-group\">\n		<label for=\"username\">User:</label>\n		<input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" value=\"[+username+]\">\n	</div>\n	<div class=\"form-group\">\n		<label for=\"password\">Password:</label>\n		<input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" value=\"\">\n	</div>\n	<div class=\"checkbox\">\n		<label>\n			<input type=\"checkbox\" id=\"checkbox_1\" name=\"checkbox_1\" tabindex=\"3\" size=\"1\" value=\"\" [+checkbox+] onclick=\"webLoginCheckRemember()\"> Remember me\n		</label>\n	</div>\n	<input type=\"submit\" value=\"[+logintext+]\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\" id=\"forgotpsswd\" class=\"btn btn-text\">Forget Your Password?</a>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<h4>You\'re already logged in</h4>\nDo you wish to <a href=\"[+action+]\" class=\"button\">[+logouttext+]</a>?\n<hr>\n<!-- Password reminder form section -->\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n	<input type=\"hidden\" name=\"txtpwdrem\" value=\"0\">\n	<h4>It happens to everyone...</h4>\n	<div class=\"form-group\">\n		<label for=\"txtwebemail\">Enter the email address of your account to reset your password:</label>\n		<input type=\"text\" name=\"txtwebemail\" id=\"txtwebemail\">\n	</div>\n	<label>To return to the login form, press the cancel button.</label>\n	<input type=\"submit\" value=\"Submit\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<input type=\"reset\" value=\"Cancel\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" class=\"btn btn-default\">\n</form>\n', 0),
(9, 'head', '', 2, 'none', 9, 0, '<head>\r\n	<base href=\"[(site_url)]\" />\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <title>Vasko personal</title>\r\n    <link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n    <link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n    <!-- Bootstrap -->\r\n    <link href=\"/assets/templates/test/css/bootstrap.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/animate.min.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/jquery.fancybox.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/owl.carousel.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/bootstrap-select.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/font-awesome.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/test/css/style.css\" rel=\"stylesheet\">\r\n    <noscript><link href=\"css/without-js.css\" rel=\"stylesheet\"></noscript>\r\n    <script src=\"/assets/templates/test/js/jquery-2.1.1.min.js\"></script>\r\n    <script src=\"/assets/templates/test/js/bootstrap.min.js\"></script>\r\n    <script src=\"/assets/templates/test/js/jquery.fancybox.pack.js\"></script>\r\n    <script src=\"/assets/templates/test/js/jquery.appear.js\"></script>\r\n    <script src=\"/assets/templates/test/js/owl.carousel.min.js\"></script>\r\n    <script src=\"/assets/templates/test/js/bootstrap-select.js\"></script>\r\n    <script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp\"></script>\r\n    <script src=\"/assets/templates/test/js/main.js\"></script>\r\n    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n    <![endif]-->\r\n  </head>', 0),
(10, 'header', '', 2, 'none', 9, 0, ' <header id=\"header\">\r\n	 <div class=\"container\">\r\n		 <div class=\"col-md-3 col-sm-4 col-xs-12 animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n			 <a href=\"#\" class=\"logo\"><img src=\"/assets/templates/test/images/logo.png\" alt=\"\" /></a>\r\n		 </div>\r\n		 <div class=\"col-md-9 col-sm-8 col-xs-12\">\r\n			 <div class=\"right_head animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\">\r\n				 <div class=\"dropdown\">\r\n					 <button id=\"dLabel\" class=\"btn btn_lang dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n						 <span class=\"filter-option pull-left\">Русский</span>\r\n						 <span class=\"caret\"></span>\r\n					 </button>\r\n					 <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dLabel\">\r\n						 <li><a href=\"#\">Русский</a></li>\r\n						 <li><a href=\"#\">Английский</a></li>\r\n					 </ul>\r\n				 </div>\r\n				 <span class=\"phone\">+38 (044) 361 79 11</span>\r\n				 <a href=\"#call_you\" data-toggle=\"modal\" class=\"btn btn_transp\">перезвонить нам</a>\r\n			 </div>\r\n			 <nav class=\"main_menu navbar navbar-default animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\" role=\"navigation\">\r\n				 <!-- Brand and toggle get grouped for better mobile display -->\r\n				 <div class=\"navbar-header\">\r\n					 <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n						 <span class=\"sr-only\">Toggle navigation</span>\r\n						 <span class=\"icon-bar\"></span>\r\n						 <span class=\"icon-bar\"></span>\r\n						 <span class=\"icon-bar\"></span>\r\n					 </button>\r\n					 <span class=\"navbar-brand\" href=\"#\">Меню</span>\r\n				 </div>\r\n				 <!-- Collect the nav links, forms, and other content for toggling -->\r\n				 <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n					 [!Wayfinder? &startId=`0` &outerClass=`nav navbar-nav navbar-right` !]\r\n					 <!--ul class=\"nav navbar-nav navbar-right\">\r\n						 <li><a href=\"#\">Рекрутинговое агентство</a></li>\r\n						 <li><a href=\"#\" data-toggle=\"dropdown\">Наш подход</a>\r\n							 <ul class=\"dropdown-menu\">\r\n								 <li><a href=\"#\">Для клиентов</a></li>\r\n								 <li><a href=\"#\">Для соискателей</a></li>\r\n								 <li><a href=\"#\">Заполнить техническое задание</a></li>\r\n							 </ul>\r\n						 </li>\r\n						 <li><a href=\"#\">Отзывы</a></li>\r\n						 <li><a href=\"#\">Для клиентов</a></li>\r\n						 <li><a href=\"#\">Соискатели</a></li>\r\n						 <li class=\"last\"><a href=\"#\">Контакты</a></li>\r\n					 </ul>-->\r\n				 </div><!-- /.navbar-collapse -->\r\n			 </nav>\r\n		 </div>\r\n	 </div>\r\n</header>', 0),
(11, 'slider', '', 2, 'none', 9, 0, ' <section class=\"slider\">\r\n        <div id=\"carousel-fade\" class=\"carousel slide carousel_fade\" data-ride=\"carousel\">\r\n          <div class=\"carousel-inner\" role=\"listbox\">\r\n            <div class=\"item active\">\r\n              <img src=\"/assets/templates/test/assets/images/slider.png\" alt=\"First slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Themplate font</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n            <div class=\"item\">\r\n              <img src=\"/assets/templates/test/assets/images/slider.png\" alt=\"Second slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Быстрый</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n            <div class=\"item\">\r\n              <img src=\"/assets/templates/test/assets/images/slider.png\" alt=\"Third slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Быстрый</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div><!-- /.carousel -->\r\n      </section>', 0),
(12, 'footer', '', 2, 'none', 9, 0, '<footer id=\"footer\">\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n              <div class=\"foot_block\">\r\n                <span class=\"title\">Vasko personal<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu\">\r\n                  <li><a href=\"#\">Рекрутинговое агентство</a></li>\r\n                  <li><a href=\"#\">Наш подход</a></li>\r\n                  <li><a href=\"#\">Отзывы</a></li>\r\n                  <li><a href=\"#\">Клиентам</a></li>\r\n                  <li><a href=\"#\">Соискателям</a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n              <div class=\"foot_block\">\r\n                <span class=\"title\">Наши услуги<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu\">\r\n                  <li><a href=\"#\">Заполнить анкету соискателя</a></li>\r\n                  <li><a href=\"#\">Заполнить техническое задание на подбор специалистов</a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-6 col-sm-12 col-sx-12\">\r\n              <div class=\"foot_block contact_block\">\r\n                <span class=\"title\">Контакты<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n                  <li>Агентство \"Vasko-personal\"</li>\r\n                  <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n                  <li>офисный центр \"Вектор\"</li>\r\n                  <li>корп. А, офис 505</li>\r\n                  <li>ПН - ПТ: 8:00 - 18:00</li>\r\n                </ul>\r\n                <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n                  <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n                  <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n                  <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n                  <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n                  <li><a href=\"#\" class=\"btn btn_green\">online оплата</a></li>\r\n                  <li class=\"socilas\"><a href=\"#\" class=\"fa fa-vk\"></a><a href=\"#\" class=\"fa fa-facebook\"></a><a href=\"#\" class=\"fa fa-twitter\"></a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"row copy\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"col-md-6 col-sm-6 col-sx-12\">\r\n              <p>Vasko personal &copy; 2014</p>\r\n            </div>\r\n            <div class=\"col-md-6 col-sm-6 col-sx-12 art\">\r\n              <p>Создание и поддержка сайта — <a href=\"http://artjoker.ua\" target=\"_blank\">Artjoker</a></p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </footer>', 0),
(13, 'modal', '', 2, 'none', 9, 0, '    <div id=\"thank\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n      <div class=\"modal-dialog\">\r\n        <div class=\"modal-content\">\r\n          <div class=\"modal-header\">\r\n            <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n            <span class=\"modal-title\">Спасибо!</span>\r\n          </div>\r\n          <div class=\"modal-body\">\r\n            <strong class=\"title\">Ваша заявка успешно отправлена</strong>\r\n            <p>Наши представители связутся с вами в ближайшее время</p>\r\n            <span class=\"btn btn_green\" data-dismiss=\"modal\">OK</span>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div id=\"call_you\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n      <div class=\"modal-dialog\">\r\n        <div class=\"modal-content\">\r\n          <div class=\"modal-header\">\r\n            <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n            <span class=\"modal-title\">Вам перезвонить?</span>\r\n          </div>\r\n          <div class=\"modal-body\">\r\n            <p>Оставьте свой номер телефона, и мы Вам перезвоним</p>\r\n            <div class=\"form\">\r\n              [!eForm? &formid=`call_form` &to=`[(emailsender)]` &tpl=`tpl_form` &report=`tpl_report`\r\n				&thankyou=`tpl_thank` &subject=`Call back`!]\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>', 0),
(21, 'tpl_form', '', 2, 'none', 9, 0, ' <form class=\"contact js_validate\" method=\"post\" action=\"[~[*id*]~]\" id=\"call_form\">\r\n	 <div class=\"form-group col-xs-12\">\r\n		 <label for=\"name\" class=\"label\">Имя*</label>\r\n		 <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required=\"required\" />\r\n		 <span class=\"success form-control-feedback\"></span>\r\n		 <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n	 </div>\r\n	 <div class=\"form-group col-xs-12\">\r\n		 <label for=\"phone\" class=\"label\">Телефон*</label>\r\n		 <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required=\"required\" data-validate=\"phone\" />\r\n		 <span class=\"success form-control-feedback\"></span>\r\n		 <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n	 </div>\r\n	 <div class=\"form-group col-xs-12\">  \r\n		 <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"submit\">Отправить</button>\r\n	 </div>\r\n</form>', 0),
(24, 'tpl_contact_form', '', 2, 'none', 9, 0, ' <form class=\"contact js_validate\" method=\"post\" action=\"[~[*id*]~]\" id=\"contact_form\">\r\n              <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n                <label for=\"name\" class=\"label\">Имя*</label>\r\n                <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required=\"required\" />\r\n                <span class=\"success form-control-feedback\"></span>\r\n                <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n              </div>\r\n              <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n                <label for=\"email\" class=\"label\">Email*</label>\r\n                <input type=\"text\" class=\"form-control\" name=\"email\" id=\"email\" required=\"required\" data-validate=\"email\" />\r\n                <span class=\"success form-control-feedback\"></span>\r\n                <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n              </div>\r\n              <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n                <label for=\"phone\" class=\"label\">Телефон*</label>\r\n                <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required=\"required\" data-validate=\"phone\" />\r\n                <span class=\"success form-control-feedback\"></span>\r\n                <div class=\"error_text\"><span>(<em>Пример: +380576588978</em>)</span><i class=\"form-control-feedback\"></i></div>\r\n              </div>\r\n              <div class=\"form-group col-xs-12\">\r\n                <label for=\"message\" class=\"label\">Сообщение*</label>\r\n                <textarea class=\"form-control message\" rows=\"8\" id=\"message\" name=\"message\" required=\"required\" ></textarea>\r\n                <span class=\"success form-control-feedback\"></span>\r\n                <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n              </div>\r\n              <div class=\"form-group col-xs-12\">  \r\n                <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"submit\">Отправить</button>\r\n              </div>\r\n            </form>', 0),
(23, 'tpl_report', '', 2, 'none', 9, 0, '<p>Call back request: [+phone+]</p>\r\n\r\n', 0),
(22, 'tpl_thank', '', 2, 'none', 9, 0, 'thank you!', 0),
(25, 'tpl_contact_report', '', 2, 'none', 9, 0, '<p>User [+name+]</p>\r\n<p>Wrote: [+comment+]</p>', 0),
(15, 'paginate-page', '', 2, 'none', 0, 0, '<li><a class=\'ditto_page\' href=\'[+url+]\'><span>[+page+]</span></a></li>', 0),
(16, 'paginate-next', '', 2, 'none', 0, 0, '<li><a href=\'[+url+]\' class=\'ditto_next_link\'><span>[+lang:next+]</span></a></li>', 0),
(17, 'paginate-prev', '', 2, 'none', 0, 0, '<li><a href=\'[+url+]\' class=\'ditto_previous_link\'><span>[+lang:previous+]</span></a></li>', 0),
(18, 'paginate-current', '', 2, 'none', 0, 0, '<li><span class=\'ditto_currentpage\'>[+page+]</span></li>', 0),
(19, 'news-pagination', '', 2, 'none', 0, 0, '<div class=\"news\">\r\n	<strong class=\"title_block\">[+pagetitle+]</strong>\r\n	<div class=\"fulltext\">[+content+]</div>\r\n</div>', 0),
(20, 'news-sidebar', '', 2, 'none', 0, 0, ' <li class=\"item\">\r\n	 <img src=\"assets/templates/test/[+image+]\" alt=\"news image\">\r\n	 <div class=\"info_news\">\r\n		 <span class=\"date\">[+date+]</span>\r\n		 <a href=\"[~[+id+]~]\" class=\"title_new\">[+pagetitle+]</a>\r\n		 <p>[+introtext+]</p>\r\n	 </div>\r\n</li>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_keywords`
--

CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_metatags`
--

CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_modules`
--

CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Modules';

--
-- Дамп данных таблицы `modx_site_modules`
--

INSERT INTO `modx_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Doc Manager', '<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions', 0, 0, 3, 0, 0, '', 0, '', 0, 0, 'docman435243542tf542t5t', 1, '', ' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}'),
(2, 'Extras', '<strong>0.1.3</strong> first repository for MODX EVO', 0, 0, 3, 0, 0, '', 0, '', 0, 0, 'store435243542tf542t5t', 1, '', ' \r\n/**\r\n * Extras\r\n * \r\n * first repository for MODX EVO\r\n * \r\n * @category	module\r\n * @version 	0.1.3\r\n * @internal	@properties\r\n * @internal	@guid store435243542tf542t5t	\r\n * @internal	@shareparams 1\r\n * @internal	@dependencies requires files located at /assets/modules/store/\r\n * @internal	@modx_category Manager and Admin\r\n * @internal    @installset base, sample\r\n * @lastupdate  25/11/2016\r\n */\r\n\r\n//AUTHORS: Bumkaka & Dmi3yy \r\ninclude_once(\'../assets/modules/store/core.php\');');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_access`
--

CREATE TABLE `modx_site_module_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_depobj`
--

CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`) VALUES
(1, 'CodeMirror', '<strong>1.4</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12', 0, 3, 0, '\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12\r\n *\r\n * @category    plugin\r\n * @version     1.4\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     modx\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/modxcms/evolution\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @lastupdate  11/04/2016\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');', 0, '&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250', 0, ''),
(2, 'ElementsInTree', '<strong>1.5.7</strong> Get access to all Elements and Modules inside Manager sidebar', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n', 0, '&tabTreeTitle=Tree Tab Title;text;Site Tree;;Custom title of Site Tree tab. &useIcons=Use icons in tabs;list;yes,no;yes;;Icons available in MODX version 1.2 or newer. &treeButtonsInTab=Tree Buttons in tab;list;yes,no;yes;;Move Tree Buttons into Site Tree tab. &unifyFrames=Unify Frames;list;yes,no;yes;;Unify Tree and Main frame style. Right now supports MODxRE2 theme only.', 0, ''),
(3, 'FileSource', '<strong>0.1</strong> Save snippet and plugins to file', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';', 0, '', 0, ''),
(4, 'Forgot Manager Login', '<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';', 0, '', 0, ''),
(5, 'ManagerManager', '<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.', 0, 3, 0, '\n/**\n * ManagerManager\n *\n * Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.2\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  06/03/2016\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');', 0, '&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules', 0, ''),
(6, 'Quick Manager+', '<strong>1.5.6</strong> Enables QuickManager+ front end content editing support', 0, 3, 0, '\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv\n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr\n * @lastupdate  31/03/2014\n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n}\n', 0, '&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv', 1, ''),
(7, 'Search Highlight', '<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results', 0, 4, 0, '/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}', 0, '', 1, ''),
(8, 'TinyMCE4', '<strong>4.3.7.2</strong> Javascript WYSIWYG editor', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/tinymce4/plugin.tinymce.php\';', 0, '&styleFormats=Custom Style Formats;textarea;Title,cssClass|Title2,cssClass &customParams=Custom Parameters <b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled', 0, ''),
(9, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '&table_name=Trans table;list;common,russian,dutch,german,czech,utf8,utf8lowercase;utf8lowercase &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;legal characters &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;', 0, ''),
(10, 'PHx', '<b>2.2.0</b> (Placeholders Xtended) Adds the capability of output modifiers when using placeholders, template variables and settings tags', 0, 3, 0, '//<?php\r\n/**\r\n * phx \r\n * \r\n * (Placeholders Xtended) Adds the capability of output modifiers when using placeholders, template variables and settings tags\r\n *\r\n * @category    plugin\r\n * @version     2.2.0\r\n * @author      Armand \"bS\" Pondman (apondman@zerobarrier.nl)\r\n * @internal    @properties &phxdebug=Log events;int;0 &phxmaxpass=Max. Passes;int;50\r\n * @internal    @events OnParseDocument\r\n * @internal    @modx_category Manager and Admin\r\n */\r\n\r\ninclude_once $modx->config[\'rb_base_dir\'] . \"plugins/phx/phx.parser.class.inc.php\";\r\n\r\n$e = &$modx->Event;\r\n\r\n$PHx = new PHxParser($phxdebug,$phxmaxpass);\r\n\r\nswitch($e->name) {\r\n	case \'OnParseDocument\':\r\n		$PHx->OnParseDocument();\r\n		break;\r\n\r\n}', 0, '{\r\n  \"phxdebug\": [\r\n    {\r\n      \"label\": \"Log events\",\r\n      \"type\": \"int\",\r\n      \"value\": \"0\",\r\n      \"default\": \"0\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"phxmaxpass\": [\r\n    {\r\n      \"label\": \"Max. Passes\",\r\n      \"type\": \"int\",\r\n      \"value\": \"50\",\r\n      \"default\": \"50\",\r\n      \"desc\": \"\"\r\n    }\r\n  ]\r\n}', 0, ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 23, 0),
(1, 29, 0),
(1, 35, 0),
(1, 41, 0),
(1, 47, 0),
(1, 73, 0),
(1, 88, 0),
(2, 25, 0),
(2, 27, 0),
(2, 37, 0),
(2, 39, 0),
(2, 43, 0),
(2, 45, 0),
(2, 49, 0),
(2, 51, 0),
(2, 55, 0),
(2, 57, 0),
(2, 75, 0),
(2, 77, 0),
(2, 206, 0),
(2, 210, 0),
(2, 211, 0),
(3, 34, 0),
(3, 35, 0),
(3, 36, 0),
(3, 40, 0),
(3, 41, 0),
(3, 42, 0),
(4, 80, 0),
(4, 81, 0),
(4, 93, 0),
(5, 28, 0),
(5, 29, 0),
(5, 30, 0),
(5, 31, 0),
(5, 35, 0),
(5, 53, 0),
(5, 205, 0),
(6, 3, 0),
(6, 13, 0),
(6, 28, 0),
(6, 31, 0),
(6, 92, 0),
(7, 3, 0),
(8, 3, 0),
(8, 20, 0),
(8, 85, 0),
(8, 87, 0),
(8, 88, 0),
(8, 91, 0),
(8, 92, 0),
(9, 100, 0),
(10, 92, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(1, 'AjaxSearch', '<strong>1.10.1</strong> Ajax and non-Ajax search that supports results highlighting', 0, 4, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';', 0, '', ''),
(2, 'Breadcrumbs', '<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';', 0, '', ''),
(3, 'Ditto', '<strong>2.1.2</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';', 0, '', ''),
(4, 'DocLister', '<strong>2.3.0</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';', 0, '', ''),
(5, 'eForm', '<strong>1.4.8</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads', 0, 7, 0, 'return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';', 0, '', ''),
(6, 'FirstChildRedirect', '<strong>2.0</strong> Automatically redirects to the first child of a Container Resource', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';', 0, '', ''),
(7, 'if', '<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';', 0, '', ''),
(8, 'Jot', '<strong>1.1.5</strong> User comments with moderation and email subscription', 0, 6, 0, '\n/**\n * Jot\n * \n * User comments with moderation and email subscription\n *\n * @category 	snippet\n * @version 	1.1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation MODX Wiki http://wiki.modxcms.com/index.php/Jot\n * @reportissues https://github.com/modxcms/evolution\n * @link 		Latest Version http://modx.com/extras/package/jot\n * @link 		Jot Demo Site http://projects.zerobarrier.nl/modx/\n * @author      Armand \"bS\" Pondman apondman@zerobarrier.nl\n * @lastupdate  09/02/2016\n */\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.5\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();', 0, '', ''),
(9, 'MemberCheck', '<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';', 0, '', ''),
(10, 'Personalize', '<strong>2.1</strong> Checks to see if web- / mgr-users are logged in or not, to display accordingly yesChunk/noChunk', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';', 0, '', ''),
(11, 'phpthumb', '<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\r\n', 0, '', ''),
(12, 'Reflect', '<strong>2.2</strong> Generates date-based archives using Ditto', 0, 6, 0, '\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n', 0, '', ''),
(13, 'UltimateParent', '<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';', 0, '', ''),
(14, 'Wayfinder', '<strong>2.0.5</strong> Completely template-driven and highly flexible menu builder', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n', 0, '', ''),
(15, 'WebChangePwd', '<strong>1.1.2</strong> Allows Web User to change their password from the front-end of the website', 0, 8, 0, '\n/**\n * WebChangePwd\n * \n * Allows Web User to change their password from the front-end of the website\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Login\n * @internal    @installset base\n * @documentation [+site_url+]assets/snippets/weblogin/docs/webchangepwd.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n', 0, '', ''),
(16, 'WebLogin', '<strong>1.2</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/weblogin/snippet.weblogin.php\';\n', 0, '&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;', ''),
(17, 'WebSignup', '<strong>1.1.2</strong> Basic Web User account creation/signup system', 0, 8, 0, '\n/**\n * WebSignup\n * \n * Basic Web User account creation/signup system\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties &tpl=Template;string;\n * @internal	@modx_category Login\n * @internal    @installset base, sample\n * @documentation [+site_url+]assets/snippets/weblogin/docs/websignup.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;', 0, '&tpl=Template;string;', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`) VALUES
(3, 'Minimal Template', 'Default minimal empty template (content returned only)', 0, 0, '', 0, '[*content*]', 0, 1),
(4, 'MODX startup - Bootstrap', '<strong>1.0</strong> Sample template in Bootstrap', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"[(lang_code)]\">\n<head>	\n	<base href=\"[(site_url)]\" />\n	<meta charset=\"[(modx_charset)]\" />\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n	<title>[*pagetitle*] / [(site_name)]</title>\n	<@IF:[*description:isntEmpty*]><meta name=\"description\" content=\"[*description*]\"><@ENDIF>\n	\n	<link href=\"[(site_url)]<@IF:[*id:isnt(1)*]>[~[*id*]~]<@ENDIF>\" rel=\"canonical\">\n	<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700\" rel=\"stylesheet\" type=\"text/css\">	\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n	\n	<style> \n	html, body{background:#eee; font-family:\'Open Sans\',sans-serif; line-height:1.8; font-size:14px;}\n	a:focus{outline:none; outline-offset:0;}\n	h1{margin-top:15px;}\n\n	.logo{float:left;}\n	.logo img{max-width:200px; margin:10px 0; display:block; height:50px; width:auto;}\n	.dropdown-menu{border-radius:0; border:0;}\n	.dropdown-menu > li > a{padding-top:5px; padding-bottom:5px;}\n\n	.navbar-collapse.collapse.in{border-bottom:10px solid #eee;}\n	.navbar{min-height:0; background:#fff; margin-bottom:0;}\n	.navbar.nav{margin-left:0;}\n	.navbar.nav ul{padding-left:0;}\n	.navbar-nav{margin:0;}\n	.navbar-toggle{background:#fff; border:2px solid #eee; border-radius:0; position:fixed; z-index:99; right:0; top:7px; padding:12px 10px; margin-right:10px;}\n	.navbar .navbar-toggle .icon-bar{background-color:#333;}\n\n	.nav li a{text-transform:uppercase; color:#333; font-weight:500; font-size:110%;}\n	.nav li li a{text-transform:none; font-weight:normal; font-size:100%;}\n\n	.navbar{border:none; border-radius:0;}\n	#navbar{padding:0;}\n	ul.nav > li > a:hover{background-color:#f5f5f5;}\n\n	.affix{top:0px; width:100%; z-index:1000; background-color:#eee;}\n	.affix + .affspacer{display:block; height:50px;}\n\n	.box-shadow{-webkit-box-shadow:0 6px 12px rgba(0,0,0,.175); box-shadow:0 6px 12px rgba(0,0,0,.175);}\n\n	.container {max-width:970px; margin:0 12px;}\n	.top .col-sm-12{padding-left:0; padding-right:0;}\n\n	#ajaxSearch_input,\n	#username,\n	#password{width:100%!important;}\n	#forgotpsswd{clear:both;}\n	input.button[type=\"submit\"]{display:block;}\n	label.checkbox{display:inline-block; margin-left:10px;}\n	label, legend{font-weight:400;}\n	#ajaxSearch_form { position:relative; }\n	#searchClose { display:none !important; }\n    #indicator { position:absolute; top:9px; right:12px; z-index:10; opacity:.75; }\n\n	h2{font-size:22px;}\n	.bread{padding:1em 0 0 0;}\n	.mem{color:#aaa; text-align:center; padding:1em 0 2em;}\n\n	section.main .container{background-color:#fff; padding-bottom:20px;}\n	footer.footer .container{background-color:#000; color:#fff; line-height:40px;}\n\n	section.main ul{list-style:none; margin:0 0 1em 0; padding:0;}\n	section.main ul li{padding-left:1em;}\n	section.main ul li:before{content:\'\\2022\'; position:absolute; line-height:1.85em; margin-left:-1em;}\n\n	.footer{text-align:center;}\n	.footer .text-right{text-align:center;}\n\n	/* JOT */\n	.jot-comment{padding:5px 10px;}\n	.jot-row-author{background-color:#dddddd;}\n	.jot-row-alt{background-color:#f9f9f9;}\n	.jot-row{background-color:#eeeeee;}\n	.jot-row-up{border:1px solid #333!important;}\n	.jot-row-up.panel-primary > .panel-heading{background-color:#333!important; border-color:#333!important;}\n	.jot-extra{font-size:75%;}\n	.jot-poster{font-size:inherit!important;}\n\n	.ditto_summaryPost img{max-width:100%; height:auto; margin:10px 0 5px; display:block;}\n	.ditto_summaryPost{padding-top:10px; padding-bottom:15px; border-bottom:1px solid #eee;}\n\n	/* Larger than mobile */\n	@media (min-width:320px) {\n\n	}\n\n	/* Larger than phablet */\n	@media (min-width:480px) {\n\n	}\n\n	/* Larger than tablet */\n	@media (min-width:768px) {\n\n		.container{margin:0 auto;}\n		.logo{padding-left:15px;}\n		.logo img{ max-width:240px; margin:0; display:block; height:100px;}\n\n		.navbar{background:transparent;}\n		.navbar.affix{background:#eee;}\n		.navbar-collapse.collapse.in{border-bottom:0;}\n\n		.footer{text-align:left;}\n		.footer .text-right{text-align:right;}\n\n		.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {padding-left:35px; padding-right:35px;}\n\n	}\n	</style>\n	\n	<script src=\"https://code.jquery.com/jquery-2.2.3.min.js\"></script>\n</head>\n<body>\n	<section class=\"top\">\n		<div class=\"container\">\n			<div class=\"row\">\n				<div class=\"col-sm-12\" itemscope itemtype=\"http://schema.org/Organization\">\n\n					<a class=\"logo\" href=\"[~[(site_start)]~]\" title=\"[(site_name)]\" itemprop=\"url\">\n						<img src=\"[(site_url)]assets/images/modx-logo.png\" itemprop=\"logo\" width=\"240\" height=\"100\" alt=\"[(site_name)]\" />\n					</a>\n\n					<div class=\"clearfix\"></div>\n\n					<nav class=\"navbar\" role=\"navigation\" data-spy=\"affix\" data-offset-top=\"100\">\n\n						<div class=\"navbar-header\">\n							<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n								<span class=\"sr-only\">Toggle navigation</span>\n								<span class=\"icon-bar\"></span>\n								<span class=\"icon-bar\"></span>\n								<span class=\"icon-bar\"></span>\n							</button>\n						</div>\n						<div id=\"navbar\" class=\"navbar-collapse collapse\">\n							[[Wayfinder? \n							&startId=`0` \n							&level=`2` \n							&removeNewLines=`1`\n							&outerTpl=`@CODE:<ul class=\"nav navbar-nav\">[+wf.wrapper+]</ul>`\n							&rowTpl=`@CODE:<li[+wf.classes+]><a href=\"[+wf.link+]\" [+wf.attributes+]>[+wf.linktext+]</a>[+wf.wrapper+]</li>`\n							&innerTpl=`@CODE:<ul class=\"dropdown-menu\">[+wf.wrapper+]</ul>`\n							&innerRowTpl=`@CODE:<li[+wf.classes+]><a href=\"[+wf.link+]\">[+wf.linktext+]</a></li>`\n							&parentRowTpl=`@CODE:<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" title=\"[+wf.title+]\">[+wf.linktext+] <b class=\"caret\"></b></a>[+wf.wrapper+]</li>`\n							&activeParentRowTpl=`@CODE:<li class=\"dropdown active\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" title=\"[+wf.title+]\">[+wf.linktext+] <b class=\"caret\"></b></a>[+wf.wrapper+]</li>`\n							]]\n						</div>\n\n					</nav>\n					<div class=\"affspacer\"></div>\n\n				</div>\n			</div>\n		</div>\n		</section>\n\n		<section class=\"main\">\n			<div class=\"container\">\n\n				<div class=\"row\">\n					<div class=\"col-sm-12\">\n						<div class=\"bread\">\n							[[Breadcrumbs]]\n						</div>\n					</div>\n				</div>\n\n				<div class=\"row\">\n\n					<div class=\"col-sm-8\">\n						<h1>[*#longtitle*]</h1>\n						[*#content*]\n					</div>\n\n					<aside class=\"col-sm-4\">\n						<div class=\"search\">\n							<h2>Search</h2>\n							[!AjaxSearch? \n							&ajaxSearch=`1` \n							&addJscript=`0` \n							&showIntro=`0` \n							&ajaxMax=`5` \n							&extract=`1`\n							&jscript=`jquery`\n							&tplInput=`AjaxSearch_tplInput`\n							&tplAjaxGrpResult=`AjaxSearch_tplAjaxGrpResult`\n							&tplAjaxResults=`AjaxSearch_tplAjaxResults`\n							&tplAjaxResult=`AjaxSearch_tplAjaxResult`\n							&showResults=`1`\n							&liveSearch=`0`\n							!]\n						</div>\n\n						<h2>News:</h2>\n						[[DocLister? \n						&parents=`2` \n						&display=`2`\n						&total=`20` \n						&removeChunk=`Comments` \n						&tpl=`nl_sidebar`\n						]]\n\n						<div>\n							<h2>Most Recent:</h2>\n\n							<ul>\n								[[DocLister? \n								&showInMenuOnly=`1` \n								&parents=`0`\n								&display=`5`\n								&tpl=`@CODE:<li><a href=\"[+url+]\" title=\"[+pagetitle+]\">[+pagetitle+]</a> <span class=\"date\">[+date+]</span></li>`\n								]]\n							</ul>\n\n						</div>\n						<br/>\n						<h2>Login:</h2>\n						<div>\n							[!WebLogin? \n							&tpl=`WebLogin_tplForm` \n							&loginhomeid=`[(site_start)]`\n							&focusInput=`0`\n							!]\n						</div>\n\n					</aside>\n				</div>\n			</div>\n\n		</section>\n\n		<footer class=\"footer\">\n			<div class=\"container\">\n				<div class=\"row\">\n					<div class=\"col-sm-6\">\n						<a href=\"https://modx.com\" title=\"Learn more about MODX\">MODX</a> Starter-Template &copy;2006-[[$_SERVER[\'REQUEST_TIME\']:dateFormat=`Y` ]]\n					</div>\n					<div class=\"col-sm-6 text-right\">\n						Built with <a href=\"http://www.getbootstrap.com\" target=\"_blank\">Bootstrap</a> framework.\n					</div>\n				</div>\n			</div>\n		</footer>\n\n		<div class=\"container mem\">\n			<small>Memory: [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved from [^s^]. </small>\n	</div>\n\n	<!-- Scripts\n	–––––––––––––––––––––––––––––––––––––––––––––––––– -->	\n\n	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n	<!--[if lt IE 9]>\n		<script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n		<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n	<![endif]-->\n	\n</body>\n</html>', 0, 1),
(5, 'Main page', 'main page', 0, 9, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{head}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      <!--header start-->\r\n        {{header}}\r\n      <!--header end-->\r\n	  <!--slider start-->\r\n        {{slider}}\r\n      <!--slider end-->\r\n      [*content*]\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>	\r\n    </div><!--page_wrapper end-->\r\n	  \r\n    <!--footer start-->\r\n	  {{footer}}\r\n    <!--footer end-->\r\n    \r\n    <!--modal-->\r\n    {{modal}}\r\n	  \r\n  </body>\r\n</html>', 0, 1),
(6, 'News page', '', 0, 9, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{head}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      <!--header start-->\r\n        {{header}}\r\n      <!--header end-->\r\n	  <!--pagetitle start-->\r\n      <section class=\"pagetitle\">\r\n        <div class=\"container\">\r\n          <div class=\"col-sm-12\">\r\n            <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">[*menutitle*]</strong>\r\n          </div>\r\n        </div>\r\n      </section><!--pagetitle end-->\r\n	  <div class=\"main news\">\r\n        <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n          <div class=\"row\">\r\n            <div class=\"col-sm-12\">\r\n              <div class=\"col-md-8 col-sm-8 col-xs-12\">\r\n				  [!Ditto? &id=`news` &tpl=`news-pagination`  &paginate=`1` &display=`1` &dateFormat=`%d/%m/%Y` &tplPaginatePrevious=`paginate-prev` \r\n					&tplPaginateNext=`paginate-next` &tplPaginatePage=`paginate-page` &tplPaginateCurrentPage=`paginate-current`!]\r\n					<ul class=\"pagination\"> [+news_previous+][+news_pages+][+news_next+]</ul>\r\n      			[*content*]\r\n			  </div>\r\n			    <div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n                <strong class=\"heading\">Последние новости</strong>\r\n                <ul class=\"news_list_sidebar\">\r\n                  [!Ditto? &tpl=`news-sidebar`  &paginate=`0` &display=`3` &dateFormat=`%d/%m/%Y` !]\r\n                </ul>\r\n                <a href=\"#\" class=\"btn btn_transp details\">Все новости</a>\r\n              </div>\r\n			</div>\r\n		  </div>  \r\n	    </div>\r\n	  </div>\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>	\r\n    </div><!--page_wrapper end-->\r\n	  \r\n    <!--footer start-->\r\n	  {{footer}}\r\n    <!--footer end-->\r\n    \r\n    <!--modal-->\r\n    {{modal}}\r\n	  \r\n  </body>\r\n</html>', 0, 1),
(7, 'About page', 'about page', 0, 9, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{head}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      <!--header start-->\r\n        {{header}}\r\n      <!--header end-->\r\n      [*content*]\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>	\r\n    </div><!--page_wrapper end-->\r\n	  \r\n    <!--footer start-->\r\n	  {{footer}}\r\n    <!--footer end-->\r\n    \r\n    <!--modal-->\r\n    {{modal}}\r\n	  \r\n  </body>\r\n</html>', 0, 1),
(8, 'News-one page', '', 0, 9, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{head}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      <!--header start-->\r\n        {{header}}\r\n      <!--header end-->\r\n	  <!--pagetitle start-->\r\n		  <section class=\"pagetitle\">\r\n			<div class=\"container\">\r\n			  <div class=\"col-sm-12\">\r\n				<strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">[*pagetitle*]</strong>\r\n			  </div>\r\n			</div>\r\n		  </section>\r\n	  <!--pagetitle end-->\r\n      <div class=\"container\">\r\n		  <div class=\"row\">\r\n			  <div class=\"col-sm-12\">\r\n				[*content*]\r\n			  </div>\r\n		  </div>\r\n	  </div>\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>	\r\n    </div><!--page_wrapper end-->\r\n	  \r\n    <!--footer start-->\r\n	  {{footer}}\r\n    <!--footer end-->\r\n    \r\n    <!--modal-->\r\n    {{modal}}\r\n	  \r\n  </body>\r\n</html>', 0, 1),
(9, 'Contact page', 'conatct page', 0, 9, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  {{head}}\r\n  <body>\r\n    <noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n    <!--[if lte IE 8]>\r\n      <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n    <![endif]-->\r\n    \r\n    <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n      <!--header start-->\r\n        {{header}}\r\n      <!--header end-->\r\n      [*content*]\r\n      <div class=\"hfooter\"><div class=\"container\"></div></div>	\r\n    </div><!--page_wrapper end-->\r\n	  \r\n    <!--footer start-->\r\n	  {{footer}}\r\n    <!--footer end-->\r\n    \r\n    <!--modal-->\r\n    {{modal}}\r\n	  \r\n  </body>\r\n</html>', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`) VALUES
(1, 'richtext', 'blogContent', 'blogContent', 'RTE for the new blog entries', 0, 1, 0, '', 0, 'RichText', '&w=383px&h=450px&edt=TinyMCE', ''),
(2, 'text', 'documentTags', 'Tags', 'Space delimited tags for the current document', 0, 1, 0, '', 0, '', '', ''),
(3, 'text', 'loginName', 'loginName', 'Conditional name for the Login menu item', 0, 1, 0, '', 0, '', '', '@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';'),
(4, 'image', 'image', 'image', '', 0, 0, 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 4, 5, 'assets/images/new1.jpg'),
(2, 4, 6, 'assets/images/new2.jpg'),
(3, 4, 7, 'assets/images/new3.jpg'),
(4, 4, 8, 'assets/images/new4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnDocPublished', 5, ''),
(2, 'OnDocUnPublished', 5, ''),
(3, 'OnWebPagePrerender', 5, ''),
(4, 'OnWebLogin', 3, ''),
(5, 'OnBeforeWebLogout', 3, ''),
(6, 'OnWebLogout', 3, ''),
(7, 'OnWebSaveUser', 3, ''),
(8, 'OnWebDeleteUser', 3, ''),
(9, 'OnWebChangePassword', 3, ''),
(10, 'OnWebCreateGroup', 3, ''),
(11, 'OnManagerLogin', 2, ''),
(12, 'OnBeforeManagerLogout', 2, ''),
(13, 'OnManagerLogout', 2, ''),
(14, 'OnManagerSaveUser', 2, ''),
(15, 'OnManagerDeleteUser', 2, ''),
(16, 'OnManagerChangePassword', 2, ''),
(17, 'OnManagerCreateGroup', 2, ''),
(18, 'OnBeforeCacheUpdate', 4, ''),
(19, 'OnCacheUpdate', 4, ''),
(107, 'OnMakePageCacheKey', 4, ''),
(20, 'OnLoadWebPageCache', 4, ''),
(21, 'OnBeforeSaveWebPageCache', 4, ''),
(22, 'OnChunkFormPrerender', 1, 'Chunks'),
(23, 'OnChunkFormRender', 1, 'Chunks'),
(24, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(25, 'OnChunkFormSave', 1, 'Chunks'),
(26, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(27, 'OnChunkFormDelete', 1, 'Chunks'),
(28, 'OnDocFormPrerender', 1, 'Documents'),
(29, 'OnDocFormRender', 1, 'Documents'),
(30, 'OnBeforeDocFormSave', 1, 'Documents'),
(31, 'OnDocFormSave', 1, 'Documents'),
(32, 'OnBeforeDocFormDelete', 1, 'Documents'),
(33, 'OnDocFormDelete', 1, 'Documents'),
(1033, 'OnDocFormUnDelete', 1, 'Documents'),
(1034, 'onBeforeMoveDocument', 1, 'Documents'),
(1035, 'onAfterMoveDocument', 1, 'Documents'),
(34, 'OnPluginFormPrerender', 1, 'Plugins'),
(35, 'OnPluginFormRender', 1, 'Plugins'),
(36, 'OnBeforePluginFormSave', 1, 'Plugins'),
(37, 'OnPluginFormSave', 1, 'Plugins'),
(38, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(39, 'OnPluginFormDelete', 1, 'Plugins'),
(40, 'OnSnipFormPrerender', 1, 'Snippets'),
(41, 'OnSnipFormRender', 1, 'Snippets'),
(42, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(43, 'OnSnipFormSave', 1, 'Snippets'),
(44, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(45, 'OnSnipFormDelete', 1, 'Snippets'),
(46, 'OnTempFormPrerender', 1, 'Templates'),
(47, 'OnTempFormRender', 1, 'Templates'),
(48, 'OnBeforeTempFormSave', 1, 'Templates'),
(49, 'OnTempFormSave', 1, 'Templates'),
(50, 'OnBeforeTempFormDelete', 1, 'Templates'),
(51, 'OnTempFormDelete', 1, 'Templates'),
(52, 'OnTVFormPrerender', 1, 'Template Variables'),
(53, 'OnTVFormRender', 1, 'Template Variables'),
(54, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(55, 'OnTVFormSave', 1, 'Template Variables'),
(56, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(57, 'OnTVFormDelete', 1, 'Template Variables'),
(58, 'OnUserFormPrerender', 1, 'Users'),
(59, 'OnUserFormRender', 1, 'Users'),
(60, 'OnBeforeUserFormSave', 1, 'Users'),
(61, 'OnUserFormSave', 1, 'Users'),
(62, 'OnBeforeUserFormDelete', 1, 'Users'),
(63, 'OnUserFormDelete', 1, 'Users'),
(64, 'OnWUsrFormPrerender', 1, 'Web Users'),
(65, 'OnWUsrFormRender', 1, 'Web Users'),
(66, 'OnBeforeWUsrFormSave', 1, 'Web Users'),
(67, 'OnWUsrFormSave', 1, 'Web Users'),
(68, 'OnBeforeWUsrFormDelete', 1, 'Web Users'),
(69, 'OnWUsrFormDelete', 1, 'Web Users'),
(70, 'OnSiteRefresh', 1, ''),
(71, 'OnFileManagerUpload', 1, ''),
(72, 'OnModFormPrerender', 1, 'Modules'),
(73, 'OnModFormRender', 1, 'Modules'),
(74, 'OnBeforeModFormDelete', 1, 'Modules'),
(75, 'OnModFormDelete', 1, 'Modules'),
(76, 'OnBeforeModFormSave', 1, 'Modules'),
(77, 'OnModFormSave', 1, 'Modules'),
(78, 'OnBeforeWebLogin', 3, ''),
(79, 'OnWebAuthentication', 3, ''),
(80, 'OnBeforeManagerLogin', 2, ''),
(81, 'OnManagerAuthentication', 2, ''),
(82, 'OnSiteSettingsRender', 1, 'System Settings'),
(83, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(84, 'OnUserSettingsRender', 1, 'System Settings'),
(85, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(88, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(89, 'OnManagerPageInit', 2, ''),
(90, 'OnWebPageInit', 5, ''),
(101, 'OnLoadDocumentObject', 5, ''),
(104, 'OnBeforeLoadDocumentObject', 5, ''),
(105, 'OnAfterLoadDocumentObject', 5, ''),
(91, 'OnLoadWebDocument', 5, ''),
(92, 'OnParseDocument', 5, ''),
(106, 'OnParseProperties', 5, ''),
(108, 'OnBeforeParseParams', 5, ''),
(93, 'OnManagerLoginFormRender', 2, ''),
(94, 'OnWebPageComplete', 5, ''),
(95, 'OnLogPageHit', 5, ''),
(96, 'OnBeforeManagerPageInit', 2, ''),
(97, 'OnBeforeEmptyTrash', 1, 'Documents'),
(98, 'OnEmptyTrash', 1, 'Documents'),
(99, 'OnManagerLoginFormPrerender', 2, ''),
(100, 'OnStripAlias', 1, 'Documents'),
(102, 'OnMakeDocUrl', 5, ''),
(103, 'OnBeforeLoadExtension', 5, ''),
(200, 'OnCreateDocGroup', 1, 'Documents'),
(201, 'OnManagerWelcomePrerender', 2, ''),
(202, 'OnManagerWelcomeHome', 2, ''),
(203, 'OnManagerWelcomeRender', 2, ''),
(204, 'OnBeforeDocDuplicate', 1, 'Documents'),
(205, 'OnDocDuplicate', 1, 'Documents'),
(206, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(207, 'OnManagerPreFrameLoader', 2, ''),
(208, 'OnManagerFrameLoader', 2, ''),
(209, 'OnManagerTreeInit', 2, ''),
(210, 'OnManagerTreePrerender', 2, ''),
(211, 'OnManagerTreeRender', 2, ''),
(212, 'OnManagerNodePrerender', 2, ''),
(213, 'OnManagerNodeRender', 2, ''),
(214, 'OnManagerMenuPrerender', 2, ''),
(215, 'OnManagerTopPrerender', 2, ''),
(224, 'OnDocFormTemplateRender', 1, 'Documents'),
(999, 'OnPageUnauthorized', 1, ''),
(1000, 'OnPageNotFound', 1, ''),
(1001, 'OnFileBrowserUpload', 1, 'File Browser Events');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`setting_name`, `setting_value`) VALUES
('settings_version', '1.2.1'),
('manager_theme', 'MODxRE2'),
('server_offset_time', '0'),
('manager_language', 'english'),
('modx_charset', 'UTF-8'),
('site_name', 'My MODX Site'),
('site_start', '1'),
('error_page', '9'),
('unauthorized_page', '1'),
('site_status', '1'),
('auto_template_logic', 'parent'),
('default_template', '3'),
('old_template', '3'),
('cache_type', '1'),
('use_udperms', '1'),
('udperms_allowroot', '0'),
('failed_login_attempts', '3'),
('blocked_minutes', '60'),
('use_captcha', '0'),
('emailsender', 'example@mail.com'),
('use_editor', '1'),
('use_browser', '1'),
('fe_editor_lang', 'english'),
('session.cookie.lifetime', '604800'),
('theme_refresher', ''),
('site_id', '58b4a85c5a233'),
('site_unavailable_page', ''),
('reload_site_unavailable', ''),
('site_unavailable_message', 'The site is currently unavailable.'),
('siteunavailable_message_default', 'The site is currently unavailable.'),
('enable_filter', '0'),
('publish_default', '0'),
('cache_default', '1'),
('search_default', '1'),
('auto_menuindex', '1'),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),
('docid_incrmnt_method', '0'),
('minifyphp_incache', '0'),
('server_protocol', 'http'),
('rss_url_news', 'http://feeds.feedburner.com/modx-announce'),
('track_visitors', '0'),
('top_howmany', '10'),
('friendly_urls', '1'),
('xhtml_urls', '1'),
('friendly_url_prefix', ''),
('friendly_url_suffix', ''),
('make_folders', '1'),
('seostrict', '0'),
('aliaslistingfolder', '0'),
('friendly_alias_urls', '1'),
('use_alias_path', '1'),
('allow_duplicate_alias', '0'),
('automatic_alias', '1'),
('email_method', 'mail'),
('smtp_auth', '0'),
('smtp_secure', 'none'),
('smtp_host', 'smtp.example.com'),
('smtp_port', '25'),
('smtp_username', 'you@example.com'),
('reload_emailsubject', ''),
('emailsubject', 'Your login details'),
('emailsubject_default', 'Your login details'),
('reload_signupemail_message', ''),
('signupemail_message', 'Hello [+uid+] \r\n\r\nHere are your login details for [+sname+] Content Manager:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into the Content Manager ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_signup_default', 'Hello [+uid+] \r\n\r\nHere are your login details for [+sname+] Content Manager:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into the Content Manager ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('reload_websignupemail_message', ''),
('websignupemail_message', 'Hello [+uid+]\r\n\r\nHere are your login details for [+sname+]:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into [+sname+] ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_websignup_default', 'Hello [+uid+]\r\n\r\nHere are your login details for [+sname+]:\r\n\r\nUsername: [+uid+]\r\nPassword: [+pwd+]\r\n\r\nOnce you log into [+sname+] ([+surl+]), you can change your password.\r\n\r\nRegards,\r\nSite Administrator'),
('reload_system_email_webreminder_message', ''),
('webpwdreminder_message', 'Hello [+uid+]\r\n\r\nTo activate your new password click the following link:\r\n\r\n[+surl+]\r\n\r\nIf successful you can use the following password to login:\r\n\r\nPassword:[+pwd+]\r\n\r\nIf you did not request this email then please ignore it.\r\n\r\nRegards,\r\nSite Administrator'),
('system_email_webreminder_default', 'Hello [+uid+]\r\n\r\nTo activate your new password click the following link:\r\n\r\n[+surl+]\r\n\r\nIf successful you can use the following password to login:\r\n\r\nPassword:[+pwd+]\r\n\r\nIf you did not request this email then please ignore it.\r\n\r\nRegards,\r\nSite Administrator'),
('warning_visibility', '1'),
('tree_page_click', '27'),
('use_breadcrumbs', '0'),
('remember_last_tab', '0'),
('resource_tree_node_name', 'pagetitle'),
('session_timeout', '15'),
('tree_show_protected', '0'),
('show_meta', '0'),
('datepicker_offset', '-10'),
('datetime_format', 'dd-mm-YYYY'),
('number_of_logs', '100'),
('mail_check_timeperiod', '60'),
('number_of_messages', '40'),
('number_of_results', '30'),
('which_editor', 'none'),
('editor_css_path', ''),
('tinymce4_theme', 'custom'),
('tinymce4_skin', 'lightgray'),
('tinymce4_template_docs', ''),
('tinymce4_template_chunks', ''),
('tinymce4_entermode', 'p'),
('tinymce4_element_format', 'xhtml'),
('tinymce4_schema', 'html5'),
('tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
('tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
('tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code'),
('tinymce4_custom_buttons3', ''),
('tinymce4_custom_buttons4', ''),
('tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),
('allow_eval', 'with_scan'),
('safe_functions_at_eval', 'time,date,strtotime,strftime'),
('check_files_onlogin', 'index.php\r\n.htaccess\r\nmanager/index.php\r\nmanager/includes/config.inc.php'),
('validate_referer', '1'),
('rss_url_security', 'http://feeds.feedburner.com/modxsecurity'),
('error_reporting', '1'),
('send_errormail', '0'),
('pwd_hash_algo', 'UNCRYPT'),
('enable_bindings', '1'),
('reload_captcha_words', ''),
('captcha_words', 'MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('captcha_words_default', 'MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('filemanager_path', 'D:/xampp5/htdocs/evo/'),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('upload_flash', 'fla,flv,swf'),
('upload_maxsize', '5000000'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('which_browser', 'mcpuk'),
('rb_webuser', '0'),
('rb_base_dir', 'D:/xampp5/htdocs/evo/assets/'),
('rb_base_url', 'assets/'),
('clean_uploaded_filename', '1'),
('strip_image_paths', '1'),
('maxImageWidth', '1600'),
('maxImageHeight', '1200'),
('thumbWidth', '150'),
('thumbHeight', '150'),
('thumbsDir', '.thumbs'),
('jpegQuality', '90'),
('denyZipDownload', '0'),
('denyExtensionRename', '0'),
('showHiddenFiles', '0'),
('lang_code', 'en'),
('sys_files_checksum', 'a:4:{s:30:\"D:/xampp5/htdocs/evo/index.php\";s:32:\"ed8dd02021b28b9227b44d5a76ef7440\";s:30:\"D:/xampp5/htdocs/evo/.htaccess\";s:32:\"43c6abeaf47db72511f89ea4cb8eab4f\";s:38:\"D:/xampp5/htdocs/evo/manager/index.php\";s:32:\"afb412c538f339b214dfa2218d0e1349\";s:52:\"D:/xampp5/htdocs/evo/manager/includes/config.inc.php\";s:32:\"ac6ffca0a2884f6ef799b98f043a3aad\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`) VALUES
(1, 1, 'Default admin account', 1, 'example@email.com', '', '', 0, 0, 0, 1, 0, 1488234601, 0, 'v6uhl0r3qf48cn2d7fr7oaip10', 0, 0, '', '', '', '', '', '', '', ''),
(2, 2, '', 1, 'email@example.com', '', '', 0, 0, 0, 1, 0, 1488457780, 0, '8v3vtrdfc0cpm06lt8ir259l76', 0, 0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_roles`
--

CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

--
-- Дамп данных таблицы `modx_user_roles`
--

INSERT INTO `modx_user_roles` (`id`, `name`, `description`, `frames`, `home`, `view_document`, `new_document`, `save_document`, `publish_document`, `delete_document`, `empty_trash`, `action_ok`, `logout`, `help`, `messages`, `new_user`, `edit_user`, `logs`, `edit_parser`, `save_parser`, `edit_template`, `settings`, `credits`, `new_template`, `save_template`, `delete_template`, `edit_snippet`, `new_snippet`, `save_snippet`, `delete_snippet`, `edit_chunk`, `new_chunk`, `save_chunk`, `delete_chunk`, `empty_cache`, `edit_document`, `change_password`, `error_dialog`, `about`, `file_manager`, `assets_files`, `assets_images`, `save_user`, `delete_user`, `save_password`, `edit_role`, `save_role`, `delete_role`, `new_role`, `access_permissions`, `bk_manager`, `new_plugin`, `edit_plugin`, `save_plugin`, `delete_plugin`, `new_module`, `edit_module`, `save_module`, `delete_module`, `exec_module`, `view_eventlog`, `delete_eventlog`, `manage_metatags`, `edit_doc_metatags`, `new_web_user`, `edit_web_user`, `save_web_user`, `delete_web_user`, `web_access_permissions`, `view_unpublished`, `import_static`, `export_static`, `remove_locks`, `display_locks`, `change_resourcetype`) VALUES
(2, 'Editor', 'Limited to managing content', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(1, 'Administrator', 'Site administrators have full access to all functions', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

--
-- Дамп данных таблицы `modx_user_settings`
--

INSERT INTO `modx_user_settings` (`user`, `setting_name`, `setting_value`) VALUES
(1, 'allow_manager_access', '1'),
(1, 'which_browser', 'default'),
(1, 'tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
(1, 'tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
(1, 'tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code'),
(1, 'tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),
(2, 'allow_manager_access', '1'),
(2, 'which_browser', 'default'),
(2, 'tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
(2, 'tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
(2, 'tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code'),
(2, 'tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_access`
--

CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_names`
--

CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_groups`
--

CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_users`
--

CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_attributes`
--

CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_settings`
--

CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `modx_active_user_sessions`
--
ALTER TABLE `modx_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document` (`document`),
  ADD KEY `document_group` (`document_group`);

--
-- Индексы таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_keyword_xref`
--
ALTER TABLE `modx_keyword_xref`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `keyword_id` (`keyword_id`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `typeidx` (`type`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `modx_site_content_metatags`
--
ALTER TABLE `modx_site_content_metatags`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `metatag_id` (`metatag_id`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`);

--
-- Индексы таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `modx_site_tmplvar_contentvalues` ADD FULLTEXT KEY `value_ft_idx` (`value`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`);

--
-- Индексы таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_web_user_settings`
--
ALTER TABLE `modx_web_user_settings`
  ADD PRIMARY KEY (`webuser`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `webuserid` (`webuser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT для таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;
--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
