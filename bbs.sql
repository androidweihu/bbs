/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-03 22:52:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add user', '6', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can change user', '6', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete user', '6', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can view user', '6', 'view_userinfo');
INSERT INTO `auth_permission` VALUES ('25', 'Can add article', '7', 'add_article');
INSERT INTO `auth_permission` VALUES ('26', 'Can change article', '7', 'change_article');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete article', '7', 'delete_article');
INSERT INTO `auth_permission` VALUES ('28', 'Can view article', '7', 'view_article');
INSERT INTO `auth_permission` VALUES ('29', 'Can add article2 tag', '8', 'add_article2tag');
INSERT INTO `auth_permission` VALUES ('30', 'Can change article2 tag', '8', 'change_article2tag');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete article2 tag', '8', 'delete_article2tag');
INSERT INTO `auth_permission` VALUES ('32', 'Can view article2 tag', '8', 'view_article2tag');
INSERT INTO `auth_permission` VALUES ('33', 'Can add article detail', '9', 'add_articledetail');
INSERT INTO `auth_permission` VALUES ('34', 'Can change article detail', '9', 'change_articledetail');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete article detail', '9', 'delete_articledetail');
INSERT INTO `auth_permission` VALUES ('36', 'Can view article detail', '9', 'view_articledetail');
INSERT INTO `auth_permission` VALUES ('37', 'Can add article up down', '10', 'add_articleupdown');
INSERT INTO `auth_permission` VALUES ('38', 'Can change article up down', '10', 'change_articleupdown');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete article up down', '10', 'delete_articleupdown');
INSERT INTO `auth_permission` VALUES ('40', 'Can view article up down', '10', 'view_articleupdown');
INSERT INTO `auth_permission` VALUES ('41', 'Can add blog', '11', 'add_blog');
INSERT INTO `auth_permission` VALUES ('42', 'Can change blog', '11', 'change_blog');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete blog', '11', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('44', 'Can view blog', '11', 'view_blog');
INSERT INTO `auth_permission` VALUES ('45', 'Can add category', '12', 'add_category');
INSERT INTO `auth_permission` VALUES ('46', 'Can change category', '12', 'change_category');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete category', '12', 'delete_category');
INSERT INTO `auth_permission` VALUES ('48', 'Can view category', '12', 'view_category');
INSERT INTO `auth_permission` VALUES ('49', 'Can add comment', '13', 'add_comment');
INSERT INTO `auth_permission` VALUES ('50', 'Can change comment', '13', 'change_comment');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete comment', '13', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('52', 'Can view comment', '13', 'view_comment');
INSERT INTO `auth_permission` VALUES ('53', 'Can add tag', '14', 'add_tag');
INSERT INTO `auth_permission` VALUES ('54', 'Can change tag', '14', 'change_tag');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete tag', '14', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('56', 'Can view tag', '14', 'view_tag');

-- ----------------------------
-- Table structure for `blog_article`
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `down_count` int(11) NOT NULL,
  `up_count` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_nid` (`category_id`),
  KEY `blog_article_user_id_5beb0cc1_fk_blog_userinfo_nid` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_nid` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`nid`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_blog_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', '关于java socket中的read方法阻塞问题', '前几天一个有个同学咨询我关于java socket编程的一些问题，因为我这个同学今年刚从.NET转到java 对于java的IO体系不是很清楚,在给他解答一些问题时我自己也总结了比较容易出错的问题。', '2018-12-02 14:12:00.000000', '1', '1', '0', '0', '0');
INSERT INTO `blog_article` VALUES ('2', '炮学无师自通', 'PUA现在应该已不是新名词了。它就是一个专门教人如何泡妞、并控制女性，并让女性为他付出金钱、丧失理智的一种控制术，最高成就是让女性为他自杀。而且，它的宣传就是，PUA合适那些既不帅、又没钱的男人。', '2018-12-02 14:21:00.000000', '2', '1', '0', '0', '0');
INSERT INTO `blog_article` VALUES ('3', '再婚后我成了他们家的提款机，太累了', '作为已婚女人，在处理家庭关系时，需要具备一定的智慧，尤其是和公婆相处，既不能太过疏远，也不能走的过近。很多女人误以为，只要自己拿公婆当亲爹妈，公婆就会拿自己当亲闺女。实际上，这是错误的。任何时候，公婆就是公婆，儿媳就是儿媳，他们永远取代不了你的亲爹亲妈，你也一样充当不了亲闺女的角色，因为你们原本就不是血缘关系。', '2018-12-02 14:23:00.000000', '2', '1', '0', '0', '1');
INSERT INTO `blog_article` VALUES ('4', 'STL源码分析之迭代器', '前言 迭代器是将算法和容器两个独立的泛型进行调和的一个接口. 使我们不需要关系中间的转化是怎么样的就都能直接使用迭代器进行数据访问. 而迭代器最重要的就是对 和`operator `进行重载, 使它表现的像一个指针. 类型 迭代器根据移动特性和实施操作被分为5类 1. input iterator', '2018-12-11 14:04:00.000000', '1', '1', '1', '1', '2');

-- ----------------------------
-- Table structure for `blog_article2tag`
-- ----------------------------
DROP TABLE IF EXISTS `blog_article2tag`;
CREATE TABLE `blog_article2tag` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `blog_article2tag_article_id_tag_id_b0745f42_uniq` (`article_id`,`tag_id`),
  KEY `blog_article2tag_tag_id_389b9a96_fk_blog_tag_nid` (`tag_id`),
  CONSTRAINT `blog_article2tag_article_id_753a2b60_fk_blog_article_nid` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`nid`),
  CONSTRAINT `blog_article2tag_tag_id_389b9a96_fk_blog_tag_nid` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article2tag
-- ----------------------------
INSERT INTO `blog_article2tag` VALUES ('1', '1', '1');
INSERT INTO `blog_article2tag` VALUES ('6', '1', '2');
INSERT INTO `blog_article2tag` VALUES ('2', '2', '4');
INSERT INTO `blog_article2tag` VALUES ('3', '3', '3');
INSERT INTO `blog_article2tag` VALUES ('4', '4', '3');
INSERT INTO `blog_article2tag` VALUES ('5', '4', '4');

-- ----------------------------
-- Table structure for `blog_articledetail`
-- ----------------------------
DROP TABLE IF EXISTS `blog_articledetail`;
CREATE TABLE `blog_articledetail` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `article_id` (`article_id`),
  CONSTRAINT `blog_articledetail_article_id_56993a97_fk_blog_article_nid` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_articledetail
