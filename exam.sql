-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-27 13:03:32
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- 表的结构 `classes`
--

CREATE TABLE `classes` (
  `cid` int(11) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `dname` varchar(100) NOT NULL COMMENT '方向名字',
  `sname` varchar(100) NOT NULL COMMENT '阶段名字'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `classes`
--

INSERT INTO `classes` (`cid`, `cname`, `dname`, `sname`) VALUES
(10, '13123214', '前端', '8'),
(2, 'MUIF1707-1', 'UI设计师', 'PS'),
(3, 'WUIF1707-1', '全栈', 'PHP'),
(12, '3123', 'quanzhan', '大啥'),
(13, '', '', ''),
(8, '而且为什么', '2', '5'),
(11, '来看看韩国润肺  ', '大数据', '大啥'),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `direction`
--

CREATE TABLE `direction` (
  `did` int(11) NOT NULL,
  `dname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `direction`
--

INSERT INTO `direction` (`did`, `dname`) VALUES
(1, '全栈工程师'),
(2, 'UI设计师'),
(3, '前端工程师'),
(4, '大数据开发工程师'),
(20, 'java工程师'),
(15, 'php工程师'),
(23, '机械工程师');

-- --------------------------------------------------------

--
-- 表的结构 `manger`
--

CREATE TABLE `manger` (
  `mid` int(11) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `mpass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manger`
--

INSERT INTO `manger` (`mid`, `mname`, `mpass`) VALUES
(1, 'lvjian', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `paper`
--

CREATE TABLE `paper` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) NOT NULL COMMENT '试卷名称',
  `cname` varchar(255) NOT NULL COMMENT ' 班级',
  `tpeople` varchar(255) NOT NULL COMMENT '出题人'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `paper`
--

INSERT INTO `paper` (`aid`, `aname`, `cname`, `tpeople`) VALUES
(1, '这是张振亚的测试题', 'WUIF1707-1', '吕鉴'),
(2, '这是测验1', 'WUIF1707-12', '吕鉴'),
(8, '这是李东峰的测试题', 'WUIF1707-4', '吕鉴'),
(5, '这是吕鉴的测试题', 'WUIF1707-1', '吕鉴'),
(9, '这是李星的测试题', 'WUIF1707-2', '吕鉴'),
(10, 'javascript变量检测', 'WUIF1707-1', '吕鉴'),
(11, '跨域请求知识', 'WUIF1707-1', '吕鉴');

-- --------------------------------------------------------

--
-- 表的结构 `paperedit`
--

CREATE TABLE `paperedit` (
  `id` int(11) NOT NULL,
  `aid` int(10) NOT NULL,
  `eid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `paperedit`
--

INSERT INTO `paperedit` (`id`, `aid`, `eid`) VALUES
(8, 1, 14),
(9, 1, 2),
(10, 1, 1),
(11, 1, 15),
(12, 1, 16),
(13, 1, 17),
(14, 1, 18),
(15, 1, 19),
(16, 8, 17),
(17, 8, 19);

-- --------------------------------------------------------

--
-- 表的结构 `stage`
--

CREATE TABLE `stage` (
  `sid` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL COMMENT '阶段名字',
  `dname` varchar(100) NOT NULL COMMENT '方向名字'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `stage`
--

INSERT INTO `stage` (`sid`, `sname`, `dname`) VALUES
(2, 'HTML', '前端'),
(3, 'javascript', '12'),
(4, 'php', '1'),
(15, 'vue.js', '全栈工程师'),
(14, 'node.js', '全栈工程师'),
(13, 'PS', '全栈工程师');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `uid` int(11) NOT NULL,
  `mname` varchar(255) NOT NULL COMMENT '名字',
  `dname` varchar(255) NOT NULL COMMENT '方向名字',
  `sname` varchar(255) NOT NULL COMMENT '阶段名字',
  `cname` varchar(255) NOT NULL COMMENT '班级名',
  `mpass` varchar(255) NOT NULL COMMENT '密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`uid`, `mname`, `dname`, `sname`, `cname`, `mpass`) VALUES
(104, '吕远', '全栈工程师', 'js', 'WUIF1707-2', 'e10adc3949ba59abbe56e057f20f883e'),
(103, '李欣荣', '全栈工程师', 'php', 'WUIF1707-1', 'e10adc3949ba59abbe56e057f20f883e'),
(98, '马新贵', '全栈', 'php', 'wuif1710', '827ccb0eea8a706c4c34a16891f84e7b'),
(99, '吕鉴', '全栈工程师', 'node.js', 'WUIF1707-1', 'e10adc3949ba59abbe56e057f20f883e'),
(100, '张振亚', '全栈工程师', 'php', 'WUIF1707-1', 'e10adc3949ba59abbe56e057f20f883e'),
(101, '李东峰', '全栈工程师', 'php', 'WUIF1707-1', 'e10adc3949ba59abbe56e057f20f883e'),
(102, '马新贵', '全栈', 'php', 'wuif1714', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `mname` varchar(10) NOT NULL COMMENT '名字',
  `dname` varchar(255) NOT NULL COMMENT '方向名',
  `cname` varchar(255) NOT NULL COMMENT '班级名',
  `mpass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`tid`, `mname`, `dname`, `cname`, `mpass`) VALUES
(1, '李星', '全栈工程师', 'WUIF1707-1', ''),
(2, '王亚飞', '全栈工程师', 'WUIF1707-1', ''),
(3, '高静', '全栈工程师', 'WUIF1707-1', ''),
(4, '李慧', 'UI设计师', 'WUIF1707-1', ''),
(5, '吕鉴', '全栈', 'wuif1703-1', 'e10adc3949ba59abbe56e057f20f883e'),
(6, '张振亚', '全栈工程师', 'WUIF1707-1', 'e10adc3949ba59abbe56e057f20f883e'),
(7, '石晓磊', '全栈工程师', 'WUIF1707-1', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, '马新贵', '全栈', 'wuif1708', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `eid` int(11) NOT NULL,
  `toption` varchar(255) NOT NULL COMMENT '题干与选项用_分开选项用|分开',
  `tanswer` varchar(255) NOT NULL COMMENT '答案',
  `tanalysis` varchar(255) NOT NULL COMMENT '解析',
  `pid` varchar(255) NOT NULL COMMENT '类型',
  `tscore` varchar(255) NOT NULL COMMENT '分值',
  `tpeople` varchar(255) NOT NULL COMMENT '命题人',
  `sid` varchar(10) NOT NULL COMMENT '阶段'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`eid`, `toption`, `tanswer`, `tanalysis`, `pid`, `tscore`, `tpeople`, `sid`) VALUES
(1, '在javascript里，下列选项中不属于数组方法的是_A：sort()|B：length()|C：concat()|D：reverse()', 'b', '...', '2', '3', '王五', '2'),
(2, '要动态改变层中内容可以使用的方法有_A：innerHTML|B：innerText|C：通过设置层的隐藏和显示来实现|D：通过设置层的样式属性的display属性', 'A,B', '...', '3', '3', '王五', '3'),
(15, 'XHTML和HTML有什么区别？', 'HTML是一种基本的WEB网页设计语言，XHTML是一个基于XML的置标语言\r\n最主要的不同：\r\nXHTML 元素必须被正确地嵌套。\r\nXHTML 元素必须被关闭。\r\n标签名必须用小写字母。\r\nXHTML 文档必须拥有根元素。', 'HTML是一种基本的WEB网页设计语言，XHTML是一个基于XML的置标语言\r\n最主要的不同：\r\nXHTML 元素必须被正确地嵌套。\r\nXHTML 元素必须被关闭。\r\n标签名必须用小写字母。\r\nXHTML 文档必须拥有根元素。', '4', '5', '吕鉴', '15'),
(14, '前端页面有哪三层构成，分别是什么?作用是什么?', '结构层 Html 表示层 CSS 行为层 js;\n3.你做的页面在哪些流览器测试过?这些浏览器的内核分别是什么?\nIe(Ie内核) 火狐（Gecko） 谷歌（webkit,Blink） opera(Presto),Safari(wbkit)', '结构层 Html 表示层 CSS 行为层 js;\n3.你做的页面在哪些流览器测试过?这些浏览器的内核分别是什么?\nIe(Ie内核) 火狐（Gecko） 谷歌（webkit,Blink） opera(Presto),Safari(wbkit)', '4', '5', '吕鉴', '15'),
(16, '希望图片具有”提交”按钮同样的功能,该如何编写表单提交?_A：在图片的onClick事件中手动提交|B：在图片上添加onSubmit事件|C：在图片的onSubmit事件中手动提交|D：在表单中自动提交 ', 'A', '这是解析', '2', '3', '王五', '2'),
(17, '下列选项中,描述正确的是_A：options.add(new Option(„a‟,\'A‟))可以动态添加一个下拉列表选项|B：option.add(new Option(„a‟,\'A‟))可以动态添加一个下拉列表选项|C：new Option(„a‟,\'A‟)中‟a\'表示列表选项的值,‟A\'用于在页面中显示|D：new Option(„a‟,\'A‟)中‟A\'表示列表选项的值,‟a\'用于在页面中显示', 'A,D', '这是多选解析', '3', '3', '王五', '3'),
(18, '什么是语义化的HTML?', '直观的认识标签 对于搜索引擎的抓取有好处，用正确的标签做正确的事情！\nhtml语义化就是让页面的内容结构化，便于对浏览器、搜索引擎解析；\n在没有样式CCS情况下也以一种文档格式显示，并且是容易阅读的。搜索引擎的爬虫依赖于标记来确定上下文和各个关键字的权重，利于 SEO。\n使阅读源代码的人对网站更容易将网站分块，便于阅读维护理解。', '直观的认识标签 对于搜索引擎的抓取有好处，用正确的标签做正确的事情！\nhtml语义化就是让页面的内容结构化，便于对浏览器、搜索引擎解析；\n在没有样式CCS情况下也以一种文档格式显示，并且是容易阅读的。搜索引擎的爬虫依赖于标记来确定上下文和各个关键字的权重，利于 SEO。\n使阅读源代码的人对网站更容易将网站分块，便于阅读维护理解。', '4', '5', '吕鉴', '15'),
(19, '.Doctype作用？标准模式与兼容模式各有什么区别?', '!DOCTYPE声明位于位于HTML文档中的第一行，处于html 标签之前。告知浏览器的解析器用什么文档标准解析这个文档。DOCTYPE不存在或格式不正确会导致文档以兼容模式呈现。\n标准模式的排版 和JS运作模式都是以该浏览器支持的最高标准运行。在兼容模式中，页面以宽松的向后兼容的方式显示,模拟老式浏览器的行为以防止站点无法工作。', '!DOCTYPE声明位于位于HTML文档中的第一行，处于html 标签之前。告知浏览器的解析器用什么文档标准解析这个文档。DOCTYPE不存在或格式不正确会导致文档以兼容模式呈现。\n标准模式的排版 和JS运作模式都是以该浏览器支持的最高标准运行。在兼容模式中，页面以宽松的向后兼容的方式显示,模拟老式浏览器的行为以防止站点无法工作。', '4', '5', '吕鉴', '15');

-- --------------------------------------------------------

--
-- 表的结构 `testtype`
--

CREATE TABLE `testtype` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL COMMENT '试卷类型'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `testtype`
--

INSERT INTO `testtype` (`pid`, `pname`) VALUES
(2, '单选'),
(3, '多选'),
(4, '简答');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL COMMENT '答题人',
  `aid` varchar(10) NOT NULL COMMENT '卷子ID',
  `eid` varchar(10) NOT NULL COMMENT '题ID',
  `tanswer` varchar(255) NOT NULL COMMENT '对应的答案'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `aid`, `eid`, `tanswer`) VALUES
(40, '99', '1', '2', 'D：通过设置层的样式属性的display属性,C：通过设置层的隐藏和显示来实现'),
(39, '99', '1', '16', 'C：在图片的onSubmit事件中手动提交'),
(38, '99', '1', '1', 'D：reverse()'),
(37, '99', '1', '14', 'jquery是js的一个扩展库，vue.js是框架'),
(46, '99', '1', '1', ''),
(47, '99', '1', '16', 'B：在图片上添加onSubmit事件'),
(48, '99', '1', '2', 'C：通过设置层的隐藏和显示来实现'),
(54, '99', '5', '1', 'C：concat()'),
(53, '99', '1', '19', ''),
(52, '99', '1', '18', '.3.'),
(51, '99', '1', '15', ''),
(50, '99', '1', '14', ''),
(49, '99', '1', '17', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `manger`
--
ALTER TABLE `manger`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `paperedit`
--
ALTER TABLE `paperedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `testtype`
--
ALTER TABLE `testtype`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `classes`
--
ALTER TABLE `classes`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `direction`
--
ALTER TABLE `direction`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `manger`
--
ALTER TABLE `manger`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `paper`
--
ALTER TABLE `paper`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `paperedit`
--
ALTER TABLE `paperedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `stage`
--
ALTER TABLE `stage`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `testtype`
--
ALTER TABLE `testtype`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
