/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : zb-blog

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-10-28 18:43:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `biz_article`
-- ----------------------------
DROP TABLE IF EXISTS `biz_article`;
CREATE TABLE `biz_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户ID',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '文章封面图片',
  `qrcode_path` varchar(255) DEFAULT NULL COMMENT '文章专属二维码地址',
  `is_markdown` tinyint(1) unsigned DEFAULT '1',
  `content` longtext COMMENT '文章内容',
  `content_md` longtext COMMENT 'markdown版的文章内容',
  `top` tinyint(1) unsigned DEFAULT '0' COMMENT '是否置顶',
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `recommended` tinyint(1) unsigned DEFAULT '0' COMMENT '是否推荐',
  `slider` tinyint(1) unsigned DEFAULT '0' COMMENT '是否轮播',
  `slider_img` varchar(255) DEFAULT NULL COMMENT '轮播图地址',
  `original` tinyint(1) unsigned DEFAULT '1' COMMENT '是否原创',
  `description` varchar(300) DEFAULT NULL COMMENT '文章简介，最多200字',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键字，优化搜索',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article
-- ----------------------------
INSERT INTO `biz_article` VALUES ('1', 'zb-shiro开源springboot+mybatis+shiro+redis整合项目', '1000002030234569', '郑其锋', '/img/demo.jpg', null, '1', '<h1 id=\"zb-shiro\">zb-shiro</h1>\r\n<h4 id=\"-\">项目介绍</h4>\r\n<p>项目git地址：<a href=\"https://gitee.com/supperzh/zb-shiro\">https://gitee.com/supperzh/zb-shiro</a><br>Springboot + shiro权限管理。最精简的shiro上手项目。<br>基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。<br>包含：用户管理、角色管理、角色管理、在线用户管理等模块。<br>可以加<a href=\"http://shang.qq.com/wpa/qunwpa?idkey=dad3420aea2111ee98653f703f61bc504bfcd6dd85d1766a344523d7e353ad43\">QQ群130512958</a>交流技术！</p>\r\n<p>项目预览：<a href=\"http://www.nbclass.com/index\">www.nbclass.com/index</a><br>    音乐：<a href=\"http://music.nbclass.com\">music.nbclass.com</a><br>    账号：admin 密码：123456<br>另有springmvc版权限后台项目（可切换redis配置和本地缓存配置，加群，不常更新）<a href=\"https://gitee.com/supperzh/zqf-shiro\">git地址</a></p>\r\n<p><strong>如果喜欢，请多多分享！！多多Star！！</strong></p>\r\n<p><img src=\"https://img.shields.io/badge/JDK-1.8-green.svg\" alt=\"JDK\">  <img src=\"https://img.shields.io/badge/Maven-3.3.9-green.svg\" alt=\"Maven\">  <img src=\"https://img.shields.io/badge/MySQL-5.6.24-green.svg\" alt=\"MySQL\">  <img src=\"https://img.shields.io/badge/Redis-3.0.503-green.svg\" alt=\"Redis\">  <a href=\"https://gitee.com/supperzh/zb-shiro/blob/master/LICENSE\"><img src=\"https://img.shields.io/badge/license-MIT-yellow.svg\" alt=\"license\"></a></p>\r\n<h4 id=\"-\">使用说明</h4>\r\n<ol>\r\n<li>使用IDE导入本项目</li>\r\n<li>新建数据库<code>CREATE DATABASE zb-shiro;</code></li>\r\n<li>导入数据库<code>docs/db/shiro.sql</code></li>\r\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\r\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.15) </li>\r\n<li>redis配置(可搜索<code>redis</code>或定位到L.28)</li>\r\n</ol>\r\n</li>\r\n<li>运行项目(三种方式)<ol>\r\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar zb-shiro/target/zb-shiro.jar</code></li>\r\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\r\n<li>直接运行<code>ShiroBootApplication.java</code></li>\r\n</ol>\r\n</li>\r\n<li>浏览器访问<code>http://localhost:8081</code></li>\r\n</ol>\r\n<p><strong>用户密码</strong></p>\r\n<p> 账号：admin 密码：123456</p>\r\n<h4 id=\"-\">其他开源项目</h4>\r\n<p><a href=\"https://gitee.com/supperzh/zplayer\">zplayer音乐播放器</a></p>\r\n<h4 id=\"-\">图片预览</h4>\r\n<p><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/workdest.png?v=1.0\" alt=\"首页\"><br>什么？你没看错，前端模板有很棒的主题风格切换功能！<br/><br><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/control.png?v=1.0\" alt=\"主题切换\"><br><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/userlist.png?v=1.0\" alt=\"用户管理\"><br><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/rolelist.png?v=1.0\" alt=\"角色管理\"><br><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/assignpermission.png?v=1.0\" alt=\"角色分配资源\"><br><img src=\"https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/permissionlist.png?v=1.0\" alt=\"资源管理\"></p>\r\n', '# zb-shiro\r\n\r\n#### 项目介绍\r\n项目git地址：https://gitee.com/supperzh/zb-shiro\r\nSpringboot + shiro权限管理。最精简的shiro上手项目。\r\n基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。\r\n包含：用户管理、角色管理、角色管理、在线用户管理等模块。\r\n可以加[QQ群130512958](http://shang.qq.com/wpa/qunwpa?idkey=dad3420aea2111ee98653f703f61bc504bfcd6dd85d1766a344523d7e353ad43)交流技术！\r\n\r\n项目预览：[www.nbclass.com/index](http://www.nbclass.com/index)\r\n    音乐：[music.nbclass.com](http://music.nbclass.com)\r\n	账号：admin 密码：123456\r\n另有springmvc版权限后台项目（可切换redis配置和本地缓存配置，加群，不常更新）[git地址](https://gitee.com/supperzh/zqf-shiro)\r\n\r\n**如果喜欢，请多多分享！！多多Star！！**\r\n\r\n![JDK](https://img.shields.io/badge/JDK-1.8-green.svg)  ![Maven](https://img.shields.io/badge/Maven-3.3.9-green.svg)  ![MySQL](https://img.shields.io/badge/MySQL-5.6.24-green.svg)  ![Redis](https://img.shields.io/badge/Redis-3.0.503-green.svg)  [![license](https://img.shields.io/badge/license-MIT-yellow.svg)](https://gitee.com/supperzh/zb-shiro/blob/master/LICENSE)\r\n\r\n#### 使用说明\r\n\r\n1. 使用IDE导入本项目\r\n2. 新建数据库`CREATE DATABASE zb-shiro;`\r\n3. 导入数据库`docs/db/shiro.sql`\r\n4. 修改(`resources/application.yml`)配置文件\r\n   1. 数据库链接属性(可搜索`datasource`或定位到L.15) \r\n   2. redis配置(可搜索`redis`或定位到L.28)\r\n5. 运行项目(三种方式)\r\n   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar zb-shiro/target/zb-shiro.jar`\r\n   2. 项目根目录下执行`mvn springboot:run`\r\n   3. 直接运行`ShiroBootApplication.java`\r\n6. 浏览器访问`http://localhost:8081`\r\n\r\n**用户密码**\r\n\r\n 账号：admin 密码：123456\r\n\r\n\r\n\r\n\r\n#### 其他开源项目\r\n\r\n[zplayer音乐播放器](https://gitee.com/supperzh/zplayer)\r\n\r\n\r\n#### 图片预览\r\n\r\n![首页](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/workdest.png?v=1.0)\r\n什么？你没看错，前端模板有很棒的主题风格切换功能！<br/>\r\n![主题切换](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/control.png?v=1.0)\r\n![用户管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/userlist.png?v=1.0)\r\n![角色管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/rolelist.png?v=1.0)\r\n![角色分配资源](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/assignpermission.png?v=1.0)\r\n![资源管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/permissionlist.png?v=1.0)', '1', '2', '1', '1', '0', 'http://cdn.nbclass.com/img/blog/19424e4d076b1304f251c53809a671ad.jpg', '1', 'Springboot + shiro权限管理。最精简的shiro上手项目。\r\n基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。\r\n包含：用户管理、角色管理、角色管理、在线用户管理等模块。', null, '1', '2018-08-02 12:43:59', '2018-08-02 12:43:59');

