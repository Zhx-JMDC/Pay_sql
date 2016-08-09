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

 Date: 08/09/2016 21:47:33 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `qwb_wechat_pay`
-- ----------------------------
DROP TABLE IF EXISTS `qwb_wechat_pay`;
CREATE TABLE `qwb_wechat_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(225) DEFAULT NULL COMMENT '公众账号ID',
  `attach` varchar(50) DEFAULT NULL COMMENT 'attach',
  `bank_type` varchar(255) DEFAULT NULL,
  `fee_type` varchar(255) DEFAULT NULL COMMENT '货币类型',
  `is_subscribe` varchar(255) DEFAULT NULL,
  `mch_id` varchar(100) DEFAULT NULL,
  `nonce_str` varchar(255) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT '用户标识',
  `out_trade_no` varchar(100) DEFAULT NULL COMMENT 'out_trade_no',
  `result_code` varchar(255) DEFAULT NULL,
  `return_code` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL COMMENT '签名',
  `time_end` datetime DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `trade_type` varchar(255) DEFAULT NULL COMMENT '交易类型',
  `transaction_id` varchar(100) DEFAULT NULL,
  `cash_fee` decimal(10,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
