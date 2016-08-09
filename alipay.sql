/*
 Navicat Premium Data Transfer

 Source Server         : quwanba
 Source Server Type    : MySQL
 Source Server Version : 50547
 Source Host           : 114.55.25.170
 Source Database       : quwanba

 Target Server Type    : MySQL
 Target Server Version : 50547
 File Encoding         : utf-8

 Date: 08/09/2016 21:48:04 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `qwb_alipay`
-- ----------------------------
DROP TABLE IF EXISTS `qwb_alipay`;
CREATE TABLE `qwb_alipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_time` datetime NOT NULL COMMENT '通知时间',
  `notify_type` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '通知类型',
  `notify_id` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '通知校验ID',
  `sign_type` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '签名方式',
  `sign` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '签名',
  `out_trade_no` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '商户网站统一订单号',
  `subject` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '商品名称',
  `payment_type` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '支付类型',
  `trade_no` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '支付宝交易号',
  `trade_status` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '交易状态 ',
  `seller_id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '卖家支付宝用户号',
  `seller_email` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '卖家支付宝账号',
  `buyer_id` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '买家支付宝用户号',
  `buyer_email` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '买家支付宝账号',
  `total_fee` double NOT NULL COMMENT '交易金额 ',
  `quantity` double NOT NULL,
  `price` double NOT NULL COMMENT '商品单价',
  `body` varchar(600) CHARACTER SET utf8 NOT NULL COMMENT '商品描述 ',
  `gmt_create` datetime NOT NULL COMMENT '购买数量',
  `gmt_payment` datetime NOT NULL COMMENT '交易创建时间 ',
  `is_total_fee_adjust` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT '是否调整总价 ',
  `use_coupon` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT '是否使用红包买家',
  `discount` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '折扣',
  `refund_status` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '退款状态',
  `gmt_refund` datetime NOT NULL COMMENT '退款时间 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