-- ----------------------------
INSERT INTO `blog_articledetail` VALUES ('1', '前言 迭代器是将算法和容器两个独立的泛型进行调和的一个接口. 使我们不需要关系中间的转化是怎么样的就都能直接使用迭代器进行数据访问. 而迭代器最重要的就是对 和`operator `进行重载, 使它表现的像一个指针. 类型 迭代器根据移动特性和实施操作被分为5类 1. input iterator', '1');
INSERT INTO `blog_articledetail` VALUES ('2', '本文提纲\r\n\r\n先热热身\r\n点云是啥\r\n你知道点云优缺点吗？\r\n点云库PCL：开发者的福音\r\nPCL安装指北\r\n炒鸡简单的PCL实践\r\n留个作业再走\r\n先热热身\r\n\r\n小白：hi，师兄，好久不见\r\n师兄：师妹好，上周单应矩阵作业做了吗？\r\n小白：嗯，做了，这个单应矩阵真的挺有意思的。作业之外，我发现了一个新技能。。。\r\n师兄：什么技能？\r\n小白：我发现很多网上流传的图片都可以用上次我学过的单应矩阵实现，你看这张图，我第一次看到还以为是真的\r\n\r\n\r\n现在知道这不就是我们上节课讲的单应矩阵的变换吗？\r\n果然我在网上找到了原图\r\n\r\n\r\n现在我也会用OpenCV里的单应函数做这样的图了~\r\n\r\n师兄：哈哈，厉害了，会学以致用了。话说回来，今天有啥想问的？\r\n小白：嗯，最近在看点云相关的，师兄要不给我扫扫盲吧？\r\n师兄：这个我也有些了解，就把我知道的给你说说吧\r\n小白：yeah，师兄最棒！\r\n\r\n点云是啥\r\n\r\n师兄：那我就当你是个小白吧，从点云的定义说起。点云的英文是“point cloud”，点云的意思和它的名字一样，就是一堆点的集合，看起来像是一坨“云”。\r\n小白：一坨。。。\r\n\r\n师兄：哦，一坨不太文雅，应该是像一片“云”一样。上面只是一种形象的说法，其实点云在编程实现的时候是一种数据结构，用来表达多维空间中点的集合，这个多维空间一般对我们来说是三维空间。\r\n小白：哦，原来如此，也就是我们所在的 XYZ 空间咯\r\n\r\n师兄：对，因此点云在三维相关的领域内用的很多，比如三维扫描，三维重建、三维感知等方面。\r\n小白：那点云是怎么得到的啊？\r\n师兄：一般是通过三维成像传感器得到的，比如双目相机、三维扫描仪、RGB-D相机等，除了可以用这种特殊的硬件得到，也可以用计算机合成。\r\n\r\n小白：嗯嗯，师兄说了这么多，还是没有一个直观的印象，这个点云到底长什么样？\r\n师兄：想要直观一点的话，我直接给你看点云图吧，你看下面就是室外一个街道的点云图，远看能看清房子，树木的轮廓啊\r\n\r\n\r\n小白：嗯嗯，确实能看出轮廓出来，不过不像是我们平时拍的照片，这个点云好像看着不是很清楚哎！\r\n\r\n你知道点云优缺点吗？\r\n\r\n师兄：确实是这样的，这也是点云的一个缺点吧\r\n小白：那师兄能否顺便说说，这个点云的表达有啥优缺点呢？\r\n师兄：这个问题问的有水平，额，我想想，我先说说优点吧。\r\n\r\n第一个优点就是可以表达物体的空间轮廓和具体位置，比如上面这个图，我们能看出来街道的样子，房屋的形状，距离摄像机的距离也是知道的。\r\n\r\n第二个优点我觉得就是，点云本身和视角无关，也就是你可以任意旋转，可以从不同角度和方向观察一个点云，而且不同的点云只要在同一个坐标系下就可以直接融合，还是很方便的。\r\n\r\n至于缺点嘛，我们先来放大一下点云看看。如下图所示，如果拉近一直放大最后看到的就是一个个的点。也就是空间中成千上万的点组成了一个点的集合，他们构成了上面的街道房屋等。\r\n\r\n\r\n小白：这个点云放大了啥都看不出来啊\r\n师兄：对，这个是点云的其中一个缺点，那我想想点云还有哪些缺点哈！\r\n\r\n第一个缺点就是点云并不是稠密的表达，一般比较稀疏，你放大了看，会看到一个个孤立的点。它的周围是黑的，也就是没有信息。所以在空间很多位置其实没有点云，这部分的信息是缺失的。\r\n\r\n第二个缺点嘛，就是点云的分辨率和离相机的距离有关。你离近了看是看不清是个什么东西的，只能拉的很远才能看个大概。\r\n\r\n点云库PCL：开发者的福音\r\n\r\n小白：嗯，了解了，好像缺点也没啥影响哈。再问个问题，那这些点云怎么显示和保存啊，感觉点云很多的话，好像很复杂的样子。。。\r\n\r\n师兄：的确，比如一张 640 x 480 尺寸的深度图就可以转换为拥有三十万个空间点的点云，大的点云可能有百万千万以上，不过，不用担心，有一个开源的点云库，英文名为Point Cloud Library ，简称PCL ，专门用来进行点云的读写，处理等各种操作。\r\n\r\n小白：那太好了，这个PCL是谁做的啊？好用吗？\r\n师兄：这个PCL是由一大批世界范围内的名校和科技公司合作开发的，你看下面是他们的名字\r\n\r\n\r\n小白：哇塞，好多不认识啊！不过我看到了ETH，也就是苏黎世联邦理工大学，还有TUM，也就是德国慕尼黑工业大学，我看论文经常看到他们学校的，他们都是SLAM领域非常顶级的研究机构呢\r\n\r\n师兄：嗯，看来你论文看了不少啊，哈哈。我们继续说PCL，PCL真的挺方便，支持跨平台，可以在Windows，Linux，macOS，iOS，Android上部署，可以说非常全了，而且PCL可以分为很多小的库文件，在非常适合于计算资源有限或者内存有限的应用场景，非常方便移动端开发。\r\n\r\n小白：那可以说很通用了哈！对了师兄，那这个PCL都有啥功能？\r\n师兄：功能很丰富了，基本PCL的操作都有，比如读写、滤波、特征估计、表面重建、配准、分割等等，你看这个图就是PCL的功能啦\r\n\r\n\r\n小白：嗯嗯，那是不是平时我们操作点云，调PCL的函数就行了？\r\n师兄：怎么说呢，其实PCL类似于OpenCV那样，有很多功能模块，每个模块里有封装好的函数，你可以调这些函数进行基本处理，但是有些功能PCL里可能没有，这时候需要自己写一些代码实现。\r\n小白：嗯，师兄，总之就是要多编程实践啦\r\n\r\nPCL安装指北\r\n\r\n师兄：对，那我们开始实践环节吧，带着你做一些PCL的基础编程实现\r\n小白：太好啦！\r\n\r\n师兄：首先，我们先来看看点云库，也就是PCL的安装方法，推荐用Linux环节哈，安装很方便\r\n小白：嗯，我之前听师兄说Linux环境配置比较简单，就开始学Linux了，确实，比Windows方便多啦，就是刚开始用命令行不太习惯，好多命令记不住。。。\r\n\r\n师兄：没事的，命令行不用刻意去记，忘记了就去查一下，用多了自然知道了\r\n小白：知道啦！\r\n师兄：PCL在Linux下安装有两种方式，一种是安装编译好的库，一种是从源码编译。你看这个是PCL GitHub上的安装包，前面几种是不同环境下的编译好的库了，最后的source code就是源码安装\r\n\r\n\r\n小白：那这两种方式有什么不一样的？\r\n师兄：第一种方式比较简单，几行命令就可以搞定，比如如果你用的是Ubuntu 16.04版本的Linux系统的话，只需要打开一个终端，输入\r\nsudo apt-get install libpcl-dev pcl-tools\r\n就可以自动安装啦，优点是安装的版本都是稳定版本（当然也比较旧一点），不需要处理依赖关系，安装非常方便，不过这种安装方式也有一些缺点。一个是一般安装的都不是最新的，二是安装的都是别人已经编译好的通用的二进制库，所以不能根据自己的需求进行调整\r\n\r\n小白：只要一行代码确实方便啊！那第二种从源码安装的优缺点呢？\r\n师兄：第二种从源码编译安装也没有麻烦多少，它是把所有的源代码都下载了下来，所以会占用较多的存储空间。但好处很多，比如可以下载最新的版本或者指定的版本，可以根据自己的需求在编译时进行选择，可以查看甚至修改某个函数的源代码等等\r\n\r\n小白：感觉都挺好，选择恐惧症了，不知道该选哪个了。。。\r\n师兄：推荐用第二种吧，从源码自己编译安装，更方便一些\r\n小白：好，具体如何操作呢？\r\n师兄：首先打开PCL GitHub的网址：https://github.com/PointCloudLibrary/pcl\r\n然后选择你需要的版本号，如下图所示\r\n\r\n\r\n如果没什么特殊需要可以不选择，我们打开一个终端，输入下面一行代码\r\n\r\ngit clone https://github.com/PointCloudLibrary/pcl pcl-trunk\r\n \r\n\r\n然后PCL 源代码就 clone 到你的电脑上了\r\n下一步就是Ubuntu下安装的老一套了，进入目录，新建一个build文件夹存放编译的文件，然后进入build文件夹，cmake一下，然后make，最后install，这一系列流程就是下面这段代码了\r\n\r\ncd pcl-trunk && mkdir build && cd build\r\ncmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..\r\nmake -j2\r\nsudo make -j2 install\r\n \r\n\r\n静静的等待编译结束就好啦！\r\n\r\n炒鸡简单的PCL实践\r\n\r\n小白：嗯嗯，我照着做一下。。。嗯，编译好啦，我们开始用PCL写代码吧\r\n师兄：那我们来写一个读取RGB-D相机的一帧图像并用PCL转化为点云的代码吧\r\n\r\n首先，我们需要定义点云的结构，我们这里使用typedef来定义两个常用的类型\r\n\r\n1\r\n2\r\ntypedef pcl::PointXYZRGB PointT;\r\ntypedef pcl::PointCloud<PointT> PointCloud;\r\n　\r\n\r\n \r\n\r\n这里的 pcl::PointXYZRGB 就是我们定义的空间点，它包括空间坐标XYZ以及颜色信息RGB，此外常用的点的 类型还有\r\n\r\npcl::PointXYZRGBA ( 多了一个alpha通道)， pcl::PointXYZ （只有空间位置，不包含颜色信息），pcl::PointXYZHSV （空间位置 + HSV颜色空间表示的颜色）等，总之，我们这里输入的 RGB-D 图像就定义为pcl::PointXYZRGB。\r\n\r\n小白：师兄，为什么这里要用typedef 啊？我看好多地方都这样写的\r\n师兄：这样是为了把那么长的一个类型用一个简单的别名 PointT 来代替，不至于代码显得特别冗长\r\n\r\n小白：这样啊，懂了，那么 pcl::PointCloud就是点云了吧？它里面可以包含许多类型为PointT的点\r\n师兄：对，我们继续。其实RGB-D图像转换为点云的方式也简单，代码如下\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\nfor (int m = 0; m < depth.rows; m++)\r\n    for (int n = 0; n < depth.cols; n++)\r\n    {\r\n        // 获取深度图中(m,n)处的值\r\n        ushort d = depth.ptr<ushort>(m)[n];\r\n        // d 可能没有值，若如此，跳过此点\r\n        if (d == 0)\r\n            continue;\r\n        // d 存在值，则向点云增加一个点\r\n        PointT p;\r\n        // 计算这个点的空间坐标\r\n        p.z = double(d) / camera.scale;\r\n        p.x = (n - camera.cx) * p.z / camera.fx;\r\n        p.y = (m - camera.cy) * p.z / camera.fy;\r\n \r\n        // 从rgb图像中获取它的颜色\r\n        p.b = rgb.ptr<uchar>(m)[n * 3];\r\n        p.g = rgb.ptr<uchar>(m)[n * 3 + 1];\r\n        p.r = rgb.ptr<uchar>(m)[n * 3 + 2];\r\n \r\n        // 把p加入到点云中\r\n        cloud->points.push_back(p);\r\n    }', '2');
INSERT INTO `blog_articledetail` VALUES ('3', '安卓获取输入法高度\r\n前言\r\n在某些场景下， 比如写一个聊天界面，包括输入框和发送以及上面的消息列表，简单的使用LinearLayout或者RelativeLayout布局，当点击输入框，键盘弹起后，通常是不会遮挡输入框和发送的（有时就比较蛋疼了，不知为啥，它就是遮挡），因为它们也随键盘弹了起来。但布局再复杂点，比如说再加个表情栏或者更多栏，这样你肯定要手动控制输入框的高度了。因此，你就必须手动控制输入框的升降，但问题是升多高呢？？？这时，就要想办法获取输入法高度了(～￣▽￣)～\r\n由于目前安卓上还没有提供直接获取输入法高度的api，因此只好我们自己想办法获取它的高度了。\r\n\r\n注： 此思路由国外一大神提出，附上他的 Github ;\r\n\r\n清单\r\n这里有两个文件：\r\n\r\ninterface KeyboardHeightObserver\r\nclass KeyboardHeightProvider\r\n前一个用在待观测页面的作为回调函数， 后面是主要的方法所在的类了。\r\n\r\n开始\r\n文章后面会附上源码，引入这两个文件后，在要获取输入法高度的页面，首先实现接口KeyboardHeightObserver，即第一个文件，并重写里面的方法；\r\n\r\n然后再定义变量 KeyboardHeightProvider keyboardHeightProvider;\r\n实例化\r\n\r\n     /**\r\n     * Construct a new KeyboardHeightProvider\r\n     *\r\n     * @param activity The parent activity\r\n     * @param layoutId   R.layout.*\r\n     */\r\n       // 以上为构造函数的相关注释，当然这里是我修改的，这样可以同时支持观测多个页面\r\n       keyboardHeightProvider = new KeyboardHeightProvider(this, R.layout.activity_chat);\r\n\r\n       new Handler().post(new Runnable() {\r\n            @Override\r\n            public void run() {\r\n                keyboardHeightProvider.start();\r\n            }\r\n        });\r\n这时还要在onStart()函数里面加上 keyboardHeightProvider.setKeyboardHeightObserver(this); 即：\r\n\r\n    @Override\r\n    public void onStart() {\r\n        super.onStart();\r\n        // 这里使用了刚才实现的接口\r\n        keyboardHeightProvider.setKeyboardHeightObserver(this);\r\n    }\r\n考虑更全的话， 还可以加上以下语句：\r\n\r\n    @Override\r\n    public void onPause() {\r\n        super.onPause();\r\n        keyboardHeightProvider.setKeyboardHeightObserver(null);\r\n    }\r\n\r\n    @Override\r\n    public void onDestroy() {\r\n        super.onDestroy();\r\n        keyboardHeightProvider.close();\r\n    }\r\n      \r\n这样一来，在回调函数 onKeyboardHeightChanged里面就回收到回调结果了，大功告成！\r\n\r\nViewTreeObserver讲解\r\n这里就结合上面输入法的例子，讲讲ViewTreeObserver。\r\n\r\n获取输入法高度原理\r\n思路\r\n在要获取输入法高度的页面，创建一个看不见的弹窗，即宽为0，高为全屏，并为弹窗设置全局布局监听器。当布局有变化，比如有输入法弹窗出现或消失时， 监听器回调函数就会被调用。而其中的关键就是当输入法弹出时， 它会把之前我们创建的那个看不见的弹窗往上挤， 这样我们创建的那个弹窗的位置就变化了，只要获取它底部高度的变化值就可以间接的获取输入法的高度了。\r\n\r\n实现\r\n首先创建类KeyboardHeightProvider， 继承自PopupWindow；\r\n\r\n然后构造器内完成相关初始化：\r\n\r\n\r\n        super(activity);\r\n        this.activity = activity;\r\n\r\n       LayoutInflater inflator = (LayoutInflater) activity.getSystemService(Activity.LAYOUT_INFLATER_SERVICE);\r\n        this.popupView = inflator.inflate(layoutId, null, false);\r\n        setContentView(popupView);\r\n\r\n        setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE | WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);\r\n        setInputMethodMode(PopupWindow.INPUT_METHOD_NEEDED);\r\n\r\n        parentView = activity.findViewById(android.R.id.content);\r\n\r\n        // 设置宽高\r\n        setWidth(0);\r\n        setHeight(WindowManager.LayoutParams.MATCH_PARENT);\r\n然后就是重点，为popupView的观测者（感觉用 ViewTreeObserver还是更合适）设置全局布局监听器\r\n\r\n        popupView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {\r\n            @Override\r\n            public void onGlobalLayout() {\r\n                if (popupView != null) {\r\n                    handleOnGlobalLayout();\r\n                }\r\n            }\r\n        });\r\n其中handleOnGlobalLayout函数功能则是：获取弹窗高度，并作差得出输入法高度，以及通知回调。\r\n\r\n    /**\r\n     * Popup window itself is as big as the window of the Activity.\r\n     * The keyboard can then be calculated by extracting the popup view bottom\r\n     * from the activity window height.\r\n     */\r\n    private void handleOnGlobalLayout() {\r\n\r\n        Point screenSize = new Point();\r\n        activity.getWindowManager().getDefaultDisplay().getSize(screenSize);\r\n\r\n        Rect rect = new Rect();\r\n        popupView.getWindowVisibleDisplayFrame(rect);\r\n\r\n        // REMIND, you may like to change this using the fullscreen size of the phone\r\n        // and also using the status bar and navigation bar heights of the phone to calculate\r\n        // the keyboard height. But this worked fine on a Nexus.\r\n        int orientation = getScreenOrientation();\r\n        int keyboardHeight = screenSize.y - rect.bottom;\r\n\r\n        if (keyboardHeight == 0) {\r\n            notifyKeyboardHeightChanged(0, orientation);\r\n        }\r\n        else if (orientation == Configuration.ORIENTATION_PORTRAIT) {\r\n            this.keyboardPortraitHeight = keyboardHeight;\r\n            notifyKeyboardHeightChanged(keyboardPortraitHeight, orientation);\r\n        }\r\n        else {\r\n            this.keyboardLandscapeHeight = keyboardHeight;\r\n            notifyKeyboardHeightChanged(keyboardLandscapeHeight, orientation);\r\n        }\r\n    }\r\n嗯，大概就是这样(*￣3￣)╭\r\n\r\n关于ViewTreeObserver\r\n定义\r\n首先自然要给出官方的定义：\r\n\r\n/**\r\n * A view tree observer is used to register listeners that can be notified of global\r\n * changes in the view tree. Such global events include, but are not limited to,\r\n * layout of the whole tree, beginning of the drawing pass, touch mode change....\r\n *\r\n * A ViewTreeObserver should never be instantiated by applications as it is provided\r\n * by the views hierarchy. Refer to {@link android.view.View#getViewTreeObserver()}\r\n * for more information.\r\n */\r\n翻译过来大概是\r\n\r\n// 原谅我英语不好（╯︿╰）， 不过我发现谷歌翻译的效果还是不错的\r\n\r\n/**\r\n* 视图树观察器用于注册可以在视图树中通知全局\r\n* 更改的侦听器。此类全局事件包括但不限于\r\n* 整个树的布局，绘图过程的开始，触摸模式更改.... \r\n* \r\n* ViewTreeObserver永远不应由应用程序实例化，因为它由视图层次结构提供\r\n* 。有关更多信息，请参阅{@link android.view.View＃getViewTreeObserver（）}\r\n* 。 \r\n*/\r\n继承\r\njava.lang.Object\r\n   ↳    android.view.ViewTreeObserver\r\n直接继承自Object，没有另外的继承关系\r\n\r\n摘要\r\nNested Classes	\r\ninterface	ViewTreeObserver.OnDrawListener	Interface definition for a callback to be invoked when the view tree is about to be drawn.\r\ninterface	ViewTreeObserver.OnGlobalFocusChangeListener	Interface definition for a callback to be invoked when the focus state within the view tree changes.\r\ninterface	ViewTreeObserver.OnGlobalLayoutListener	Interface definition for a callback to be invoked when the global layout state or the visibility of views within the view tree changes.\r\ninterface	ViewTreeObserver.OnPreDrawListener	Interface definition for a callback to be invoked when the view tree is about to be drawn.\r\ninterface	ViewTreeObserver.OnScrollChangedListener	Interface definition for a callback to be invoked when something in the view tree has been scrolled.\r\ninterface	ViewTreeObserver.OnTouchModeChangeListener	Interface definition for a callback to be invoked when the touch mode changes.\r\n另外方法挺多的， 我就不列举了。\r\n\r\n获取View高度的三种方法\r\n注： 此处参考了小马快跑 的博客\r\n\r\n在某些时候，我们要获取view的高度，但获取到的为0，为什么呢？这样通常时由于页面还未测量导致的，比如在onCreate中调用的话就会直接返回0。这是就需要我们手动获取了。\r\n\r\nView的MeasureSpec.UNSPECIFIED\r\n通过设置View的MeasureSpec.UNSPECIFIED来测量：\r\n\r\nint w = View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED);\r\nint h = View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED);\r\nview.measure(w, h);\r\n//获得宽高\r\nint viewWidth=view.getMeasuredWidth();\r\nint viewHeight=view.getMeasuredHeight();\r\n设置我们的SpecMode为UNSPECIFIED，然后去调用onMeasure测量宽高，就可以得到宽高。\r\n\r\nViewTreeObserver .addOnGlobalLayoutListener\r\n通过ViewTreeObserver .addOnGlobalLayoutListener来获得宽高，当获得正确的宽高后，请移除这个观察者，否则回调会多次执行：\r\n\r\n//获得ViewTreeObserver \r\nViewTreeObserver observer=view.getViewTreeObserver();\r\n//注册观察者，监听变化\r\nobserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {\r\n     @Override\r\n     public void onGlobalLayout() {\r\n            //判断ViewTreeObserver 是否alive，如果存活的话移除这个观察者\r\n           if(observer.isAlive()){\r\n             observer.removeGlobalOnLayoutListener(this);\r\n             //获得宽高\r\n             int viewWidth=view.getMeasuredWidth();\r\n             int viewHeight=view.getMeasuredHeight();\r\n           }\r\n        }\r\n   });\r\nViewTreeObserver .addOnPreDrawListener\r\n通过ViewTreeObserver .addOnPreDrawListener来获得宽高，在执行onDraw之前已经执行了onLayout()和onMeasure()，可以得到宽高了，当获得正确的宽高后，请移除这个观察者，否则回调会多次执行\r\n\r\n//获得ViewTreeObserver \r\nViewTreeObserver observer=view.getViewTreeObserver();\r\n//注册观察者，监听变化\r\nobserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {\r\n       @Override\r\n       public boolean onPreDraw() {\r\n          if(observer.isAlive()){\r\n            observer.removeOnDrawListener(this);\r\n             }\r\n          //获得宽高\r\n           int viewWidth=view.getMeasuredWidth();\r\n           int viewHeight=view.getMeasuredHeight();\r\n           return true;\r\n     }\r\n   });\r\n源码\r\ninterface KeyboardHeightObserver\r\n\r\npublic interface KeyboardHeightObserver {\r\n    /**\r\n     * Called when the keyboard height has changed, 0 means keyboard is closed,\r\n     * >= 1 means keyboard is opened.\r\n     *\r\n     * @param height        The height of the keyboard in pixels\r\n     * @param orientation   The orientation either: Configuration.ORIENTATION_PORTRAIT or\r\n     *                      Configuration.ORIENTATION_LANDSCAPE\r\n     */\r\n    void onKeyboardHeightChanged(int height, int orientation);\r\n}\r\nclass KeyboardHeightProvider\r\n\r\nimport android.app.Activity;\r\nimport android.content.res.Configuration;\r\nimport android.graphics.Point;\r\nimport android.graphics.Rect;\r\nimport android.graphics.drawable.ColorDrawable;\r\nimport android.view.Gravity;\r\nimport android.view.LayoutInflater;\r\nimport android.view.View;\r\nimport android.view.ViewTreeObserver;\r\nimport android.view.WindowManager;\r\nimport android.widget.PopupWindow;\r\n\r\n/**\r\n * The keyboard height provider, this class uses a PopupWindow\r\n * to calculate the window height when the floating keyboard is opened and closed.\r\n */\r\npublic class KeyboardHeightProvider extends PopupWindow {\r\n\r\n    /** The tag for logging purposes */\r\n    private final static String TAG = \"sample_KeyboardHeightProvider\";\r\n\r\n    /** The keyboard height observer */\r\n    private KeyboardHeightObserver observer;\r\n\r\n    /** The cached landscape height of the keyboard */\r\n    private int keyboardLandscapeHeight;\r\n\r\n    /** The cached portrait height of the keyboard */\r\n    private int keyboardPortraitHeight;\r\n\r\n    /** The view that is used to calculate the keyboard height */\r\n    private View popupView;\r\n\r\n    /** The parent view */\r\n    private View parentView;\r\n\r\n    /** The root activity that uses this KeyboardHeightProvider */\r\n    private Activity activity;\r\n\r\n    /**\r\n     * Construct a new KeyboardHeightProvider\r\n     *\r\n     * @param activity The parent activity\r\n     * @param layoutId   R.layout.*\r\n     */\r\n    public KeyboardHeightProvider(Activity activity, int layoutId) {\r\n        super(activity);\r\n        this.activity = activity;\r\n\r\n        LayoutInflater inflator = (LayoutInflater) activity.getSystemService(Activity.LAYOUT_INFLATER_SERVICE);\r\n        this.popupView = inflator.inflate(layoutId, null, false);\r\n        setContentView(popupView);\r\n\r\n        setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE | WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);\r\n        setInputMethodMode(PopupWindow.INPUT_METHOD_NEEDED);\r\n\r\n        parentView = activity.findViewById(android.R.id.content);\r\n\r\n        setWidth(0);\r\n        setHeight(WindowManager.LayoutParams.MATCH_PARENT);\r\n\r\n        popupView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {\r\n            @Override\r\n            public void onGlobalLayout() {\r\n                if (popupView != null) {\r\n                    handleOnGlobalLayout();\r\n                }\r\n            }\r\n        });\r\n    }\r\n\r\n    /**\r\n     * Start the KeyboardHeightProvider, this must be called after the onResume of the Activity.\r\n     * PopupWindows are not allowed to be registered before the onResume has finished\r\n     * of the Activity.\r\n     */\r\n    public void start() {\r\n\r\n        if (!isShowing() && parentView.getWindowToken() != null) {\r\n            setBackgroundDrawable(new ColorDrawable(0));\r\n            showAtLocation(parentView, Gravity.NO_GRAVITY, 0, 0);\r\n        }\r\n    }\r\n\r\n    /**\r\n     * Close the keyboard height provider,\r\n     * this provider will not be used anymore.\r\n     */\r\n    public void close() {\r\n        this.observer = null;\r\n        dismiss();\r\n    }\r\n\r\n    /**\r\n     * Set the keyboard height observer to this provider. The\r\n     * observer will be notified when the keyboard height has changed.\r\n     * For example when the keyboard is opened or closed.\r\n     *\r\n     * @param observer The observer to be added to this provider.\r\n     */\r\n    public void setKeyboardHeightObserver(KeyboardHeightObserver observer) {\r\n        this.observer = observer;\r\n    }\r\n\r\n    /**\r\n     * Get the screen orientation\r\n     *\r\n     * @return the screen orientation\r\n     */\r\n    private int getScreenOrientation() {\r\n        return activity.getResources().getConfiguration().orientation;\r\n    }\r\n\r\n    /**\r\n     * Popup window itself is as big as the window of the Activity.\r\n     * The keyboard can then be calculated by extracting the popup view bottom\r\n     * from the activity window height.\r\n     */\r\n    private void handleOnGlobalLayout() {\r\n\r\n        Point screenSize = new Point();\r\n        activity.getWindowManager().getDefaultDisplay().getSize(screenSize);\r\n\r\n        Rect rect = new Rect();\r\n        popupView.getWindowVisibleDisplayFrame(rect);\r\n\r\n        // REMIND, you may like to change this using the fullscreen size of the phone\r\n        // and also using the status bar and navigation bar heights of the phone to calculate\r\n        // the keyboard height. But this worked fine on a Nexus.\r\n        int orientation = getScreenOrientation();\r\n        int keyboardHeight = screenSize.y - rect.bottom;\r\n\r\n        if (keyboardHeight == 0) {\r\n            notifyKeyboardHeightChanged(0, orientation);\r\n        }\r\n        else if (orientation == Configuration.ORIENTATION_PORTRAIT) {\r\n            this.keyboardPortraitHeight = keyboardHeight;\r\n            notifyKeyboardHeightChanged(keyboardPortraitHeight, orientation);\r\n        }\r\n        else {\r\n            this.keyboardLandscapeHeight = keyboardHeight;\r\n            notifyKeyboardHeightChanged(keyboardLandscapeHeight, orientation);\r\n        }\r\n    }\r\n\r\n    private void notifyKeyboardHeightChanged(int height, int orientation) {\r\n        if (observer != null) {\r\n            observer.onKeyboardHeightChanged(height, orientation);\r\n        }\r\n    }\r\n}', '3');
INSERT INTO `blog_articledetail` VALUES ('4', '1.客户端向服务端发送请求，客户端主要向服务器提供以下信息：\r\n\r\n 支持的协议版本，比如TLS 1.0版。\r\n一个客户端生成的随机数，稍后用于生成\"对话密钥\"。\r\n支持的加密方法，比如RSA公钥加密。\r\n 支持的压缩方法。\r\n2.服务器端收到请求后，向客户端做出回应，回应的内容包括：\r\n\r\n 确认使用的加密通信协议版本，比如TLS 1.0版本。如果浏览器与服务器支持的版本不一致，服务器关闭加密通信。\r\n 一个服务器生成的随机数，稍后用于生成\"对话密钥\"。\r\n确认使用的加密方法，比如RSA公钥加密。\r\n服务器证书。\r\n3.客户端收到服务器回应以后，首先验证服务器证书。\r\n\r\n　如果证书不是可信机构颁布、或者证书中的域名与实际域名不一致、或者证书已经过期，就会向访问者显示一个警告，如下\r\n\r\n \r\n\r\n   如果证书没有问题，客户端就会从证书中取出服务器的公钥。然后，向服务器发送下面三项信息:\r\n\r\n 一个随机数。该随机数用服务器公钥加密，防止被窃听。\r\n编码改变通知，表示随后的信息都将用双方商定的加密方法和密钥发送。\r\n客户端握手结束通知，表示客户端的握手阶段已经结束。这一项同时也是前面发送的所有内容的hash值，用来供服务器校验\r\n　证书的验证过程如下：\r\n\r\n　　CA机构在签发证书的时候，都会使用自己的私钥对证书进行签名，如果我们使用的是购买的证书，那么很有可能，颁发这个证书的CA机构的公钥已经预置在操作系统中。这样浏览器就可以使用CA机构的公钥对服务器的证书进行验签，验签之后得到的是CA机构使用sha256得到的证书摘要，客户端就会对服务器发送过来的证书使用sha256进行哈希计算得到一份摘要，然后对比之前由CA得出来的摘要，就可以知道这个证书是不是正确的，是否被修改过。\r\n\r\n4. 服务端回应\r\n\r\n　服务器收到客户端的第三个随机数之后，计算生成本次会话所用的\"会话密钥\"。然后，向客户端最后发送下面信息：\r\n\r\n编码改变通知，表示随后的信息都将用双方商定的加密方法和密钥发送。\r\n服务器握手结束通知，表示服务器的握手阶段已经结束。这一项同时也是前面发送的所有内容的hash值，用来供客户端校验。\r\n　会话秘钥是根据前面几次对话过程中产生的三个随机数以及一些其他算法产生的，后面服务器与客户端的交互都是通过这对话秘钥进行加密解密处理的，其他的都和HTTP协议一样。\r\n\r\n2.HTTPS中自签名证书的生成\r\n 　需要注意的是接下来几种文件的类型：\r\n\r\nkey是服务器上的私钥文件，用于对发送给客户端数据的加密，以及对从客户端接收到数据的解密\r\ncsr是证书签名请求文件，用于提交给证书颁发机构（CA）对证书签名\r\ncrt是由证书颁发机构（CA）签名后的证书，或者是开发者自签名的证书，包含证书持有人的信息，持有人的公钥，以及签署者的签名等信息\r\nkeystore 包含证书的文件，可以自己去导入证书\r\nPEM 文件格式存储证书和密钥，用于导出，导入证书时候的证书的格式，有证书开头，结尾的格式。\r\n　还有就是X.509是一个标准，规范了公开秘钥认证、证书吊销列表、授权凭证、凭证路径验证算法等。\r\n\r\n　a. 服务器端用户证书的生成过程：\r\n　　1. 生成私钥（.key）文件\r\n\r\n1\r\n2\r\n# private key \r\n$openssl genrsa -des3 -out server.key 1024\r\n　　2. 生成证书请求（.csr）文件\r\n\r\n1\r\n2\r\n# generate csr \r\n$openssl req -new -key server.key -out server.csr \r\n　　Country Name (2 letter code) [XX]:CN----------------------------------- 证书持有者所在国家\r\n\r\n　　State or Province Name (full name) []:BJ------------------------------- 证书持有者所在州或省份（可省略不填）\r\n\r\n　　Locality Name (eg, city) []:BJ----------------------------------------- 证书持有者所在城市（可省略不填）\r\n\r\n　　Organization Name (eg, company) []:NH---------------------------------- 证书持有者所属组织或公司\r\n\r\n　　Organizational Unit Name (eg, section) []:.---------------------------- 证书持有者所属部门（可省略不填）\r\n\r\n　　Common Name (eg, your name or your server\'s hostname) []:ceshi.com----- 必须要填写域名或者ip地址\r\n\r\n　　Email Address []:------------------------------------------------------ 邮箱（可省略不填）\r\n\r\n　　challenge password:............................................................自定义密码\r\n\r\n　　An optional company name：.............................................（可选）公司名称\r\n\r\n　　3.  自签名的证书文件\r\n\r\n1\r\nopenssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt\r\n　　4.本案例需要用到pem格式的证书，可以用以下方式合并证书文件（crt）和私钥文件（key）来生成 \r\n\r\n1\r\ncat server.crt server.key > server.pem\r\n　b. 客户端证书文件的生成\r\n　　这里采用的是自签名的方式，所以客户端需要有一个导入服务端证书的文件，以供客户端去验证服务段的证书过程。\r\n\r\n　　1.生成.keystore文件\r\n\r\n1\r\nkeytool -genkey -validity 36000 -alias www.hellobcdb.com -keyalg RSA -keystore client.keystore\r\n　　2.导入服务端证书\r\n\r\n1\r\nkeytool -import -alias serverkey -file server.crt -keystore client.keystore\r\n3.HTTPS案例\r\n　环境及工具：ubuntu16.04，QtCreator，mongoose(cesanta)，java环境。\r\n\r\n　服务端代码：\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\n29\r\n30\r\n31\r\n32\r\n33\r\n34\r\n35\r\n36\r\n37\r\n38\r\n39\r\n40\r\n41\r\n42\r\n43\r\n44\r\n45\r\n#include \"mongoose.h\"\r\n \r\nstatic const char *s_http_port = \"8443\";\r\nstatic const char *s_ssl_cert = \"/home/gqx/workplace/TestHttps/server.pem\";\r\nstatic const char *s_ssl_key = \"/home/gqx/workplace/TestHttps/server.key\";\r\nstatic struct mg_serve_http_opts s_http_server_opts;\r\n \r\nstatic void ev_handler(struct mg_connection *nc, int ev, void *p) {\r\n  if (ev == MG_EV_HTTP_REQUEST) {\r\n    mg_serve_http(nc, (struct http_message *) p, s_http_server_opts);\r\n  }\r\n}\r\n \r\nint main(void) {\r\n  struct mg_mgr mgr;\r\n  struct mg_connection *nc;\r\n  struct mg_bind_opts bind_opts;\r\n  const char *err;\r\n \r\n  mg_mgr_init(&mgr, NULL);\r\n  memset(&bind_opts, 0, sizeof(bind_opts));\r\n  bind_opts.ssl_cert = s_ssl_cert;\r\n  bind_opts.ssl_key = s_ssl_key;\r\n  bind_opts.error_string = &err;\r\n \r\n  printf(\"Starting SSL= server on port %s, cert from %s, key from %s\\n\",\r\n         s_http_port, bind_opts.ssl_cert, bind_opts.ssl_key);\r\n  nc = mg_bind_opt(&mgr, s_http_port, ev_handler, bind_opts);\r\n  if (nc == NULL) {\r\n    printf(\"Failed to create listener: %s\\n\", err);\r\n    return 1;\r\n  }\r\n \r\n  // Set up HTTP server parameters\r\n  mg_set_protocol_http_websocket(nc);\r\n  s_http_server_opts.document_root = \".\";  // Serve current directory\r\n  s_http_server_opts.enable_directory_listing = \"yes\";\r\n \r\n  for (;;) {\r\n    mg_mgr_poll(&mgr, 1000);\r\n  }\r\n  mg_mgr_free(&mgr);\r\n \r\n  return 0;\r\n}\r\n　QT中C++项目的pro文件内容如下，注意要添加相应的库：\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\nTEMPLATE = app\r\nCONFIG += console c++11\r\nCONFIG -= app_bundle\r\nCONFIG -= qt\r\nLIBS += -lpthread\r\nLIBS += -lssl -lcrypto\r\nLIBS += -L /usr/local/bin -lcryptopp -ldl -lz\r\nSOURCES += main.cpp \\\r\n    mongoose.cpp\r\nHEADERS += \\\r\n    mongoose.h\r\n　java客户端代码（也可以直接在浏览器端直接访问，不过会出现证书不安全的警告提示）　\r\n\r\n　　HttpsClient类\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\n29\r\n30\r\n31\r\n32\r\n33\r\n34\r\n35\r\n36\r\n37\r\n38\r\n39\r\n40\r\n41\r\n42\r\n43\r\n44\r\n45\r\n46\r\n47\r\n48\r\n49\r\n50\r\n51\r\n52\r\n53\r\n54\r\n55\r\n56\r\n57\r\n58\r\n59\r\n60\r\n61\r\n62\r\n63\r\n64\r\n65\r\n66\r\n67\r\n68\r\n69\r\n70\r\n71\r\n72\r\n73\r\n74\r\n75\r\n76\r\n77\r\n78\r\n79\r\n80\r\n81\r\n82\r\n83\r\n84\r\n85\r\n86\r\n87\r\n88\r\n89\r\n90\r\n91\r\n92\r\n93\r\n94\r\n95\r\n96\r\n97\r\n98\r\n99\r\n100\r\n101\r\n102\r\n103\r\n104\r\n105\r\n106\r\n107\r\n108\r\n109\r\n110\r\n111\r\n112\r\npackage com.gqx.test;\r\n \r\nimport java.io.FileInputStream;\r\nimport java.io.IOException;\r\nimport java.net.Socket;\r\nimport java.net.UnknownHostException;\r\nimport java.security.KeyManagementException;\r\nimport java.security.KeyStore;\r\nimport java.security.KeyStoreException;\r\nimport java.security.NoSuchAlgorithmException;\r\nimport java.security.UnrecoverableKeyException;\r\nimport java.security.cert.CertificateException;\r\nimport java.security.cert.X509Certificate;\r\n \r\nimport javax.net.ssl.SSLContext;\r\nimport javax.net.ssl.TrustManager;\r\nimport javax.net.ssl.X509TrustManager;\r\n \r\nimport org.apache.http.HttpVersion;\r\nimport org.apache.http.client.HttpClient;\r\nimport org.apache.http.conn.ClientConnectionManager;\r\nimport org.apache.http.conn.scheme.PlainSocketFactory;\r\nimport org.apache.http.conn.scheme.Scheme;\r\nimport org.apache.http.conn.scheme.SchemeRegistry;\r\nimport org.apache.http.conn.ssl.SSLSocketFactory;\r\nimport org.apache.http.impl.client.DefaultHttpClient;\r\nimport org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;\r\nimport org.apache.http.params.BasicHttpParams;\r\nimport org.apache.http.params.HttpConnectionParams;\r\nimport org.apache.http.params.HttpParams;\r\nimport org.apache.http.params.HttpProtocolParams;\r\nimport org.apache.http.protocol.HTTP;\r\n \r\npublic class HttpsClient {\r\n \r\n    private static final int SET_CONNECTION_TIMEOUT = 5 * 1000; \r\n    private static final int SET_SOCKET_TIMEOUT = 20 * 1000; \r\n       \r\n    public static HttpClient getNewHttpClient() { \r\n        try { \r\n            FileInputStream fis = new FileInputStream(\"/home/gqx/文档/oscar/client.keystore\");\r\n            String storepass = \"starchain\";\r\n             \r\n            KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType()); \r\n            trustStore.load(fis, storepass.toCharArray()); \r\n   \r\n            SSLSocketFactory sf = new MySSLSocketFactory(trustStore); \r\n            sf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER); \r\n   \r\n            HttpParams params = new BasicHttpParams(); \r\n   \r\n            HttpConnectionParams.setConnectionTimeout(params, 10000); \r\n            HttpConnectionParams.setSoTimeout(params, 10000); \r\n   \r\n            HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1); \r\n            HttpProtocolParams.setContentCharset(params, HTTP.UTF_8); \r\n   \r\n            SchemeRegistry registry = new SchemeRegistry(); \r\n            registry.register(new Scheme(\"http\", PlainSocketFactory.getSocketFactory(), 80)); \r\n            registry.register(new Scheme(\"https\", sf, 443)); \r\n   \r\n            ClientConnectionManager ccm = new ThreadSafeClientConnManager(params, registry); \r\n   \r\n            HttpConnectionParams.setConnectionTimeout(params, SET_CONNECTION_TIMEOUT); \r\n            HttpConnectionParams.setSoTimeout(params, SET_SOCKET_TIMEOUT); \r\n            DefaultHttpClient client = new DefaultHttpClient(ccm, params); \r\n   \r\n            return client; \r\n        } catch (Exception e) { \r\n            return new DefaultHttpClient(); \r\n        } \r\n    }\r\n     \r\n     \r\n     \r\n     \r\n    private static class MySSLSocketFactory extends SSLSocketFactory { \r\n        SSLContext sslContext = SSLContext.getInstance(\"TLS\"); \r\n   \r\n        public MySSLSocketFactory(KeyStore truststore) throws NoSuchAlgorithmException, \r\n                KeyManagementException, KeyStoreException, UnrecoverableKeyException { \r\n            super(truststore); \r\n   \r\n            TrustManager tm = new X509TrustManager() { \r\n                public void checkClientTrusted(X509Certificate[] chain, String authType) \r\n                        throws CertificateException { \r\n                } \r\n   \r\n                public void checkServerTrusted(X509Certificate[] chain, String authType) \r\n                        throws CertificateException { \r\n                } \r\n   \r\n                public X509Certificate[] getAcceptedIssuers() { \r\n                    return null; \r\n                } \r\n            }; \r\n   \r\n            sslContext.init(null, new TrustManager[] { tm }, null); \r\n        } \r\n   \r\n        @Override \r\n        public Socket createSocket(Socket socket, String host, int port, boolean autoClose) \r\n                throws IOException, UnknownHostException { \r\n            return sslContext.getSocketFactory().createSocket(socket, host, port, autoClose); \r\n        } \r\n   \r\n        @Override \r\n        public Socket createSocket() throws IOException { \r\n            return sslContext.getSocketFactory().createSocket(); \r\n        } \r\n    }\r\n}\r\n　　测试类，post请求\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\n29\r\n30\r\n31\r\n32\r\n33\r\n34\r\n35\r\n36\r\n37\r\n38\r\n39\r\n40\r\n41\r\n42\r\n43\r\n44\r\n45\r\n46\r\n47\r\n48\r\n49\r\n50\r\n51\r\n52\r\n53\r\n54\r\n55\r\n56\r\n57\r\n58\r\n59\r\n60\r\n61\r\n62\r\n63\r\n64\r\n65\r\npackage com.gqx.test;\r\n \r\nimport java.io.BufferedReader;\r\nimport java.io.InputStreamReader;\r\nimport java.util.ArrayList;\r\nimport java.util.HashMap;\r\nimport java.util.Iterator;\r\nimport java.util.Map;\r\nimport java.util.Set;\r\nimport java.util.stream.Collectors;\r\nimport org.apache.http.HttpEntity;\r\nimport org.apache.http.HttpResponse;\r\nimport org.apache.http.client.HttpClient;\r\nimport org.apache.http.client.entity.UrlEncodedFormEntity;\r\nimport org.apache.http.client.methods.HttpPost;\r\nimport org.apache.http.message.BasicNameValuePair;\r\n \r\npublic class TestMain {\r\n \r\n    public static void main(String[] args) {\r\n        String urlStr = \"https://www.hellobcdb.com:7999/fff\";\r\n        Map<String,String> params = new HashMap<>();\r\n        params.put(\"value\", \"publish.1666,\'Database\',\'computer science\',\'Alice\'\");\r\n        params.put(\"name\", \"gqx\");\r\n        params.put(\"password\", \"111\");\r\n        try {\r\n            //DefaultHttpClient client = new DefaultHttpClient();\r\n            HttpClient client = HttpsClient.getNewHttpClient();\r\n            HttpPost httpPost = new HttpPost(urlStr);\r\n         \r\n            HttpEntity entity;\r\n \r\n            ArrayList<BasicNameValuePair> pairs = new ArrayList<BasicNameValuePair>();\r\n            if(params != null){\r\n                Set<String> keys = params.keySet();\r\n                for(Iterator<String> i = keys.iterator(); i.hasNext();) {\r\n                    String key = (String)i.next();\r\n                    pairs.add(new BasicNameValuePair(key, params.get(key)));\r\n                }\r\n            }\r\n            entity = new UrlEncodedFormEntity(pairs, \"utf-8\");\r\n            httpPost.setEntity(entity);\r\n            //Log.i(TAG, \"post总字节数:\"+entity.getContentLength());\r\n            HttpResponse response = client.execute(httpPost);\r\n            try {\r\n                // 获取响应实体\r\n                HttpEntity entitys = response.getEntity();\r\n                System.out.println(\"--------------------------------------\");\r\n                // 打印响应状态\r\n                System.out.println(response.getStatusLine());\r\n                if (entitys != null) {\r\n                    // 打印响应内容长度\r\n                    String result = new BufferedReader(new InputStreamReader(entitys.getContent()))\r\n                            .lines().collect(Collectors.joining(System.lineSeparator()));\r\n                   System.out.println(result);\r\n                }\r\n                System.out.println(\"------------------------------------\");\r\n            } catch (Exception e) {\r\n                e.printStackTrace();\r\n            }\r\n        }catch(Exception e){\r\n            e.printStackTrace();\r\n        }\r\n    }\r\n}', '4');

