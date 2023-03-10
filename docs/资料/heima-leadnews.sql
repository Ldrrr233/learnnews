/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : heima-leadnews

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-09-02 14:41:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_blob_triggers`;
CREATE TABLE `admin_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `ADMIN_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `admin_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for admin_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_calendars`;
CREATE TABLE `admin_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for admin_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_cron_triggers`;
CREATE TABLE `admin_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `ADMIN_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `admin_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `admin_qrtz_cron_triggers` VALUES ('quartz.prod.admin', 'crawlerReviewArticleJobTrigger_0', 'admin_crawlerReviewArticleJobTrigger', '0 0/5 * * * ?', 'Etc/UTC');

-- ----------------------------
-- Table structure for admin_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_fired_triggers`;
CREATE TABLE `admin_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_fired_triggers
-- ----------------------------
INSERT INTO `admin_qrtz_fired_triggers` VALUES ('quartz.prod.admin', 'quartz.prod.admin-instanceId1566549833893', 'crawlerReviewArticleJobTrigger_0', 'admin_crawlerReviewArticleJobTrigger', 'quartz.prod.admin-instanceId', '1566891019686', '1566891019522', '0', 'EXECUTING', 'crawlerReviewArticleJobAutoJobDetail', 'admin_default', '1', '1');

-- ----------------------------
-- Table structure for admin_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_job_details`;
CREATE TABLE `admin_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_job_details
-- ----------------------------
INSERT INTO `admin_qrtz_job_details` VALUES ('quartz.prod.admin', 'crawlerReviewArticleJobAutoJobDetail', 'admin_default', '', 'com.heima.admin.job.CrawlerReviewArticleJob', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `admin_qrtz_job_details` VALUES ('quartz.prod.admin', 'quartzScanJobDetail', 'init-group-admin_0', '?????????????????????', 'com.heima.quartz.QuartzScanJob', '1', '1', '1', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400066272616E636874000E6272616E63682D64656661756C747800);

-- ----------------------------
-- Table structure for admin_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_locks`;
CREATE TABLE `admin_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_locks
-- ----------------------------
INSERT INTO `admin_qrtz_locks` VALUES ('quartz.prod.admin', 'STATE_ACCESS');
INSERT INTO `admin_qrtz_locks` VALUES ('quartz.prod.admin', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for admin_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_paused_trigger_grps`;
CREATE TABLE `admin_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for admin_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_scheduler_state`;
CREATE TABLE `admin_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `admin_qrtz_scheduler_state` VALUES ('quartz.prod.admin', 'quartz.prod.admin-instanceId', '1566892090150', '7500');

-- ----------------------------
-- Table structure for admin_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_simple_triggers`;
CREATE TABLE `admin_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `ADMIN_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `admin_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for admin_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_simprop_triggers`;
CREATE TABLE `admin_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `ADMIN_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `admin_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for admin_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `admin_qrtz_triggers`;
CREATE TABLE `admin_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `ADMIN_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `admin_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_qrtz_triggers
-- ----------------------------
INSERT INTO `admin_qrtz_triggers` VALUES ('quartz.prod.admin', 'crawlerReviewArticleJobTrigger_0', 'admin_crawlerReviewArticleJobTrigger', 'crawlerReviewArticleJobAutoJobDetail', 'admin_default', '????????????23:30??????', '1566891300000', '1566891019522', '0', 'BLOCKED', 'CRON', '1566526834000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000D61646D696E5F64656661756C747672002B636F6D2E6865696D612E61646D696E2E6A6F622E437261776C657252657669657741727469636C654A6F62000000000000000000000078707371007E0000007371007E00053F40000000000010770800000010000000007800740024637261776C657252657669657741727469636C654A6F624175746F4A6F6244657461696C7800);

-- ----------------------------
-- Table structure for ad_article_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ad_article_statistics`;
CREATE TABLE `ad_article_statistics` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `article_we_media` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `article_crawlers` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `read_20` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `read_100` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `read_count` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `comment` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `follow` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `collection` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `forward` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `likes` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `unlikes` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `unfollow` int(11) unsigned DEFAULT NULL COMMENT 'unfollow',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_article_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for ad_channel
-- ----------------------------
DROP TABLE IF EXISTS `ad_channel`;
CREATE TABLE `ad_channel` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `is_default` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????',
  `status` tinyint(1) unsigned DEFAULT NULL,
  `ord` tinyint(3) unsigned DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????';

-- ----------------------------
-- Records of ad_channel
-- ----------------------------

-- ----------------------------
-- Table structure for ad_channel_label
-- ----------------------------
DROP TABLE IF EXISTS `ad_channel_label`;
CREATE TABLE `ad_channel_label` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `channel_id` int(11) unsigned DEFAULT NULL,
  `label_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `ord` int(5) unsigned DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_channel_label
-- ----------------------------

-- ----------------------------
-- Table structure for ad_function
-- ----------------------------
DROP TABLE IF EXISTS `ad_function`;
CREATE TABLE `ad_function` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_function
-- ----------------------------

-- ----------------------------
-- Table structure for ad_label
-- ----------------------------
DROP TABLE IF EXISTS `ad_label`;
CREATE TABLE `ad_label` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0????????????\r\n            1????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????';

-- ----------------------------
-- Records of ad_label
-- ----------------------------

-- ----------------------------
-- Table structure for ad_menu
-- ----------------------------
DROP TABLE IF EXISTS `ad_menu`;
CREATE TABLE `ad_menu` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ad_recommend_strategy
-- ----------------------------
DROP TABLE IF EXISTS `ad_recommend_strategy`;
CREATE TABLE `ad_recommend_strategy` (
  `id` int(5) unsigned NOT NULL COMMENT '??????',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `is_enable` tinyint(1) DEFAULT NULL COMMENT '????????????',
  `group_id` int(5) unsigned DEFAULT NULL COMMENT '??????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_recommend_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for ad_role
-- ----------------------------
DROP TABLE IF EXISTS `ad_role`;
CREATE TABLE `ad_role` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `is_enable` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????';

-- ----------------------------
-- Records of ad_role
-- ----------------------------

-- ----------------------------
-- Table structure for ad_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `ad_role_auth`;
CREATE TABLE `ad_role_auth` (
  `id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ??????',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_role_auth
-- ----------------------------

-- ----------------------------
-- Table structure for ad_sensitive
-- ----------------------------
DROP TABLE IF EXISTS `ad_sensitive`;
CREATE TABLE `ad_sensitive` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `sensitives` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????';

-- ----------------------------
-- Records of ad_sensitive
-- ----------------------------

-- ----------------------------
-- Table structure for ad_strategy_group
-- ----------------------------
DROP TABLE IF EXISTS `ad_strategy_group`;
CREATE TABLE `ad_strategy_group` (
  `id` int(5) unsigned NOT NULL COMMENT '??????',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????????????????';

-- ----------------------------
-- Records of ad_strategy_group
-- ----------------------------

-- ----------------------------
-- Table structure for ad_user
-- ----------------------------
DROP TABLE IF EXISTS `ad_user`;
CREATE TABLE `ad_user` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `password` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `salt` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???',
  `nickname` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `phone` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `status` tinyint(11) unsigned DEFAULT NULL COMMENT '??????\r\n            0 ???????????????\r\n            1 ???????????????\r\n            9 ????????????',
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `login_time` datetime DEFAULT NULL COMMENT '????????????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????';

-- ----------------------------
-- Records of ad_user
-- ----------------------------

-- ----------------------------
-- Table structure for ad_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `ad_user_equipment`;
CREATE TABLE `ad_user_equipment` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0PC\r\n            1ANDROID\r\n            2IOS\r\n            3PAD\r\n            9 ??????',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `sys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `no` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????MD5??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????';

-- ----------------------------
-- Records of ad_user_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for ad_user_login
-- ----------------------------
DROP TABLE IF EXISTS `ad_user_login`;
CREATE TABLE `ad_user_login` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????IP',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `longitude` decimal(5,5) DEFAULT NULL COMMENT '??????',
  `latitude` decimal(5,5) DEFAULT NULL COMMENT '??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of ad_user_login
-- ----------------------------

-- ----------------------------
-- Table structure for ad_user_opertion
-- ----------------------------
DROP TABLE IF EXISTS `ad_user_opertion`;
CREATE TABLE `ad_user_opertion` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????IP',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `type` int(5) DEFAULT NULL COMMENT '????????????',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of ad_user_opertion
-- ----------------------------

-- ----------------------------
-- Table structure for ad_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ad_user_role`;
CREATE TABLE `ad_user_role` (
  `id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????';

-- ----------------------------
-- Records of ad_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for ad_vistor_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ad_vistor_statistics`;
CREATE TABLE `ad_vistor_statistics` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `activity` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `vistor` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `ip` int(11) unsigned DEFAULT NULL COMMENT 'IP???',
  `register` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of ad_vistor_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for ap_article
-- ----------------------------
DROP TABLE IF EXISTS `ap_article`;
CREATE TABLE `ap_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `channel_id` int(10) unsigned DEFAULT NULL COMMENT '??????????????????ID',
  `channel_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `layout` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????\r\n            2 ????????????',
  `flag` tinyint(3) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????\r\n            2 ????????????\r\n            3 ????????????\r\n            4 ???V ??????',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????\r\n            ??????????????????',
  `labels` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????3??? ????????????',
  `likes` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `collection` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `comment` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `views` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `province_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `city_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `county_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `publish_time` datetime DEFAULT NULL COMMENT '????????????',
  `sync_status` tinyint(1) DEFAULT '0' COMMENT '????????????',
  `origin` tinyint(1) unsigned DEFAULT '0' COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????????????????';

-- ----------------------------
-- Records of ap_article
-- ----------------------------

-- ----------------------------
-- Table structure for ap_article_config
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_config`;
CREATE TABLE `ap_article_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `is_comment` tinyint(1) unsigned DEFAULT NULL COMMENT '???????????????',
  `is_forward` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `is_down` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `is_delete` tinyint(1) unsigned DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_article_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP????????????????????????';

-- ----------------------------
-- Records of ap_article_config
-- ----------------------------

-- ----------------------------
-- Table structure for ap_article_content
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_content`;
CREATE TABLE `ap_article_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_article_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP????????????????????????';

-- ----------------------------
-- Records of ap_article_content
-- ----------------------------

-- ----------------------------
-- Table structure for ap_article_label
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_label`;
CREATE TABLE `ap_article_label` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `article_id` int(11) unsigned DEFAULT NULL,
  `label_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `count` int(5) unsigned DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????????????????????';

-- ----------------------------
-- Records of ap_article_label
-- ----------------------------

-- ----------------------------
-- Table structure for ap_associate_words
-- ----------------------------
DROP TABLE IF EXISTS `ap_associate_words`;
CREATE TABLE `ap_associate_words` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `associate_words` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_associate_words` (`associate_words`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????';

-- ----------------------------
-- Records of ap_associate_words
-- ----------------------------

-- ----------------------------
-- Table structure for ap_author
-- ----------------------------
DROP TABLE IF EXISTS `ap_author`;
CREATE TABLE `ap_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `name` varchar(20) DEFAULT NULL COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0 ????????????\r\n            1 ???????????????\r\n            2 ??????????????????\r\n            ',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `wm_user_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_type_name` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3385 DEFAULT CHARSET=utf8 COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_author
-- ----------------------------

-- ----------------------------
-- Table structure for ap_behavior_entry
-- ----------------------------
DROP TABLE IF EXISTS `ap_behavior_entry`;
CREATE TABLE `ap_behavior_entry` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0????????????\r\n            1??????',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????,????????????????????????????????????????????????????????????';

-- ----------------------------
-- Records of ap_behavior_entry
-- ----------------------------

-- ----------------------------
-- Table structure for ap_collection
-- ----------------------------
DROP TABLE IF EXISTS `ap_collection`;
CREATE TABLE `ap_collection` (
  `id` int(11) unsigned NOT NULL,
  `behavior_entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????\r\n            0??????\r\n            1??????',
  `collection_time` datetime DEFAULT NULL COMMENT '????????????',
  `published_time` datetime DEFAULT NULL COMMENT '????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_type` (`behavior_entry_id`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_collection
-- ----------------------------

-- ----------------------------
-- Table structure for ap_comment
-- ----------------------------
DROP TABLE IF EXISTS `ap_comment`;
CREATE TABLE `ap_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `entry_id` int(11) unsigned DEFAULT NULL,
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????\r\n            0 ??????\r\n            1 ??????',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(5) unsigned DEFAULT NULL,
  `reply` int(5) unsigned DEFAULT NULL,
  `flag` tinyint(2) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????\r\n            2 ????????????\r\n            3 ????????????\r\n            4 ????????????\r\n            5 ???V ??????',
  `longitude` decimal(5,5) DEFAULT NULL,
  `latitude` decimal(5,5) DEFAULT NULL COMMENT '??????',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `ord` int(11) unsigned DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ap_comment_repay
-- ----------------------------
DROP TABLE IF EXISTS `ap_comment_repay`;
CREATE TABLE `ap_comment_repay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `comment_id` int(11) unsigned DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `likes` int(5) unsigned DEFAULT NULL,
  `longitude` decimal(5,5) unsigned DEFAULT NULL,
  `latitude` decimal(5,5) unsigned DEFAULT NULL COMMENT '??????',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_comment_repay
-- ----------------------------

-- ----------------------------
-- Table structure for ap_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `ap_dynamic`;
CREATE TABLE `ap_dynamic` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `is_forward` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `articel_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `article_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `layout` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????\r\n            2 ????????????\r\n            3 ????????????',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????\r\n            ??????????????????',
  `likes` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `collection` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `comment` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `views` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for ap_equipment
-- ----------------------------
DROP TABLE IF EXISTS `ap_equipment`;
CREATE TABLE `ap_equipment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0PC\r\n            1ANDROID\r\n            2IOS\r\n            3PAD\r\n            9 ??????',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `sys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `no` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????MD5??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for ap_equipment_code
-- ----------------------------
DROP TABLE IF EXISTS `ap_equipment_code`;
CREATE TABLE `ap_equipment_code` (
  `id` int(11) unsigned NOT NULL,
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `code` longtext COLLATE utf8mb4_unicode_ci COMMENT '?????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP??????????????????';

-- ----------------------------
-- Records of ap_equipment_code
-- ----------------------------

-- ----------------------------
-- Table structure for ap_follow_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_follow_behavior`;
CREATE TABLE `ap_follow_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `follow_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_follow_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_forward_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_forward_behavior`;
CREATE TABLE `ap_forward_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `dynamic_id` int(11) unsigned DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_forward_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_hot_articles
-- ----------------------------
DROP TABLE IF EXISTS `ap_hot_articles`;
CREATE TABLE `ap_hot_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '??????ID',
  `tag_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '????????????',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `province_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `city_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `county_id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `is_read` tinyint(2) unsigned DEFAULT NULL COMMENT '????????????',
  `release_date` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????';

-- ----------------------------
-- Records of ap_hot_articles
-- ----------------------------

-- ----------------------------
-- Table structure for ap_hot_words
-- ----------------------------
DROP TABLE IF EXISTS `ap_hot_words`;
CREATE TABLE `ap_hot_words` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hot_words` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `type` tinyint(2) DEFAULT NULL COMMENT '0:???,1:???,2:???,3:???,4:???,5:???',
  `hot_date` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_hot_date` (`hot_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????';

-- ----------------------------
-- Records of ap_hot_words
-- ----------------------------

-- ----------------------------
-- Table structure for ap_likes_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_likes_behavior`;
CREATE TABLE `ap_likes_behavior` (
  `id` int(11) unsigned NOT NULL,
  `behavior_entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????\r\n            0??????\r\n            1??????',
  `operation` tinyint(1) unsigned DEFAULT NULL COMMENT '0 ??????\r\n            1 ????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_likes_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_read_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_read_behavior`;
CREATE TABLE `ap_read_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `count` tinyint(3) unsigned DEFAULT NULL,
  `read_duration` int(11) unsigned DEFAULT NULL COMMENT '?????????????????????',
  `percentage` tinyint(3) unsigned DEFAULT NULL COMMENT '???????????????',
  `load_duration` int(11) unsigned DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL,
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_read_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_share_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_share_behavior`;
CREATE TABLE `ap_share_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '0 ??????\r\n            1 ???????????????\r\n            2 QQ\r\n            3 QQ ??????\r\n            4 ??????\r\n            ',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_share_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_show_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_show_behavior`;
CREATE TABLE `ap_show_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `is_click` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `show_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_show_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_unlikes_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_unlikes_behavior`;
CREATE TABLE `ap_unlikes_behavior` (
  `id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '0 ?????????\r\n            1 ???????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP??????????????????';

-- ----------------------------
-- Records of ap_unlikes_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user
-- ----------------------------
DROP TABLE IF EXISTS `ap_user`;
CREATE TABLE `ap_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `salt` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????????????????',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????,md5??????',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '0 ???\r\n            1 ???\r\n            2 ??????',
  `is_certification` tinyint(1) unsigned DEFAULT NULL COMMENT '0 ???\r\n            1 ???',
  `is_identity_authentication` tinyint(1) DEFAULT NULL COMMENT '??????????????????',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '0??????\r\n            1??????',
  `flag` tinyint(1) unsigned DEFAULT NULL COMMENT '0 ????????????\r\n            1 ????????????\r\n            2 ???V',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_user
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_article_list
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_article_list`;
CREATE TABLE `ap_user_article_list` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `is_show` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `recommend_time` datetime DEFAULT NULL COMMENT '????????????',
  `is_read` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `strategy_id` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP??????????????????';

-- ----------------------------
-- Records of ap_user_article_list
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_channel
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_channel`;
CREATE TABLE `ap_user_channel` (
  `id` int(11) unsigned NOT NULL,
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ord` tinyint(2) DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_channel
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_dynamic_list
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_dynamic_list`;
CREATE TABLE `ap_user_dynamic_list` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `dynamic_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP??????????????????';

-- ----------------------------
-- Records of ap_user_dynamic_list
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_equipment`;
CREATE TABLE `ap_user_equipment` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `last_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_fan
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_fan`;
CREATE TABLE `ap_user_fan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `fans_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `fans_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `level` tinyint(1) unsigned DEFAULT NULL COMMENT '???????????????\r\n            0 ??????\r\n            1 ?????????\r\n            2 ??????\r\n            3 ??????\r\n            4 ??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `is_display` tinyint(1) unsigned DEFAULT NULL COMMENT '?????????????????????',
  `is_shield_letter` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????',
  `is_shield_comment` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_fan
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_feedback`;
CREATE TABLE `ap_user_feedback` (
  `id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????,??????????????????',
  `is_solve` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `solve_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solved_time` datetime DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_follow`;
CREATE TABLE `ap_user_follow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `follow_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `follow_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `level` tinyint(1) unsigned DEFAULT NULL COMMENT '?????????\r\n            0 ???????????????\r\n            1 ??????\r\n            2 ??????\r\n            3 ??????',
  `is_notice` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_follow
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_identity`;
CREATE TABLE `ap_user_identity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `font_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `back_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `hold_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `industry` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '??????\r\n            0 ?????????\r\n            1 ?????????\r\n            2 ????????????\r\n            9 ????????????',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `submited_time` datetime DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_identity
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_info`;
CREATE TABLE `ap_user_info` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????,aes??????',
  `company` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `occupation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `age` tinyint(3) unsigned DEFAULT NULL COMMENT '??????',
  `birthday` datetime DEFAULT NULL,
  `introduction` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `location` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `fans` int(10) unsigned DEFAULT NULL COMMENT '????????????',
  `follows` int(10) unsigned DEFAULT NULL COMMENT '????????????',
  `is_recommend_me` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????????????????',
  `is_recommend_friend` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????????????????',
  `is_display_image` tinyint(1) unsigned DEFAULT NULL COMMENT '??????????????????????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????';

-- ----------------------------
-- Records of ap_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_letter
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_letter`;
CREATE TABLE `ap_user_letter` (
  `id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `sender_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `sender_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `is_read` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `read_time` datetime DEFAULT NULL COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_letter
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_message
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_message`;
CREATE TABLE `ap_user_message` (
  `id` int(11) unsigned DEFAULT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `sender_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `sender_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ????????????\r\n            2 ????????????\r\n            3 ??????????????????\r\n            4 ????????????\r\n            5 ????????????\r\n            6 ????????????\r\n            7 ??????????????????\r\n            8 ????????????\r\n            9 ????????????\r\n            10 ????????????\r\n            \r\n            100 ?????????????????????\r\n            101 ?????????????????????\r\n            102 ??????????????????\r\n            103 ??????????????????\r\n            104 ??????????????????\r\n            105 ??????????????????\r\n            106 ????????????\r\n            107 ????????????',
  `is_read` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `read_time` datetime DEFAULT NULL COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP???????????????????????????';

-- ----------------------------
-- Records of ap_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_realname
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_realname`;
CREATE TABLE `ap_user_realname` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `font_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `back_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `hold_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `live_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '??????\r\n            0 ?????????\r\n            1 ?????????\r\n            2 ????????????\r\n            9 ????????????',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `submited_time` datetime DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_realname
-- ----------------------------

-- ----------------------------
-- Table structure for ap_user_search
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_search`;
CREATE TABLE `ap_user_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `keyword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `status` tinyint(2) unsigned DEFAULT NULL COMMENT '????????????0 ?????? 1??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP?????????????????????';

-- ----------------------------
-- Records of ap_user_search
-- ----------------------------

-- ----------------------------
-- Table structure for cl_ip_pool
-- ----------------------------
DROP TABLE IF EXISTS `cl_ip_pool`;
CREATE TABLE `cl_ip_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `supplier` varchar(60) DEFAULT NULL COMMENT '?????????',
  `ip` varchar(60) DEFAULT NULL COMMENT 'ip??????',
  `port` int(5) DEFAULT NULL COMMENT '?????????',
  `username` varchar(50) DEFAULT NULL COMMENT '?????????',
  `password` varchar(50) DEFAULT NULL COMMENT '??????',
  `code` int(11) DEFAULT NULL COMMENT '?????????',
  `duration` int(11) DEFAULT NULL COMMENT '????????????',
  `error` varchar(100) DEFAULT NULL COMMENT '????????????',
  `is_enable` tinyint(1) DEFAULT NULL COMMENT '????????????',
  `ranges` varchar(30) DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11455 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cl_ip_pool
-- ----------------------------

-- ----------------------------
-- Table structure for cl_material
-- ----------------------------
DROP TABLE IF EXISTS `cl_material`;
CREATE TABLE `cl_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ??????',
  `is_collection` tinyint(1) DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????????????????';

-- ----------------------------
-- Records of cl_material
-- ----------------------------

-- ----------------------------
-- Table structure for cl_news
-- ----------------------------
DROP TABLE IF EXISTS `cl_news`;
CREATE TABLE `cl_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `task_id` int(11) DEFAULT NULL COMMENT '??????ID',
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????URL',
  `title` varchar(108) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '????????????',
  `type` int(11) DEFAULT NULL COMMENT '????????????  0 ???????????? 1 ???????????? 2 ????????????',
  `channel_id` int(11) DEFAULT NULL COMMENT '????????????ID',
  `labels` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'label??????ID',
  `original_time` datetime DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `submited_time` datetime DEFAULT NULL COMMENT '????????????',
  `status` tinyint(2) DEFAULT NULL COMMENT '???????????? 0 ?????? 1 ????????????????????? 2 ???????????? 8 ??????????????????????????? 9 ?????????',
  `publish_time` datetime DEFAULT NULL COMMENT '???????????????????????????????????????',
  `reason` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `article_id` int(11) DEFAULT NULL COMMENT '???????????????ID',
  `no` int(11) DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cl_news
-- ----------------------------

-- ----------------------------
-- Table structure for cl_news_additional
-- ----------------------------
DROP TABLE IF EXISTS `cl_news_additional`;
CREATE TABLE `cl_news_additional` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `news_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `read_count` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `likes` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `forward` int(11) DEFAULT NULL,
  `unlikes` int(11) DEFAULT NULL,
  `collection` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `count` datetime DEFAULT NULL,
  `update_num` int(11) DEFAULT NULL COMMENT '????????????',
  `updated_time` datetime DEFAULT NULL COMMENT '????????????',
  `next_update_time` datetime DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????????????????';

-- ----------------------------
-- Records of cl_news_additional
-- ----------------------------

-- ----------------------------
-- Table structure for cl_news_comments
-- ----------------------------
DROP TABLE IF EXISTS `cl_news_comments`;
CREATE TABLE `cl_news_comments` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `news_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `username` varchar(50) DEFAULT NULL COMMENT '?????????',
  `content` varchar(1000) DEFAULT NULL COMMENT '????????????',
  `comment_date` date DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????????????????????????';

-- ----------------------------
-- Records of cl_news_comments
-- ----------------------------

-- ----------------------------
-- Table structure for cl_news_material
-- ----------------------------
DROP TABLE IF EXISTS `cl_news_material`;
CREATE TABLE `cl_news_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `material_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `news_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????',
  `ord` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????????????????';

-- ----------------------------
-- Records of cl_news_material
-- ----------------------------

-- ----------------------------
-- Table structure for cl_task
-- ----------------------------
DROP TABLE IF EXISTS `cl_task`;
CREATE TABLE `cl_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `cron` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cron?????????',
  `bean_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `interval_time` int(11) DEFAULT NULL COMMENT '????????????(S)',
  `is_enable` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `last_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of cl_task
-- ----------------------------

-- ----------------------------
-- Table structure for cl_task_exception
-- ----------------------------
DROP TABLE IF EXISTS `cl_task_exception`;
CREATE TABLE `cl_task_exception` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `task_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `no` int(11) unsigned DEFAULT NULL COMMENT '????????????',
  `url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ???????????????\r\n            1 ????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????';

-- ----------------------------
-- Records of cl_task_exception
-- ----------------------------

-- ----------------------------
-- Table structure for cl_task_log
-- ----------------------------
DROP TABLE IF EXISTS `cl_task_log`;
CREATE TABLE `cl_task_log` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `task_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `no` int(11) unsigned DEFAULT NULL COMMENT '????????????',
  `count` int(5) unsigned DEFAULT NULL COMMENT '????????????',
  `is_success` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  `start_time` datetime DEFAULT NULL COMMENT '????????????',
  `end_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????';

-- ----------------------------
-- Records of cl_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_blob_triggers`;
CREATE TABLE `crawler_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `CRAWLER_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `crawler_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_calendars`;
CREATE TABLE `crawler_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_cron_triggers`;
CREATE TABLE `crawler_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `CRAWLER_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `crawler_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `crawler_qrtz_cron_triggers` VALUES ('quartz.prod.crawler', 'crawlerForwardQuartzTrigger_0', 'crawler_crawlerForwardQuartzTrigger', '0 0/10 * * * ?', 'Asia/Shanghai');
INSERT INTO `crawler_qrtz_cron_triggers` VALUES ('quartz.prod.crawler', 'crawlerReverseQuartzTrigger_0', 'crawler_crawlerReverseQuartzTrigger', '0 0 0/1 * * ?', 'Asia/Shanghai');
INSERT INTO `crawler_qrtz_cron_triggers` VALUES ('quartz.prod.crawler', 'proxyIpUpdateQuartzTrigger_0', 'crawler_proxyIpUpdateQuartzTrigger', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `crawler_qrtz_cron_triggers` VALUES ('quartz.prod.crawler', 'proxyIpValidateQuartzTrigger_0', 'crawler_proxyIpValidateQuartzTrigger', '0 10,20,40,50 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for crawler_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_fired_triggers`;
CREATE TABLE `crawler_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_job_details`;
CREATE TABLE `crawler_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_job_details
-- ----------------------------
INSERT INTO `crawler_qrtz_job_details` VALUES ('quartz.prod.crawler', 'crawlerForwardQuartzAutoJobDetail', 'crawler_default', '', 'com.heima.crawler.job.CrawlerForwardQuartz', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `crawler_qrtz_job_details` VALUES ('quartz.prod.crawler', 'crawlerReverseQuartzAutoJobDetail', 'crawler_default', '', 'com.heima.crawler.job.CrawlerReverseQuartz', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `crawler_qrtz_job_details` VALUES ('quartz.prod.crawler', 'proxyIpUpdateQuartzAutoJobDetail', 'crawler_default', '', 'com.heima.crawler.job.ProxyIpUpdateQuartz', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `crawler_qrtz_job_details` VALUES ('quartz.prod.crawler', 'proxyIpValidateQuartzAutoJobDetail', 'crawler_default', '', 'com.heima.crawler.job.ProxyIpValidateQuartz', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `crawler_qrtz_job_details` VALUES ('quartz.prod.crawler', 'quartzScanJobDetail', 'init-group-crawler_0', '?????????????????????', 'com.heima.quartz.QuartzScanJob', '1', '1', '1', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400066272616E636874000E6272616E63682D64656661756C747800);

-- ----------------------------
-- Table structure for crawler_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_locks`;
CREATE TABLE `crawler_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_locks
-- ----------------------------
INSERT INTO `crawler_qrtz_locks` VALUES ('quartz.prod.crawler', 'STATE_ACCESS');
INSERT INTO `crawler_qrtz_locks` VALUES ('quartz.prod.crawler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for crawler_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_paused_trigger_grps`;
CREATE TABLE `crawler_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_scheduler_state`;
CREATE TABLE `crawler_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `crawler_qrtz_scheduler_state` VALUES ('quartz.prod.crawler', 'quartz.prod.crawler-instanceId', '1566892099343', '7500');

-- ----------------------------
-- Table structure for crawler_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_simple_triggers`;
CREATE TABLE `crawler_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `CRAWLER_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `crawler_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_simprop_triggers`;
CREATE TABLE `crawler_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `CRAWLER_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `crawler_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for crawler_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `crawler_qrtz_triggers`;
CREATE TABLE `crawler_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `CRAWLER_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `crawler_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_qrtz_triggers
-- ----------------------------
INSERT INTO `crawler_qrtz_triggers` VALUES ('quartz.prod.crawler', 'crawlerForwardQuartzTrigger_0', 'crawler_crawlerForwardQuartzTrigger', 'crawlerForwardQuartzAutoJobDetail', 'crawler_default', '', '1566892200000', '1566891600000', '0', 'WAITING', 'CRON', '1566532621000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000F637261776C65725F64656661756C747672002A636F6D2E6865696D612E637261776C65722E6A6F622E437261776C6572466F727761726451756172747A000000000000000000000078707371007E0000007371007E00053F40000000000010770800000010000000007800740021637261776C6572466F727761726451756172747A4175746F4A6F6244657461696C7800);
INSERT INTO `crawler_qrtz_triggers` VALUES ('quartz.prod.crawler', 'crawlerReverseQuartzTrigger_0', 'crawler_crawlerReverseQuartzTrigger', 'crawlerReverseQuartzAutoJobDetail', 'crawler_default', '', '1566892800000', '1566889200000', '0', 'WAITING', 'CRON', '1566532621000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000F637261776C65725F64656661756C747672002A636F6D2E6865696D612E637261776C65722E6A6F622E437261776C65725265766572736551756172747A000000000000000000000078707371007E0000007371007E00053F40000000000010770800000010000000007800740021637261776C65725265766572736551756172747A4175746F4A6F6244657461696C7800);
INSERT INTO `crawler_qrtz_triggers` VALUES ('quartz.prod.crawler', 'proxyIpUpdateQuartzTrigger_0', 'crawler_proxyIpUpdateQuartzTrigger', 'proxyIpUpdateQuartzAutoJobDetail', 'crawler_default', '', '1566892800000', '1566891000000', '0', 'WAITING', 'CRON', '1566532621000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000F637261776C65725F64656661756C7476720029636F6D2E6865696D612E637261776C65722E6A6F622E50726F7879497055706461746551756172747A000000000000000000000078707371007E0000007371007E00053F4000000000001077080000001000000000780074002070726F7879497055706461746551756172747A4175746F4A6F6244657461696C7800);
INSERT INTO `crawler_qrtz_triggers` VALUES ('quartz.prod.crawler', 'proxyIpValidateQuartzTrigger_0', 'crawler_proxyIpValidateQuartzTrigger', 'proxyIpValidateQuartzAutoJobDetail', 'crawler_default', '', '1566892200000', '1566891600000', '0', 'WAITING', 'CRON', '1566532621000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000F637261776C65725F64656661756C747672002B636F6D2E6865696D612E637261776C65722E6A6F622E50726F7879497056616C696461746551756172747A000000000000000000000078707371007E0000007371007E00053F4000000000001077080000001000000000780074002270726F7879497056616C696461746551756172747A4175746F4A6F6244657461696C7800);

-- ----------------------------
-- Table structure for migration_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_blob_triggers`;
CREATE TABLE `migration_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `MIGRATION_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `migration_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for migration_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_calendars`;
CREATE TABLE `migration_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for migration_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_cron_triggers`;
CREATE TABLE `migration_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `MIGRATION_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `migration_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `migration_qrtz_cron_triggers` VALUES ('quartz.prod.migration', 'migrationDbToHBaseQuartzTrigger_0', 'migration_migrationDbToHBaseQuartzTrigger', '0 0/5 * * * ?', 'Asia/Shanghai');
INSERT INTO `migration_qrtz_cron_triggers` VALUES ('quartz.prod.migration', 'migrationDeleteHotDataQuartzTrigger_0', 'migration_migrationDeleteHotDataQuartzTrigger', '0 30 22 * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for migration_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_fired_triggers`;
CREATE TABLE `migration_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_fired_triggers
-- ----------------------------
INSERT INTO `migration_qrtz_fired_triggers` VALUES ('quartz.prod.migration', 'quartz.prod.migration-instanceId1566527436038', 'migrationDbToHBaseQuartzTrigger_0', 'migration_migrationDbToHBaseQuartzTrigger', 'quartz.prod.migration-instanceId', '1566549602909', '1566549600000', '0', 'EXECUTING', 'migrationDbToHBaseQuartzAutoJobDetail', 'migration_default', '1', '1');

-- ----------------------------
-- Table structure for migration_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_job_details`;
CREATE TABLE `migration_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_job_details
-- ----------------------------
INSERT INTO `migration_qrtz_job_details` VALUES ('quartz.prod.migration', 'migrationDbToHBaseQuartzAutoJobDetail', 'migration_default', '', 'com.heima.migration.quartz.MigrationDbToHBaseQuartz', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `migration_qrtz_job_details` VALUES ('quartz.prod.migration', 'migrationDeleteHotDataQuartzAutoJobDetail', 'migration_default', '', 'com.heima.migration.quartz.MigrationDeleteHotDataQuartz', '1', '0', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `migration_qrtz_job_details` VALUES ('quartz.prod.migration', 'quartzScanJobDetail', 'init-group-migration_0', '?????????????????????', 'com.heima.quartz.QuartzScanJob', '1', '1', '1', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400066272616E636874000E6272616E63682D64656661756C747800);

-- ----------------------------
-- Table structure for migration_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_locks`;
CREATE TABLE `migration_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_locks
-- ----------------------------
INSERT INTO `migration_qrtz_locks` VALUES ('quartz.prod.migration', 'STATE_ACCESS');
INSERT INTO `migration_qrtz_locks` VALUES ('quartz.prod.migration', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for migration_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_paused_trigger_grps`;
CREATE TABLE `migration_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for migration_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_scheduler_state`;
CREATE TABLE `migration_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `migration_qrtz_scheduler_state` VALUES ('quartz.prod.migration', 'quartz.prod.migration-instanceId', '1566549614458', '7500');

-- ----------------------------
-- Table structure for migration_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_simple_triggers`;
CREATE TABLE `migration_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `MIGRATION_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `migration_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for migration_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_simprop_triggers`;
CREATE TABLE `migration_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `MIGRATION_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `migration_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for migration_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `migration_qrtz_triggers`;
CREATE TABLE `migration_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `MIGRATION_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `migration_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration_qrtz_triggers
-- ----------------------------
INSERT INTO `migration_qrtz_triggers` VALUES ('quartz.prod.migration', 'migrationDbToHBaseQuartzTrigger_0', 'migration_migrationDbToHBaseQuartzTrigger', 'migrationDbToHBaseQuartzAutoJobDetail', 'migration_default', '', '1566549900000', '1566549600000', '0', 'BLOCKED', 'CRON', '1565920257000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E0009787001017400007400116D6967726174696F6E5F64656661756C7476720033636F6D2E6865696D612E6D6967726174696F6E2E71756172747A2E4D6967726174696F6E4462546F484261736551756172747A000000000000000000000078707371007E0000007371007E00053F400000000000107708000000100000000078007400256D6967726174696F6E4462546F484261736551756172747A4175746F4A6F6244657461696C7800);
INSERT INTO `migration_qrtz_triggers` VALUES ('quartz.prod.migration', 'migrationDeleteHotDataQuartzTrigger_0', 'migration_migrationDeleteHotDataQuartzTrigger', 'migrationDeleteHotDataQuartzAutoJobDetail', 'migration_default', '', '1566570600000', '1566484200000', '0', 'WAITING', 'CRON', '1565920258000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E0009787001017400007400116D6967726174696F6E5F64656661756C7476720037636F6D2E6865696D612E6D6967726174696F6E2E71756172747A2E4D6967726174696F6E44656C657465486F744461746151756172747A000000000000000000000078707371007E0000007371007E00053F400000000000107708000000100000000078007400296D6967726174696F6E44656C657465486F744461746151756172747A4175746F4A6F6244657461696C7800);

-- ----------------------------
-- Table structure for quartz_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_blob_triggers`;
CREATE TABLE `quartz_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QUARTZ_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `quartz_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_calendars`;
CREATE TABLE `quartz_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_cron_triggers`;
CREATE TABLE `quartz_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QUARTZ_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `quartz_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `quartz_qrtz_cron_triggers` VALUES ('quartz.prod.quartz', 'wmNewsStatisticJobTrigger_0', 'quartz_wmNewsStatisticJobTrigger', '* */5 * * * ?', 'Etc/UTC');
INSERT INTO `quartz_qrtz_cron_triggers` VALUES ('quartz.test.quartz', 'wmNewsStatisticJobTrigger_0', 'quartz_wmNewsStatisticJobTrigger', '* */5 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for quartz_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_fired_triggers`;
CREATE TABLE `quartz_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_job_details`;
CREATE TABLE `quartz_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_job_details
-- ----------------------------
INSERT INTO `quartz_qrtz_job_details` VALUES ('quartz.prod.quartz', 'quartzScanJobDetail', 'init-group-quartz_0', '?????????????????????', 'com.heima.quartz.QuartzScanJob', '1', '1', '1', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400066272616E636874000E6272616E63682D64656661756C747800);
INSERT INTO `quartz_qrtz_job_details` VALUES ('quartz.prod.quartz', 'wmNewsStatisticJobAutoJobDetail', 'quartz_default', '', 'com.heima.quartz.jobs.WmNewsStatisticJob', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `quartz_qrtz_job_details` VALUES ('quartz.test.quartz', 'quartzScanJobDetail', 'init-group-quartz_0', '?????????????????????', 'com.heima.quartz.QuartzScanJob', '1', '1', '1', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400066272616E636874000E6272616E63682D64656661756C747800);
INSERT INTO `quartz_qrtz_job_details` VALUES ('quartz.test.quartz', 'wmNewsStatisticJobAutoJobDetail', 'quartz_default', '', 'com.heima.quartz.jobs.WmNewsStatisticJob', '1', '1', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);

-- ----------------------------
-- Table structure for quartz_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_locks`;
CREATE TABLE `quartz_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_locks
-- ----------------------------
INSERT INTO `quartz_qrtz_locks` VALUES ('quartz.prod.quartz', 'STATE_ACCESS');
INSERT INTO `quartz_qrtz_locks` VALUES ('quartz.prod.quartz', 'TRIGGER_ACCESS');
INSERT INTO `quartz_qrtz_locks` VALUES ('quartz.test.quartz', 'STATE_ACCESS');
INSERT INTO `quartz_qrtz_locks` VALUES ('quartz.test.quartz', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for quartz_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_paused_trigger_grps`;
CREATE TABLE `quartz_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_scheduler_state`;
CREATE TABLE `quartz_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `quartz_qrtz_scheduler_state` VALUES ('quartz.prod.quartz', 'quartz.prod.quartz-instanceId', '1566892108206', '7500');
INSERT INTO `quartz_qrtz_scheduler_state` VALUES ('quartz.test.quartz', 'quartz.test.quartz-instanceId', '1566553074818', '7500');

-- ----------------------------
-- Table structure for quartz_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_simple_triggers`;
CREATE TABLE `quartz_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QUARTZ_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `quartz_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_simprop_triggers`;
CREATE TABLE `quartz_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QUARTZ_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `quartz_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `quartz_qrtz_triggers`;
CREATE TABLE `quartz_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `QUARTZ_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `quartz_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_qrtz_triggers
-- ----------------------------
INSERT INTO `quartz_qrtz_triggers` VALUES ('quartz.prod.quartz', 'wmNewsStatisticJobTrigger_0', 'quartz_wmNewsStatisticJobTrigger', 'wmNewsStatisticJobAutoJobDetail', 'quartz_default', '????????????23:30??????', '1566892200000', '1566891959000', '0', 'WAITING', 'CRON', '1565451439000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000E71756172747A5F64656661756C7476720028636F6D2E6865696D612E71756172747A2E6A6F62732E576D4E6577735374617469737469634A6F62000000000000000000000078707371007E0000007371007E00053F4000000000001077080000001000000000780074001F776D4E6577735374617469737469634A6F624175746F4A6F6244657461696C7800);
INSERT INTO `quartz_qrtz_triggers` VALUES ('quartz.test.quartz', 'wmNewsStatisticJobTrigger_0', 'quartz_wmNewsStatisticJobTrigger', 'wmNewsStatisticJobAutoJobDetail', 'quartz_default', '????????????23:30??????', '1566553200000', '1566552959000', '0', 'WAITING', 'CRON', '1565415758000', '0', null, '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400096A6F6244657461696C7372001D6F72672E71756172747A2E696D706C2E4A6F6244657461696C496D706CABC3CAEC015A54AF0200075A000A6475726162696C6974795A000D73686F756C645265636F7665724C000B6465736372697074696F6E7400124C6A6176612F6C616E672F537472696E673B4C000567726F757071007E00094C00086A6F62436C6173737400114C6A6176612F6C616E672F436C6173733B4C000A6A6F62446174614D61707400174C6F72672F71756172747A2F4A6F62446174614D61703B4C00046E616D6571007E00097870010174000074000E71756172747A5F64656661756C7476720028636F6D2E6865696D612E71756172747A2E6A6F62732E576D4E6577735374617469737469634A6F62000000000000000000000078707371007E0000007371007E00053F4000000000001077080000001000000000780074001F776D4E6577735374617469737469634A6F624175746F4A6F6244657461696C7800);

-- ----------------------------
-- Table structure for wm_fans_portrait
-- ----------------------------
DROP TABLE IF EXISTS `wm_fans_portrait`;
CREATE TABLE `wm_fans_portrait` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `value` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_fans_portrait
-- ----------------------------

-- ----------------------------
-- Table structure for wm_fans_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_fans_statistics`;
CREATE TABLE `wm_fans_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `article` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `read_count` int(11) unsigned DEFAULT NULL,
  `comment` int(11) unsigned DEFAULT NULL,
  `follow` int(11) unsigned DEFAULT NULL,
  `collection` int(11) unsigned DEFAULT NULL,
  `forward` int(11) unsigned DEFAULT NULL,
  `likes` int(11) unsigned DEFAULT NULL,
  `unlikes` int(11) unsigned DEFAULT NULL,
  `unfollow` int(11) unsigned DEFAULT NULL,
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_user_id_time` (`user_id`,`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_fans_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_material`;
CREATE TABLE `wm_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ??????',
  `is_collection` tinyint(1) DEFAULT NULL COMMENT '????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_material
-- ----------------------------

-- ----------------------------
-- Table structure for wm_news
-- ----------------------------
DROP TABLE IF EXISTS `wm_news`;
CREATE TABLE `wm_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `title` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '????????????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????\r\n            2 ????????????',
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `labels` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  `submited_time` datetime DEFAULT NULL COMMENT '????????????',
  `status` tinyint(2) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ?????????????????????\r\n            2 ????????????\r\n            8 ???????????????????????????\r\n            9 ?????????',
  `publish_time` datetime DEFAULT NULL COMMENT '???????????????????????????????????????',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `article_id` int(11) unsigned DEFAULT NULL COMMENT '???????????????ID',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '//?????????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_news
-- ----------------------------

-- ----------------------------
-- Table structure for wm_news_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_material`;
CREATE TABLE `wm_news_material` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `material_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `news_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ????????????\r\n            1 ????????????',
  `ord` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????????????????';

-- ----------------------------
-- Records of wm_news_material
-- ----------------------------

-- ----------------------------
-- Table structure for wm_news_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_statistics`;
CREATE TABLE `wm_news_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `article` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `read_count` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `comment` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `follow` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `collection` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `forward` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `likes` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `unlikes` int(11) unsigned DEFAULT NULL COMMENT '?????????',
  `unfollow` int(11) unsigned DEFAULT NULL COMMENT '???????????????',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_user_id_time` (`user_id`,`created_time`)
) ENGINE=InnoDB AUTO_INCREMENT=295732 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_news_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_sub_user
-- ----------------------------
DROP TABLE IF EXISTS `wm_sub_user`;
CREATE TABLE `wm_sub_user` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  `children_id` int(11) unsigned DEFAULT NULL COMMENT '?????????ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='???????????????????????????';

-- ----------------------------
-- Records of wm_sub_user
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user
-- ----------------------------
DROP TABLE IF EXISTS `wm_user`;
CREATE TABLE `wm_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '??????',
  `ap_user_id` int(11) DEFAULT NULL,
  `ap_author_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `password` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `salt` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???',
  `nickname` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `location` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `phone` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `status` tinyint(11) unsigned DEFAULT NULL COMMENT '??????\r\n            0 ???????????????\r\n            1 ???????????????\r\n            9 ????????????',
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ?????? \r\n            1 ??????\r\n            2 ?????????',
  `score` tinyint(3) unsigned DEFAULT NULL COMMENT '????????????',
  `login_time` datetime DEFAULT NULL COMMENT '????????????????????????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????';

-- ----------------------------
-- Records of wm_user
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_auth`;
CREATE TABLE `wm_user_auth` (
  `id` int(11) unsigned NOT NULL COMMENT '??????',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '????????????\r\n            0 ??????\r\n            1 ??????\r\n            2 ??????',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='?????????????????????????????????';

-- ----------------------------
-- Records of wm_user_auth
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_equipment`;
CREATE TABLE `wm_user_equipment` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0PC\r\n            1ANDROID\r\n            2IOS\r\n            3PAD\r\n            9 ??????',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `sys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `no` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????MD5??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='??????????????????????????????';

-- ----------------------------
-- Records of wm_user_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user_login
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_login`;
CREATE TABLE `wm_user_login` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '??????ID',
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '????????????ID',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????IP',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `longitude` decimal(5,5) DEFAULT NULL COMMENT '??????',
  `latitude` decimal(5,5) DEFAULT NULL COMMENT '??????',
  `created_time` datetime DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='????????????????????????????????????';

-- ----------------------------
-- Records of wm_user_login
-- ----------------------------
