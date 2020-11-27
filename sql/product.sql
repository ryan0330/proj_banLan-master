-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-08-16 11:42:47
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mm58`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `time` date NOT NULL,
  `color` int(11) NOT NULL,
  `style` varchar(30) NOT NULL,
  `category` int(11) NOT NULL,
  `img_small` varchar(255) NOT NULL,
  `img_big` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `flower` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`sid`, `name`, `price`, `time`, `color`, `style`, `category`, `img_small`, `img_big`, `size`, `flower`, `intro`) VALUES
(1, '淡粉甜玫', 2880, '2020-07-01', 6, '2', 3, 'sweet', '', '30×30×40cm', '玫瑰、鬱金香、桔梗、康乃馨', '粉玫瑰花語：初戀、求愛、愛心。<br>鬱金香花語：永恆、愛的表白、永恆的祝福。<br>桔梗花的花語:真誠不變的愛。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。'),
(2, '白水夏蓮', 4800, '2020-07-21', 1, '3,4', 3, 'water', '', '50x60x55cm', '玫瑰、繡球、鬱金香、尤佳利、桔梗、石蓮(依季節不同)', '鬱金香花語：永恆、愛的表白、永恆的祝福。<br>桔梗花的花語:真誠不變的愛。<br>石蓮花的花語：永不凋謝的愛。<br>尤加利花語:恩賜<br>。繡球花的花語:忠貞、永恆。'),
(3, '紅玫山野', 4800, '2020-06-04', 3, '1,2', 3, 'mt', '', '50x60x55cm', '玫瑰、乒乓菊、鬱金香 ', '鬱金香花語：永恆、愛的表白、永恆的祝福。<br>紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。<br>乒乓菊花語:圓滿。'),
(4, '香檳花園', 3500, '2020-07-30', 2, '1,4,5', 3, 'gd', '', '60x65cm', '香檳玫瑰 繡球 翠珠 蕾絲 康乃馨 桔梗(白色包裝紙，咖啡色襯紙)', '香擯玫瑰花語:夢幻的感覺。<br>桔梗花的花語:真誠不變的愛。<br>繡球花的花語:忠貞、永恆。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>翠珠:祝你幸福，優雅的愛好和無言的愛。'),
(6, '白紡蕾絲', 2800, '2020-04-15', 1, '1,3', 3, 'les', '', '45X40x30cm', '白玫瑰 蕾絲花 松蟲草(黑色包裝紙,白色襯紙)', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>蕾絲花花語:惹人憐愛的心。<br松蟲草:追憶。'),
(7, '綠境', 2500, '2020-03-23', 1, '4,5', 3, 'green', '', '30×30×40cm', '綠乒乓、綠石竹、山防風、商陸、伯利恆、春蘭葉、小薊花、山蘋果', '小薊花花語:默默的愛。<br>春蘭葉花語：遲來的愛。<br>綠石竹花語:純淨的愛。<br>乒乓菊花語:圓滿。<br>山防風花語: 永恆的愛。<br>伯利恆花語:敏感。'),
(8, '怦然心動', 5800, '2020-05-28', 6, '2,4,5', 3, 'heart', '', '75×45×60cm', '進口粉玫、進口白玫、虹彩木、白色薊花', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>小薊花花語:默默的愛。'),
(10, '粉繡之庭', 4800, '2020-04-24', 6, '1,2,5', 3, 'circle', '', '50x70x55cm', '玫瑰、乒乓菊、粉繡球、康乃馨', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>乒乓菊花語:圓滿。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>粉繡球花花語:期待愛情。'),
(11, '夢幻花饗', 2800, '2020-08-05', 2, '1', 2, 'dream', '', '24x4x4cm', '多肉、進口橘玫、粉乒乓、膚色康乃馨、草莓果、粉桔', '乒乓菊花語:圓滿。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。<br>桔梗花的花語:真誠不變的愛。'),
(12, '春之戀想', 2500, '2020-01-15', 4, '1,4', 2, 'think', '', '禮盒17×18cm', '桔梗、玫瑰、多肉、綠石竹', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。<br>桔梗花的花語:真誠不變的愛。<br>綠石竹花語:純淨的愛。'),
(13, '粉紅泡泡', 4000, '2020-05-27', 6, '1,2,4', 2, 'bubble', '', '38×38×43cm', '迷你玫瑰、康乃馨、腕豆花、風信子、桔梗', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>桔梗花的花語:真誠不變的愛<br>。康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>粉色風信子的花語：永遠的懷念。'),
(14, '粉春派對', 2600, '2020-04-17', 2, '1,4', 2, 'party', '', '28×28×26cm', '康乃馨、玫瑰、聖誕玫瑰', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>聖誕玫瑰花語:矛盾。'),
(15, '白綠春日', 3500, '2020-06-24', 1, '3', 2, 'spring', '', '70×25×53cm', '繡球、綠石竹、火鶴', '綠石竹花語:純淨的愛。<br>繡球花的花語:忠貞、永恆。<br>火鶴的花語:燃燒的心、熱情、關懷與衷心的祝福。'),
(16, '繽紛夏至 ', 2800, '2020-03-17', 2, '1,4,5', 2, 'wood', '', '27x27x17cm', '蘭花、多肉、海芋、迷你鳳梨、綠石竹、葉材', '綠石竹花語:純淨的愛。<br>蘭花花語:高潔、高雅、美好。<br>海芋花的花語：純潔、幸福、清秀、純凈的愛。<br>竹子的花語：生命的柔韌堅強、青春永駐、氣節和傲骨。'),
(17, '甜蜜花嫁捧花', 4000, '2020-01-24', 1, '2,5', 1, 'wedding', '', '28×30cm', '艾瑪百合、玫瑰、泡盛花、新娘花、桔梗、尤加利葉', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>桔梗花的花語:真誠不變的愛。<br>艾瑪百合花語：渴望被愛。<br>新娘花花語:相伴一生。<br>泡盛花花語:戀愛的來臨。<br>尤加利花語:恩賜。'),
(18, '邱比特之吻捧花', 3500, '2019-12-19', 3, '2,5', 1, 'cupid', '', '28×30cm', '繡球、東亞蘭、泡盛花、進口玫瑰、桔梗', '桔梗花的花語:真誠不變的愛。<br>淡紅玫瑰花語：明豔照人、感動、愛的宣言。<br>泡盛花花語:戀愛的來臨。<br>繡球花的花語:忠貞、永恆。<br>東亞蘭花語:祝福。'),
(19, '艾瑪百合捧花', 5000, '2020-08-07', 1, '3,5', 1, 'emma', '', '28×30cm', '白色愛瑪百合、綠果', '艾瑪百合花語：渴望被愛。'),
(21, '白蘋果頭花', 200, '2020-05-22', 1, '1,3,5', 1, 'apple', '', '30×5cm', '白蘋果、白臘梅', '臘梅花語：堅強不屈，有傲骨，貞潔，哀愁悲懷的慈愛心。<br>蘋果花花語:陷阱。'),
(22, '夏光花冠', 2000, '2020-06-14', 2, '1,4,5', 1, 'summertime', '', '30×12cm', '黃東亞蘭五朵，黃橘色配花(隨季節更動)', '東亞蘭花語:祝福。'),
(23, '星星點點頭花', 2000, '2020-03-26', 6, '1', 1, 'starhead', '', '30×5cm', '粉蠟梅、史考梅', '臘梅花語：堅強不屈，有傲骨，貞潔，哀愁悲懷的慈愛心。'),
(24, '澄夏捧花', 2580, '2020-03-02', 2, '1,4,5', 3, 'os', '', '30X35cm', '白玫瑰、橘玫瑰、咸豐草', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。'),
(25, '鬱金香小花束', 380, '2020-03-10', 6, '1,4,5', 3, 'tulip', '', '25x10cm', '進口鬱金香', '鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(26, '太陽花小花束', 280, '2020-05-20', 2, '1,5', 3, 'sunflower', '', '60X10cm', '進口乾燥花材(太陽花)', '太陽花花語:花語：光輝、高傲、忠誠、愛慕、勇敢的去追求自己想要的幸福、沉默的愛。'),
(27, '柏林藍', 1580, '2020-08-07', 5, '1,2,3', 3, 'berlin', '', '35X25cm', '進口乾燥花材(藍玫瑰、白雛菊)', '藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。<br>白雛菊花語:暗戀、快樂、離別。'),
(28, '寧靜小雛菊', 2280, '2020-04-29', 5, '1,3', 3, 'no', '', '45X35cm', '進口乾燥花材(藍玫瑰、白雛菊)', '藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。<br>白雛菊花語:暗戀、快樂、離別。'),
(29, '幸福一輩子', 1980, '2020-05-13', 4, '1,4', 3, 'life', '', '45X35cm', '奶茶色康乃馨、桔梗', '康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>桔梗花的花語:真誠不變的愛。'),
(30, '激情暗黑', 1380, '2020-03-16', 3, '1,2', 3, 'dark', '', '30x40x35cm', '紅玫瑰、海芋、桔梗、臘梅', '紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。<br>桔梗花的花語:真誠不變的愛。<br>海芋花的花語：純潔、幸福、清秀、純凈的愛。<br>臘梅花語：堅強不屈，有傲骨，貞潔，哀愁悲懷的慈愛心。'),
(31, '巨大鮮花束', 6800, '2020-02-11', 4, '1', 3, 'big', '', '80x120cm', '繡球花、康乃馨、桔梗、千日紅', '康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>桔梗花的花語:真誠不變的愛。'),
(32, '流星花園', 1380, '2020-05-01', 1, '5', 3, 'star', '', '20x30x25cm', '伯利恆之星、蓮蓬、四季迷、綠桔梗', '桔梗花的花語:真誠不變的愛。<br>伯利恆之星的花語:敏感。<br>四季迷的花語:熱血。'),
(33, '夢幻', 1980, '2020-07-04', 6, '1,4', 3, 'wonder', '', '30x40x25cm', '進口粉玫瑰、白大康', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情'),
(34, '像極了愛情', 2999, '2020-08-03', 4, '1,5', 3, 'feel', '', '30x40x25cm', '古典牡丹菊、綠乒乓、紫桔梗、四季迷、尤加利、綠桔梗', '尤加利花語:恩賜。<br>四季迷的花語:熱血。<br>桔梗花的花語:真誠不變的愛。<br>乒乓菊花語:圓滿。'),
(35, '森林系少女', 1280, '2020-02-25', 1, '5', 3, 'Forest', '', '20x40x20cm', '桔梗、紫薊', '紫薊的花語:堅持。<br>桔梗花的花語:真誠不變的愛。'),
(36, '青澀時代', 1500, '2020-04-24', 6, '1,4', 3, 'yg\r\n', '', '50x55cm', '桔梗、尤加利', '桔梗花的花語:真誠不變的愛。<br>尤加利花語:恩賜。'),
(37, '粉霓裳', 2980, '2020-06-23', 6, '2,5', 3, 'cloth', '', '30x40x30cm', '粉桔梗、粉玫瑰', '桔梗花的花語:真誠不變的愛。<br>粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。'),
(38, '希望', 3200, '2020-07-01', 3, '2,4', 3, 'hope', '', '20x30x25cm', '桃紅玫瑰、順風桔梗、海芋、乒乓菊', '桔梗花的花語:真誠不變的愛。<br>乒乓菊花語:圓滿。<br>海芋花的花語：純潔、幸福、清秀、純凈的愛。<br>紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。'),
(39, '獻，誨我諄諄的你', 3200, '2020-08-09', 5, '1,3', 3, 'you', '', '30x40x30cm', '藍玫瑰、鬱金香、桔梗', '桔梗花的花語:真誠不變的愛。<br>藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。<br>鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(40, '彩虹小馬', 980, '2020-05-23', 1, '2,4', 4, 'horse', '', '20x40x20cm', '彩色滿天星、銅線燈', '滿天星的花語:思念、青春、夢境、真心喜歡。'),
(41, '做自己的光', 1580, '2020-04-01', 2, '5', 3, 'light', '', '30x40x30cm', '向日葵、迷你太陽', '太陽花花語:花語：光輝、高傲、忠誠、愛慕、勇敢的去追求自己想要的幸福、沉默的愛。'),
(42, '愛的宣言', 2500, '2020-03-22', 6, '2,4', 3, 'lw', '', '30x40x30cm', '粉玫瑰', '粉玫瑰花語：初戀、求愛、愛心。<br>鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(43, '永遠18歲', 2980, '2020-03-31', 4, '2', 4, 'age', '', '30x40x25cm', '紫玫瑰、粉玫瑰、雪柳', '粉玫瑰花語：初戀、求愛、愛心。鬱金香花語：永恆、愛的表白、永恆的祝福。<br>紫玫瑰花語:浪漫真情和珍貴獨特的愛情。<br>雪柳花語:殊勝。'),
(44, '老婆是用來疼的', 2580, '2020-05-16', 5, '1,2', 3, 'wife', '', '20x20cm', '粉繡球、藍繡球、白玫瑰、白乒乓', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>乒乓菊花語:圓滿。<br>繡球花的花語:忠貞、永恆。'),
(45, '青春不散場', 1980, '2020-04-16', 4, '1,3', 4, 'never', '', '20x30x25cm', '紫玫、奶茶大康', '紫玫瑰花語:浪漫真情和珍貴獨特的愛情。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情'),
(46, '雪白的夢', 1999, '2020-03-08', 1, '3', 4, 'wd', '', '20x40x20cm', '白玫瑰、白乒乓、文心蘭', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>乒乓菊花語:圓滿。'),
(47, '你的肩膀', 1880, '2020-04-03', 3, '2,4', 3, 'shoulder', '', '40x50x40cm', '古典粉大康、暗紅大康、紅桔梗', '桔梗花的花語:真誠不變的愛。<br>康乃馨花語：熱情、魅力、使人柔弱的愛、真情。'),
(48, '以愛為題', 2580, '2020-05-07', 1, '1,2,3', 3, 'lovename', '', '40x50x40cm', '紫玫瑰、白桔梗', '紫玫瑰花語:浪漫真情和珍貴獨特的愛情。<br>桔梗花的花語:真誠不變的愛。'),
(49, '人海中遇見你', 3580, '2020-03-03', 5, '1,2,3', 3, 'sea', '', '40x50x40cm', '藍玫瑰、紫薊', '藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。<br>小薊花花語:默默的愛。'),
(50, '下過雨的江南', 3999, '2020-01-17', 6, '1,2,4,5', 3, 'river', '', '40x50x40cm', '粉玫瑰、繡球花', '粉玫瑰花語：初戀、求愛、愛心。<br>繡球花的花語:忠貞、永恆。'),
(51, '愛的樂章', 3580, '2020-02-01', 6, '1,2,4', 3, 'music', '', '20x40x20cm', '粉玫瑰', '粉玫瑰花語：初戀、求愛、愛心。'),
(52, '純潔的愛', 4280, '2020-01-22', 1, '3', 3, 'clean', '', '40x50x40cm', '白玫瑰', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。'),
(53, '無盡', 1880, '2020-02-29', 4, '1,5', 3, 'end', '', '30x40x30cm', '紫玫瑰', '紫玫瑰花語:浪漫真情和珍貴獨特的愛情。'),
(54, '私藏美麗', 1999, '2020-01-18', 6, '1,2,4', 3, 'pretty', '', '20x30x25cm', '粉玫瑰、粉桔梗', '粉玫瑰花語：初戀、求愛、愛心。<br>桔梗花的花語:真誠不變的愛。'),
(55, '最美的風景', 2980, '2020-02-07', 6, '1,2,4', 3, 'view', '', '30x40x25cm', '進口玫瑰、順風桔梗、翠珠', '粉玫瑰花語：初戀、求愛、愛心。<br>翠珠:祝你幸福，優雅的愛好和無言的愛。<br>桔梗花的花語:真誠不變的愛。'),
(56, '愛上你的第一天', 1880, '2020-01-21', 1, '1,3', 3, 'day', '', '50x60x55cm', '白玫、桔梗', '桔梗花的花語:真誠不變的愛。<br>白玫瑰花語:我足以與你相配，你是唯一與我相配的人。'),
(57, '如果我愛你', 999, '2020-04-19', 3, '5', 4, 'iflove', '', '10x10x10cm', '白菊花', '菊花的花語:高潔、清淨、我愛你。'),
(58, '午茶時光', 1580, '2020-04-04', 2, '1,3,5', 4, 'tea', '', '50x60x55cm', '山茂堅、深藍色手工太陽玫瑰、白色滿天星', '滿天星的花語是思念、青春、夢境、真心喜歡。<br>山茂堅的花語:堅強的守護。<br>太陽玫瑰的花語：永恆的愛戀。'),
(59, '心之所向', 1280, '2020-08-17', 5, '1,3', 4, 'location', '', '20x30x25cm', '白色棉花、藍色手工太陽玫瑰、藍色滿天星', '滿天星的花語是思念、青春、夢境、真心喜歡。<br>太陽玫瑰的花語：永恆的愛戀。'),
(60, '奶油吐司', 1500, '2020-01-31', 2, '1,5', 4, 'toast', '', '25x20x25cm', '太陽玫瑰、滿天星、兔尾草、圓仔花', '滿天星的花語是思念、青春、夢境、真心喜歡。<br>太陽玫瑰的花語：永恆的愛戀。'),
(61, '小太陽', 1200, '2020-05-25', 3, '1,2', 4, 'little', '', '12x12x15cm', '手工太陽玫瑰', '太陽玫瑰的花語：永恆的愛戀。'),
(62, '金黃燦爛', 1980, '2020-01-27', 2, '4', 3, 'bot', '', '60x65cm', '乒乓菊', '乒乓菊花語:圓滿。'),
(63, '烈霞', 2980, '2020-06-08', 3, '2,5', 3, 'fire', '', '38×38×43cm', '扶桑花', '扶桑花的花語：新鮮的戀情，微妙的美。'),
(64, '冬日', 3780, '2020-07-05', 1, '3', 3, 'winter', '', '28×30cm', '艾瑪百合', '艾瑪百合花語：渴望被愛。'),
(65, '白玉團暖', 1580, '2019-12-13', 1, '3', 3, 'jade', '', '30X35cm', '滿天星、棉花', '滿天星的花語:思念、青春、夢境、真心喜歡。'),
(66, '白雪公主', 3500, '2020-06-19', 3, '2,3', 0, 'snow', '', '40x50x40cm', '白玫瑰、紅玫瑰', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。'),
(67, '白皚', 2500, '2020-08-04', 1, '1,3', 3, 'allwhite', '', '20x30x25cm', '桔梗', '桔梗花的花語:真誠不變的愛。'),
(68, '明豔', 3780, '2020-06-07', 2, '1,4', 4, 'lighter', '', '45×35×55cm', '紅玫瑰、白玫瑰、橘玫瑰', '紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。<br>白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。'),
(69, '恬粉', 2350, '2020-05-05', 6, '1,2', 4, 'onlypink', '', '35X25cm', '鬱金香', '鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(70, '春粉盪漾', 2800, '2020-04-27', 6, '1,2,4', 0, 'move', '', '20x30x25cm', '鬱金香', '鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(71, '秋橘', 3200, '2020-02-09', 2, '4', 4, 'fall', '', '20x30x25cm', '鼠尾草', '鼠尾草的花語:熱烈的思念。'),
(72, '桔白', 2200, '2020-06-06', 1, '1,3', 4, 'owhite', '', '60x65cm', '桔梗花', '桔梗花的花語:真誠不變的愛。'),
(73, '粉白星星', 1500, '2020-08-04', 6, '1,2', 4, 'pinkstar', '', '20x40x20cm', '滿天星', '滿天星的花語:思念、青春、夢境、真心喜歡。'),
(74, '粉玫甜雅', 4200, '2020-01-08', 6, '1,2', 0, 'sweetrose', '', '30x40x30cm', '粉玫瑰', '粉玫瑰花語：初戀、求愛、愛心。'),
(75, '粉蘭', 4500, '2020-04-18', 1, '1,4', 3, 'orchid', '', '40x50x40cm', '蘭花', '蘭花的花語：美好、高潔、純樸、賢德、賢貞、俊雅。'),
(76, '純白浪漫', 3800, '2020-03-19', 1, '3,5', 3, 'roma', '', '50x60x55cm', '百合花', '百合花的花語:順利、心想事成、祝福、高貴純潔、心心相印、持久的愛。'),
(77, '耽美', 4800, '2020-04-05', 2, '1,5', 3, 'danger', '', '30×30×40cm', '黃玫瑰、粉玫瑰、橘玫瑰', '黃玫瑰花語：高貴、珍重祝福。<br>粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。'),
(78, '迷情', 3700, '2020-04-24', 6, '1,2', 3, 'mist', '', '28×28×26cm', '桔梗花、泡盛花', '桔梗花的花語:真誠不變的愛。<br>泡盛花花語:戀愛的來臨。'),
(79, '淡黃閃閃', 1980, '2019-12-24', 2, '1,4,5', 3, 'bling', '', '28×30cm', '滿天星', '滿天星的花語:思念、青春、夢境、真心喜歡。'),
(80, '淨白亮度', 0, '2020-05-28', 1, '3,5', 3, 'tuwhite', '', '30×30×40cm', '鬱金香', '鬱金香花語：永恆、愛的表白、永恆的祝福。'),
(81, '深紫', 2150, '2020-03-13', 4, '1', 3, 'deep', '', '28×28×26cm', '桔梗花', '桔梗花的花語:真誠不變的愛。'),
(82, '紫醉金迷', 3200, '2020-02-21', 4, '1,5', 3, 'twocolor', '', '45×35×55cm', '薰衣草、滿天星', '薰衣草的花語:等待愛情。<br>滿天星的花語:思念、青春、夢境、真心喜歡。'),
(83, '粉色世界', 4200, '2020-04-14', 6, '1,2,4', 3, 'world', '', '40x50x40cm', '薰衣草、粉玫瑰、白玫瑰', '粉玫瑰花語：初戀、求愛、愛心。<br>白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>薰衣草的花語:等待愛情。'),
(84, '黃玉點點', 1500, '2020-05-12', 2, '1,5', 3, 'dot', '', '20x30x25cm', '白玫瑰、滿天星', '白玫瑰花語:我足以與你相配，你是唯一與我相配的人。<br>滿天星的花語:思念、青春、夢境、真心喜歡。'),
(85, '暗戀', 2400, '2020-01-16', 6, '2,5', 3, 'deeplove', '', '25x20x25cm', '雛菊花、粉玫瑰', '粉玫瑰花語：初戀、求愛、愛心。<br>雛菊花的花語:天真、幸福、和平。'),
(86, '綠野仙蹤', 2800, '2020-02-24', 1, '4', 3, 'story', '', '30X35cm', '桔梗花、乒乓菊', '桔梗花的花語:真誠不變的愛。<br>乒乓菊花語:圓滿。'),
(88, '輕藍典緻', 4800, '2020-03-26', 5, '1,2,', 3, 'blue', '', '50x70x55cm', '藍玫瑰、白雛菊', '藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。<br>白雛菊花語:暗戀、快樂、離別。'),
(89, '繡球庭園', 4200, '2020-04-13', 5, '3,5', 3, 'bandw', '', '30x40x25cm', '繡球花、藍玫瑰', '繡球花的花語:忠貞、永恆。<br>藍玫瑰花語：奇蹟與不可能實現的事，代表清純的愛和敦厚善良。'),
(90, '藍色眼睛', 1200, '2020-02-22', 5, '1,5', 4, 'eye', '', '20x40x20cm', '滿天星', '滿天星的花語:思念、青春、夢境、真心喜歡。'),
(91, '耀眼光芒', 2500, '2020-04-02', 2, '1,5', 3, 'sunorg', '', '60X10cm', '太陽花', '太陽花花語:花語：光輝、高傲、忠誠、愛慕、勇敢的去追求自己想要的幸福、沉默的愛。'),
(92, '艷紅奔放', 3800, '2020-07-30', 3, '2', 3, 'run', '', '50x60x55cm', '紅玫瑰', '紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛。'),
(94, '詩意', 1800, '2019-12-05', 4, '5', 3, 'poem', '', '20x40x20cm', '繡球花', '繡球花花語:忠貞、永恆。'),
(102, '紅寶石玫瑰束花', 800, '2020-06-25', 3, '2', 1, 'ruby', '', '10×5cm', '紅玫瑰兩朵、泡盛與金色果實(隨季節更動)', '泡盛花花語:戀愛的來臨。<br>紅玫瑰花語：熱戀、熱情、熱愛、希望與你泛起激情的愛，真誠的愛、真心真意。'),
(105, '輕柔秋陽', 2800, '2020-05-04', 2, '4', 3, 'sunfw', '', '30×30×40cm', '庭園玫瑰、迷你橘玫瑰、復古康乃馨、粉桔梗', '康乃馨花語：熱情、魅力、使人柔弱的愛、真情。<br>橘玫瑰:羞怯、獻給你一份神祕的愛。<br>黃玫瑰花語：高貴、珍重祝福。<br>桔梗花的花語:真誠不變的愛。'),
(109, '甜蜜漫舞', 3000, '2020-02-10', 6, '2,5', 3, 'dance', '', '45×35×55cm', '粉玫、粉乒乓、白乒乓、白千鳥草、白雪柳', '粉玫瑰花語:初戀，特別的關懷，喜歡你那燦爛的微笑。<br>乒乓菊花語:圓滿。<br>千鳥草花語:輕盈、自由、正義、清凈。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