-- ----------------------------
-- Table structure for `biz_article_look`
-- ----------------------------
DROP TABLE IF EXISTS `biz_article_look`;
CREATE TABLE `biz_article_look` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(20) unsigned NOT NULL COMMENT '文章ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `look_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article_look
-- ----------------------------
INSERT INTO `biz_article_look` VALUES ('1', '1', null, '0:0:0:0:0:0:0:1', '2018-09-13 23:30:25', '2018-09-13 23:30:25', '2018-09-13 23:30:25');
INSERT INTO `biz_article_look` VALUES ('2', '1', null, '0:0:0:0:0:0:0:1', '2018-09-19 16:56:59', '2018-09-19 16:56:59', '2018-09-19 16:56:59');
INSERT INTO `biz_article_look` VALUES ('3', '1', null, '0:0:0:0:0:0:0:1', '2018-09-20 00:52:15', '2018-09-20 00:52:15', '2018-09-20 00:52:15');

-- ----------------------------
-- Table structure for `biz_article_tags`
-- ----------------------------
DROP TABLE IF EXISTS `biz_article_tags`;
CREATE TABLE `biz_article_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) unsigned NOT NULL COMMENT '标签表主键',
  `article_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article_tags
-- ----------------------------
INSERT INTO `biz_article_tags` VALUES ('1', '2', '1', '2018-09-13 23:30:20', '2018-09-13 23:30:20');
INSERT INTO `biz_article_tags` VALUES ('2', '3', '1', '2018-09-13 23:30:20', '2018-09-13 23:30:20');
INSERT INTO `biz_article_tags` VALUES ('3', '4', '1', '2018-09-13 23:30:20', '2018-09-13 23:30:20');

-- ----------------------------
-- Table structure for `biz_category`
-- ----------------------------
DROP TABLE IF EXISTS `biz_category`;
CREATE TABLE `biz_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '文章类型名',
  `description` varchar(200) DEFAULT NULL COMMENT '类型介绍',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '是否可用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_category
-- ----------------------------
INSERT INTO `biz_category` VALUES ('1', '0', '前端技术', '主要收集、整理的基础前端类文章，包括JS、jQuery和CSS等Web开发所需的基础的文章总结', '1', 'fa fa-css3', '1', '2018-01-14 21:34:54', '2018-07-25 17:57:50');
INSERT INTO `biz_category` VALUES ('2', '0', '后端技术', '网站中记录的后端类文章，包括Java、SSM、MySQL和其他在日常工作学习中所用的后端技术', '2', 'fa fa-coffee', '1', '2018-01-14 21:34:57', '2018-01-14 21:34:57');
INSERT INTO `biz_category` VALUES ('3', '0', '其他文章', '记录网站建设以及日常工作、学习中的闲言碎语', '4', 'fa fa-folder-open-o', '1', '2018-01-20 22:28:03', '2018-08-02 11:20:47');
INSERT INTO `biz_category` VALUES ('4', '0', '生活记', '记录个人生活等文章', '3', null, '1', '2018-08-02 11:20:26', '2018-08-02 11:21:01');

-- ----------------------------
-- Table structure for `biz_comment`
-- ----------------------------
DROP TABLE IF EXISTS `biz_comment`;
CREATE TABLE `biz_comment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(20) DEFAULT NULL COMMENT '被评论的文章或者页面的ID(-1:留言板)',
  `user_id` varchar(20) DEFAULT NULL COMMENT '评论人的ID',
  `pid` int(20) unsigned DEFAULT NULL COMMENT '父级评论的id',
  `qq` varchar(13) DEFAULT NULL COMMENT '评论人的QQ（未登录用户）',
  `nickname` varchar(13) DEFAULT NULL COMMENT '评论人的昵称（未登录用户）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '评论人的头像地址',
  `email` varchar(100) DEFAULT NULL COMMENT '评论人的邮箱地址（未登录用户）',
  `url` varchar(200) DEFAULT NULL COMMENT '评论人的网站地址（未登录用户）',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论的状态',
  `ip` varchar(64) DEFAULT NULL COMMENT '评论时的ip',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '评论时的地址',
  `os` varchar(64) DEFAULT NULL COMMENT '评论时的系统类型',
  `os_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的系统的简称',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `browser_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的浏览器的简称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论的内容',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注（审核不通过时添加）',
  `support` int(10) unsigned DEFAULT '0' COMMENT '支持（赞）',
  `oppose` int(10) unsigned DEFAULT '0' COMMENT '反对（踩）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_comment
