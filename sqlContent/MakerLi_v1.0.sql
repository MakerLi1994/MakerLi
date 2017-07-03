-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- 生成日期: 2017 年 07 月 03 日 18:44

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `geqAsBKIGLMWqJgAbmLn`
--

-- --------------------------------------------------------

--
-- 表的结构 `fx_items`
--

CREATE TABLE IF NOT EXISTS `fx_items` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `itemsname` varchar(100) NOT NULL,
  `introduce` text NOT NULL,
  `plan` int(6) NOT NULL,
  `herf` varchar(100) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `fx_items`
--

INSERT INTO `fx_items` (`id`, `itemsname`, `introduce`, `plan`, `herf`, `time`) VALUES
(1, 'HBuilder混合app仿微信', '仿微信App', 70, '#', '2017-06-11'),
(2, '个人网站建设', '个人网站建设', 100, 'http://lihuanting.gz01.bdysite.com/', '2017-06-11'),
(5, '自己遇到的问题', '伪元素无法层叠等', 50, '../../down/down.rar', '2017-06-14');

-- --------------------------------------------------------

--
-- 表的结构 `fx_shouye`
--

CREATE TABLE IF NOT EXISTS `fx_shouye` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `btnl` text NOT NULL,
  `btnr` text NOT NULL,
  `divc` varchar(50) NOT NULL,
  `herf` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_3` (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `fx_shouye`
--

INSERT INTO `fx_shouye` (`id`, `img`, `title`, `content`, `btnl`, `btnr`, `divc`, `herf`) VALUES
(1, '1.png', 'html5+css3+js模块', '有关html5+css3+js的知识点', '前往', '收藏', 'col-xs12 col-sm-4 col-md-4 col-lg-4', 'MakerLi/web/web.html'),
(2, '2.png', 'php+sql模块', '后端PHP与sql知识点复习', '前往', '收藏', 'col-xs12 col-sm-4 col-md-4 col-lg-4', 'MakerLi/bg/bg.html'),
(3, '3.png', '基于HBuilder的app开发模块', '有关混合开发的知识模块', '前往', '收藏', 'col-xs12 col-sm-4 col-md-4 col-lg-4', 'MakerLi/hbuilder/hb.html'),
(4, '4.png', '项目案例', '个人项目案例汇总', '前往', '收藏', 'col-xs12 col-sm-12 col-md-12 col-lg-12', 'MakerLi/items/items.html');

-- --------------------------------------------------------

--
-- 表的结构 `fx_web`
--

CREATE TABLE IF NOT EXISTS `fx_web` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `articletype` varchar(10) NOT NULL,
  `articlecontent` text NOT NULL,
  `articletitle` varchar(30) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `fx_web`
--

INSERT INTO `fx_web` (`id`, `articletype`, `articlecontent`, `articletitle`, `time`) VALUES
(1, 'html', 'a标签可以定义锚。它有两种用法：<br/>\r\n通过使用href属性，创建指向另外一个文档的链接（或者超链接）href="http://maker.gz01.bdysite.com/"<br/>\r\n通过name或者id属性，创建一个文档内部的书签(也可以说是指向文档内部的标签)<br/>\r\ntarget属性:<br/>\r\n_blank:新窗口打开<a href="http://www.baidu.com/" target="_blank" style="text-decoration: none">target="_blank"</a><br/>\r\n_self：默认本窗口打开<a href="http://www.baidu.com/" target="_self" style="text-decoration: none">target="_self"</a><br/>\r\n_parent：父框架集中打开连接文档（实测无差别）<br/>\r\n_top：整个窗口打开连接文档（实测无差别）<br/>\r\n', 'a标签:链接跳转', '2017-06-12'),
(2, 'html', '通过addr对缩写词语进行标记,能为浏览器,拼写检查程序,翻译系统提供有用信息.<br/>\r\n例如:设置title="MakerLi"属性的<addr title="MakerLi" style="color:red">ML</addr>.(鼠标悬停会显示完整名称)<br/>', 'addr标签:缩写标记', '2017-06-10'),
(3, 'html', '通过acronym对首字母缩写进行标记,例如:<acronym title="Woeld Wide Web" style="color:red">WWW</acronym>的的全程设置在acronym的title="Woeld Wide Web".<br/>', 'acronym标签:首字母缩写标记', '2017-06-11'),
(4, 'html', '添加地址的文档可以给用户提供了反馈的渠道,还可以增加文档可信度.<br/>\r\n书写在address标签中的段落会呈现斜体.并在后面自动追加br/换行<address>\r\n    <a href="http://maker.gz01.bdysite.com/">前往首页</a>\r\n</address>', 'address标签:在文档中创建一个地址', '2017-06-11'),
(5, 'html', 'content在查询中....<br/>', 'area标签:映射 ', '2017-06-10'),
(6, 'html', '<b>b</b>可以用来包裹重要文本,没有元素可以使用时,也可以当做DOM元素来使用 <br/>', 'b标签:加粗文本 ', '2017-06-11'),
(7, 'html', 'href:例如img的绝对地址是src="<b style=''color: cornflowerblue''>http://www.w3school.com.cn/i/pic.gif</b>",<br/>\r\n我们可以在页面head部分插入base标签,规定基准url为href="<b style=''color: cornflowerblue''>http://www.w3school.com.cn/i/</b>"<br/>\r\n则img的标签的src="<b style=''color: cornflowerblue''>pic.gif</b>";<br/>\r\ntarget:同a标签中的target一样;<br/>', 'base标签:定义所有连接的基准URL', '2017-06-11'),
(8, 'html', 'basefont写在头部,有color,face,size属性,但是不赞成使用.只有 Internet Explorer 支持 basefont 标签.应该避免使用该标签.<br/>', 'basefont标签:默认字体颜色,仅支持IE', '2017-06-14'),
(9, 'html', 'dir:有两个值 <br/>\r\n<bdo dir="rtl">←rtl值是从右往左</bdo><br/>\r\n<bdo dir="ltr">ltr值是从左往右开始</bdo><br/>', 'bdo标签:覆盖文本的方向', '2017-06-14'),
(10, 'html', '使用big标签可以很容易地放大字体,但是HTML5不支持big标签; <br/>', 'big标签:让文本使用大号字体', '2017-06-14'),
(11, 'html', '毛泽东说过:\r\n<blockquote>帝国主义都是纸老虎 ...</blockquote>\r\n引用变迁会让浏览器自动加入换行和外标签;<br/>', ' blockquote标签:定义引用', '2017-06-14'),
(12, 'html', 'body标签包含文档的所有内容;<br/>', 'body标签:文档的主体', '2017-06-14'),
(13, 'html', 'br标签是一个空标签,他没有结束标签！他没有结束标签！他没有结束标签！<br/>\r\nbr标签有一个clear属性,他有left,right,all三个值,分别代表左边界,右边界,和两边.如果希望有图像在嵌入时,可以使用clear属性.<br/>\r\n', 'br标签:简单换行', '2017-06-14'),
(14, 'html', 'button标签相比于input标签更为强大,它可以放置除图像映射以外的内容,所有浏览器都支持此标签,但IE浏览器会提交标签之间的内容,其他浏览器会提交value的内容.<br/>\r\ndisabled属性:值为disabled,此属性规定禁用此按钮,不能点击;<br/>\r\nname属性:自定义的name值,此属性规定此按钮的名字;<br/>\r\ntype属性:有button值,reset值,submit值;<br/>\r\nvalue属性:内容text,规定按钮的初始值;<br/>', 'button标签:定义一个按钮', '2017-06-14'),
(15, 'html', 'caption标签必须跟随table标签之后,而且每一个表格只能定义一个标题; <br/>\r\nalign属性:left、right、top、bottom四个值,但不赞成使用.可以在css样式中设置标题样式.<br/>', 'caption标签:在表格中定义标题 ', '2017-06-14'),
(16, 'html', '一般不使用此标签,请用css样式中的text-algin:center设置文本居中;<br/>\r\ncode标签:计算机源码 <br/>\r\n<code>code</code>表示计算机源码文件,包含在该标签的文本内容会用等宽,电传打字机(Courier)等字体显示出来;<br/>', 'center标签:文本居中 ', '2017-06-14'),
(17, 'html', '需要在表格中对全部列应用样式col标签很有用,<span style="color:red">但是只能在table或者colgroup元素中使用col标签</span><br/>\r\nalign属性:<br/>right(右对齐)<br/>left(左对齐)<br/>center(居中对齐)<br/>justify(两端对齐)<br/>char(小数点对齐,但是没有浏览器支持他)<br/>\r\ncharoff属性:值为自己定义的number值(规定第一个对齐字符的偏移量,同样也几乎没有浏览器支持)<br/>\r\nspan属性:值为自己定义的numbei值(例如span="3"),作用类似于合并列表框;<br/>\r\nvalign属性:<br/>top(内容上对齐)<br/>middle(居中对齐)<br/>bottom(下对齐)<br/>baseline(基线对齐,没有主流浏览器支持);\r\nwidth属性:width为col元素设置预定义的宽度(可用px,%为单位);<br/>', 'col与colgroup标签:表格中的列属性标签', '2017-06-14'),
(18, 'html', '在自定义列表中,dl>dt>dd;<br/>\r\n<dl> dl\r\n    <dt>dt</dt>\r\n    <dd>dd</dd>\r\n    <dt>dt</dt>\r\n    <dd>dd</dd>\r\n</dl>', 'dd标签:自定义列表标签', '2017-06-14'),
(19, 'html', '<del>del标签的删除样式</del>', 'del标签:定义文档中删除样式的文本', '2017-06-14'),
(20, 'html', 'dir标签定义目录列表,所有主流浏览器都支持dir标签,但是不赞成使用,没有ul标签实用.<br/>\r\ncompact属性值:可以减少行间距以及对列表进行缩进来实现小巧效果,但是几乎没有浏览器支持这个属性,不赞成使用;<br/>', 'dir标签:和ul标签有相同效果 ', '2017-06-14'),
(21, 'html', 'div标签是一个块级元素,浏览器通常会在div元素前后放置一个换行符.<br/>\r\ndiv是division的缩写,意为分割、区域、组合 <br/>', 'div标签:定义文档中的分区或者块的重要标签', '2017-06-14'),
(22, 'html', 'dl>dt>dd <br/>', 'dl标签:定义了定义列表', '2017-06-14'),
(23, 'html', 'dl>dt>dd', 'dt标签:定义了定义列表', '2017-06-14'),
(24, 'html', '但是如果为了视觉华丽,并不建议使用此标签.', 'em标签:把文本内容定义为强调', '2017-06-14'),
(25, 'html', '<form action="">\r\n    <fieldset>\r\n        <legend>legend元素为fieldset定义标题</legend>\r\n        fieldset标签包裹内容\r\n    </fieldset>\r\n</form>', 'fieldset标签:可以将表单内的相关元素分组 ', '2017-06-14'),
(26, 'html', 'font标签被所有主流浏览器支持,但是不被赞同使用,因为在css样式中有font属性可以设置字体的大小,颜色,样式.', 'font标签:规定文本的字体、尺寸、颜色 ', '2017-06-14'),
(27, 'html', 'form标签是块级元素,前后会产生折行,它能够包含input元素,menus、textarea、fieldset、legend和label元素.<br/>\r\n表单用于向服务器传输数据 <br/>\r\n必须属性:action="url"(传入的是向url发送数据)<br/>\r\n可选属性:<br/>\r\naccept(规定通过文件上传提交的数据类型);<br/>\r\naccept-charset="value"(value="UTF-8-Unicode"等,设置服务器处理表单所接受的字符集)<br/>\r\nenctype(规定表单数据在发送到服务器之前应该如何编码)<br/>\r\nmethod: <br/>\r\nget(表单以GET的形式发送数据,传输的数据会显示在地址栏上,传输的数据有限制,后台必须以$GET[''dataname'']的形式接收)<br/>\r\npost(表单以POST的形式发送数据,传输的数据会在程序的URL中,安全性比较好,后台必须以$_POST[''dataname'']的形式接收)<br/>\r\n', 'form标签:为用户输入数据创建HTML表单', '2017-06-14'),
(28, 'html', 'frameset中的每个框架都可以有不同的border、scrolling、noresize属性;\r\n<span style="color: red">注意frameset不能与body标签同时使用</span><br/>\r\nframeborder属性:(0、1值,规定是否显示框架周围的边框)<br/>\r\nlongdesc属性:(规定一个包含有关框架内容的长描述的画面)<br/>\r\nmarginheight属性:(px值,定义框架的上方边距和下方边距)<br/>\r\nmarginwidth属性:(px值,定义框架左侧和右侧的边距)<br/>\r\nname属性:(定义框架的名字)<br/>\r\nnoresize属性:(规定无法调整框架的大小)<br/>\r\nscrolling属性:(规定是否在框架中显示滚动条,值为yes、no、auto)<br/>\r\nsrc属性:(规定在框架中显示文档的url)<br/>', 'frame标签:定义frameset中的特定窗口', '2017-06-14'),
(29, 'html', 'frameset标签被用来组织多个窗口(框架),每个框架都存在独立的文档,\r\nframeset属性:<br/>\r\ncols(定义框架集中列的数目和尺寸)<br/>\r\nrows(定义框架集中行的数目和尺寸)<br/>\r\n', 'frameset标签:定义一个框架集', '2017-06-14'),
(30, 'html', 'head标签是所有头部元素的容器,可以在head中引用脚本,指示浏览器在哪里找到样式表等等,base、link、meta、script、title可以在head里使用<br/>\r\nprofile属性:url值里面包含了有关页面的元数据信息.<br/>', 'head标签:文档的头部标签', '2017-06-14'),
(31, 'html', 'h1-h6标签:标签拥有特殊语义,所以不要利用h系列标签来改变同一行的字体大小,利用层叠样式来改变会更好 <br/>\r\nalign属性:(left,right,center,justify)不赞成被使用,请使用层叠样式;', 'h1-h6标签:定义标题 ', '2017-06-14'),
(32, 'html', '在HTML页面中创建一个水平线,有align、noshade、size、width等属性,但不赞成使用;', 'hr标签:水平线', '2017-06-14'),
(33, 'html', 'html标签限定了文档的开始和结束 <br/>', 'html标签:告知浏览器是html文档 ', '2017-06-14'),
(34, 'html', '<i>i标签能让中间的文本斜体显示</i><br/>', 'i标签:斜体显示', '2017-06-14'),
(35, 'html', '在用于样式表方面，所有浏览器都支持；<br/>\r\n属性: <br/>\r\ncharset(定义被连接文档的字符编码方式 charset="charset"); <br/>\r\nhref(定义被链接文档的位置 href="url")；<br/>\r\nhreflang(定义被连接文档中文本语言);<br/>\r\nmedia(定义被用在什么设备上screen、tty、tv、projection、handheld、print、braille、aural、all);<br/>\r\nrel(定义当前文档和被链接文档的关系); <br/>\r\nrev(定义被链接文档和当前文档的你关系);<br/>\r\ntarget(定义在何处加载被连接文档_blank、_parent、_self、_top、framename) <br/>\r\ntype(规定被链接的文档类型)<br/>', 'link标签:链接资源 ', '2017-06-14'),
(36, 'html', '与ul类似，修改样式请使用层叠样式。<br/>', 'menu标签:定义一个菜单列表', '2017-06-14'),
(37, 'html', 'img标签有两个必要的属性: <br/>\r\nalt(值为text类型)规定图像的替代文本，当鼠标悬置在图像上时，显示此文本。<br/>\r\nsrc(值为图像的地址，即url) <br>\r\n可选属性: <br>\r\nalign(值为top、bottom、middle、left、right)规定如何根据周围文本来排列图像，但不赞成使用。<br>\r\nboder(值为px)定义图像周围的边框,但不赞成使用 <br>\r\nheight、width(值为px)定义图像的宽高 <br>\r\nhspace(值为px)定义图像左侧和右侧的空白,但不赞成使用 <br>\r\nismap(值为url)定义作为服务器端映射的一幅图像，需要网络<br>\r\nlonqdesc(url)指包含长的图像描述文档的url,类似于alt，但是它允许更长<br>\r\nusemap(值为url)定义客户端图像映射的一幅图像 <br>\r\nvspace(值为px)定义图像顶部和底部的空白,但是不赞成使用<br>', 'img标签:定义一幅图像', '2017-06-14'),
(38, 'html', 'input标签在form里面，根据不同的type值，设置不同的形式，比如文本控件，复选框，单选按钮，按钮等。<br>\r\n可选属性:<br>\r\naccept:规定通过文件上传来提交的文件类型。<br>\r\nalign(值为left、right、top、minddle、bottom)规定图像输入的对齐方式，但是不赞成使用。<br>\r\nalt(值为text)定义图像输入的替代文本。<br>\r\nchecked(值为checked)规定此input元素首次加载时应当被选中。<br>\r\ndisabled(值为disabled)当input元素加载时禁用此元素。<br>\r\nmaxlength（值为number）规定输入字段中的字符的最大长度。<br>\r\nname（值为field_name）定义 input 元素的名称。<br>\r\nreadonly（值为readonly）规定输入字段为只读。<br>\r\nsize （值为number_of_char） 定义输入字段的宽度。<br>\r\nsrc （值为URL） 定义以提交按钮形式显示的图像的 URL。<br>\r\ntype （值为button、checkbox、file、hidden、image、password、radio、reset、submit、text）规定 input 元素的类型。\r\n<ul>\r\n<li><input type="text"  placeholder=''type="text"''></li>\r\n<li><input type="checkbox"><input type="checkbox">type="checkbox"</li>\r\n<li><input type="file" value="">type="file"</li>\r\n<li><input type="hidden">type="hidden"隐藏</li>\r\n<li><input type="password" placeholder=''type="password"''>输入的密码是隐藏的</li>\r\n<li><input type="radio" name="l"><input type="radio" name="l">type="radio" 单选框，name属性名需要相同</li>\r\n<li><input type="reset">重置type="reset"</li>\r\n<li><input type="submit">提交type="submit"</li>\r\n<li><input type="image" >提交type="image"</li>\r\n\r\n</ul> \r\nvalue （值为value）规定 input 元素的值<br>\r\nautocomplete: <br>\r\n拥有该属性的文本，会在用户开始输入时，在该域中显示已经填写过选项<span style="color: red">《H5新增》</span><br>\r\nautofocus: <br>\r\n拥有该属性的标签会在页面加载的时候，自动获得焦点<span style="color: red">《H5新增》</span><br>\r\nform:<br/>\r\n拥有该属性的input标签，即使不在form内，数据也属于form，值为该form表单的id<span style="color: red">《H5新增》</span><br>\r\nform override attributes：表单重写属性<br>\r\n<ul>\r\n    <li>formaction:重写表单action</li>\r\n    <li>formenctype：重写表单enctype</li>\r\n    <li>formmethod：重写表单method</li>\r\n    <li>formnovalidate：重写表单novalidate</li>\r\n    <li>formtarget：重写表单target</li>\r\n    <li><span style="color: red">《H5新增》</span><br></li>\r\n</ul>\r\nheight、width：<br>\r\nheight 和 width 属性只适用于 image 类型的input标签。<span style="color: red">《H5新增》</span><br>\r\nmin、max、step：<br>\r\n这三个的属性作用分别是允许输入的最小值、最大值、数字间隔<span style="color: red">《H5新增》</span><br>\r\nmultiple: <br>\r\n<input type="file" name="img" multiple="multiple" />规定输入域中可选择多个值<span style="color: red">《H5新增》</span><br>\r\nnovalidate：<br>\r\n规定在提交表单时不应该验证 form 或 input 域<span style="color: red">《H5新增》</span><br>\r\npattern：<br>\r\n正则表达验证<input type="text" placeholder="只能输入数字" pattern="[0-9]+" ><span style="color: red">《H5新增》</span><br>\r\n\r\nplaceholder: <br>\r\n提示（hint）会在输入域为空时显示出现，会在输入域获得焦点时消失<span style="color: red">《H5新增》</span><br>\r\n\r\nrequired：<br>\r\n\r\n属性规定必须在提交之前填写输入域（不能为空）。<span style="color: red">《H5新增》</span><br>', 'input标签:用于收集用户信息 ', '2017-06-14'),
(39, 'html', '请与 del 一同使用，来描述文档中的更新和修正。例如<del>del</del><ins>ins</ins> <br>', 'ins标签：定义插入的文本 ', '2017-06-14'),
(40, 'html', '当用户选择该标签时，浏览器就会自动将焦点转到和标签相关的表单控件，label标签的for属性需要和相关元素的id相同<br>\r\nfor属性：规定 label 与哪个表单元素绑定。<br>', 'label标签:为 input 元素定义标注', '2017-06-14'),
(41, 'html', '为 fieldset 元素定义标题,其中align属性不被赞成使用<br>', 'legend标签:为 fieldset 元素定义标题', '2017-06-16'),
(42, 'html', '可用在有序列表 (ol) 和无序列表 (ul) 中，li标签有两种属性值（type和value）但都不赞成使用，请用样式代替他们<br>', 'li标签：定义列表项目', '2017-06-16'),
(43, 'html', '永远位于 head 元素内部，不包含任何内容，可提供有关页面的元信息（meta-information），比如针对搜索引擎和更新频度的描述和关键词元数据总是以名称/值的形式被成对传递的。<br>\r\n必须属性：<br>\r\ncontent:与 http-equiv 或 name 属性相关的元信息，content 属性始终要和 name 属性或 http-equiv 属性一起使用<br>\r\n可选属性: <br>\r\nhttp-equiv (值为content-type、expires、refresh、set-cookie)把 content 属性关联到 HTTP 头部，有些服务器会发送许多这种名称/值对，所有服务器都至少要发送一个：content-type:text/html。这将告诉浏览器准备接受一个 HTML 文档<br>\r\nname （值为author、description、keywords、generator、revised、others）把 content 属性关联到一个名称，name 属性提供了名称/值对中的名称，其中"keywords"是一个经常被用到的名称。它为文档定义了一组关键字。某些搜索引擎在遇到这些关键字时，会用这些关键字对文档进行分类。<br>\r\nscheme 定义用于翻译 content 属性值的格式，用于指定要用来翻译属性值的方案<br>', 'meta标签：提供有关页面的元信息', '2017-06-16'),
(44, 'html', 'noframes 元素位于 frameset 元素内部，noframes 元素位于 frameset 元素内部。如果您希望 frameset 添加 noframes 标签，就必须报其中的文本包装在 body标签中！', 'noframes标签：可为那些不支持框架的浏览器显示文本', '2017-06-16'),
(45, 'html', '此标签可被用于可识别script标签但无法支持其中的脚本的浏览器。不能执行js脚本是的时候显示其中内容<kbd>&lt;noscript&gt; 不能使用javascript &lt;/noscript&gt;</kbd> <br>', 'noscript：定义在脚本未被执行时的替代内容（文本）', '2017-06-16'),
(46, 'html', '请使用此元素向您的 XHTML 页面添加多媒体。此元素允许您规定插入 HTML 文档中的对象的数据和参数，以及可用来显示和操作数据的代码。object 的初衷是取代 img 和 applet br元素。不过由于漏洞以及缺乏浏览器支持，这一点并未实现。<br>', 'object:定义一个嵌入的对象', '2017-06-16'),
(47, 'html', '类似ul；有三个属性值（compact、start、type）但不赞成使用，请用css样式代替<br>', 'ol：定义有序列表', '2017-06-16'),
(48, 'html', 'option标签定义选项组，必须属性label：为选项组规定描述，可选属性disabled：规定禁用该选项组<br>\r\n<kbd>&lt;select&gt;<br>\r\n  &lt;optgroup label="optgroup I"&gt;<br>\r\n    &lt;option value ="volvo"&gt;这是第一个&lt;/option&gt;<br>\r\n    &lt;option value ="saab"&gt;这是第二个&lt;/option&gt;<br>\r\n  &lt;/optgroup&gt;<br>\r\n  &lt;optgroup label="optgroup II"&gt;<br>\r\n    &lt;option value ="mercedes"&gt;这是第三个&lt;/option&gt;<br>\r\n    &lt;option value ="audi"&gt;这是第四个&lt;/option&gt;<br>\r\n  &lt;/optgroup&gt;<br>\r\n&lt;/select&gt;<br></kbd>\r\n<select>\r\n  <optgroup label="optgroup I">\r\n    <option value ="volvo">这是第一个</option>\r\n    <option value ="saab">这是第二个</option>\r\n  </optgroup>\r\n  <optgroup label="optgroup II">\r\n    <option value ="mercedes">这是第三个</option>\r\n    <option value ="audi">这是第四个</option>\r\n  </optgroup>\r\n</select>\r\n<br>', 'optgroup：用于组合选项', '2017-06-16'),
(49, 'css', 'CSS 语法由三部分构成：选择器、属性和值，例如：<br>\r\n<kbd>selector {property: value}</kbd>\r\n<ul>CSS的注意点：\r\n    <li>值的不同写法和单位，例如颜色的四种值red,#fff,#ffffff,rgb(255,255,255),rgba(255,255,255,1)</li>\r\n    <li>记得写引号</li>\r\n    <li>多重声明，分号隔开</li>\r\n    <li>空格和大小写</li>\r\n</ul>', 'CSS语法', '2017-06-16'),
(50, 'javascript', '<kbd>&lt;script type="text/javascript"&gt;<br>\r\ndocument.write("Hello World!");<br>\r\n&lt;/script&gt;<br>\r\n</kbd>', 'document.write 页面中写入普通文本和标签', '2017-06-16'),
(51, 'javascript', '当页面载入时，会执行位于 body 部分的 JavaScript。<br>\r\n\r\n当被调用时，位于 head 部分的 JavaScript 才会被执行。<br>\r\n<ul>\r\n    <li>位于head部分的脚本：当脚本被调用时，或者当事件被触发时，脚本就会被执行。当你把脚本放置到 head 部分后，就可以确保在需要使用脚本之前，它已经被载入了。</li>\r\n    <li>位于body部分的脚本：在页面载入时脚本就会被执行。当你把脚本放置于 body 部分后，它就会生成页面的内容。</li>\r\n    <li>在body和head部分的脚本：你可以在文档中放置任何数量的脚本，因此你既可以把脚本放置到 body，又可以放置到 head 部分。</li>\r\n    <li>使用外部 JavaScript：你可以将 JavaScript 写入一个外部文件之中。然后以 .js 为后缀保存这个文件。，在用一个空的<kbd>&lt;script src="xxx.js"&gt;&lt;/script&gt;</kbd>引入js文件</li>\r\n</ul>\r\n', 'JavaScript载入位置', '2017-06-16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
