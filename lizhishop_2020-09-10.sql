# ************************************************************
# Sequel Ace SQL dump
# Version 2077
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.19)
# Database: lizhishop
# Generation Time: 2020-09-10 13:13:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_carts`;

CREATE TABLE `tbl_carts` (
  `cart_id` int unsigned NOT NULL AUTO_INCREMENT,
  `cart_user` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '11111111111',
  `cart_software` int DEFAULT NULL,
  `cart_softwarename` varchar(100) DEFAULT NULL,
  `cart_price` float DEFAULT NULL,
  `cart_count` int DEFAULT NULL,
  `cart_period` varchar(100) DEFAULT NULL,
  `cart_picurl` text,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `tbl_carts` WRITE;
/*!40000 ALTER TABLE `tbl_carts` DISABLE KEYS */;

INSERT INTO `tbl_carts` (`cart_id`, `cart_user`, `cart_software`, `cart_softwarename`, `cart_price`, `cart_count`, `cart_period`, `cart_picurl`)
VALUES
	(3,'11111111111',19,'赤友 NTFS for Mac 助手: 磁盘硬盘格式读写软件注册激活码',55,3,'专业版','https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Eay4L2z4I3wdMfjdA7w5O5DeEey3MTEyNTE1NDIzLnBuZwO0O0OO0O0O');

/*!40000 ALTER TABLE `tbl_carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_orders`;

CREATE TABLE `tbl_orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_user` int DEFAULT NULL,
  `order_software` int DEFAULT NULL,
  `order_price` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_price`;

CREATE TABLE `tbl_price` (
  `price_id` int unsigned NOT NULL AUTO_INCREMENT,
  `price_software` int DEFAULT NULL,
  `price_period` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price_value` float DEFAULT NULL,
  `price_discount` float DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `tbl_price` WRITE;
/*!40000 ALTER TABLE `tbl_price` DISABLE KEYS */;

INSERT INTO `tbl_price` (`price_id`, `price_software`, `price_period`, `price_value`, `price_discount`)
VALUES
	(1,1,'一年版',49,34),
	(2,1,'终生版',149,129),
	(3,2,'一年版',80,40),
	(4,2,'终生版',125,125),
	(5,3,'专业版',199,169),
	(6,4,'一月版',10,10),
	(7,4,'一年版',65,65),
	(8,4,'终生版',99,74.25),
	(9,5,'一年订阅版',498,498),
	(10,6,'终生-单设备',59,59),
	(11,6,'终生-三设备',149,149),
	(12,6,'终生-五设备',199,199),
	(13,7,'单用户',89,89),
	(14,8,'一年-单设备',49,49),
	(15,8,'一年-三设备',89,89),
	(16,8,'终生-单设备',119,119),
	(17,8,'终生-三设备',239,239),
	(18,9,'单用户',79,79),
	(19,10,'双设备',199,199),
	(20,11,'一年订阅-桌面版',319,319),
	(21,11,'一年订阅-桌面+移动版',349,349),
	(22,11,'半年订阅-桌面+移动版',236,236),
	(23,12,'一年版',69,69),
	(24,12,'终生版',279,279),
	(25,13,'一月版',5,5),
	(26,13,'一年版',55,55),
	(27,13,'终生版',88,45),
	(28,14,'专业版',149,99),
	(29,15,'单用户',99,99),
	(30,16,'单设备',149,149),
	(31,17,'一对一服务/年',99,99),
	(32,18,'Plus 一月版',16,16),
	(33,18,'Plus 三月版',45,45),
	(34,18,'Plus 一年版',178,178),
	(35,19,'基础版',36,36),
	(36,19,'专业版',55,55),
	(37,20,'iOS永久版',48,48),
	(38,20,'Android永久版',28,28),
	(39,20,'iOS+Android永久版',70,70),
	(40,20,'iOS+Android一月版',8,8),
	(41,20,'iOS+Android一年版',48,48),
	(42,21,'单用户',139,139),
	(43,21,'五用户',549,549),
	(44,21,'十用户',999,999),
	(45,21,'二十用户',1799,1799),
	(46,21,'五十用户',3899,3899),
	(47,21,'定制化数量可联系客服',9999,9999),
	(48,22,'一月-个人标准版',29,29),
	(49,22,'一月-商用标准版',69,69),
	(50,22,'一月-企业标准版',159,159),
	(51,22,'一年-个人标准版',299,299),
	(52,22,'一年-商用标准版',699,699),
	(53,22,'一年-企业标准版',1599,1599),
	(54,23,'单设备',99,99),
	(55,23,'个人版',199,199),
	(56,23,'家庭版',299,299),
	(57,24,'双用户',266,266),
	(58,24,'十用户',1329,1329),
	(59,24,'五十用户',6649,6649),
	(60,24,'一百用户',13299,13299),
	(61,24,'定制化数量可联系客服',99999,99999),
	(62,25,'单用户',39,39),
	(63,26,'付费音乐包-月卡',8,8),
	(64,26,'付费音乐包-季卡',24,24),
	(65,26,'付费音乐包-年卡',96,96),
	(66,26,'豪华绿钻会员-月卡',15,15),
	(67,26,'豪华绿钻会员-季卡',45,45),
	(68,26,'豪华绿钻会员-年卡',168,168),
	(69,27,'单设备',899,899),
	(70,27,'每年更新续费',179,179),
	(71,28,'一月版',25,25),
	(72,28,'一年版',249,249),
	(73,28,'终生版',749,749),
	(74,29,'一月版',12,12),
	(75,29,'一年版',99,99),
	(76,29,'终生版',299,299);

/*!40000 ALTER TABLE `tbl_price` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_softwares
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_softwares`;

CREATE TABLE `tbl_softwares` (
  `software_id` int unsigned NOT NULL AUTO_INCREMENT,
  `software_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `software_introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `software_windows` int DEFAULT '0',
  `software_linux` int DEFAULT '0',
  `software_macos` int DEFAULT '0',
  `software_android` int DEFAULT '0',
  `software_ios` int DEFAULT '0',
  `software_type` varchar(20) DEFAULT NULL,
  `software_recommend` int DEFAULT '0',
  `software_picurl` text,
  `software_mic` int DEFAULT '0',
  PRIMARY KEY (`software_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `tbl_softwares` WRITE;
/*!40000 ALTER TABLE `tbl_softwares` DISABLE KEYS */;

INSERT INTO `tbl_softwares` (`software_id`, `software_name`, `software_introduce`, `software_windows`, `software_linux`, `software_macos`, `software_android`, `software_ios`, `software_type`, `software_recommend`, `software_picurl`, `software_mic`)
VALUES
	(1,'Internet Download Manager: 正版IDM 下载 序列号','提到下载工具，大多数人对国内下载软件的印象都是各种各样的广告和限速。而大名鼎鼎的 Internet Download Manager (简称 IDM) 下载工具则只有单纯的下载功能、简洁的使用界面。优秀的下载体验，让 IDM 广受国内外众多爱好者的追捧。',1,0,0,0,0,'影音媒体',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MTEyNDQyMzg1LnBuZwO0O0OO0O0O',0),
	(2,'AdGuard: 广告拦截隐私保护全平台安卓 iOS 去广告','AdGuard 在绝对不侵犯用户隐私的前提下，不仅能为你清除页面广告、防止计数器跟踪、阻止视频广告，还可以使你摆脱恶意软件的困扰，并可协同任何浏览器和应用进行工作。\n\n广告拦截\nAdGuard 轻松阻挡 (比「隐藏过滤」更高效更彻底) 广告、减少页面加载时间、富媒体或其他非标准类型的广告，在对网页垃圾信息进行屏蔽后可加快页面载入速度。同时 AdGuard 还支持反钓鱼并对反恶意软件以及网站进行过滤。\n\n隐私保护\n除了过滤列表，AdGuard 还能防止网站通过跟踪器或分析工具获取你的数据，保护你的隐私安全。只需打开「隐形模式」，你就可以在浏览网页时隐藏你的搜索记录、User-Agent 或者防止其它网站通过 Cookie、IP 地址等信息追踪到你。\n\n实用的扩展功能\n由于一些浏览器不完全支持 AdGuard 的规则语法，AdGuard 还提供了 AdGuard 助手、弹窗拦截器、Web of Trust 等几个实用的扩展更好地保护你的网络安全。\n\n家长控制\n除了各种垃圾广告信息，互联网中还充斥着各种儿童不宜的内容，Windows 版本的 AdGuard 可以让你通过「家长控制」功能保护你的孩子远离不健康或者不合适的内容。',1,0,1,1,1,'安全防护',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MDEwOTUxNTkyLnBuZy93LzE3MC9oLzE3MAO0O0OO0O0O',0),
	(3,'Guitar Pro 7: 吉他/贝斯打谱识谱软件','Guitar Pro 是一款优秀的吉他学习与 MIDI 音序制作辅助软件，为所有吉他爱好者学习、绘谱、创作而设计的音乐空间。它不仅能帮助你学习各种和弦知识，提高你的弹奏技巧，还能让你轻松制作乐谱及伴奏。在学习弹拨乐器方面，这款软件有着绝对的优势。\n\n学习吉他好工具\nGuitar Pro 上对吉他和弦、把位的显示、调用等方面都显示的非常详细。使用音阶工具，配合虚拟指板，让你了解到各种按法。利用音节工具中的搜查功能，还可以自动查找当前所选音符的音节，让小白也能迅速掌握各种音阶。\n\n熟练者还可以在 Guitar Pro 中选中想要练习的部分，开启循环练习的模式。通过软件内自带的速度设定，由慢到快逐渐练习。\n\n优秀的打谱能力\nGuitar Pro 在传统打谱功能的基础上，融合了更多新的音符元素，加强了乐谱的图形渲染，改进 MIDI 输入输出格式，可以输出标准格式的 MIDI，同时还兼容更高显示分辨率，优化了与其他音乐程序的兼容性。\n\n编辑音乐乐谱\nGuitar Pro 可以让你使用自己喜欢的乐器乐谱来编辑和阅读。显示制表符来学习吉他即兴演奏，或使用标准符号来读取钢琴、鼓、铜管乐器和弦乐的乐谱。\n\n出色作曲工具\n快速使用数字字符、鼠标以及 MIDI 工具去录制乐谱，进行音符捕获或修改。通过增加弦乐器、管弦乐、鼓组、MIDI 的音轨以及多种后期效果来丰富你所创造的旋律，所选的音阶可以显示在指板或钢琴上，以帮助创作歌曲、编写独奏或旋律线。\n\n软件与吉他连接\n将吉他连接到有 Guitar Pro 电脑的外部声卡，可将其效果应用于指定文件中的任何音轨，将弹奏记录为乐谱也是轻松简单！\n\n便利的分享工具\n除了上述所说，Guitar Pro 还支持多种方式导入 / 导出，可将 gpx / midi / ascii / musicxml 等格式一键批量转换，还能导出例如：wav / mp3 / flac / ogg / aiff 以及 png 等文件。\n\n强大又实用的功能\n乐器伴奏、音频和母带后期处理，可将演奏效果添加到乐谱标签中。还有快速检索 Guitar Pro 文件、自定义 MIDI 导入等功能等你去探索！',1,0,1,0,0,'影音媒体',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6j8Aay4L2z4I3wdMfjdA7w5N5jeAey3MTIwNjI3MTM1LnBuZwO0O0OO0O0O',0),
	(4,'远离手机: 自律专注App 强制锁定手机减少依赖','远离手机是一款帮助你养成良好习惯，减少手机依赖的自律专注工具，应用开启后可强制锁定手机，无法使用除白名单之外的 App。可使用番茄钟模式高效管理时间，远离手机诱惑。还能与朋友互相监督打卡，相互激励进步。\n\n多种锁定手机方式\n用不了手机，自然不会耽误事情。远离手机拥有三种锁定手机的方式可以选择：按照倒计时的简单锁机、可用番茄钟管理时间的番茄锁机、像闹钟一样的定时锁机。无论哪种方式都可以按规定时长限制使用手机，还能杜绝各种不自觉企图关闭限制的行为。\n\n风格自定义\n远离手机会员能开启无限个锁定手机任务，同时可使用所有白噪音、主题色等权限。搭配自定义背景、文字颜色、无限制的独立白名单、精美倒数日等功能，打造美观实用的自我提升助手。\n\n可用 App 白名单\n锁定手机不代表完全不能使用，你可以将电话、词典、文档编辑器等学习工作中要用到的软件设置白名单。正常的手机使用需求依旧能满足，游戏聊天等影响效率的软件统统在锁定时无法开启。\n\n使用时长监督\n除了在设定好的时间段内不允许使用部分应用外，还可以监督手机使用总时长，或者限制某个软件一天的使用时长。养成适度使用手机的习惯，在第二天即可解除限制正常使用。\n\n手机使用数据统计\n软件会统计使用应用以及锁定手机的时长，还可分析最近使用各 App 的变化趋势，了解自己每日使用手机的情况，合理规划自己的时间。\n\n自律打卡及排行\n在每次锁定手机任务完成后，可打卡记录增加成就感。同时还能与使用远离手机的所有用户共同冲击排行榜，争当自律达人！',0,0,0,1,0,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6T8Iaw4L2z4I3wdMfjdA7w5N5TeIew3MDYzOTE2ODQ3LnBuZwO0O0OO0O0O',1),
	(5,'Parallels Desktop 16: 家庭和学生版 PD 15虚拟机','使用 Mac 电脑，我们有时会碰到一些只在 Windows 平台下运行的软件。开发者们也时常会遇到安全性未知的软件，这时一个不影响工作环境的系统就很重要。\n\n除了安装双系统，虚拟机就是解决上述这些问题的利器之一。而在 macOS 平台下，Parallels Desktop 可是虚拟机工具的不错选择。它是 macOS 平台性能首屈一指的虚拟机工具，软件搭载了各种常见和使用的工具，让您在 Mac 和 Windows 中能够很好地完成日常任务。\n\n不同系统，同时运行\n无需为了切换平台而复杂地安装双系统，无需为了转换系统而麻烦的开关机。拥有 Parallels Desktop，你就能在边使用 Mac 时，同时运行 Windows 或 Linux。\n\n更新及时，支持新特性\nParallels Desktop 随时关注 Apple 最新操作系统版本发布及功能，能够迅速支持系统的各种特性。同时为 Windows 的各项功能也快速跟进，杜绝因虚拟机内系统更新，导致不兼容而长时间无法使用的问题。\n\n虚拟机性能强劲\n启动 Windows 和应用程序的速度媲美物理机，启动 Parallels Desktop 也能快速响应。快速启动所需系统环境，无需一直转圈等待。\n\n多种环境专属优化\n专为生产力、游戏、设计、开发等需求进行优化，Office 365 集成等功能让使用虚拟机变得简单高效。\n\n更好用的 Touch Bar 工具\n使用 Parallels Tools 来支持 Touch Bar 直接处理虚拟机内任务，支持众多软件的快捷操作。同时可自定义快捷启动方式，让 Touch Bar 在虚拟机环境下更加好用。',0,0,1,0,0,'编程开发',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa34L2z4I3wdMfjdA7w5M5jeAe33MTI0OTE5MjI2LnBuZwO0O0OO0O0O',0),
	(6,'MacBooster: 系统优化清理工具 删除恶意软件和病毒','Macbooster 是一款 Mac 平台上一站式系统优化清理工具，提供了 10+ 种必不可少的优化工具 —— 无论是查杀木马病毒、删除应用残余文件、清理垃圾优化空间，或是修复各类 Mac 常见问题/权限，MacBooster 都能表现得游刃有余，让 Mac 的性能时刻保持巅峰状态。\n\n最重要的是，相比与成名较早的 CleanMyMac 系列，MacBooster 的售价对中国用户更友好。\n\n可清理多达 20 种垃圾文件类型\n你可能不知道 Mac 会产生多少无用文件，但安装 MacBooster 后你更无需操心。只需轻点鼠标，自动清扫 20+ 种类型的垃圾文件：安装包、语言文件、iOS 照片缓存、邮件附件、系统日志/缓存 …\n\nTurbo Boost 一键性能优化\nMac 的性能会随磁盘使用时间增加而降低。通过 MacBooster 独有的 Turbo Boost 功能，能够检测电脑存在的性能待提升项，并自动修复，最优化磁盘空间并解决各种异常权限问题。\n\n优化开机启动项\n管理 Mac 开机启动项，禁用不必要启动的应用程序，有效加快 macOS 的开机速度。\n\n查找重复文件\nMac 的大量空间，可能被重复的文件/图片/视频所占用。MacBooster 可轻易揪出它们，并自动判断「待清理」的部分，方便你在 MacBooster 中一键移除。\n\n远离木马与病毒\nMacBooster 会定时更新病毒数据库，时刻保护 Mac，无需担心受到病毒、木马、恶意软件的威胁。\n\n彻底卸载应用程序\n默认情况下， 删除应用后依然会在 Mac 保留各种残余缓存/关联文件。使用 MacBooster 卸载应用时会自动分析，揪出它们并一同清理。\n\nMacBooster Mini 一览电脑概况\n通过菜单栏的 MacBooster Mini 功能，能够方便查看当前网络上传/下载速度、内存使用量、垃圾文件大小、并能够在用户移除应用时，提示是否清理残余文件。',0,0,1,0,0,'系统优化',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MDczNzQyODA0LnBuZwO0O0OO0O0O',1),
	(7,'Bartender 3: 菜单栏图标自定义管理工具软件注册码','Bartender 3 是一款总出现在各种「Mac 装机推荐」清单中的知名工具，可以用它来隐藏或排列菜单栏图标，也可以设置每个图标隐藏显示的规则，能既不影响菜单栏的操作便利，又让它变得简洁有序。\n\n折叠或隐藏不常用的菜单栏图标\n通过简单设置，便可把不常用的软件折叠进 Bartender 图标里 (设置中叫 Hide)，只有在点击 Bartender 图标时，才会看到被折叠进去的软件。同时也可以用 Bartender 将一些根本用不到的软件图标彻底隐藏，统一设置管理，更方便。\n\n有通知时自动唤醒\n即使折叠或彻底隐藏了的图标，仍然可以在它们发生变化时看到。例如，隐藏 QQ 的图标后，只要收到新消息，便会再次出现。更为每一个软件图标设置不同的显示时长，比如 QQ 显示 30 秒，Dropbox 同步只显示 15 秒，用到时出现，用完就继续隐藏。\n\n按最顺手的顺序排列图标\n除了隐藏图标，还可以对菜单栏上和折叠在 Bartender 中的图标进行排序。按住 ⌘Command 键，光标拖动图标即可。\n\n更多功能及特色\n键盘导航菜单栏图标\n快速搜索，支持快捷键\n性能优异，资源占用低\n支持深色模式，如原生应用',0,0,1,0,0,'效率日程',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MTExMDA1MzAzLnBuZwO0O0OO0O0O',0),
	(8,'Wise Care 365 Pro: 电脑系统智慧清理加速工具','Wise Care 365 Pro 是一款 Windows 系统上的提高电脑性能释放磁盘空间的优化工具。清理注册表和磁盘垃圾文件，保护个人隐私记录，提高电脑使用安全。为你搭建提高 Windows 电脑速度的安全、稳定的解决方案。\n\n深度清理\nWise Care 365 Pro 可以清理无效的注册表项、快捷方式，还可将临时文件、浏览记录、下载记录、缓存、密码以及 Windows 组件等无用数据进行清除。软件还为高级用户提供了可定制的清理选项。\n\n性能优化\n软件通过系统优化 、磁盘碎片整理、Windows 注册表整理和管理启动项里的进程与服务等对电脑进行全方面的优化。对磁盘和注册表进行碎片整理，提高其运行速度。软件还能禁用掉不需要开机启动的程序，从而避免它们消耗过多系统资源，并以此提高电脑的启动速度。\n\n隐私安全保护\nWise Care 365 Pro 里的隐私擦除、磁盘擦除和文件粉碎工具可以保护用户隐私不被盗取。隐私擦除可以删除电脑操作痕迹，如浏览历史和访问的文件；磁盘擦除功能可防止第三方恢复已删除的数据；文件粉碎功能可以彻底删除文件，防止恢复。\n\n系统保护\n实时保护注册表不被其他程序未经许可修改。例如阻止程序更改浏览器主页，阻止任何不需要的新应用程序添加到 Windows 启动项，阻止其他程序更改默认浏览器等。\n\n系统硬件监控\n系统监视可以显示电脑的所有基本信息。进程监视可以提供清晰的进程列表，列出当前用户和系统运行的所有进程，可以关闭不需要的过程，使电脑运行更流畅。硬件概述也能提供所有关键硬件组件的详细信息，让你对自己的电脑一目了然。',1,0,0,0,0,'系统优化',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6z8Eax4L2z4I3wdMfjdA7w5M5zeEex3MDQxNDM0MzQyLnBuZwO0O0OO0O0O',1),
	(9,'Downie 4: 流媒体在线视频下载工具 Downie 3 全新升级','Downie 是一款 Mac 上的老牌视频下载工具，拥有简洁美观的设计，支持了超过 1000 个流媒体网站的视频下载，涵盖了国内外包括 YouTube、Vimeo 以及 Bilibili、优酷、爱奇艺等主流网站，满足绝大部分用户的需求。\n\n超快下载速度\n新版 Downie 带来专属优化，对比旧版提高约 6 倍下载速度。更快下载转化速度，更强性能。\n\n强大易用的下载工具\n只需将视频地址拖动至 Downie 界面内即可分析网址，并自动开始下载。还支持复制粘贴地址、右击链接以及浏览器插件下载，支持主流浏览器。菜单栏现在可以进行各项操作，并可同时下载多个视频。\n\n用户自定义下载\n对于不支持的网站，用户可自定义提取资源。批量提取网页中所有视频或图片资源，软件提供历史记录，便于重复使用。\n\n关键词搜索\n作为强大的视频下载工具，Downie 还内置了视频搜索功能，可以直接在软件内通过关键词搜索，Downie 会返回 YouTube 等主流网站的搜索结果。\n\n不断更新支持网站数量\nDownie 支持超 1000 个国内外流媒体网站，内置「一键添加网站支持」功能，用户可以很方便地向开发商反馈。\n\n更多功能支持\nDownie 能够对视频进行简单的后期，例如将视频转换为 iTunes 支持的格式、提取音频为 MP3 文件、下载 YouTube 字幕等。\n\n软件还能用来下载部分简单网站的其他格式文件，例如图片、压缩包等。',0,0,1,0,0,'影音媒体',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Ea44L2z4I3wdMfjdA7w5M5jeEe43MDk0NDU5ODYxLnBuZwO0O0OO0O0O',0),
	(10,'Eagle: 图片设计收藏 素材整理 图库管理软件','Eagle 是专为设计师打造的素材收集 / 管理工具，支持 macOS 与 Windows 系统。它可以帮你高效地整理电脑上的图片、照片、屏幕截图、海报、网页设计、Sketch 等各种设计素材。\n\n迅速保存你喜爱的图片\n通过安装浏览器扩展、截图和拖拽等方式，帮助你收藏出现在眼前的任何灵感，随手写下想法。\n\n轻松完成图片整理、分类\n使用 Eagle 强大的功能来整理、标记你的图片，让你在未来可以快速的找到它们。\n\n寻找你需要的设计灵感\n正在寻找设计的灵感？根据图片的标签、颜色、形状、格式等条件找到你需要任何内容。\n\n支持你喜爱的各种格式\nEagle 支持 Sketch、PS、Ai、Keynote、PPT、GIF、JPG、PNG、PDF 等 20 种文件格式的收集。',1,0,1,0,0,'影音媒体',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MDkxNTM1NDg1LnBuZwO0O0OO0O0O',1),
	(11,'XMind 2020: 轻量思维导图脑图软件 XMind ZEN','XMind 2020 是 XMind: ZEN 的升级版，作为一款全新的思维导图软件，它在知名兄弟软件 XMind 8 Pro 的基础上，精简部分专业功能、新增了一些实用特性，并大幅度美化了软件界面，使用起来愉悦又轻松。\n\n多种结构和主题\n拥有全新 UI 界面，美观易用，带来更舒适的使用体验。提供鱼骨图、矩阵图、时间轴、组织结构图等丰富的思维结构，通过添加标记、标签、超链接、附件等丰富的元素，可以表达多元的信息结构。支持一键展开收缩目标主题的所有子分支，在删除单个主题后还可保留所有的子主题。\n\n自定义风格编辑器\n功能丰富的自定义编辑器，可根据喜好调整主题样式，把字体、线条和颜色设置成自己喜欢的设计，保存后还能重复使用，让思维导图个性十足。通过自定义快速样式，区分主题更加轻松便捷。\n\n大纲视图提供新的组织方式\nXMind 2020 中的大纲视图提供了一种组织和架构思维的新方式，有效帮助大脑思考和解决问题。除了拖拽更改导图结构外，可以快速在大纲模式与导图模式间切换，对大纲的修改可实时同步到思维导图中。\n\n用思维导图链接文件\n优秀的文件链接功能，只需要使用一张思维导图，就可以管理电脑中所有的文件。在搜索某个文件时单击导图中的主题，便会导航到文件所在的位置。\n\n支持 LaTeX 方程\n在 XMind 2020 中插入数学和部分化学方程变得轻而易举，使用 MathJax 开源库实现用户输入 LaTeX 数学命令，实时转化为数学公式。不仅为学术党们提供方便，也让知识梳理的过程变得简单高效。\n\n更专注的 ZEN 模式\nZEN 模式专注于思维导图本身，更可以集中火力，全神贯注地进行思维的发散和整理，得出更好的解决方案。同时支持查看快捷键、编辑样式，以及插入标记等常用操作。\n\n导入导出很简单\n除了导入 MindManager、MindNode 和 Lighten 等常见的思维导图文件外，新版还特别支持 Word 文件导入，轻松把所有好点子汇集一处。软件提供 Markdown、SVG、PNG、PDF、Office 等多种导出格式，可轻松分享至印象笔记。增强的图片导出功能，还能导出透明背景，轻松插入至 Keynote 或 PPT 中使用。\n\n在各设备间无缝衔接\n不管是桌面端还是移动端，都能收获无缝的思维导图体验，随时随地查看制作的导图。',1,0,1,1,1,'效率日程',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MTEwMDE2NjIxLnBuZwO0O0OO0O0O',1),
	(12,'MarginNote 3: 电子阅读器 文档摘录阅读学习笔记','MarginNote 3 是一款功能强大的阅读和学习工具软件，适用于 Mac、iPad 和 iPhone。它将 PDF / EPUB 阅读器和多种学习工具集成起来，使你可以在学习时从不同的维度将知识进行重组、连接，从而达到记住、领会的效果。\n\nMarginNote 利用思维导图和大纲工具对笔记进行组织，利用标签创建横向的知识连接，再利用学习卡帮你提高记忆效率。\n\n两种高效的阅读模式\nMarginNote 对应两种阅读场景：文档阅读和主题阅读。前者用于快速阅读和笔记，而后者则集成了强大的主题阅读学习工具。\n\n在文档边缘显示笔记\n书籍内容和笔记可以在同一视图中显示而不会相互阻塞，就像你在纸质书上学习一样。\n\n将笔记编辑为卡片，并构建导图\n你可以在文档中以文字、语音、照片等形式插入笔记，这些笔记都可以变成一张张「知识卡片」。拖拽卡片就能把它们构建成思维导图，辅助思考。\n\n制作学习卡，便于复习\n将文档中的重要笔记添加到复习卡片组，就能以问答的方式进行知识复习，巩固自己的记忆。\n\n支持 OCR 文本识别\n摘录卡可以自动或手动 OCR 到文本形式，以便于搜索和进一步编辑。',0,0,1,0,0,'文档编辑',1,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MDk1MzAwNDkxLnBuZwO0O0OO0O0O',1),
	(13,'卡片日记: 简约风小清新的日记App 密码锁云同步','还在为每天的生活琐事所忙碌，而没有时间沉下心来记录自己的一天吗？不如试试这款曾获 App Store 首页推荐的高颜值日记应用——卡片日记。利用零散的碎片时间，只需要一个标题，一张照片以及一句话就可以以卡片的形式记录下生活的点滴。\n\n简单而纯净的设计\n简约清新的设计风格，让人一目了然的 icon，这款以卡片为概念的日记应用，让你每一天都赋予卡片新的存在意义，享受在其中记录生活的乐趣。\n\n强大的日记编辑功能\n对于日记来说，文字才是它的基础。卡片日记除了令人眼前一亮的界面，文本编辑功能也非常强大。不仅提供了多种文本及字体格式供用户选择，还可以随意改变字体的颜色、粗细、增加下划线，排版时左右对齐或居中，最后再添加上照片和视频，来丰富日记的内容。\n\n日记心情追踪器\n在正式记录日记之前，卡片日记还有 10+ 的表情 emoji 以及天气 icon 可以选择，总有一个是你想要的。如果想制作特殊的旅行日记，还可以为日记添加当天的位置定位以及指定的标签，为你的回忆添加更多的细节。首页的文字搜索功能，也可以随时唤醒你对过去的记忆。\n\n永久式收藏日记\n卡片日记所有的数据都保存在手机本地，软件不会私自上传数据。但同时提供了安全的第三方云同步功能，例如坚果云 / Google Drive。基本上达到书写的同时，数据也能同步上传，再也不用担心数据丢失啦。\n\n除此之外，软件还支持从备份文件中还原之前的日记数据。甚至从 Day One 或者 Journey 中日记导出的备份数据，也能还原到卡片日记中。\n\n分享你的日记\n卡片日记虽然不支持两人或多人同时编辑一个账号，但是可以选择导出日记为 PDF / TXT / ZIP 格式的文件，随时与他人分享你的日记。\n\n保护用户隐私\n卡片日记所提供的数字密码 / 指纹解锁功能，大大提高了安全性，可以保护日记中记录的小秘密。可本地保存日记数据，也能使用用户自己的坚果云 / Google Drive 来进行云端自动同步，卡片日记服务器不会保存用户的日记内容，同样安全省心。\n\n',0,0,0,1,0,'效率日程',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6D8Ea14L2z4I3wdMfjdA7w5N5DeEe13MTEyNzU2NDY1LnBuZwO0O0OO0O0O',1),
	(14,'Rotato: Mockup 展示样机素材库 制作3D演示动画','设计师为展示自己的作品，常常使用 Mockup 样机模版来制作美观的演示图样。为了寻找美观的样机模版，不必花费漫长的时间。使用 Rotato 就可以轻松生成多种设备尺寸的展示稿件，还能快速制作美观的 3D 展示视频动画。专业展示设计效果，有 Rotato 就够了！\n\n制作样机演示图片 / 视频\n好的设计除了用样机图片展示，还可以用动画来表现。无需动画制作基础，使用 Rotato 就可以生成精美的演示视频，支持 4K 分辨率导出。\n\n内置多种设备样机模版\nRotato 是一个优秀的 3D mockup 素材库，内置手机、电脑、平板、手表等多种设备的样机模版，可对三维模版调整不同视角，根据需求导出各类设计图稿或视频。\n\n拖拽导入设计稿\n拖拽设计稿即可导入，无需繁琐的调整尺寸，Rotato 会根据设备大小自动匹配。软件支持图片、视频文件，甚至可以直接镜像 iPhone 界面，轻松制作三维演示视频。\n\n自定义视觉效果\n除了有多种样机模型、预置的展示动画供选择外，还可以自定义背景/样机颜色、阴影、手动创建展示效果。演示视频的制作还能调节环境光效与镜头参数，用更专业的方式展示设计。\n\n支持 Sketch 与 Adobe XD\nRotato 支持 Sketch 与 Adobe XD 的设计文档。安装插件后，即可快速将设计稿转换为分图层展示的动画。惊艳展示效果，让你的设计更加出众。',0,0,1,0,0,'设计美学',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Eay4L2z4I3wdMfjdA7w5M5jeEey3MDMyOTU2OTkyLnBuZwO0O0OO0O0O',0),
	(15,'PDF Expert: 恰到好处的PDF阅读/编辑工具','PDF Expert 是 macOS 上全能型的 PDF 工具，集阅读、创建、编辑批注等功能于一身。轻巧易用，十分稳定，满足从普通到专业用户，对 PDF 文档处理的所有需求。美观的设计与 macOS 相得益彰，一经发布便获得众多好评，多次被 Apple 编辑推荐，荣获 Mac App Store 2015 年最佳应用。\n\n快速、流畅、稳定的阅读体验\n打开 PDF 文档的速度非快，即便是几千页的超大文件，也能瞬间完成加载。无论如何快速划动页面、翻页，页面内容都能及时呈现，不会有延迟及空白。 瞬间展示的全文搜索、支持同屏双开文档、多种阅读主题，快速完成复杂工作任务，特别适合英汉翻译、文字对比、核对合同等需求。\n\n恰到好处的批注功能\nPDF Expert 提供了丰富的批注工具，可以像处理纸质文档一样自然批注。可以为文本添加高亮、下划线，或是添加箭头等图形提示，也可以用荧光笔在 PDF 文档上划重点或手写涂鸦。此外，PDF Expert 还支持签名功能。\n\n就像编辑文本一样简单\n在「编辑」模式下，就像在 Word 里编辑文档一样。可以快速修改原文内容，给文本内容添加链接、重新排版、添加或替换图片等。此外还支持编辑或创建文档大纲，通过拖动目录来调整顺序和层级。\n\n高级功能，让 PDF 更好用\n文档密码保护\n一键压缩，传输更轻便\nReaddle Transfer 跨设备传输',0,0,1,0,0,'文档编辑',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MTEyOTIxMjE2LnBuZwO0O0OO0O0O',0),
	(16,'iMazing: 备份/管理iOS设备 iTunes 的替代品','iMazing 是一款功能强大、易于使用的 iOS 设备管理器。在 Mac 和 PC 上传输和保存音乐、信息、文件和数据，安全备份任何 iPhone、iPad 或 iPod touch。以更高效和易用的方式，管理设备。\n\n直观易用 支持 Wifi 同步\niMazing 的界面设计极其简洁易用，界面布局清新和操作体验直观，宛若原生应用，甚至比 iTunes 流畅，尤其是 Windows 版，支持 USB 及 Wifi 连接，高效解决设备的同步问题。\n\n增量备份 速度更快\n「增量备份」功能，只需完整备份一次，之后软件会自动根据数据的更改情况，只上传有变化的部分。还可选择性地恢复文件、应用，大大提高了备份、恢复设备时的速度和效率。 更可自定义备份计划，全自动完成，无需人工干预。独立的 iMazing Mini 功能，可在菜单栏快速操作设备备份。\n\n更高效的数据恢复与转移\n在 iOS 设备与电脑之间快速传递文件，备份应用文件 (.ipa) 数据至电脑，将铃声传输到 iPhone，在新旧两台 iOS 设备间可快速进行数据迁移……这些复杂的操作，都变得更加高效和简单。同时，还可只恢复部分数据，大大节省了恢复时间。\n\n更多功能 同样安全\n查看单个 App 的备份文件，单独恢复；\n查看电池详细信息，及时了解健康状况；\n查看短信中的聊天记录，以及通话记录；\n一键进入恢复模式、进行格式化等操作；\n一键跳转官网，查看保修范围；\n访问 iOS 设备上的文件系统。',1,0,1,0,0,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6j8Aa14L2z4I3wdMfjdA7w5M5jeAe13MTEyMjM2MjM2LnBuZwO0O0OO0O0O',0),
	(17,'Microsoft 365 一对一服务（含视频教程+软件体验）','购买由数码荔枝出品的 Microsoft 365 一对一服务，你将获得：\n\n1、Microsoft 365 视频学习教程一套\n包含：\n\nExcel 学习教程（57小时），10章节126小节；\nPowerPoint 学习教程（4小时），8章节38小节；\nWord 学习教程（8小时），7章节50小节。\n2、一年“一对一服务”\n包含：\n\n一对一的 Office 软件安装和使用帮助；\nExcel、PowerPoint、Word 功能使用和建议；\n其他相关软件的功能使用咨询。\n3、一年 Microsoft 365 软件体验\n包括：\n\nExcel、PowerPoint、Word 一年使用体验权*\nOneDrive 1TB 一年使用体验权*\n*可使用个人账号或数码荔枝提供账号，可体验软件完整功能，体验时长自购买本“一对一服务”起一年内有效，必须为购买本服务顾客使用，不得转借他人。本软件为学习体验使用，不单独销售。',1,0,1,1,1,'文档编辑',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6z8Eaw4L2z4I3wdMfjdA7w5N5zeEew3MDUzMzMzOTkzLnBuZwO0O0OO0O0O',0),
	(18,'潮汐: 冥想专注番茄钟 呼吸放松白噪音助眠App','潮汐，一款专注于睡眠、冥想、放松与专注的极简生活类 App。让你在「潮汐」中聆听自然的声音，配合声音场景进行冥想练习。帮助你从快节奏的当下抽离，减少焦虑与压力，保持专注平静，冥想片刻放松思绪，获得更好的睡眠。\n\n倾听万物声音\n海浪、雨声、森林、冥想和咖啡的声音，让你随时随地的回归自然。资源超全的白噪音库，让你通过声音放松自己，改善精神状态。\n\n专注计时器\n三种不同类型的专注模式，帮你治疗手机依赖症。自制力强可以选择「普通模式」，聆听白噪音、记录专注时间。「高效模式」通过番茄工作法劳逸结合，开启高效率的专注时光。「无线模式」则适合可以长时间集中注意力的朋友，该模式为正向计时，用多久记多久，无时间限制。还可以通过添加设置白名单、专注标签，自定义自己的专注模式。\n\n助眠与小憩\n无论是白天小憩还是夜晚长睡，都可以利用「潮汐」内置的多种声音场景保持平静，帮助你获得快速高质量的睡眠。内置独创轻唤醒闹钟功能，让你在晨间温柔醒来。还会自动生成睡眠数据分析，帮助客户对自己的每一次睡眠了如指掌。\n\n放松冥想\n没时间专门上冥想课？「潮汐」将专业冥想课程融入日常生活，每次仅需 5 - 15 分钟让你由内而外的沉静与专注。多种场景冥想供你选择，为你的大脑按下暂停键。\n\n呼吸引导\n呼吸是人类必不可少的身体功课，但怎样才是正确的呼吸呢？「潮汐」利用 4-7-8 呼吸法以及平衡呼吸来帮助你平复情绪、缓解压力。\n\n数据分析\n自动统计专注、睡眠、冥想的时长，让你可以回顾每天、每周及历史的时间分配，更加了解自己。还可以以卡片的形式与朋友分享你的潮汐日记，留下平静时刻的纪念。\n\n潮汐日帖\n「潮汐」的壁纸功能，可以让用户直接下载心仪的日帖高清壁纸。除了好看的背景，每天更新的日贴还配有精选灵感格言，让你感受文字的力量。',0,0,0,1,1,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Eay4L2z4I3wdMfjdA7w5O5DeEey3MDQ1NzA3NzAwLnBuZwO0O0OO0O0O',1),
	(19,'赤友 NTFS for Mac 助手: 磁盘硬盘格式读写软件注册激活码','日常工作生活中，我们经常会使用移动硬盘或 U 盘进行大体积文件的分享。但有时候别人提供的移动硬盘在 Mac 电脑中只能读取，无法将文件导入到移动硬盘中。这是因为常见的 NTFS 硬盘格式在 Mac 中不能兼容，这种情况下将移动硬盘转换为 Mac 支持的格式显然不现实。\n\n使用 NTFS for Mac 助手，就能让 Mac 兼容常见的 NTFS 移动硬盘或 U 盘格式，这样在 Mac 上也能用习惯的方式快速读写大容量的移动硬盘。\n\n即装即用，常见硬盘立即可读写\n软件安装完成，无需重启电脑就能立刻读写电脑连接的 NTFS 硬盘。在桌面或 Finder 中就能直接打开硬盘进行写入操作，并让硬盘支持 Boot Camp 功能。\n\n状态栏快捷打开或推出硬盘\n点击状态栏图标，选择连接的 NTFS 格式硬盘即可快速打开或推出。简单高效，比自带磁盘管理器更好用的快捷工具。\n\n用熟悉的方式使用移动硬盘\n只要打开软件，就像自带硬盘那样使用移动硬盘。拖拽、编辑、删除、保存文件都能正常操作，性能优异，读写稳定。无需其他操作，用熟悉的方式管理移动硬盘',0,0,1,0,0,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Eay4L2z4I3wdMfjdA7w5O5DeEey3MTEyNTE1NDIzLnBuZwO0O0OO0O0O',1),
	(20,'色采: 手机取色智能配色助手 设计色卡管理','「色采」是一款大家都会用的配色 App ，相机实时配色是它的一大亮点功能，只需移动手机就能捕捉到画面中所有的色彩并生成色卡，帮你更加便捷的寻找配色灵感，同时还能对色卡进行自定义分类，更有条理的管理你的色卡，为设计师带来更多便利。\n\n手机智能取色配色\n通过手机摄像头，可实时捕捉眼前美景和心仪的色彩，将眼前的美景收录为你的专属色卡。另外也能用「照片智能配色」将相册中的照片颜色，通过识别算法生成色卡。\n\n灵感探索\n高级版中有 800+ 张原创色卡供你选择，更有今日推荐为你带来每日灵感，完全不愁找不到配色灵感。\n\n颜色调节\n对颜色有较高要求的用户可通过「精准调节」对 HSB 和 HEX 色值进行微调，让你的配色更加专业，另外它还可以修改配色方案：互补色、近似色、单色、混合色。\n\n分类与搜索\n色卡一旦堆积将会很难寻找，可以通过「自定义分类」功能将色卡进行分类整理，更有条理的管理你的色卡，该功能目前仅支持 iOS 端。\n\n内置的精准搜索功能可通过输入色卡名称或 HEX 色值等方式进行搜索，提升搜索效率，节约设计时间。\n\n分享与联动\n拥有多种带图分享模式，你可以将色卡分享至任意位置，支持一键复制色值，大大提高设计配色效率。同时它还能与 Adobe、Procreate、番茄清单、Memory Helper 联动使用。\n\n更多高级功能\n高级功能将支持所有随机主题、无限随机次数、配色方案推荐、数据云端备份，另外也会获得原创色卡的商业授权。\n\n温馨提示：iOS 版与安卓版支持数据互通，但需要通过「备份和恢复」的方式实现。如果在 iOS 版中通过 iCloud 进行备份，则无法与安卓版互通，详细功能描述请参考常见问题。',0,0,0,1,1,'设计美学',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Eay4L2z4I3wdMfjdA7w5O5DeEey3MDgzNjQyOTk1LnBuZwO0O0OO0O0O',1),
	(21,'Mountain Duck: 多网盘挂载本地工具 文件同步','Mountain Duck 是一款能将多个网盘挂载到本地的工具，像本地磁盘一样使用网盘。软件与系统高度集成，文件修改可智能同步，并有文件历史记录。多个网盘一处管理，简单又高效！\n\n像电脑硬盘一样使用网盘\nMountain Duck 与系统高度集成，可将网盘挂载到电脑的「访达」或「文件资源管理器」，并显示为电脑中的一个磁盘，可对其中的文件资源直接进行操作。\n\n多个网盘一处管理\n软件不仅支持 OneDrive / Google Drive / Dropbox 等个人网盘，还可连接 Azure / Amazon S3 / Google Cloud Storage / OpenStack Swift / Backblaze B2 等企业级产品。甚至包含对 FTP / SFTP / WebDAV 协议的支持。无需安装网盘的客户端，多个网盘同时管理，方便又省事。\n\n文件智能同步\n用熟悉的方式，在访达或文件资源管理器里查看云上的资源。可按需同步文件，多种图标会表明文件的状态，在云端或是在本地一目了然。同步到本地的文件，更改会立即在后台上传，状态图标也会指示同步进度。\n\n文件操作记录提醒\nMountain Duck 可以显示正在传输项目的详细视图，以及本地和云端最近编辑文件的历史记录。在云端添加或更新文件时，软件也会提醒通知。分享文件可直接获取对应云端链接，方便实用。\n\n更多团队协作实用功能\n在 WebDAV 服务器上的文件，可使用锁定功能，防止编辑时被别的用户操作冲突；使用 Amazon S3 存储桶可以保存文件历史版本，便捷打开并还原文件的先前版本；客户端还能加密保护文件，防止数据被盗。',1,0,1,0,0,'备份还原',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6T8Aa54L2z4I3wdMfjdA7w5O5TeAe53MDQwMjEzODk2LnBuZwO0O0OO0O0O',0),
	(22,'Auto Mail Sender: 邮件自动发送器 定时发件调度','Auto Mail Sender 是一款功能强大且易用的邮件自动发送器，你可以通过它随时随地以任意频率自动发送邮件。除了传统的邮件发送功能以外，Auto Mail Sender 还有例如宏邮件、逐个发送、自动化邮件以提高邮件送达率等等的高级功能等你来体验。\n\n邮件自动发送\n是不是有时候准备好了需要发送的邮件，但是需要等待在特定的时间发送。这个时候需要定闹钟？添加备忘录？不如让 Auto Mail Sender 来帮你调度邮件，添加发送时间，可以准确到年、月、日、小时、分钟、秒。工作方面可以提交工作日志或文档、群发业务邮件，生活中也可以用来在家人或朋友的生日准时为他们送上祝福。\n\n邮件个性化\n相信群发邮件有一个问题经常困扰大家，那就是收件人可以同时看到其他收件人的邮件地址。用 Auto Mail Sender 的个性化邮件功能，让每个收件人只能看到自己的邮箱地址，在邮件主题及正文中看到 TA 的名字，避免不必要的麻烦。\n\n宏定义邮件\n宏定义邮件可以自动变化邮件内容和主题的邮件。可以根据收件人地址、时间、日期等对邮件的相应部分做自动调整，以达到发送的邮件可以是针对某一个收件人，而不是全部都是同一个内容。软件内置的宏基本上可以满足你的绝大部分需求，无需再单独进行设置。\n\n反垃圾邮件\nAuto Mail Sender 将通过「逐个发送模式」、「智能提醒模式」等多种方法来将你发送的邮件准确投递到接收者的收件箱而不是被误判为垃圾邮件，从而保证邮件的高送达率。\n\n邮件智能处理\nAuto Mail Sender 会根据邮件发送情况，将没有发送成功的邮件自动再次发送，直到发送成功为止。该软件还会删除重复接收者，避免接收者名额的浪费。内置的「自动完成」功能，在输入数据时，只需输入少许字符甚至不输入即可自动显示或填充剩余数据。\n\n更多高级功能\n除了上述的诸多功能，Auto Mail Sender 还有包括支持文件夹附件、SMTP 帐号列表及自动选择可用者、自定义发送者 / 阅读回执接收者 / 回信接收者等诸多高级功能，满足你工作生活中对于收发邮件的需要。',1,0,0,0,0,'效率日程',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Ia24L2z4I3wdMfjdA7w5O5DeIe23MTE0NzIxMzg0LnBuZwO0O0OO0O0O',0),
	(23,'WinExt: 文件去重系统监控 Windows资源管理工具包 ','WinExt 是一款 Windows 资源管理工具包，提供众多实用功能，包括查找重复 / 较大文件、监控 Windows 与更多资源的活动信息，执行批量操作等，让你轻松管理电脑内的各类资源。\n\n查找重复文件\n根据文件内容快速找出电脑中重复的文件，识别准确度高、速度快，只需单击一下即可获得结果，还可将结果根据大小进行排序。\n\n搜寻大体积资源\n通过树状视图的形式快速查看所有驱动器、目录、文件的大小，并会将资源按大小倒序排列，以便高效进行手动清理工作。\n\n查看最近使用资源属性\n可以查看最近使用文件或目录的各项属性，例如路径、大小、类型、修改日期及建立日期。\n\n监控 Windows 资源活动\n自动跟踪并记录电脑资源的变化情况，对文件及目录的删除、重命名、新建、修改等操作进行实时监控。\n\n执行批量操作\n选中需要批量操作的资源后，可一次性执行各种动作：移至回收站、彻底删除、复制或移动到其他地方、重命名、导出信息及修改属性。\n\n同步资源\n自动或手动同步你的资源到指定位置，还可以设置同步模式为：一旦变更、固定频率、具体时间三种方式。',1,0,0,0,0,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2O6D8Aa14L2z4I3wdMfjdA7w5O5DeAe13MDQ0MjAwNjQ3LnBuZwO0O0OO0O0O',0),
	(24,'Bandizip: 文件解压缩 压缩包浏览编辑管理工具 企业版 ','Bandizip 是一款出色的压缩文件管理工具，集压缩解压、浏览编辑为一体，可进行图片预览、恶意软件扫描等高级功能。可以支持 30 多种压缩格式，操作简单功能强大。\n\n广泛支持压缩文件格式\nBandizip 支持多种压缩格式，可解压包含 7Z、IMG、TAR 等在内的 30+ 种类型文件，支持 ZIP 和 RAR 格式压缩包的注释。拖放操作，搭配高达 6 倍速的多核压缩能力，让压缩解压都高效不拖沓。\n\n便捷压缩包管理功能\n软件提供了无需解压便可直接预览压缩包内图像的功能，方便快速寻找文件。在 Windows 10 系统下，软件可在不解压的情况下检测档案中的恶意软件。还可修复已损坏 ZIP 文件中的有效数据，减少损失。\n\n文件安全防护\nBandizip 支持 AES256 加密算法，同时提供密码管理器，大量使用复杂的密码也能快速提取或压缩文件。对于忘记密码的压缩包，使用 Bandizip 的密码恢复功能，可暴力搜索来找回密码。(此功能仅专业版可以使用，且无法保证能恢复所有类型的密码)\n\n多种实用功能\n提供对代码页进行更改的功能，软件可集成到资源管理器的右键菜单，快速对文件进行预览操作。对于超大文件，Bandizip 可分多卷创建 ZIP / 7Z 格式压缩包，便于分享与保存。',1,0,0,0,0,'文件管理',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2M6z8Ia24L2z4I3wdMfjdA7w5M5zeIe23MDIxMzMyMzE5LnBuZwO0O0OO0O0O',0),
	(25,'WindowTop: 窗口置顶透明度修改工具','WindowTop 是一款窗口自定义设置工具，可将任意窗口置顶、修改透明度。软件能实现 Aero 界面模糊、智能暗色模式、缩小窗口等功能，节约你的操作时间，把你的软件窗口玩出花！\n\n置顶窗口\n用 WindowTop，一键即可将页面置顶，可以方便对比其他页面、写作、描图、修改文案。重要窗口轻松置顶，不错过任何重要的信息。\n\n设置透明度\n通过软件可自由调节选定窗口的透明度，从而透过窗口进行描图，实现临摹复写的功能，不用切换窗口检查拼写正确与否。点击「Enable to click through」即可锁定窗口，避免操作中移动窗口。\n\n暗黑模式\n用 WindowTop，万物皆可夜间模式。一键或智能设置 / 取消暗色模式，使界面显示更加贴合你的阅读模式。\n\n微缩窗口模式\n除了最小化窗口外，还有另一种减小窗口打扰的方式：类似视频画中画，将当前页面随意缩放，拖拽到桌面上的任何角落。只要将鼠标放在缩放的软件上，就会出现放大版的页面，还可以通过拖拽来改变页面的大小，让你可以在工作的同时观看视频或图片。\n\nAero 模糊效果\n经典的 Aero 效果在 Win10 系统也能体验，WindowTop 专业版可以通过设置窗口的模糊度、亮度、背景，图片透明度以及文字透明度来自定义窗口的 Aero 效果样式。\n\n更多独家功能\n购买专业版后，不但可以保存窗口自定义的配置，将部分软件添加进白 / 黑名单，避免错误操作。还可以启用实时缩略图预览、设置快捷键，节省时间，解放双手。\n\n',1,0,0,0,0,'日常使用',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6z8Iay4L2z4I3wdMfjdA7w5N5zeIey3MDY0NjU2NDY5LnBuZwO0O0OO0O0O\n',0),
	(26,'QQ音乐会员 ','QQ音乐会员',1,0,1,1,1,'影音媒体',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6z8Ea34L2z4I3wdMfjdA7w5N5zeEe33MDM1MjAwNTM5LnBuZwO0O0OO0O0O',1),
	(27,'RadiAnt DICOM Viewer: X光线CT医学图像PACS浏览器 ','RadiAnt DICOM Viewer 是一款实用性非常强的 PACS DICOM 医学图像浏览软件，主要用于查看 DICOM 格式的各种图像，体积小，速度快，功能全面，是进行专业医学研究的必备图像浏览器！\n\n体积小速度快\nRadiAnt DICOM Viewer 是一款非常小巧，安装文件只有 7MB 大小的软件，不会占用过多空间。虽然体积小，但是丝毫不妨碍它加载影像数据、处理影像数据的质量与速度。\n\nDICOM 图像浏览\n还在为回家后如何打开病人的 CD / DVD 而苦恼？有了 RadiAnt DICOM Viewer，不仅可以一键打开病人的 CD / DVD，浏览数字式放射照相技术 CR、DX、核磁共振 MR、超声波扫描术 US 等多种格式的医学图像。还支持 2D、3D、单色、彩色等多种浏览方式，可对图像直接进行编辑。\n\nDICOM 格式转换\n通过 RadiAnt DICOM Viewer 你可以将 DICOM 文件转换成为 JPEG、BMP 格式的图片或 WMV、MP4 格式的视频。也可以选择直接复制所需图像，粘贴到 Word 文档或 PowerPoint 文件中去。\n\n连接 PACS 服务器\n只需知道监听端口、IP 地址以及我的 AET 即可通过 RadiAnt DICOM Viewer 从 PACS 主机搜索和下载研究数据。\n\n二维及三维处理\nRadiAnt DICOM Viewer 中提供的 MPR 工具可以用来在正交平面中重建图像。不管是 2D 还是 3D 多平面重建，都可以轻松搞定。而 3D VR 则会作为一个单独的窗口显示出来，方便与三个方位的横切面进行对比观看。\n\n更多便捷操作\nRadiAnt DICOM Viewer 内置的工具集合，可进行多图像比较研究，自由调节图像预览时的大小、反光以及亮度，测量图像中的部分长短、面积，也能用画笔工具在图像上自由勾画和标注，超多功能，等你探索！',1,0,0,0,0,'网络相关',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6j8Ia04L2z4I3wdMfjdA7w5N5jeIe03MDcwNDQ4OTU1LnBuZwO0O0OO0O0O',0),
	(28,'OpenWebMonitor: 网页内容监控器 变化实时通知 ','OpenWebMonitor 是一款网页内容监控工具，无论是动态网页、需要登录的页面，还是单页面中的多个区域，均能通过简单的操作设置监控。对于普通用户，数据监控等各种高级任务也能轻松完成！\n\n任意网站皆可监控\n无论是购物网站，还是论坛、游戏商城、公告栏、招标栏网站，都可进行内容监控，数据变动可实时进行提醒。没有爬虫知识，也能轻松完成监控任务。\n\n点击元素轻松开启\n输入网站后，软件会将网页元素进行区域划分，右击即可选中需要监控的区域，还可设置前置动作，为监控前加入各种点击操作，可模拟自动登录等人工动作。\n\n灵活设置监控规则\n可使用「与、或」方式，对监控规则进行组合，能够按内容变化量、关键词、正则表达式、JS 注入等规则进行提醒。利用多选区和选区内设置，能够达到灵活的监控区域覆盖。\n\n多种提醒方式\n除了软件可进行弹窗提醒外，VIP 用户还能开启邮件 / 钉钉提醒、API 端口、代理设置、COM 串口数据传输等功能。专业开发者也能靠 OpenWebMonitor 简化操作，更加省心！',1,0,1,0,0,'网络相关',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6j8Ia04L2z4I3wdMfjdA7w5N5jeIe03MTAwMjExNTk5LnBuZwO0O0OO0O0O',1),
	(29,'irreader: 跨平台RSS阅读器 网站播客聚合订阅','irreader 是一款强大的网络内容阅读器，不仅支持订阅 RSS 文章，还能够订阅网站、播客等内容，将众多订阅源聚合于一处，告别纷杂的互联网信息。\n\n方便的内置订阅源\n软件界面采取源列表、文章列表和内容区三栏式布局，内置的「源市场」整合多种热门订阅源，并按照互联网、娱乐、游戏等不同内容类型加以分类，方便根据个人兴趣快速添加订阅。\n\n支持自定义源、订阅规则\nirreader 除了可以添加现成的 RSS 订阅，还支持添加自定义源，方便订阅没有提供 RSS 功能的网站。只需将网站链接粘贴至「添加源」页面中，右键点击多个想要订阅的链接，软件就会自动计算订阅规则，实现订阅某个特定栏目的效果。\n\n播客、视频均可订阅\n不只文章，irreader 还可订阅播客、视频等内容，并且支持后台播放播客以及调节倍速，能够边看文章边听播客。\n\n预加载更快阅读\n软件支持预加载功能，能够在阅读当前的文章的同时自动加载后续的两篇文章，省时省力无需等待。此外，irreader 还可以对订阅源进行分组管理，支持重命名组别名称。\n\n内置浏览器\nirreader 内置了浏览器，方便直接查看文章原文布局，并可使用源网站中的功能。比如直接在软件内播放视频，甚至可以发布评论或弹幕、下载网页图片以及翻译语言。',1,0,1,0,0,'效率日程',0,'https://store-cdn.lizhi.io/pic/thumb/img/d8X4Bbsabe2cFck4LczbIaw7M6j9A1w2N6j8Ia04L2z4I3wdMfjdA7w5N5jeIe03MDkwNTI1ODYxLnBuZwO0O0OO0O0O',1);

/*!40000 ALTER TABLE `tbl_softwares` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `user_email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