-- ----------------------------
INSERT INTO `biz_comment` VALUES ('1', '1', null, null, '523179414', '郑其锋', 'http://q1.qlogo.cn/g?b=qq&nk=523179414&s=100', '', null, '1', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, '<p>测试评论</p>', null, '0', '0', '2018-09-13 23:30:56', '2018-09-13 23:30:56');
INSERT INTO `biz_comment` VALUES ('2', '1', '1', '1', null, '郑其锋', 'http://cdn.nbclass.com/blog/img/person.jpg', '888@qq.com', null, '1', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, '<p>测试回复评论~</p>\r\n', null, '0', '0', '2018-09-13 23:31:37', '2018-09-13 23:31:37');
INSERT INTO `biz_comment` VALUES ('3', '1', null, null, '123456', '腾讯视频', 'http://q1.qlogo.cn/g?b=qq&nk=123456&s=100', '', null, '0', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, '<p>第三方</p>', null, '0', '0', '2018-09-20 00:52:21', '2018-09-20 00:52:21');
INSERT INTO `biz_comment` VALUES ('4', '-1', null, null, '12345678', '腾讯视频', 'http://q1.qlogo.cn/g?b=qq&nk=12345678&s=100', '', null, '0', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, '<p>士大夫</p>', null, '0', '0', '2018-09-20 00:52:37', '2018-09-20 00:52:37');