-- ----------------------------
-- Table structure for `blog_articleupdown`
-- ----------------------------
DROP TABLE IF EXISTS `blog_articleupdown`;
CREATE TABLE `blog_articleupdown` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `is_up` tinyint(1) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `blog_articleupdown_article_id_user_id_fa3d0c08_uniq` (`article_id`,`user_id`),
  KEY `blog_articleupdown_user_id_2c0ebe49_fk_blog_userinfo_nid` (`user_id`),
  CONSTRAINT `blog_articleupdown_article_id_9be1a8a2_fk_blog_article_nid` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`nid`),
  CONSTRAINT `blog_articleupdown_user_id_2c0ebe49_fk_blog_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_articleupdown
-- ----------------------------
INSERT INTO `blog_articleupdown` VALUES ('1', '1', '1', '1');
INSERT INTO `blog_articleupdown` VALUES ('2', '1', '2', '1');
INSERT INTO `blog_articleupdown` VALUES ('9', '0', '3', '1');

-- ----------------------------
-- Table structure for `blog_blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `site` varchar(32) NOT NULL,
  `theme` varchar(32) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES ('1', '小黑的Blog', 'xiaohei', 'xiaohei.css');
INSERT INTO `blog_blog` VALUES ('2', '依米的个人空间', 'yimi', 'yimi.css');

