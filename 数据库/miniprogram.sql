/*
Navicat MySQL Data Transfer

Source Server         : lys
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : miniprogram

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2020-03-23 14:18:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for drink
-- ----------------------------
DROP TABLE IF EXISTS `drink`;
CREATE TABLE `drink` (
  `drinkId` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `picUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`drinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of drink
-- ----------------------------
INSERT INTO `drink` VALUES ('a', '奶茶三兄弟', '18', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('b', '珍珠奶茶', '1', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('c', '鲜芋青稞牛奶', '14', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('d', '茉香奶茶', '16', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('e', '美式咖啡', '18', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('f', '拿铁咖啡', '18', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('g', '青稞可可牛奶', '20', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('h', '双拼可可牛奶', '22', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');
INSERT INTO `drink` VALUES ('i', '布丁可可牛奶', '22', 'http://www.coco-tea.com.cn/images/product/%E9%86%87%E9%A6%99%E5%A5%B6%E8%8C%B6/%E7%8F%8D%E7%8F%A0%E5%A5%B6%E8%8C%B6460x460.png');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `orderId` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `total` double(10,0) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('0f950f9767f0457c815e148b5c76cfcf', '09A6555D8190FC3741BF1DFDD4494F94', '奶茶三兄弟x3 珍珠奶茶x3 鲜芋青稞牛奶x3 茉香奶茶x2', '131', '2020-02-24 18:25:59', '0');
INSERT INTO `order_detail` VALUES ('12b1decbd5864a4caa877db31b641653', '09A6555D8190FC3741BF1DFDD4494F94', '奶茶三兄弟x1 鲜芋青稞牛奶x1 美式咖啡x1', '50', '2020-02-21 16:49:22', '0');
INSERT INTO `order_detail` VALUES ('13d6a6a6be0a481fb7018c25a0a4fc8e', '09A6555D8190FC3741BF1DFDD4494F94', '美式咖啡x2', '36', '2020-02-20 18:29:17', '0');
INSERT INTO `order_detail` VALUES ('17ce4de5cabb4236a659a26eacfc9744', '09A6555D8190FC3741BF1DFDD4494F94', '拿铁咖啡x2', '36', '2020-02-20 18:27:48', '0');
INSERT INTO `order_detail` VALUES ('25087d7bbfd941e2954c7b9beb08c8e5', '09A6555D8190FC3741BF1DFDD4494F94', '茉香奶茶x2', '32', '2020-02-20 18:22:28', '0');
INSERT INTO `order_detail` VALUES ('265', '528', '58', '89', null, '0');
INSERT INTO `order_detail` VALUES ('2d562f3df2f3401ebec712044a01121f', '09A6555D8190FC3741BF1DFDD4494F94', '茉香奶茶x2', '32', '2020-02-20 18:22:32', '0');
INSERT INTO `order_detail` VALUES ('4c144c68e6ae498daeb335e70954fb2b', '09A6555D8190FC3741BF1DFDD4494F94', '美式咖啡x3', '54', '2020-02-20 18:26:06', '0');
INSERT INTO `order_detail` VALUES ('5b76eceb34fd4ec8a5ce5f36230afa97', '09A6555D8190FC3741BF1DFDD4494F94', '奶茶三兄弟x1', '18', '2020-02-20 18:34:19', '0');
INSERT INTO `order_detail` VALUES ('6851654b54df468daee6a2237b350c00', '09A6555D8190FC3741BF1DFDD4494F94', '奶茶三兄弟x1 鲜芋青稞牛奶x1 美式咖啡x1', '50', '2020-02-20 18:29:03', '0');
INSERT INTO `order_detail` VALUES ('6fcfb190b6fe41519d6d729337dc0a18', '09A6555D8190FC3741BF1DFDD4494F94', '茉香奶茶x3', '48', '2020-02-20 18:26:35', '0');
INSERT INTO `order_detail` VALUES ('8227c890a2654d11a4dd32a23bc49de4', '09A6555D8190FC3741BF1DFDD4494F94', '茉香奶茶x2', '32', '2020-02-20 18:32:31', '0');
INSERT INTO `order_detail` VALUES ('85c040e85223485896ff897231203eca', '09A6555D8190FC3741BF1DFDD4494F94', '奶茶三兄弟x1 鲜芋青稞牛奶x1 美式咖啡x1', '50', '2020-02-21 16:51:05', '0');
INSERT INTO `order_detail` VALUES ('9e90ab8178c64de39f171466316d727e', '09A6555D8190FC3741BF1DFDD4494F94', '珍珠奶茶x3', '3', '2020-02-20 18:30:48', '0');
INSERT INTO `order_detail` VALUES ('ac865920e6264e898b9d3851fdf851ac', '09A6555D8190FC3741BF1DFDD4494F94', '美式咖啡x2', '36', '2020-02-20 18:28:30', '0');
INSERT INTO `order_detail` VALUES ('b73ffc5ade6a42089a53d5a4fe4f9622', '09A6555D8190FC3741BF1DFDD4494F94', '美式咖啡x2', '36', '2020-02-20 18:28:16', '0');
INSERT INTO `order_detail` VALUES ('e8017e476a3e43fda4a75ff2008fe4e5', '09A6555D8190FC3741BF1DFDD4494F94', '茉香奶茶x2', '32', '2020-02-20 18:23:17', '0');
INSERT INTO `order_detail` VALUES ('f163739842e04240bd1ba0b87f162a7d', '09A6555D8190FC3741BF1DFDD4494F94', '美式咖啡x2', '36', '2020-02-20 18:28:43', '0');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `drinkIds` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('sdadas', '猜你喜欢', 'a,b,c,d,e,f');
INSERT INTO `type` VALUES ('dsadsd', '咖啡时光', 'a,c');
INSERT INTO `type` VALUES ('dsadas', '暖饮轻食', 'a,e,g');
INSERT INTO `type` VALUES ('vdsvd', '浓情可可', 'a,b,c,d');
INSERT INTO `type` VALUES ('dsda', '牧场牛奶', 'c,d,e,a,b');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `avartar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `nickname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `homeNumber` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('09A6555D8190FC3741BF1DFDD4494F94', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo5icPnuNzKDibwxH3Bv99XAI6Lsib8ianGMbmicDBhnalwPzgAa9bV3Ex2g4QkmEH8Xwh0pbB9nvOHzqg/132', '龙建国', '莘庄', 'Suizhou', 'Hubei', '1378188579', '302号');
INSERT INTO `user` VALUES ('123', '123', null, '123', null, null, null, null);