-- ----------------------------
-- Table structure for `biz_link`
-- ----------------------------
DROP TABLE IF EXISTS `biz_link`;
CREATE TABLE `biz_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名',
  `url` varchar(200) NOT NULL COMMENT '链接地址',
  `description` varchar(255) DEFAULT NULL COMMENT '链接介绍',
  `img` varchar(255) DEFAULT NULL COMMENT '友链图片地址',
  `email` varchar(100) DEFAULT NULL COMMENT '友链站长邮箱',
  `qq` varchar(50) DEFAULT NULL COMMENT '友链站长qq',
  `status` int(1) unsigned DEFAULT NULL COMMENT '状态',
  `origin` int(1) DEFAULT NULL COMMENT '1-管理员添加 2-自助申请',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_link
-- ----------------------------
INSERT INTO `biz_link` VALUES ('1', '智博客', 'http://www.nbclass.com', 'Just do it！', null, '523179414@qq.com', '523179414', '1', '1', '', '2018-09-13 23:24:25', '2018-09-13 23:24:25');

-- ----------------------------
-- Table structure for `biz_love`
-- ----------------------------
DROP TABLE IF EXISTS `biz_love`;
CREATE TABLE `biz_love` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `biz_id` int(11) unsigned NOT NULL COMMENT '业务ID',
  `biz_type` tinyint(1) DEFAULT NULL COMMENT '业务类型：1.文章，2.评论',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_love
-- ----------------------------
INSERT INTO `biz_love` VALUES ('1', '1', '1', null, '0:0:0:0:0:0:0:1', '1', '2018-09-13 23:31:53', '2018-09-13 23:31:53');

-- ----------------------------
-- Table structure for `biz_site_info`
-- ----------------------------
DROP TABLE IF EXISTS `biz_site_info`;
CREATE TABLE `biz_site_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `site_pic` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_site_info
-- ----------------------------
INSERT INTO `biz_site_info` VALUES ('1', 'NBCLASS | 智博客', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人项目经验，共同学习，少走弯路。Just do it！', 'http://cdn.nbclass.com/blog/img/person.jpg', '2018-07-22 22:13:26', '2018-07-22 22:13:29');

-- ----------------------------
-- Table structure for `biz_tags`
-- ----------------------------
DROP TABLE IF EXISTS `biz_tags`;
CREATE TABLE `biz_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '书签名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_tags
-- ----------------------------
INSERT INTO `biz_tags` VALUES ('1', 'Linux', '111', '2018-01-14 21:35:31', '2018-07-25 18:53:34');
INSERT INTO `biz_tags` VALUES ('2', 'Java', '222', '2018-01-14 21:35:45', '2018-07-25 18:53:38');
INSERT INTO `biz_tags` VALUES ('3', 'Spring', null, '2018-01-14 21:35:52', '2018-01-14 21:35:52');
INSERT INTO `biz_tags` VALUES ('4', 'Spring Boot', null, '2018-01-14 21:36:01', '2018-01-14 21:36:01');
INSERT INTO `biz_tags` VALUES ('5', '其他', '其他', '2018-07-25 18:55:06', '2018-07-25 18:55:06');

-- ----------------------------
-- Table structure for `biz_theme`
-- ----------------------------
DROP TABLE IF EXISTS `biz_theme`;
CREATE TABLE `biz_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `name` varchar(50) DEFAULT NULL COMMENT '主题名（路径前缀）',
  `description` varchar(255) DEFAULT NULL COMMENT '主题描述',
  `img` varchar(255) DEFAULT NULL COMMENT '主题预览图url',
  `status` tinyint(1) DEFAULT NULL COMMENT '0-未启用 1-启用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_theme
-- ----------------------------
INSERT INTO `biz_theme` VALUES ('1', 'zblog', 'zblog官方主题', 'https://gitee.com/supperzh/zb-blog/raw/master/docs/img/blog-index.png?v=1.0', '1', '2018-09-19 15:50:45', '2018-09-19 15:50:45');
INSERT INTO `biz_theme` VALUES ('2', 'lblogone', 'lblogone', 'https://gitee.com/supperzh/zb-blog/raw/master/docs/img/lblogone.png?v=1.0', '0', '2018-09-19 16:35:02', '2018-09-19 16:35:02');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  `name` varchar(100) NOT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '权限访问路径',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级权限id',
  `type` int(1) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `order_num` int(3) DEFAULT '0' COMMENT '排序',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '1', '工作台', '工作台', '/workdest', 'workdest', '0', '1', '1', 'fa fa-home', '1', '2017-09-27 21:22:02', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('2', '2', '权限管理', '权限管理', null, null, '0', '0', '4', 'fa fa-th-list', '1', '2017-07-13 15:04:42', '2018-09-13 23:49:48');
INSERT INTO `permission` VALUES ('3', '201', '用户管理', '用户管理', '/users', 'users', '2', '1', '1', 'fa fa-circle-o', '1', '2017-07-13 15:05:47', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('4', '20101', '列表查询', '用户列表查询', '/user/list', 'user:list', '3', '2', '0', null, '1', '2017-07-13 15:09:24', '2017-10-09 05:38:29');
INSERT INTO `permission` VALUES ('5', '20102', '新增', '新增用户', '/user/add', 'user:add', '3', '2', '0', null, '1', '2017-07-13 15:06:50', '2018-02-28 17:58:46');
INSERT INTO `permission` VALUES ('6', '20103', '编辑', '编辑用户', '/user/edit', 'user:edit', '3', '2', '0', null, '1', '2017-07-13 15:08:03', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('7', '20104', '删除', '删除用户', '/user/delete', 'user:delete', '3', '2', '0', null, '1', '2017-07-13 15:08:42', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('8', '20105', '批量删除', '批量删除用户', '/user/batch/delete', 'user:batchDelete', '3', '2', '0', '', '1', '2018-07-11 01:53:09', '2018-07-11 01:53:09');
INSERT INTO `permission` VALUES ('9', '20106', '分配角色', '分配角色', '/user/assign/role', 'user:assignRole', '3', '2', '0', null, '1', '2017-07-13 15:09:24', '2017-10-09 05:38:29');
INSERT INTO `permission` VALUES ('10', '202', '角色管理', '角色管理', '/roles', 'roles', '2', '1', '2', 'fa fa-circle-o', '1', '2017-07-17 14:39:09', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('11', '20201', '列表查询', '角色列表查询', '/role/list', 'role:list', '10', '2', '0', null, '1', '2017-10-10 15:31:36', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('12', '20202', '新增', '新增角色', '/role/add', 'role:add', '10', '2', '0', null, '1', '2017-07-17 14:39:46', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('13', '20203', '编辑', '编辑角色', '/role/edit', 'role:edit', '10', '2', '0', null, '1', '2017-07-17 14:40:15', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('14', '20204', '删除', '删除角色', '/role/delete', 'role:delete', '10', '2', '0', null, '1', '2017-07-17 14:40:57', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('15', '20205', '批量删除', '批量删除角色', '/role/batch/delete', 'role:batchDelete', '10', '2', '0', '', '1', '2018-07-10 22:20:43', '2018-07-10 22:20:43');
INSERT INTO `permission` VALUES ('16', '20206', '分配权限', '分配权限', '/role/assign/permission', 'role:assignPerms', '10', '2', '0', null, '1', '2017-09-26 07:33:05', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('17', '203', '资源管理', '资源管理', '/permissions', 'permissions', '2', '1', '3', 'fa fa-circle-o', '1', '2017-09-26 07:33:51', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('18', '20301', '列表查询', '资源列表', '/permission/list', 'permission:list', '17', '2', '0', null, '1', '2018-07-12 16:25:28', '2018-07-12 16:25:33');
INSERT INTO `permission` VALUES ('19', '20302', '新增', '新增资源', '/permission/add', 'permission:add', '17', '2', '0', null, '1', '2017-09-26 08:06:58', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('20', '20303', '编辑', '编辑资源', '/permission/edit', 'permission:edit', '17', '2', '0', null, '1', '2017-09-27 21:29:04', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('21', '20304', '删除', '删除资源', '/permission/delete', 'permission:delete', '17', '2', '0', null, '1', '2017-09-27 21:29:50', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES ('22', '3', '运维管理', '运维管理', null, null, '0', '0', '7', 'fa fa-th-list', '1', '2018-07-06 15:19:26', '2018-09-12 17:08:55');
INSERT INTO `permission` VALUES ('23', '301', '数据监控', '数据监控', '/database/monitoring', 'database', '22', '1', '1', 'fa fa-circle-o', '1', '2018-07-06 15:19:55', '2018-07-06 15:19:55');
INSERT INTO `permission` VALUES ('24', '4', '系统管理', '系统管理', null, null, '0', '0', '5', 'fa fa-th-list', '1', '2018-07-06 15:20:38', '2018-07-24 15:42:28');
INSERT INTO `permission` VALUES ('25', '401', '在线用户', '在线用户', '/online/users', 'onlineUsers', '24', '1', '1', 'fa fa-circle-o', '1', '2018-07-06 15:21:00', '2018-07-24 14:58:22');
INSERT INTO `permission` VALUES ('32', '1000001992372345', '在线用户查询', '在线用户查询', '/online/user/list', 'onlineUser:list', '25', '2', '0', '', '1', '2018-07-24 15:02:23', '2018-07-24 15:02:23');
INSERT INTO `permission` VALUES ('33', '1000002083579304', '踢出用户', '踢出用户', '/online/user/kickout', 'onlineUser:kickout', '25', '2', '0', '', '1', '2018-07-24 15:03:16', '2018-07-24 15:03:16');
INSERT INTO `permission` VALUES ('34', '1000000171409776', '批量踢出', '批量踢出', '/online/user/batch/kickout', 'onlineUser:batchKickout', '25', '2', '0', '', '1', '2018-07-24 15:04:09', '2018-07-24 15:04:09');
INSERT INTO `permission` VALUES ('35', '1000000863853891', '网站管理', '网站管理', null, null, '0', '0', '3', 'fa fa-th-list', '1', '2018-07-24 15:44:23', '2018-09-13 23:50:02');
INSERT INTO `permission` VALUES ('36', '1000001264798222', '基础信息', '基础设置', '/siteinfo', 'siteinfo', '35', '1', '1', 'fa fa-circle-o', '1', '2018-07-24 15:48:13', '2018-07-24 17:43:39');
INSERT INTO `permission` VALUES ('37', '1000000432183856', '保存', '基础设置-保存', '/siteinfo/save', 'siteinfo:save', '36', '2', '0', '', '1', '2018-07-24 15:49:12', '2018-07-24 15:49:12');
INSERT INTO `permission` VALUES ('38', '1000001792841328', '系统公告', '系统公告', '/notifies', 'notifies', '35', '1', '2', 'fa fa-circle-o', '0', '2018-07-24 23:40:45', '2018-09-13 12:34:18');
INSERT INTO `permission` VALUES ('39', '1000001351219537', '查询', '系统公告-查询', '/notify/list', 'notify:list', '38', '2', '0', '', '0', '2018-07-24 23:41:30', '2018-09-13 12:33:19');
INSERT INTO `permission` VALUES ('40', '1000000791685519', '新增', '系统公告-新增', '/notify/add', 'notify:add', '38', '2', '0', '', '0', '2018-07-24 23:42:20', '2018-09-13 12:33:26');
INSERT INTO `permission` VALUES ('42', '1000001531648485', '编辑', '系统公告-编辑', '/notify/edit', 'notify:edit', '38', '2', '0', '', '0', '2018-07-24 23:44:39', '2018-09-13 12:33:52');
INSERT INTO `permission` VALUES ('43', '1000001548165826', '删除', '系统公告-删除', '/notify/delete', 'notify:delete', '38', '2', '0', '', '0', '2018-07-24 23:45:27', '2018-09-13 12:33:57');
INSERT INTO `permission` VALUES ('44', '1000001530229707', '批量删除', '批量删除公告', '/notify/batch/delete', 'notify:batchDelete', '38', '2', '0', '', '0', '2018-07-24 23:46:25', '2018-09-13 12:34:02');
INSERT INTO `permission` VALUES ('45', '1000000237721285', '友链管理', '友情链接', '/links', 'links', '35', '1', '3', 'fa fa-circle-o', '1', '2018-07-25 11:05:49', '2018-07-25 11:07:03');
INSERT INTO `permission` VALUES ('46', '1000001238193773', '查询', '友链-查询', '/link/list', 'link:list', '45', '2', '0', '', '1', '2018-07-25 11:06:44', '2018-07-25 11:06:44');
INSERT INTO `permission` VALUES ('47', '1000001305005793', '新增', '友链-新增', '/link/add', 'link:add', '45', '2', '0', '', '1', '2018-07-25 11:07:46', '2018-07-25 11:07:46');
INSERT INTO `permission` VALUES ('48', '1000001679037501', '编辑', '友链-编辑', '/link/edit', 'link:edit', '45', '2', '0', '', '1', '2018-07-25 11:08:21', '2018-07-25 11:08:21');
INSERT INTO `permission` VALUES ('49', '1000001011730177', '删除', '友链-删除', '/link/delete', 'link:delete', '45', '2', '0', '', '1', '2018-07-25 11:08:53', '2018-07-25 11:08:53');
INSERT INTO `permission` VALUES ('50', '1000001312374743', '批量删除', '友链-批量删除', '/link/batch/delete', 'link:batchDelete', '45', '2', '0', '', '1', '2018-07-25 11:09:40', '2018-07-25 11:09:40');
INSERT INTO `permission` VALUES ('51', '1000001507480127', '审核', '友链-审核', '/link/audit', 'link:audit', '45', '2', '0', '', '1', '2018-07-25 11:42:28', '2018-07-25 11:42:28');
INSERT INTO `permission` VALUES ('52', '1000000602555213', '文章管理', '文章管理', null, null, '0', '0', '2', 'fa fa-th-list', '1', '2018-07-25 17:43:12', '2018-09-13 23:49:55');
INSERT INTO `permission` VALUES ('53', '1000001729104792', '分类管理', '分类管理', '/categories', 'categories', '52', '1', '3', 'fa fa-circle-o', '1', '2018-07-25 17:43:50', '2018-07-29 21:46:52');
INSERT INTO `permission` VALUES ('54', '1000000015836901', '新增', '新增分类', '/category/add', 'category:add', '53', '2', '0', '', '1', '2018-07-25 17:44:28', '2018-07-25 17:44:28');
INSERT INTO `permission` VALUES ('55', '1000001439189167', '编辑', '编辑分类', '/category/edit', 'category:edit', '53', '2', '0', '', '1', '2018-07-25 17:44:52', '2018-07-25 17:44:52');
INSERT INTO `permission` VALUES ('56', '1000001647995753', '删除', '删除分类', '/category/delete', 'category:delete', '53', '2', '0', '', '1', '2018-07-25 17:45:28', '2018-07-25 17:45:28');
INSERT INTO `permission` VALUES ('58', '1000000841419865', '查询', '分类查询', '/category/list', 'category:list', '53', '2', '0', '', '1', '2018-07-25 17:49:43', '2018-07-25 17:49:43');
INSERT INTO `permission` VALUES ('59', '1000000976625379', '标签管理', '标签管理', '/tags', 'tags', '52', '1', '4', 'fa fa-circle-o', '1', '2018-07-25 18:50:47', '2018-07-29 21:47:01');
INSERT INTO `permission` VALUES ('60', '1000002127467055', '查询', '查询标签列表', '/tag/list', 'tag:list', '59', '2', '0', '', '1', '2018-07-25 18:51:20', '2018-07-25 18:51:20');
INSERT INTO `permission` VALUES ('61', '1000001458372033', '新增', '新增标签', '/tag/add', 'tag:add', '59', '2', '0', '', '1', '2018-07-25 18:51:42', '2018-07-25 18:51:42');
INSERT INTO `permission` VALUES ('62', '1000001832967209', '编辑', '编辑标签', '/tag/edit', 'tag:edit', '59', '2', '0', '', '1', '2018-07-25 18:52:17', '2018-07-25 18:52:17');
INSERT INTO `permission` VALUES ('63', '1000000754923037', '删除', '删除标签', '/tag/delete', 'tag:delete', '59', '2', '0', '', '1', '2018-07-25 18:52:40', '2018-07-25 18:52:40');
INSERT INTO `permission` VALUES ('64', '1000000759248744', '批量删除', '批量删除标签', '/tag/batch/delete', 'tag:batchDelete', '59', '2', '0', '', '1', '2018-07-25 18:53:14', '2018-07-25 18:53:14');
INSERT INTO `permission` VALUES ('65', '1000001038456544', '文章列表', '文章列表', '/articles', 'articles', '52', '1', '2', 'fa fa-circle-o', '1', '2018-07-29 20:20:23', '2018-07-29 21:46:44');
INSERT INTO `permission` VALUES ('66', '1000000686545782', '查询', '查询文章', '/article/list', 'article:list', '65', '2', '0', '', '1', '2018-07-29 20:20:54', '2018-07-29 20:20:54');
INSERT INTO `permission` VALUES ('67', '1000001642272578', '新增', '新增文章', '/article/add', 'article:add', '65', '2', '0', '', '1', '2018-07-29 20:21:21', '2018-07-29 20:21:21');
INSERT INTO `permission` VALUES ('68', '1000000804049447', '编辑', '编辑文章', '/article/edit', 'article:edit', '65', '2', '0', '', '1', '2018-07-29 20:21:50', '2018-07-29 20:21:50');
INSERT INTO `permission` VALUES ('69', '1000000488864959', '删除', '删除文章', '/article/delete', 'article:delete', '65', '2', '0', '', '1', '2018-07-29 20:23:27', '2018-07-29 20:23:27');
INSERT INTO `permission` VALUES ('70', '1000000512435306', '批量删除', '批量删除文章', '/article/batch/delete', 'article:batchDelete', '65', '2', '0', '', '1', '2018-07-29 20:23:49', '2018-07-29 20:23:49');
INSERT INTO `permission` VALUES ('71', '1000000899091444', '发布文章', '写文章', '/article/add', 'article:add', '52', '1', '1', 'fa fa-circle-o', '1', '2018-07-29 20:39:49', '2018-07-29 21:46:33');
INSERT INTO `permission` VALUES ('72', '1000000224901858', '评论管理', '评论管理', '/comments', 'comments', '35', '1', '4', 'fa fa-circle-o', '1', '2018-08-10 09:44:41', '2018-09-19 15:44:13');
INSERT INTO `permission` VALUES ('73', '1000001579533936', '查询', '查询', '/comment/list', 'comment:list', '72', '2', '0', '', '1', '2018-08-10 09:46:54', '2018-08-10 09:46:54');
INSERT INTO `permission` VALUES ('74', '1000000663968031', '审核', '审核评论', '/comment/audit', 'comment:audit', '72', '2', '0', '', '1', '2018-08-10 09:57:11', '2018-08-10 09:57:11');
INSERT INTO `permission` VALUES ('75', '1000000322655547', '回复', '回复评论', '/comment/reply', 'comment:audit', '72', '2', '0', '', '1', '2018-08-10 10:04:28', '2018-08-10 10:04:28');
INSERT INTO `permission` VALUES ('76', '1000001419287014', '删除', '删除评论', '/comment/delete', 'comment:delete', '72', '2', '0', '', '1', '2018-08-10 10:06:27', '2018-08-10 10:06:27');
INSERT INTO `permission` VALUES ('77', '1000002075182223', '批量删除', '批量删除评论', '/comment/batch/delete', 'comment:batchDelete', '72', '2', '0', '', '1', '2018-08-10 10:07:57', '2018-08-10 10:07:57');
INSERT INTO `permission` VALUES ('78', '1000000587822241', '上传管理', '上传管理', '', '', '0', '0', '6', 'fa fa-th-list', '1', '2018-09-12 17:08:41', '2018-09-12 17:08:41');
INSERT INTO `permission` VALUES ('79', '1000000493635111', '云存储配置', '云存储配置', '/upload/config', 'upload:config', '78', '1', '1', 'fa fa-circle-o', '1', '2018-09-12 17:10:09', '2018-09-12 17:10:09');
INSERT INTO `permission` VALUES ('80', '1000000318760332', '保存', '保存云存储配置', '/upload/saveConfig', 'upload:saveConfig', '79', '2', '0', '', '1', '2018-09-12 17:10:42', '2018-09-12 17:10:42');
INSERT INTO `permission` VALUES ('81', '1000000919723998', '主题管理', '主题管理', '/themes', 'themes', '35', '1', '2', 'fa fa-circle-o', '1', '2018-09-19 15:43:50', '2018-09-19 15:43:50');
INSERT INTO `permission` VALUES ('82', '1000000784272506', '查询', '主题列表', '/theme/list', 'theme:list', '81', '2', '0', '', '1', '2018-09-19 15:44:50', '2018-09-19 15:44:50');
INSERT INTO `permission` VALUES ('83', '1000000215201942', '新增', '新增主题', '/theme/add', 'theme:add', '81', '2', '0', '', '1', '2018-09-19 15:45:34', '2018-09-19 15:45:34');
INSERT INTO `permission` VALUES ('84', '1000001065007557', '启用', '启用主题', '/theme/use', 'theme:use', '81', '2', '0', '', '1', '2018-09-19 15:46:28', '2018-09-19 15:46:28');
INSERT INTO `permission` VALUES ('85', '1000000431577803', '删除', '删除主题', '/theme/delete', 'theme:delete', '81', '2', '0', '', '1', '2018-09-19 15:48:06', '2018-09-19 15:48:06');
INSERT INTO `permission` VALUES ('86', '1000000207002458', '批量删除', '批量删除主题', 'theme/batch/delete', 'theme:batchDelete', '81', '2', '0', '', '1', '2018-09-19 15:48:39', '2018-09-19 15:48:39');
INSERT INTO `permission` VALUES ('87', '1000002051091207', '编辑', '编辑主题', '/theme/edit', 'theme:edit', '81', '2', '0', '', '1', '2018-09-19 15:54:34', '2018-09-19 15:54:34');
INSERT INTO `permission` VALUES ('88', '5.011629010561508e15', '批量推送', '批量推送百度', '/article/batch/push', 'article:batchPush', '65', '2', '0', '', '1', '2018-10-28 15:15:00', '2018-10-28 15:15:00');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '超级管理员', '超级管理员', '1', '2017-06-28 20:30:05', '2017-06-28 20:30:10');
INSERT INTO `role` VALUES ('2', '2', '管理员', '管理员', '1', '2017-06-30 23:35:19', '2017-10-11 09:32:33');
INSERT INTO `role` VALUES ('3', '3', '普通用户', '普通用户', '1', '2017-06-30 23:35:44', '2018-07-13 11:44:06');
INSERT INTO `role` VALUES ('4', '4', '数据库管理员', '数据库管理员', '1', '2017-07-12 11:50:22', '2017-10-09 17:38:02');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1917 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1843', '1', '1');
INSERT INTO `role_permission` VALUES ('1844', '1', '1000000602555213');
INSERT INTO `role_permission` VALUES ('1845', '1', '1000000899091444');
INSERT INTO `role_permission` VALUES ('1846', '1', '1000001038456544');
INSERT INTO `role_permission` VALUES ('1847', '1', '1000000686545782');
INSERT INTO `role_permission` VALUES ('1848', '1', '1000001642272578');
INSERT INTO `role_permission` VALUES ('1849', '1', '1000000804049447');
INSERT INTO `role_permission` VALUES ('1850', '1', '1000000488864959');
INSERT INTO `role_permission` VALUES ('1851', '1', '1000000512435306');
INSERT INTO `role_permission` VALUES ('1852', '1', '5.011629010561508e15');
INSERT INTO `role_permission` VALUES ('1853', '1', '1000001729104792');
INSERT INTO `role_permission` VALUES ('1854', '1', '1000000015836901');
INSERT INTO `role_permission` VALUES ('1855', '1', '1000001439189167');
INSERT INTO `role_permission` VALUES ('1856', '1', '1000001647995753');
INSERT INTO `role_permission` VALUES ('1857', '1', '1000000841419865');
INSERT INTO `role_permission` VALUES ('1858', '1', '1000000976625379');
INSERT INTO `role_permission` VALUES ('1859', '1', '1000002127467055');
INSERT INTO `role_permission` VALUES ('1860', '1', '1000001458372033');
INSERT INTO `role_permission` VALUES ('1861', '1', '1000001832967209');
INSERT INTO `role_permission` VALUES ('1862', '1', '1000000754923037');
INSERT INTO `role_permission` VALUES ('1863', '1', '1000000759248744');
INSERT INTO `role_permission` VALUES ('1864', '1', '1000000863853891');
INSERT INTO `role_permission` VALUES ('1865', '1', '1000001264798222');
INSERT INTO `role_permission` VALUES ('1866', '1', '1000000432183856');
INSERT INTO `role_permission` VALUES ('1867', '1', '1000000919723998');
INSERT INTO `role_permission` VALUES ('1868', '1', '1000000784272506');
INSERT INTO `role_permission` VALUES ('1869', '1', '1000000215201942');
INSERT INTO `role_permission` VALUES ('1870', '1', '1000001065007557');
INSERT INTO `role_permission` VALUES ('1871', '1', '1000000431577803');
INSERT INTO `role_permission` VALUES ('1872', '1', '1000000207002458');
INSERT INTO `role_permission` VALUES ('1873', '1', '1000002051091207');
INSERT INTO `role_permission` VALUES ('1874', '1', '1000000237721285');
INSERT INTO `role_permission` VALUES ('1875', '1', '1000001238193773');
INSERT INTO `role_permission` VALUES ('1876', '1', '1000001305005793');
INSERT INTO `role_permission` VALUES ('1877', '1', '1000001679037501');
INSERT INTO `role_permission` VALUES ('1878', '1', '1000001011730177');
INSERT INTO `role_permission` VALUES ('1879', '1', '1000001312374743');
INSERT INTO `role_permission` VALUES ('1880', '1', '1000001507480127');
INSERT INTO `role_permission` VALUES ('1881', '1', '1000000224901858');
INSERT INTO `role_permission` VALUES ('1882', '1', '1000001579533936');
INSERT INTO `role_permission` VALUES ('1883', '1', '1000000663968031');
INSERT INTO `role_permission` VALUES ('1884', '1', '1000000322655547');
INSERT INTO `role_permission` VALUES ('1885', '1', '1000001419287014');
INSERT INTO `role_permission` VALUES ('1886', '1', '1000002075182223');
INSERT INTO `role_permission` VALUES ('1887', '1', '2');
INSERT INTO `role_permission` VALUES ('1888', '1', '201');
INSERT INTO `role_permission` VALUES ('1889', '1', '20101');
INSERT INTO `role_permission` VALUES ('1890', '1', '20102');
INSERT INTO `role_permission` VALUES ('1891', '1', '20103');
INSERT INTO `role_permission` VALUES ('1892', '1', '20104');
INSERT INTO `role_permission` VALUES ('1893', '1', '20105');
INSERT INTO `role_permission` VALUES ('1894', '1', '20106');
INSERT INTO `role_permission` VALUES ('1895', '1', '202');
INSERT INTO `role_permission` VALUES ('1896', '1', '20201');
INSERT INTO `role_permission` VALUES ('1897', '1', '20202');
INSERT INTO `role_permission` VALUES ('1898', '1', '20203');
INSERT INTO `role_permission` VALUES ('1899', '1', '20204');
INSERT INTO `role_permission` VALUES ('1900', '1', '20205');
INSERT INTO `role_permission` VALUES ('1901', '1', '20206');
INSERT INTO `role_permission` VALUES ('1902', '1', '203');
INSERT INTO `role_permission` VALUES ('1903', '1', '20301');
INSERT INTO `role_permission` VALUES ('1904', '1', '20302');
INSERT INTO `role_permission` VALUES ('1905', '1', '20303');
INSERT INTO `role_permission` VALUES ('1906', '1', '20304');
INSERT INTO `role_permission` VALUES ('1907', '1', '4');
INSERT INTO `role_permission` VALUES ('1908', '1', '401');
INSERT INTO `role_permission` VALUES ('1909', '1', '1000001992372345');
INSERT INTO `role_permission` VALUES ('1910', '1', '1000002083579304');
INSERT INTO `role_permission` VALUES ('1911', '1', '1000000171409776');
INSERT INTO `role_permission` VALUES ('1912', '1', '1000000587822241');
INSERT INTO `role_permission` VALUES ('1913', '1', '1000000493635111');
INSERT INTO `role_permission` VALUES ('1914', '1', '1000000318760332');
INSERT INTO `role_permission` VALUES ('1915', '1', '3');
INSERT INTO `role_permission` VALUES ('1916', '1', '301');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `sys_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`sys_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG', '{\"type\":1,\"qiniuDomain\":\"http://cdn.nbclass.com\",\"qiniuPrefix\":\"img/blog\",\"qiniuAccessKey\":\"dGKQzLej_0__Xd9kElc7IK-FLWwyGPBBXFT-hBka\",\"qiniuSecretKey\":\"8sZZbdmEDS4yVx0DCj7lGxIFJqaPc-y-_-DD1bkk\",\"qiniuBucketName\":\"blog\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\",\"qcloudRegion\":\"\"}', '1', '云存储配置信息');
INSERT INTO `sys_config` VALUES ('5', 'SITE_NAME', '智博客', '1', '网站名称');
INSERT INTO `sys_config` VALUES ('6', 'SITE_KWD', '智博客,zblog,zb-blog,个人博客，开源博客，shiro,zb-shiro,权限管理项目', '1', '网站关键字');
INSERT INTO `sys_config` VALUES ('7', 'SITE_DESC', '智博客,zblog,zb-blog,个人博客，开源博客，shiro,zb-shiro,权限管理项目', '1', '网站描述');
INSERT INTO `sys_config` VALUES ('8', 'SITE_PERSON_PIC', 'http://cdn.nbclass.com/blog/img/person.jpg', '1', '站长头像');
INSERT INTO `sys_config` VALUES ('9', 'SITE_PERSON_NAME', 'NBCLASS | 智博客', '1', '站长名称');
INSERT INTO `sys_config` VALUES ('10', 'SITE_PERSON_DESC', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人项目经验，共同学习，少走弯路。Just do it！', '1', '站长描述');
INSERT INTO `sys_config` VALUES ('11', 'BAIDU_PUSH_URL', 'http://data.zz.baidu.com/urls?site=www.nbclass.com&token=asdasd324234234', '1', '百度推送地址');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL,
  `salt` varchar(128) DEFAULT NULL COMMENT '加密盐值',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `sex` int(255) DEFAULT NULL COMMENT '年龄：1男2女',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `img` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `status` int(1) NOT NULL COMMENT '用户状态：1有效; 2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'admin', '872359cc44c637cc73b7cd55c06d95e4', '8cd50474d2a3c1e88298e91df8bf6f1c', '郑其锋', '888@qq.com', '18788889999', '1', '22', 'http://cdn.nbclass.com/blog/img/person.jpg', '1', '2018-05-23 21:22:06', '2018-07-17 23:04:46', '2018-09-20 00:49:28');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