-- ----------------------------
-- Table structure for `blog_category`
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `blog_category_blog_id_80f0723a_fk_blog_blog_nid` (`blog_id`),
  CONSTRAINT `blog_category_blog_id_80f0723a_fk_blog_blog_nid` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('1', '技术', '1');
INSERT INTO `blog_category` VALUES ('2', '生活', '1');
INSERT INTO `blog_category` VALUES ('3', 'LOL', '1');

-- ----------------------------
-- Table structure for `blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_nid` (`article_id`),
  KEY `blog_comment_user_id_59a54155_fk_blog_userinfo_nid` (`user_id`),
  KEY `blog_comment_parent_comment_id_26791b9a_fk_blog_comment_nid` (`parent_comment_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_nid` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`nid`),
  CONSTRAINT `blog_comment_parent_comment_id_26791b9a_fk_blog_comment_nid` FOREIGN KEY (`parent_comment_id`) REFERENCES `blog_comment` (`nid`),
  CONSTRAINT `blog_comment_user_id_59a54155_fk_blog_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', 'aa', '2019-01-01 09:11:33.181570', '1', null, '1');
INSERT INTO `blog_comment` VALUES ('2', 'bb', '2019-01-01 09:11:38.893370', '1', null, '1');
INSERT INTO `blog_comment` VALUES ('3', 'aass', '2019-01-01 09:12:08.202586', '1', '2', '1');
INSERT INTO `blog_comment` VALUES ('4', 'bbss', '2019-01-01 09:12:16.127223', '1', '2', '1');
INSERT INTO `blog_comment` VALUES ('5', 'dd', '2019-01-01 09:12:37.075329', '1', '2', '1');

-- ----------------------------
-- Table structure for `blog_tag`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `blog_tag_blog_id_a8c60c42_fk_blog_blog_nid` (`blog_id`),
  CONSTRAINT `blog_tag_blog_id_a8c60c42_fk_blog_blog_nid` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', 'python', '1');
INSERT INTO `blog_tag` VALUES ('2', 'java', '1');
INSERT INTO `blog_tag` VALUES ('3', 'C++', '1');
INSERT INTO `blog_tag` VALUES ('4', 'django', '1');

-- ----------------------------
-- Table structure for `blog_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `blog_userinfo`;
CREATE TABLE `blog_userinfo` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `blog_id` (`blog_id`),
  CONSTRAINT `blog_userinfo_blog_id_aa34488f_fk_blog_blog_nid` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_userinfo
