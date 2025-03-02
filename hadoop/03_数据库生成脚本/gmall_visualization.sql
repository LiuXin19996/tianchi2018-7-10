/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.8.11
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : 192.168.8.11:3306
 Source Schema         : gmall_visualization

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 18/08/2019 15:45:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ads_gmv_sum_day
-- ----------------------------
DROP TABLE IF EXISTS `ads_gmv_sum_day`;
CREATE TABLE `ads_gmv_sum_day`  (
  `dt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计日期',
  `gmv_count` bigint(20) NULL DEFAULT NULL COMMENT '当日gmv订单个数',
  `gmv_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '当日gmv订单总金额',
  `gmv_payment` decimal(16, 2) NULL DEFAULT NULL COMMENT '当日支付金额'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '每日活跃用户数量' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads_gmv_sum_day
-- ----------------------------
INSERT INTO `ads_gmv_sum_day` VALUES ('2019-03-01 22:51:37', 1000, 210000.00, 2000.00);
INSERT INTO `ads_gmv_sum_day` VALUES ('2019-05-08 22:52:32', 3434, 12413.00, 1.00);
INSERT INTO `ads_gmv_sum_day` VALUES ('2019-07-13 22:52:51', 1222, 324345.00, 1.00);
INSERT INTO `ads_gmv_sum_day` VALUES ('2019-09-13 22:53:08', 2344, 12312.00, 1.00);

-- ----------------------------
-- Table structure for ads_gmv_sum_province
-- ----------------------------
DROP TABLE IF EXISTS `ads_gmv_sum_province`;
CREATE TABLE `ads_gmv_sum_province`  (
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmv` bigint(255) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads_gmv_sum_province
-- ----------------------------
INSERT INTO `ads_gmv_sum_province` VALUES ('北京', 2000, '');
INSERT INTO `ads_gmv_sum_province` VALUES ('辽宁', 30000, '沈阳：21.1%，大连：20%，鞍山：35%');
INSERT INTO `ads_gmv_sum_province` VALUES ('浙江', 8002, '杭州：20%，舟山：50%');

-- ----------------------------
-- Table structure for ads_user_action_convert_day
-- ----------------------------
DROP TABLE IF EXISTS `ads_user_action_convert_day`;
CREATE TABLE `ads_user_action_convert_day`  (
  `dt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计日期',
  `total_visitor_m_count` bigint(20) NULL DEFAULT NULL COMMENT '总访问人数',
  `order_u_count` bigint(20) NULL DEFAULT NULL COMMENT '下单人数',
  `visitor2order_convert_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '购物车到下单转化率',
  `payment_u_count` bigint(20) NULL DEFAULT NULL COMMENT '支付人数',
  `order2payment_convert_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '下单到支付的转化率'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '每日用户行为转化率统计' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads_user_action_convert_day
-- ----------------------------
INSERT INTO `ads_user_action_convert_day` VALUES ('2019-04-28 19:36:18', 10000, 3000, 0.25, 2000, 0.15);

-- ----------------------------
-- Table structure for ads_user_retention_day_rate
-- ----------------------------
DROP TABLE IF EXISTS `ads_user_retention_day_rate`;
CREATE TABLE `ads_user_retention_day_rate`  (
  `stat_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计日期',
  `create_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备新增日期',
  `retention_day` bigint(200) NULL DEFAULT NULL COMMENT '截止当前日期留存天数',
  `retention_count` bigint(200) NULL DEFAULT NULL COMMENT '留存数量',
  `new_mid_count` bigint(200) NULL DEFAULT NULL COMMENT '当日设备新增数量',
  `retention_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '留存率'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '每日用户留存情况' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads_user_retention_day_rate
-- ----------------------------
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-09', '2019-03-08', 1, 88, 99, 0.78);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-10', '2019-03-08', 2, 77, 88, 0.68);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-11', '2019-03-08', 3, 66, 77, 0.58);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-12', '2019-03-08', 4, 55, 66, 0.48);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-13', '2019-03-08', 5, 44, 55, 0.38);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-14', '2019-03-08', 6, 33, 44, 0.28);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-10', '2019-03-09', 1, 77, 88, 0.56);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-11', '2019-03-09', 2, 66, 77, 0.46);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-12', '2019-03-09', 3, 55, 66, 0.36);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-13', '2019-03-09', 4, 44, 55, 0.26);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-14', '2019-03-09', 5, 33, 44, 0.16);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-11', '2019-03-10', 1, 66, 77, 0.55);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-12', '2019-03-10', 2, 55, 66, 0.45);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-13', '2019-03-10', 3, 44, 55, 0.35);
INSERT INTO `ads_user_retention_day_rate` VALUES ('2019-03-14', '2019-03-10', 4, 33, 44, 0.25);

-- ----------------------------
-- Table structure for ads_uv_count
-- ----------------------------
DROP TABLE IF EXISTS `ads_uv_count`;
CREATE TABLE `ads_uv_count`  (
  `dt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计日期',
  `day_count` bigint(200) NULL DEFAULT NULL COMMENT '当日用户数量',
  `wk_count` bigint(200) NULL DEFAULT NULL COMMENT '当周用户数量',
  `mn_count` bigint(200) NULL DEFAULT NULL COMMENT '当月用户数量',
  `is_weekend` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Y,N是否是周末,用于得到本周最终结果',
  `is_monthend` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Y,N是否是月末,用于得到本月最终结果'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '每日活跃用户数量' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads_uv_count
-- ----------------------------
INSERT INTO `ads_uv_count` VALUES ('2019-03-01 14:10:04', 20, 30, 100, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-02 14:12:48', 35, 50, 100, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-03 14:14:07', 25, 640, 3300, 'Y', 'Y');
INSERT INTO `ads_uv_count` VALUES ('2019-03-04 14:14:14', 10, 23, 123, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-05 14:14:21', 80, 121, 131, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-06 14:14:38', 30, 53, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-07 14:33:27', 20, 31, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-08 14:33:39', 10, 53, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-09 14:33:47', 10, 34, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-10 14:33:54', 10, 653, 8453, 'Y', 'Y');
INSERT INTO `ads_uv_count` VALUES ('2019-03-11 14:34:04', 100, 453, 1453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-12 14:34:10', 101, 153, 134, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-13 14:34:16', 100, 286, 313, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-14 14:34:22', 100, 45, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-15 14:34:29', 100, 345, 3453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-16 14:34:35', 101, 453, 453, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-17 14:34:41', 100, 678, 9812, 'Y', 'Y');
INSERT INTO `ads_uv_count` VALUES ('2019-03-18 14:34:46', 100, 186, 193, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-19 14:34:53', 453, 686, 712, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-20 14:34:57', 452, 786, 823, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-21 14:35:02', 214, 58, 213, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-22 14:35:08', 76, 78, 95, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-23 14:35:13', 76, 658, 745, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-24 14:35:19', 76, 687, 9300, 'Y', 'Y');
INSERT INTO `ads_uv_count` VALUES ('2019-03-25 14:35:25', 76, 876, 923, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-26 14:35:30', 76, 456, 511, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-27 14:35:35', 76, 456, 623, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-28 14:35:41', 43, 753, 4000, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-29 14:35:47', 76, 876, 4545, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-30 14:35:57', 76, 354, 523, 'N', 'N');
INSERT INTO `ads_uv_count` VALUES ('2019-03-31 14:36:02', 43, 634, 6213, 'Y', 'Y');

SET FOREIGN_KEY_CHECKS = 1;