-- ----------------------------
INSERT INTO `blog_userinfo` VALUES ('pbkdf2_sha256$120000$llTrxADE9VOY$oJbyfYPKGh+7JS1dxNdb5WoTCh5VTultmk0UpzkbQR4=', '2018-12-30 09:39:25.767110', '0', 'weihu', '', '', '1210740934@qq.com', '0', '1', '2018-11-30 15:14:12.370926', '1', null, 'avatars/mv.jpg', '2018-11-30 15:14:12.551964', '1');
INSERT INTO `blog_userinfo` VALUES ('pbkdf2_sha256$120000$0tZAd1GI6dIA$Dyh8cJ7YxGJTI5X9D/75mjRvdfrReFWyuig6HNdCWJA=', '2018-12-11 14:01:40.010790', '1', 'bbs', '', '', '', '1', '1', '2018-12-02 13:39:43.596816', '2', null, 'avatars/default.png', '2018-12-02 13:39:43.782164', '2');
INSERT INTO `blog_userinfo` VALUES ('pbkdf2_sha256$120000$e0Fqc2F68Mq4$JPP7W1TFe5b9J9Jl6h9/tNcn1Ku1bq1pbUEvM9pR60g=', null, '0', 'weihu2', '', '', '1210740935@qq.com', '0', '1', '2018-12-04 14:23:58.689443', '3', null, 'avatars/通过鼠标滑轮改变字体大小.jpg', '2018-12-04 14:23:58.936807', null);

-- ----------------------------
-- Table structure for `blog_userinfo_groups`
-- ----------------------------
DROP TABLE IF EXISTS `blog_userinfo_groups`;
CREATE TABLE `blog_userinfo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_userinfo_groups_userinfo_id_group_id_5f60ecec_uniq` (`userinfo_id`,`group_id`),
  KEY `blog_userinfo_groups_group_id_1fb5e93a_fk_auth_group_id` (`group_id`),
  CONSTRAINT `blog_userinfo_groups_group_id_1fb5e93a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `blog_userinfo_groups_userinfo_id_f6f0498b_fk_blog_userinfo_nid` FOREIGN KEY (`userinfo_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_userinfo_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_userinfo_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `blog_userinfo_user_permissions`;
CREATE TABLE `blog_userinfo_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_userinfo_user_permi_userinfo_id_permission_i_7d343093_uniq` (`userinfo_id`,`permission_id`),
  KEY `blog_userinfo_user_p_permission_id_ace80f7e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `blog_userinfo_user_p_permission_id_ace80f7e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `blog_userinfo_user_p_userinfo_id_57e76697_fk_blog_user` FOREIGN KEY (`userinfo_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_userinfo_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_blog_userinfo_nid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_blog_userinfo_nid` FOREIGN KEY (`user_id`) REFERENCES `blog_userinfo` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-12-02 14:13:53.002796', '1', '小黑的Blog', '1', '[{\"added\": {}}]', '11', '2');
INSERT INTO `django_admin_log` VALUES ('2', '2018-12-02 14:15:22.680131', '2', '依米的个人空间', '1', '[{\"added\": {}}]', '11', '2');
INSERT INTO `django_admin_log` VALUES ('3', '2018-12-02 14:15:42.187944', '1', '技术', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('4', '2018-12-02 14:18:34.745030', '2', '生活', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('5', '2018-12-02 14:18:43.145140', '1', '关于java socket中的read方法阻塞问题', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('6', '2018-12-02 14:21:43.427576', '2', '炮学无师自通', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('7', '2018-12-02 14:23:28.160866', '3', '再婚后我成了他们家的提款机，太累了', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('8', '2018-12-11 14:05:09.463440', '3', 'LOL', '1', '[{\"added\": {}}]', '12', '2');
INSERT INTO `django_admin_log` VALUES ('9', '2018-12-11 14:05:30.383994', '4', 'STL源码分析之迭代器', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('10', '2018-12-11 14:07:35.453968', '1', 'python', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('11', '2018-12-11 14:07:42.567039', '2', 'java', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('12', '2018-12-11 14:07:52.939074', '3', 'C++', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('13', '2018-12-11 14:08:05.942466', '4', 'django', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('14', '2018-12-11 14:10:17.277264', '1', 'ArticleDetail object (1)', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('15', '2018-12-11 14:10:57.999935', '2', 'ArticleDetail object (2)', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('16', '2018-12-11 14:12:24.171971', '3', 'ArticleDetail object (3)', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('17', '2018-12-11 14:13:01.952653', '4', 'ArticleDetail object (4)', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('18', '2018-12-11 14:24:51.148680', '1', '关于java socket中的read方法阻塞问题-python', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('19', '2018-12-11 14:25:00.610582', '2', '炮学无师自通-django', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('20', '2018-12-11 14:25:08.597840', '3', '再婚后我成了他们家的提款机，太累了-C++', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2018-12-11 14:25:16.290168', '4', 'STL源码分析之迭代器-C++', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2018-12-11 14:25:24.157778', '5', 'STL源码分析之迭代器-django', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2018-12-11 14:25:44.925207', '6', '关于java socket中的read方法阻塞问题-java', '1', '[{\"added\": {}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2018-12-15 09:36:22.558032', '1', 'ArticleUpDown object (1)', '1', '[{\"added\": {}}]', '10', '2');
INSERT INTO `django_admin_log` VALUES ('25', '2018-12-15 09:36:31.903820', '2', 'ArticleUpDown object (2)', '1', '[{\"added\": {}}]', '10', '2');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'article');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'article2tag');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'articledetail');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'articleupdown');
INSERT INTO `django_content_type` VALUES ('11', 'blog', 'blog');
INSERT INTO `django_content_type` VALUES ('12', 'blog', 'category');
INSERT INTO `django_content_type` VALUES ('13', 'blog', 'comment');
INSERT INTO `django_content_type` VALUES ('14', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'blog', 'userinfo');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-11-30 15:10:47.195837');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-11-30 15:10:49.294467');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-11-30 15:10:54.121780');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-11-30 15:10:55.100597');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-11-30 15:10:55.132255');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-11-30 15:10:55.178734');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-11-30 15:10:55.258867');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-11-30 15:10:55.391484');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-11-30 15:10:55.462482');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-11-30 15:10:55.509679');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2018-11-30 15:10:55.556242');
INSERT INTO `django_migrations` VALUES ('12', 'blog', '0001_initial', '2018-11-30 15:11:30.584712');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2018-11-30 15:11:32.417014');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2018-11-30 15:11:32.501487');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2018-11-30 15:11:32.593295');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2018-11-30 15:11:33.441228');
INSERT INTO `django_migrations` VALUES ('17', 'blog', '0002_auto_20181204_2221', '2018-12-04 14:21:17.952000');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('bnt6pypy644rllydtjgepfxpvscu608k', 'YzE1MzVjODhjNTg5MmU2ZWY4N2U2OGRmYTgyYWUxYmM2OTU0ZDE4Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDA5YzQyMzFhYTI5YTRjMTQ1NDZiM2RmMDQ5ZTBiZjgyOWRkZmM3In0=', '2018-12-16 13:40:13.476066');
INSERT INTO `django_session` VALUES ('sqb0was76804brniev5354d3d3doueaz', 'YzE1MzVjODhjNTg5MmU2ZWY4N2U2OGRmYTgyYWUxYmM2OTU0ZDE4Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDA5YzQyMzFhYTI5YTRjMTQ1NDZiM2RmMDQ5ZTBiZjgyOWRkZmM3In0=', '2018-12-25 14:01:40.265125');
INSERT INTO `django_session` VALUES ('zgqy0i7xf1vkiwzwso0t65arn0kuezke', 'ZmQyODQ4YjBjN2I0YzMxMWZkOTZhZWQwYmVlY2I2Nzc2YjIzZGQwNTp7Imd0X3NlcnZlcl9zdGF0dXMiOjEsInVzZXJfaWQiOiJ0ZXN0IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdiZjllYjdkYWU3NjNkNWQyY2M1NjZjOTVkYjIzYzYxMzQ0MWNiMGYifQ==', '2019-01-13 09:39:26.118720');
