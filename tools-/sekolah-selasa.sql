/*
Navicat MySQL Data Transfer

Source Server         : LOKAL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sekolah

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-09-05 07:08:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `absen`
-- ----------------------------
DROP TABLE IF EXISTS `absen`;
CREATE TABLE `absen` (
  `ida` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) DEFAULT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(3) NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`ida`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of absen
-- ----------------------------
INSERT INTO `absen` VALUES ('1', '9974602083', '2017-09-04', 'H', '00:00:04', '00:16:00', '3');
INSERT INTO `absen` VALUES ('2', '9974602083', '2017-09-04', 'H', '00:00:21', '00:17:19', '3');
INSERT INTO `absen` VALUES ('3', '9974622339', '2017-09-04', 'H', null, null, '3');
INSERT INTO `absen` VALUES ('7', '9965320731', '2017-09-04', 'H', null, null, '3');
INSERT INTO `absen` VALUES ('8', '9965320731', '2017-09-04', 'H', '00:00:00', '22:43:31', null);
INSERT INTO `absen` VALUES ('9', '9965320731', '2017-09-04', 'H', '22:44:43', '00:00:00', null);
INSERT INTO `absen` VALUES ('10', '9974602083', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('11', '9985108630', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('12', '9985108634', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('13', '9974622339', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('14', '9974603046', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('15', '9985109207', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('16', '9974603238', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('17', '9965320734', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('18', '9974603400', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('20', '9965320876', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('21', '9965320883', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('22', '9974603414', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('23', '9965320887', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('24', '9965320890', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('25', '9985109574', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('26', '9965320905', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('27', '9974603422', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('28', '9965320922', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('29', '9974603436', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('30', '9974603447', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('31', '9974603560', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('32', '9974603593', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('33', '9965321268', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('34', '9974603623', '2017-09-04', 'H', '09:13:24', '09:13:24', '3');
INSERT INTO `absen` VALUES ('35', '9965309250', '2017-09-04', 'H', '00:00:00', '09:13:24', '3');
INSERT INTO `absen` VALUES ('36', '9965320870', '2017-09-04', 'H', '08:08:08', '13:05:00', '3');
INSERT INTO `absen` VALUES ('37', '9965320870', '2017-09-04', 'H', '08:00:00', '15:00:00', '3');
INSERT INTO `absen` VALUES ('38', '9965320870', '2017-09-04', 'H', '08:00:00', '14:00:00', '3');
INSERT INTO `absen` VALUES ('40', '9965320870', '2017-09-04', 'H', '07:00:00', '00:00:00', '3');

-- ----------------------------
-- Table structure for `attcalclog`
-- ----------------------------
DROP TABLE IF EXISTS `attcalclog`;
CREATE TABLE `attcalclog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DeptID` int(11) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime NOT NULL,
  `OperTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attcalclog
-- ----------------------------

-- ----------------------------
-- Table structure for `attexception`
-- ----------------------------
DROP TABLE IF EXISTS `attexception`;
CREATE TABLE `attexception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `ExceptionID` int(11) DEFAULT NULL,
  `AuditExcID` int(11) DEFAULT NULL,
  `OldAuditExcID` int(11) DEFAULT NULL,
  `OverlapTime` int(11) DEFAULT NULL,
  `TimeLong` int(11) DEFAULT NULL,
  `InScopeTime` int(11) DEFAULT NULL,
  `AttDate` datetime DEFAULT NULL,
  `OverlapWorkDayTail` int(11) NOT NULL,
  `OverlapWorkDay` double DEFAULT NULL,
  `schindex` int(11) DEFAULT NULL,
  `Minsworkday` int(11) DEFAULT NULL,
  `schid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserId` (`UserId`,`AttDate`,`StartTime`),
  KEY `attexception_UserId` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attexception
-- ----------------------------

-- ----------------------------
-- Table structure for `attparam`
-- ----------------------------
DROP TABLE IF EXISTS `attparam`;
CREATE TABLE `attparam` (
  `ParaName` varchar(20) NOT NULL,
  `ParaType` varchar(2) DEFAULT NULL,
  `ParaValue` varchar(100) NOT NULL,
  PRIMARY KEY (`ParaName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attparam
-- ----------------------------
INSERT INTO `attparam` VALUES ('MinsEarly', null, '5');
INSERT INTO `attparam` VALUES ('MinsLate', null, '10');
INSERT INTO `attparam` VALUES ('MinsNoBreakIn', null, '60');
INSERT INTO `attparam` VALUES ('MinsNoBreakOut', null, '60');
INSERT INTO `attparam` VALUES ('MinsNoIn', null, '60');
INSERT INTO `attparam` VALUES ('MinsNoLeave', null, '60');
INSERT INTO `attparam` VALUES ('MinsNotOverTime', null, '60');
INSERT INTO `attparam` VALUES ('MinsWorkDay', null, '420');
INSERT INTO `attparam` VALUES ('NoBreakIn', null, '1012');
INSERT INTO `attparam` VALUES ('NoBreakOut', null, '1012');
INSERT INTO `attparam` VALUES ('NoIn', null, '1001');
INSERT INTO `attparam` VALUES ('NoLeave', null, '1002');
INSERT INTO `attparam` VALUES ('OutOverTime', null, '0');
INSERT INTO `attparam` VALUES ('TwoDay', null, '0');
INSERT INTO `attparam` VALUES ('CheckInColor', null, '16777151');
INSERT INTO `attparam` VALUES ('CheckOutColor', null, '12910591');
INSERT INTO `attparam` VALUES ('DBVersion', null, '167');

-- ----------------------------
-- Table structure for `attparam2`
-- ----------------------------
DROP TABLE IF EXISTS `attparam2`;
CREATE TABLE `attparam2` (
  `ParaName` varchar(20) NOT NULL,
  `ParaType` varchar(2) DEFAULT NULL,
  `ParaValue` longtext,
  PRIMARY KEY (`ParaName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attparam2
-- ----------------------------

-- ----------------------------
-- Table structure for `attrecabnormite`
-- ----------------------------
DROP TABLE IF EXISTS `attrecabnormite`;
CREATE TABLE `attrecabnormite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `checktime` datetime NOT NULL,
  `CheckType` varchar(2) NOT NULL,
  `NewType` varchar(2) DEFAULT NULL,
  `AbNormiteID` int(11) DEFAULT NULL,
  `SchID` int(11) DEFAULT NULL,
  `OP` int(11) DEFAULT NULL,
  `AttDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`AttDate`,`checktime`),
  KEY `attrecabnormite_userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attrecabnormite
-- ----------------------------

-- ----------------------------
-- Table structure for `attshifts`
-- ----------------------------
DROP TABLE IF EXISTS `attshifts`;
CREATE TABLE `attshifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `SchIndex` int(11) DEFAULT NULL,
  `AutoSch` smallint(6) DEFAULT NULL,
  `AttDate` datetime NOT NULL,
  `SchId` int(11) DEFAULT NULL,
  `ClockInTime` datetime NOT NULL,
  `ClockOutTime` datetime NOT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `WorkDay` double DEFAULT NULL,
  `RealWorkDay` double DEFAULT NULL,
  `NoIn` smallint(6) DEFAULT NULL,
  `NoOut` smallint(6) DEFAULT NULL,
  `Late` int(11) DEFAULT NULL,
  `Early` int(11) DEFAULT NULL,
  `Absent` int(11) DEFAULT NULL,
  `OverTime` int(11) DEFAULT NULL,
  `WorkTime` int(11) DEFAULT NULL,
  `ExceptionID` int(11) DEFAULT NULL,
  `Symbol` varchar(10) DEFAULT NULL,
  `MustIn` smallint(6) DEFAULT NULL,
  `MustOut` smallint(6) DEFAULT NULL,
  `OverTime1` int(11) DEFAULT NULL,
  `WorkMins` int(11) DEFAULT NULL,
  `SSpeDayNormal` double DEFAULT NULL,
  `SSpeDayWeekend` double DEFAULT NULL,
  `SSpeDayHoliday` double DEFAULT NULL,
  `AttTime` int(11) DEFAULT NULL,
  `SSpeDayNormalOT` double DEFAULT NULL,
  `SSpeDayWeekendOT` double DEFAULT NULL,
  `SSpeDayHolidayOT` double DEFAULT NULL,
  `AbsentMins` int(11) DEFAULT NULL,
  `AttChkTime` varchar(10) DEFAULT NULL,
  `AbsentR` double DEFAULT NULL,
  `ScheduleName` varchar(20) DEFAULT NULL,
  `IsConfirm` smallint(6) DEFAULT NULL,
  `IsRead` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`AttDate`,`SchId`),
  KEY `attshifts_userid` (`userid`),
  KEY `attshifts_SchId` (`SchId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attshifts
-- ----------------------------

-- ----------------------------
-- Table structure for `auditedexc`
-- ----------------------------
DROP TABLE IF EXISTS `auditedexc`;
CREATE TABLE `auditedexc` (
  `AEID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `checktime` datetime NOT NULL,
  `Utime` datetime NOT NULL,
  `NewExcID` smallint(6) NOT NULL,
  `IsLeave` smallint(6) NOT NULL,
  `UName` varchar(20) NOT NULL,
  PRIMARY KEY (`AEID`),
  KEY `auditedexc_UserId` (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditedexc
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_5886d21f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_message`
-- ----------------------------
DROP TABLE IF EXISTS `auth_message`;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_message
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add session', '1', 'add_session');
INSERT INTO `auth_permission` VALUES ('2', 'Can change session', '1', 'change_session');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete session', '1', 'delete_session');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add message', '5', 'add_message');
INSERT INTO `auth_permission` VALUES ('14', 'Can change message', '5', 'change_message');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete message', '5', 'delete_message');
INSERT INTO `auth_permission` VALUES ('16', 'Can add content type', '6', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can change content type', '6', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete content type', '6', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can add log entry', '7', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('20', 'Can change log entry', '7', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete log entry', '7', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('22', 'Can add department', '8', 'add_department');
INSERT INTO `auth_permission` VALUES ('23', 'Can change department', '8', 'change_department');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete department', '8', 'delete_department');
INSERT INTO `auth_permission` VALUES ('25', 'Can add device', '9', 'add_iclock');
INSERT INTO `auth_permission` VALUES ('26', 'Can change device', '9', 'change_iclock');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete device', '9', 'delete_iclock');
INSERT INTO `auth_permission` VALUES ('28', 'Pause device', '9', 'pause_iclock');
INSERT INTO `auth_permission` VALUES ('29', 'Resume a resumed device', '9', 'resume_iclock');
INSERT INTO `auth_permission` VALUES ('30', 'Upgrade firmware', '9', 'upgradefw_iclock');
INSERT INTO `auth_permission` VALUES ('31', 'Copy data between device', '9', 'copyudata_iclock');
INSERT INTO `auth_permission` VALUES ('32', 'Upload data again', '9', 'reloaddata_iclock');
INSERT INTO `auth_permission` VALUES ('33', 'Upload transactions again', '9', 'reloadlogdata_iclock');
INSERT INTO `auth_permission` VALUES ('34', 'Refresh device information', '9', 'info_iclock');
INSERT INTO `auth_permission` VALUES ('35', 'Reboot device', '9', 'reboot_iclock');
INSERT INTO `auth_permission` VALUES ('36', 'Upload new data', '9', 'loaddata_iclock');
INSERT INTO `auth_permission` VALUES ('37', 'Clear data in device', '9', 'cleardata_iclock');
INSERT INTO `auth_permission` VALUES ('38', 'Clear transactions in device', '9', 'clearlog_iclock');
INSERT INTO `auth_permission` VALUES ('39', 'Set options of device', '9', 'devoption_iclock');
INSERT INTO `auth_permission` VALUES ('40', 'Reset Password in device', '9', 'resetPwd_iclock');
INSERT INTO `auth_permission` VALUES ('41', 'Restore employee to device', '9', 'restoreData_iclock');
INSERT INTO `auth_permission` VALUES ('42', 'Output unlock signal', '9', 'unlock_iclock');
INSERT INTO `auth_permission` VALUES ('43', 'Terminate alarm signal', '9', 'unalarm_iclock');
INSERT INTO `auth_permission` VALUES ('44', 'Can add admin granted department', '10', 'add_deptadmin');
INSERT INTO `auth_permission` VALUES ('45', 'Can change admin granted department', '10', 'change_deptadmin');
INSERT INTO `auth_permission` VALUES ('46', 'Can delete admin granted department', '10', 'delete_deptadmin');
INSERT INTO `auth_permission` VALUES ('47', 'Can add employee', '11', 'add_employee');
INSERT INTO `auth_permission` VALUES ('48', 'Can change employee', '11', 'change_employee');
INSERT INTO `auth_permission` VALUES ('49', 'Can delete employee', '11', 'delete_employee');
INSERT INTO `auth_permission` VALUES ('50', 'Transfer employee to the device', '11', 'toDev_employee');
INSERT INTO `auth_permission` VALUES ('51', 'Transfer to the device templately', '11', 'toDevWithin_employee');
INSERT INTO `auth_permission` VALUES ('52', 'Delete employee from the device', '11', 'delDev_employee');
INSERT INTO `auth_permission` VALUES ('53', 'Employee leave', '11', 'empLeave_employee');
INSERT INTO `auth_permission` VALUES ('54', 'Move employee to a new device', '11', 'mvToDev_employee');
INSERT INTO `auth_permission` VALUES ('55', 'Change employee\'s department', '11', 'toDepart_employee');
INSERT INTO `auth_permission` VALUES ('56', 'Can add fingerprint', '12', 'add_fptemp');
INSERT INTO `auth_permission` VALUES ('57', 'Can change fingerprint', '12', 'change_fptemp');
INSERT INTO `auth_permission` VALUES ('58', 'Can delete fingerprint', '12', 'delete_fptemp');
INSERT INTO `auth_permission` VALUES ('59', 'Can add transaction', '13', 'add_transaction');
INSERT INTO `auth_permission` VALUES ('60', 'Can change transaction', '13', 'change_transaction');
INSERT INTO `auth_permission` VALUES ('61', 'Can delete transaction', '13', 'delete_transaction');
INSERT INTO `auth_permission` VALUES ('62', 'Can add device operation log', '14', 'add_oplog');
INSERT INTO `auth_permission` VALUES ('63', 'Can change device operation log', '14', 'change_oplog');
INSERT INTO `auth_permission` VALUES ('64', 'Can delete device operation log', '14', 'delete_oplog');
INSERT INTO `auth_permission` VALUES ('65', 'Transaction Monitor', '14', 'monitor_oplog');
INSERT INTO `auth_permission` VALUES ('66', 'Can add log of data from device', '15', 'add_devlog');
INSERT INTO `auth_permission` VALUES ('67', 'Can change log of data from device', '15', 'change_devlog');
INSERT INTO `auth_permission` VALUES ('68', 'Can delete log of data from device', '15', 'delete_devlog');
INSERT INTO `auth_permission` VALUES ('69', 'Can add log of command to device', '16', 'add_devcmds');
INSERT INTO `auth_permission` VALUES ('70', 'Can change log of command to device', '16', 'change_devcmds');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete log of command to device', '16', 'delete_devcmds');
INSERT INTO `auth_permission` VALUES ('72', 'Can add public information', '17', 'add_messages');
INSERT INTO `auth_permission` VALUES ('73', 'Can change public information', '17', 'change_messages');
INSERT INTO `auth_permission` VALUES ('74', 'Can delete public information', '17', 'delete_messages');
INSERT INTO `auth_permission` VALUES ('75', 'Can add information subscription', '18', 'add_iclockmsg');
INSERT INTO `auth_permission` VALUES ('76', 'Can change information subscription', '18', 'change_iclockmsg');
INSERT INTO `auth_permission` VALUES ('77', 'Can delete information subscription', '18', 'delete_iclockmsg');
INSERT INTO `auth_permission` VALUES ('78', 'Can add administration log', '19', 'add_adminlog');
INSERT INTO `auth_permission` VALUES ('79', 'Can change administration log', '19', 'change_adminlog');
INSERT INTO `auth_permission` VALUES ('80', 'Can delete administration log', '19', 'delete_adminlog');
INSERT INTO `auth_permission` VALUES ('81', 'Can add checkexact', '20', 'add_checkexact');
INSERT INTO `auth_permission` VALUES ('82', 'Can change checkexact', '20', 'change_checkexact');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete checkexact', '20', 'delete_checkexact');
INSERT INTO `auth_permission` VALUES ('84', 'Can add excnotes', '21', 'add_excnotes');
INSERT INTO `auth_permission` VALUES ('85', 'Can change excnotes', '21', 'change_excnotes');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete excnotes', '21', 'delete_excnotes');
INSERT INTO `auth_permission` VALUES ('87', 'Can add 节假日', '22', 'add_holidays');
INSERT INTO `auth_permission` VALUES ('88', 'Can change 节假日', '22', 'change_holidays');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete 节假日', '22', 'delete_holidays');
INSERT INTO `auth_permission` VALUES ('90', 'Can add nu m_ru n_deil', '23', 'add_num_run_deil');
INSERT INTO `auth_permission` VALUES ('91', 'Can change nu m_ru n_deil', '23', 'change_num_run_deil');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete nu m_ru n_deil', '23', 'delete_num_run_deil');
INSERT INTO `auth_permission` VALUES ('93', 'Can add nu m_run', '24', 'add_num_run');
INSERT INTO `auth_permission` VALUES ('94', 'Can change nu m_run', '24', 'change_num_run');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete nu m_run', '24', 'delete_num_run');
INSERT INTO `auth_permission` VALUES ('96', 'Can add securitydetails', '25', 'add_securitydetails');
INSERT INTO `auth_permission` VALUES ('97', 'Can change securitydetails', '25', 'change_securitydetails');
INSERT INTO `auth_permission` VALUES ('98', 'Can delete securitydetails', '25', 'delete_securitydetails');
INSERT INTO `auth_permission` VALUES ('99', 'Can add shift', '26', 'add_shift');
INSERT INTO `auth_permission` VALUES ('100', 'Can change shift', '26', 'change_shift');
INSERT INTO `auth_permission` VALUES ('101', 'Can delete shift', '26', 'delete_shift');
INSERT INTO `auth_permission` VALUES ('102', 'Can add use r_o f_run', '27', 'add_user_of_run');
INSERT INTO `auth_permission` VALUES ('103', 'Can change use r_o f_run', '27', 'change_user_of_run');
INSERT INTO `auth_permission` VALUES ('104', 'Can delete use r_o f_run', '27', 'delete_user_of_run');
INSERT INTO `auth_permission` VALUES ('105', 'Can add use r_speday', '28', 'add_user_speday');
INSERT INTO `auth_permission` VALUES ('106', 'Can change use r_speday', '28', 'change_user_speday');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete use r_speday', '28', 'delete_user_speday');
INSERT INTO `auth_permission` VALUES ('108', 'Can add use r_tem p_sch', '29', 'add_user_temp_sch');
INSERT INTO `auth_permission` VALUES ('109', 'Can change use r_tem p_sch', '29', 'change_user_temp_sch');
INSERT INTO `auth_permission` VALUES ('110', 'Can delete use r_tem p_sch', '29', 'delete_user_temp_sch');
INSERT INTO `auth_permission` VALUES ('111', 'Can add leave class', '30', 'add_leaveclass');
INSERT INTO `auth_permission` VALUES ('112', 'Can change leave class', '30', 'change_leaveclass');
INSERT INTO `auth_permission` VALUES ('113', 'Can delete leave class', '30', 'delete_leaveclass');
INSERT INTO `auth_permission` VALUES ('114', 'Can add leave class1', '31', 'add_leaveclass1');
INSERT INTO `auth_permission` VALUES ('115', 'Can change leave class1', '31', 'change_leaveclass1');
INSERT INTO `auth_permission` VALUES ('116', 'Can delete leave class1', '31', 'delete_leaveclass1');
INSERT INTO `auth_permission` VALUES ('117', 'Can add sch class', '32', 'add_schclass');
INSERT INTO `auth_permission` VALUES ('118', 'Can change sch class', '32', 'change_schclass');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete sch class', '32', 'delete_schclass');
INSERT INTO `auth_permission` VALUES ('120', 'Can add att param', '33', 'add_attparam');
INSERT INTO `auth_permission` VALUES ('121', 'Can change att param', '33', 'change_attparam');
INSERT INTO `auth_permission` VALUES ('122', 'Can delete att param', '33', 'delete_attparam');
INSERT INTO `auth_permission` VALUES ('123', 'Can add att param2', '34', 'add_attparam2');
INSERT INTO `auth_permission` VALUES ('124', 'Can change att param2', '34', 'change_attparam2');
INSERT INTO `auth_permission` VALUES ('125', 'Can delete att param2', '34', 'delete_attparam2');
INSERT INTO `auth_permission` VALUES ('126', 'Can add item define', '35', 'add_itemdefine');
INSERT INTO `auth_permission` VALUES ('127', 'Can change item define', '35', 'change_itemdefine');
INSERT INTO `auth_permission` VALUES ('128', 'Can delete item define', '35', 'delete_itemdefine');
INSERT INTO `auth_permission` VALUES ('129', 'Can browse att param', '33', 'browse_AttParam');
INSERT INTO `auth_permission` VALUES ('130', 'Can browse att param2', '34', 'browse_AttParam2');
INSERT INTO `auth_permission` VALUES ('131', 'Can browse content type', '6', 'browse_ContentType');
INSERT INTO `auth_permission` VALUES ('132', 'Can browse admin granted department', '10', 'browse_DeptAdmin');
INSERT INTO `auth_permission` VALUES ('133', 'Can browse excnotes', '21', 'browse_EXCNOTES');
INSERT INTO `auth_permission` VALUES ('134', 'Can browse group', '3', 'browse_Group');
INSERT INTO `auth_permission` VALUES ('135', 'Can browse information subscription', '18', 'browse_IclockMsg');
INSERT INTO `auth_permission` VALUES ('136', 'Can browse item define', '35', 'browse_ItemDefine');
INSERT INTO `auth_permission` VALUES ('137', 'Can browse leave class', '30', 'browse_LeaveClass');
INSERT INTO `auth_permission` VALUES ('138', 'Can browse leave class1', '31', 'browse_LeaveClass1');
INSERT INTO `auth_permission` VALUES ('139', 'Can browse nu m_run', '24', 'browse_NUM_RUN');
INSERT INTO `auth_permission` VALUES ('140', 'Can browse nu m_ru n_deil', '23', 'browse_NUM_RUN_DEIL');
INSERT INTO `auth_permission` VALUES ('141', 'Can browse permission', '2', 'browse_Permission');
INSERT INTO `auth_permission` VALUES ('142', 'Can browse securitydetails', '25', 'browse_SECURITYDETAILS');
INSERT INTO `auth_permission` VALUES ('143', 'Can browse shift', '26', 'browse_SHIFT');
INSERT INTO `auth_permission` VALUES ('144', 'Can browse sch class', '32', 'browse_SchClass');
INSERT INTO `auth_permission` VALUES ('145', 'Can browse use r_o f_run', '27', 'browse_USER_OF_RUN');
INSERT INTO `auth_permission` VALUES ('146', 'Can browse use r_speday', '28', 'browse_USER_SPEDAY');
INSERT INTO `auth_permission` VALUES ('147', 'Can browse use r_tem p_sch', '29', 'browse_USER_TEMP_SCH');
INSERT INTO `auth_permission` VALUES ('148', 'Can browse user', '4', 'browse_User');
INSERT INTO `auth_permission` VALUES ('149', 'Can browse administration log', '19', 'browse_adminLog');
INSERT INTO `auth_permission` VALUES ('150', 'Can browse checkexact', '20', 'browse_checkexact');
INSERT INTO `auth_permission` VALUES ('151', 'Can browse department', '8', 'browse_department');
INSERT INTO `auth_permission` VALUES ('152', 'Can browse log of command to device', '16', 'browse_devcmds');
INSERT INTO `auth_permission` VALUES ('153', 'Can browse log of data from device', '15', 'browse_devlog');
INSERT INTO `auth_permission` VALUES ('154', 'Can browse employee', '11', 'browse_employee');
INSERT INTO `auth_permission` VALUES ('155', 'Can browse fingerprint', '12', 'browse_fptemp');
INSERT INTO `auth_permission` VALUES ('156', 'Can browse 节假日', '22', 'browse_holidays');
INSERT INTO `auth_permission` VALUES ('157', 'Can browse device', '9', 'browse_iclock');
INSERT INTO `auth_permission` VALUES ('158', 'Can browse public information', '17', 'browse_messages');
INSERT INTO `auth_permission` VALUES ('159', 'Can browse device operation log', '14', 'browse_oplog');
INSERT INTO `auth_permission` VALUES ('160', 'Can browse transaction', '13', 'browse_transaction');
INSERT INTO `auth_permission` VALUES ('161', 'Init database', '33', 'init_database');
INSERT INTO `auth_permission` VALUES ('162', 'Enroll employee\'s fingerprint', '11', 'enroll_employee');
INSERT INTO `auth_permission` VALUES ('163', 'Can browse AttException', '36', 'browse_attexception');
INSERT INTO `auth_permission` VALUES ('164', 'Can browse AuditedExc', '37', 'browse_auditedexc');
INSERT INTO `auth_permission` VALUES ('165', 'Can browse DataItem', '38', 'browse_dataitem');
INSERT INTO `auth_permission` VALUES ('166', 'Can browse ExportDB', '39', 'browse_exportdb');
INSERT INTO `auth_permission` VALUES ('167', 'Can browse ExportDBItem', '40', 'browse_exportdbitem');
INSERT INTO `auth_permission` VALUES ('168', 'Add time-table', '24', 'addShiftTimeTable_num_run');
INSERT INTO `auth_permission` VALUES ('169', 'Delete time-table', '24', 'deleteAllShiftTimeTbl_num_run');
INSERT INTO `auth_permission` VALUES ('170', 'Can browse ScheduleTask', '41', 'browse_scheduletask');
INSERT INTO `auth_permission` VALUES ('171', 'Audit Sepcial Leave', '28', 'leaveAudit_user_speday');
INSERT INTO `auth_permission` VALUES ('172', 'operate Forget to clock in and out', '28', 'Forget_transaction');
INSERT INTO `auth_permission` VALUES ('173', 'operate reports', '28', 'report_transaction');
INSERT INTO `auth_permission` VALUES ('174', 'ReCalculate Reports', '28', 'reCalcaluteReport_transaction');
INSERT INTO `auth_permission` VALUES ('175', 'Can browse UserUsedSClasses', '42', 'browse_userusedsclasses');
INSERT INTO `auth_permission` VALUES ('176', 'Can browse attCalcLog', '43', 'browse_attcalclog');
INSERT INTO `auth_permission` VALUES ('177', 'Can browse attRecAbnormite', '44', 'browse_attrecabnormite');
INSERT INTO `auth_permission` VALUES ('178', 'Can browse attShifts', '45', 'browse_attshifts');
INSERT INTO `auth_permission` VALUES ('179', 'DataBase', '11', 'optionsDatabase_employee');
INSERT INTO `auth_permission` VALUES ('180', 'Clear Obsolete Data', '13', 'clearObsoleteData_transaction');
INSERT INTO `auth_permission` VALUES ('181', 'Init database', '13', 'init_database');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'admin', '', '', 'cc@cc.cc', 'sha1$64eb2$c27cbf5e4fac8157f3a9ea36e2dad639f16ad8b1', '1', '1', '1', '2017-08-05 21:41:53', '2008-09-06 21:03:11');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id_refs_id_f116770` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_67e79cb` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `checkexact`
-- ----------------------------
DROP TABLE IF EXISTS `checkexact`;
CREATE TABLE `checkexact` (
  `EXACTID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `CHECKTIME` datetime DEFAULT NULL,
  `CHECKTYPE` varchar(2) DEFAULT NULL,
  `ISADD` smallint(6) DEFAULT NULL,
  `YUYIN` varchar(25) DEFAULT NULL,
  `ISMODIFY` smallint(6) DEFAULT NULL,
  `ISDELETE` smallint(6) DEFAULT NULL,
  `INCOUNT` smallint(6) DEFAULT NULL,
  `ISCOUNT` smallint(6) DEFAULT NULL,
  `MODIFYBY` varchar(20) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EXACTID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkexact
-- ----------------------------

-- ----------------------------
-- Table structure for `checkinout`
-- ----------------------------
DROP TABLE IF EXISTS `checkinout`;
CREATE TABLE `checkinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `checktime` datetime NOT NULL,
  `checktype` varchar(1) NOT NULL,
  `verifycode` int(11) NOT NULL,
  `SN` varchar(20) DEFAULT NULL,
  `sensorid` varchar(5) DEFAULT NULL,
  `WorkCode` varchar(20) DEFAULT NULL,
  `Reserved` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`checktime`),
  KEY `checkinout_userid` (`userid`),
  KEY `checkinout_SN` (`SN`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkinout
-- ----------------------------
INSERT INTO `checkinout` VALUES ('1', '56', '2013-01-23 14:28:48', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('2', '56', '2013-01-23 14:28:52', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('3', '56', '2013-01-23 14:28:54', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('4', '4', '2017-06-10 18:46:26', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('5', '4', '2017-06-10 18:46:37', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('6', '4', '2017-06-10 18:49:08', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('7', '5', '2017-06-10 18:50:28', '4', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('8', '6', '2017-06-11 04:34:56', '3', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('9', '6', '2017-06-11 04:46:18', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('10', '6', '2017-06-11 04:56:25', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('11', '6', '2017-06-11 04:56:33', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('12', '6', '2017-06-11 04:57:43', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('13', '6', '2017-06-11 04:58:12', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('14', '7', '2017-06-11 05:45:54', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('15', '7', '2017-06-11 05:46:04', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('16', '7', '2017-06-11 05:46:14', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('17', '7', '2017-06-11 05:46:35', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('18', '7', '2017-06-11 05:46:42', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('19', '6', '2017-06-14 20:57:21', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('20', '6', '2017-06-14 20:58:14', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('21', '6', '2017-06-14 21:23:51', '2', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('22', '7', '2017-08-05 07:24:23', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('23', '6', '2017-08-05 21:43:33', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('24', '6', '2017-08-05 21:46:53', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('25', '6', '2017-08-05 21:47:15', 'I', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('26', '8', '2017-08-28 14:28:48', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('27', '8', '2017-08-28 22:38:43', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('28', '8', '2017-08-28 22:39:21', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('29', '8', '2017-08-28 22:41:07', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('30', '8', '2017-08-28 22:41:54', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('31', '8', '2017-08-28 22:43:31', 'l', '1', '3356901120048', '1', '', '');
INSERT INTO `checkinout` VALUES ('32', '8', '2017-08-28 22:44:43', 'l', '1', '3356901120048', '1', '', '');

-- ----------------------------
-- Table structure for `daemons`
-- ----------------------------
DROP TABLE IF EXISTS `daemons`;
CREATE TABLE `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daemons
-- ----------------------------

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `DeptID` int(11) NOT NULL,
  `DeptName` varchar(20) NOT NULL,
  `supdeptid` int(11) NOT NULL,
  PRIMARY KEY (`DeptID`),
  KEY `DEPTNAME` (`DeptName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'Our Company', '0');

-- ----------------------------
-- Table structure for `devcmds`
-- ----------------------------
DROP TABLE IF EXISTS `devcmds`;
CREATE TABLE `devcmds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) NOT NULL,
  `CmdContent` longtext NOT NULL,
  `CmdCommitTime` datetime NOT NULL,
  `CmdTransTime` datetime DEFAULT NULL,
  `CmdOverTime` datetime DEFAULT NULL,
  `CmdReturn` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devcmds_SN_id` (`SN_id`),
  KEY `devcmds_User_id` (`User_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devcmds
-- ----------------------------
INSERT INTO `devcmds` VALUES ('1', '3356901120048', 'INFO', '2017-08-05 21:42:23', '2017-08-05 21:42:25', '2017-08-05 21:42:25', '0', null);
INSERT INTO `devcmds` VALUES ('2', '3356901120048', 'CHECK', '2017-08-05 21:42:23', '2017-08-05 21:42:25', '2017-08-05 21:42:25', '0', null);

-- ----------------------------
-- Table structure for `devlog`
-- ----------------------------
DROP TABLE IF EXISTS `devlog`;
CREATE TABLE `devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) NOT NULL,
  `OP` varchar(8) NOT NULL,
  `Object` varchar(20) DEFAULT NULL,
  `Cnt` int(11) NOT NULL,
  `ECnt` int(11) NOT NULL,
  `OpTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `devlog_SN_id` (`SN_id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devlog
-- ----------------------------
INSERT INTO `devlog` VALUES ('1', '3356901120048', 'USERDATA', '000000001  ', '25', '0', '2017-08-05 21:42:26');
INSERT INTO `devlog` VALUES ('2', '3356901120048', 'USERDATA', '000000002  ', '6', '0', '2017-08-05 21:42:27');
INSERT INTO `devlog` VALUES ('3', '3356901120048', 'USERDATA', '000000003 6', '7', '0', '2017-08-05 21:42:27');
INSERT INTO `devlog` VALUES ('4', '3356901120048', 'USERDATA', '000000003 6', '2', '0', '2017-08-05 21:42:27');
INSERT INTO `devlog` VALUES ('5', '3356901120048', 'USERDATA', '000000004  ', '149', '0', '2017-08-05 21:42:31');
INSERT INTO `devlog` VALUES ('6', '3356901120048', 'USERDATA', '000000004  ', '2', '0', '2017-08-05 21:42:31');
INSERT INTO `devlog` VALUES ('7', '3356901120048', 'USERDATA', 'None', '150', '0', '2017-08-05 21:42:35');
INSERT INTO `devlog` VALUES ('8', '3356901120048', 'USERDATA', 'None', '53', '0', '2017-08-05 21:44:39');
INSERT INTO `devlog` VALUES ('9', '3356901120048', 'USERDATA', '000005353 Titiek Dha', '1', '0', '2017-08-05 21:44:39');
INSERT INTO `devlog` VALUES ('10', '3356901120048', 'USERDATA', '000005353 Titiek Dha', '1', '0', '2017-08-05 21:44:39');
INSERT INTO `devlog` VALUES ('11', '3356901120048', 'USERDATA', '000005353 Titiek Dha', '1', '0', '2017-08-05 21:44:39');
INSERT INTO `devlog` VALUES ('12', '3356901120048', 'USERDATA', '000000600  ', '1', '0', '2017-08-05 21:44:40');
INSERT INTO `devlog` VALUES ('13', '3356901120048', 'USERDATA', '000000600  ', '1', '0', '2017-08-05 21:44:40');
INSERT INTO `devlog` VALUES ('14', '3356901120048', 'USERDATA', '000007171 Yanuar Faj', '1', '0', '2017-08-05 21:44:40');
INSERT INTO `devlog` VALUES ('15', '3356901120048', 'USERDATA', '000007171 Yanuar Faj', '1', '0', '2017-08-05 21:44:41');
INSERT INTO `devlog` VALUES ('16', '3356901120048', 'USERDATA', '000007171 Yanuar Faj', '1', '0', '2017-08-05 21:44:41');
INSERT INTO `devlog` VALUES ('17', '3356901120048', 'USERDATA', '000008682 Abid Wahid', '1', '0', '2017-08-05 21:44:41');
INSERT INTO `devlog` VALUES ('18', '3356901120048', 'USERDATA', '000008682 Abid Wahid', '1', '0', '2017-08-05 21:44:41');
INSERT INTO `devlog` VALUES ('19', '3356901120048', 'USERDATA', '000008682 Abid Wahid', '1', '0', '2017-08-05 21:44:41');
INSERT INTO `devlog` VALUES ('20', '3356901120048', 'USERDATA', '000009795 Rizwan Ary', '1', '0', '2017-08-05 21:44:42');
INSERT INTO `devlog` VALUES ('21', '3356901120048', 'USERDATA', '000009795 Rizwan Ary', '1', '0', '2017-08-05 21:44:42');
INSERT INTO `devlog` VALUES ('22', '3356901120048', 'USERDATA', '000009795 Rizwan Ary', '1', '0', '2017-08-05 21:44:42');
INSERT INTO `devlog` VALUES ('23', '3356901120048', 'USERDATA', '000009796 Reza Mawas', '1', '0', '2017-08-05 21:44:42');
INSERT INTO `devlog` VALUES ('24', '3356901120048', 'USERDATA', '000009796 Reza Mawas', '1', '0', '2017-08-05 21:44:42');
INSERT INTO `devlog` VALUES ('25', '3356901120048', 'USERDATA', '000009796 Reza Mawas', '1', '0', '2017-08-05 21:44:43');
INSERT INTO `devlog` VALUES ('26', '3356901120048', 'USERDATA', '000009797 R. Leidy N', '1', '0', '2017-08-05 21:44:43');
INSERT INTO `devlog` VALUES ('27', '3356901120048', 'USERDATA', '000009797 R. Leidy N', '1', '0', '2017-08-05 21:44:43');
INSERT INTO `devlog` VALUES ('28', '3356901120048', 'USERDATA', '000009797 R. Leidy N', '1', '0', '2017-08-05 21:44:43');
INSERT INTO `devlog` VALUES ('29', '3356901120048', 'USERDATA', '000009798 Tedy Bhara', '1', '0', '2017-08-05 21:44:44');
INSERT INTO `devlog` VALUES ('30', '3356901120048', 'USERDATA', '000009798 Tedy Bhara', '1', '0', '2017-08-05 21:44:44');
INSERT INTO `devlog` VALUES ('31', '3356901120048', 'USERDATA', '000009798 Tedy Bhara', '1', '0', '2017-08-05 21:44:44');
INSERT INTO `devlog` VALUES ('32', '3356901120048', 'USERDATA', '000009223 Eka Sulist', '1', '0', '2017-08-05 21:44:44');
INSERT INTO `devlog` VALUES ('33', '3356901120048', 'USERDATA', '000009223 Eka Sulist', '1', '0', '2017-08-05 21:44:45');
INSERT INTO `devlog` VALUES ('34', '3356901120048', 'USERDATA', '000009223 Eka Sulist', '1', '0', '2017-08-05 21:44:45');
INSERT INTO `devlog` VALUES ('35', '3356901120048', 'USERDATA', '000001702 Shifa Nuru', '1', '0', '2017-08-05 21:44:45');
INSERT INTO `devlog` VALUES ('36', '3356901120048', 'USERDATA', '000001702 Shifa Nuru', '1', '0', '2017-08-05 21:44:45');
INSERT INTO `devlog` VALUES ('37', '3356901120048', 'USERDATA', '000001702 Shifa Nuru', '1', '0', '2017-08-05 21:44:46');
INSERT INTO `devlog` VALUES ('38', '3356901120048', 'USERDATA', '000001703 Dian Musti', '1', '0', '2017-08-05 21:44:46');
INSERT INTO `devlog` VALUES ('39', '3356901120048', 'USERDATA', '000001703 Dian Musti', '1', '0', '2017-08-05 21:44:46');
INSERT INTO `devlog` VALUES ('40', '3356901120048', 'USERDATA', '000001703 Dian Musti', '1', '0', '2017-08-05 21:44:46');
INSERT INTO `devlog` VALUES ('41', '3356901120048', 'USERDATA', '000001704 Agustina', '1', '0', '2017-08-05 21:44:46');
INSERT INTO `devlog` VALUES ('42', '3356901120048', 'USERDATA', '000001704 Agustina', '1', '0', '2017-08-05 21:44:47');
INSERT INTO `devlog` VALUES ('43', '3356901120048', 'USERDATA', '000001704 Agustina', '1', '0', '2017-08-05 21:44:47');
INSERT INTO `devlog` VALUES ('44', '3356901120048', 'USERDATA', '000001705 Riska Nuri', '1', '0', '2017-08-05 21:44:47');
INSERT INTO `devlog` VALUES ('45', '3356901120048', 'USERDATA', '000001705 Riska Nuri', '1', '0', '2017-08-05 21:44:48');
INSERT INTO `devlog` VALUES ('46', '3356901120048', 'USERDATA', '000001705 Riska Nuri', '1', '0', '2017-08-05 21:44:48');
INSERT INTO `devlog` VALUES ('47', '3356901120048', 'USERDATA', '000001706 Rivo Marzu', '1', '0', '2017-08-05 21:44:48');
INSERT INTO `devlog` VALUES ('48', '3356901120048', 'USERDATA', '000001706 Rivo Marzu', '1', '0', '2017-08-05 21:44:48');
INSERT INTO `devlog` VALUES ('49', '3356901120048', 'USERDATA', '000001706 Rivo Marzu', '1', '0', '2017-08-05 21:44:48');
INSERT INTO `devlog` VALUES ('50', '3356901120048', 'USERDATA', '000001707 Meidina Me', '1', '0', '2017-08-05 21:44:49');
INSERT INTO `devlog` VALUES ('51', '3356901120048', 'USERDATA', '000001707 Meidina Me', '1', '0', '2017-08-05 21:44:49');
INSERT INTO `devlog` VALUES ('52', '3356901120048', 'USERDATA', '000001707 Meidina Me', '1', '0', '2017-08-05 21:44:49');
INSERT INTO `devlog` VALUES ('53', '3356901120048', 'USERDATA', '000001708 Juniati', '1', '0', '2017-08-05 21:44:49');
INSERT INTO `devlog` VALUES ('54', '3356901120048', 'USERDATA', '000001708 Juniati', '1', '0', '2017-08-05 21:44:50');
INSERT INTO `devlog` VALUES ('55', '3356901120048', 'USERDATA', '000001708 Juniati', '1', '0', '2017-08-05 21:44:50');
INSERT INTO `devlog` VALUES ('56', '3356901120048', 'USERDATA', '000001709 Febrian Dn', '1', '0', '2017-08-05 21:44:50');
INSERT INTO `devlog` VALUES ('57', '3356901120048', 'USERDATA', '000001709 Febrian Dn', '1', '0', '2017-08-05 21:44:50');
INSERT INTO `devlog` VALUES ('58', '3356901120048', 'USERDATA', '000001709 Febrian Dn', '1', '0', '2017-08-05 21:44:50');
INSERT INTO `devlog` VALUES ('59', '3356901120048', 'USERDATA', '000001710 Andika Yun', '1', '0', '2017-08-05 21:44:51');
INSERT INTO `devlog` VALUES ('60', '3356901120048', 'USERDATA', '000001710 Andika Yun', '1', '0', '2017-08-05 21:44:51');
INSERT INTO `devlog` VALUES ('61', '3356901120048', 'USERDATA', '000001710 Andika Yun', '1', '0', '2017-08-05 21:44:51');
INSERT INTO `devlog` VALUES ('62', '3356901120048', 'USERDATA', '000001711 Suhaila Ma', '1', '0', '2017-08-05 21:44:51');
INSERT INTO `devlog` VALUES ('63', '3356901120048', 'USERDATA', '000001711 Suhaila Ma', '1', '0', '2017-08-05 21:44:52');
INSERT INTO `devlog` VALUES ('64', '3356901120048', 'USERDATA', '000001711 Suhaila Ma', '1', '0', '2017-08-05 21:44:52');
INSERT INTO `devlog` VALUES ('65', '3356901120048', 'USERDATA', '000001712 Johannes M', '1', '0', '2017-08-05 21:44:52');
INSERT INTO `devlog` VALUES ('66', '3356901120048', 'USERDATA', '000001712 Johannes M', '1', '0', '2017-08-05 21:44:52');
INSERT INTO `devlog` VALUES ('67', '3356901120048', 'USERDATA', '000001712 Johannes M', '1', '0', '2017-08-05 21:44:52');
INSERT INTO `devlog` VALUES ('68', '3356901120048', 'USERDATA', '000001713 Rizka Zaki', '1', '0', '2017-08-05 21:44:53');
INSERT INTO `devlog` VALUES ('69', '3356901120048', 'USERDATA', '000001713 Rizka Zaki', '1', '0', '2017-08-05 21:44:53');
INSERT INTO `devlog` VALUES ('70', '3356901120048', 'USERDATA', '000001713 Rizka Zaki', '1', '0', '2017-08-05 21:44:53');
INSERT INTO `devlog` VALUES ('71', '3356901120048', 'USERDATA', '000001714 Kusuma Dew', '1', '0', '2017-08-05 21:44:53');
INSERT INTO `devlog` VALUES ('72', '3356901120048', 'USERDATA', '000001714 Kusuma Dew', '1', '0', '2017-08-05 21:44:53');
INSERT INTO `devlog` VALUES ('73', '3356901120048', 'USERDATA', '000001714 Kusuma Dew', '1', '0', '2017-08-05 21:44:54');
INSERT INTO `devlog` VALUES ('74', '3356901120048', 'USERDATA', '000001715 Iya Yaumil', '1', '0', '2017-08-05 21:44:54');
INSERT INTO `devlog` VALUES ('75', '3356901120048', 'USERDATA', '000001715 Iya Yaumil', '1', '0', '2017-08-05 21:44:54');
INSERT INTO `devlog` VALUES ('76', '3356901120048', 'USERDATA', '000001715 Iya Yaumil', '1', '0', '2017-08-05 21:44:54');
INSERT INTO `devlog` VALUES ('77', '3356901120048', 'USERDATA', '000001716 Puspita Ar', '1', '0', '2017-08-05 21:44:55');
INSERT INTO `devlog` VALUES ('78', '3356901120048', 'USERDATA', '000001716 Puspita Ar', '1', '0', '2017-08-05 21:44:55');
INSERT INTO `devlog` VALUES ('79', '3356901120048', 'USERDATA', '000001716 Puspita Ar', '1', '0', '2017-08-05 21:44:55');
INSERT INTO `devlog` VALUES ('80', '3356901120048', 'USERDATA', '000001717 Elmo Wirat', '1', '0', '2017-08-05 21:44:55');
INSERT INTO `devlog` VALUES ('81', '3356901120048', 'USERDATA', '000001717 Elmo Wirat', '1', '0', '2017-08-05 21:44:56');
INSERT INTO `devlog` VALUES ('82', '3356901120048', 'USERDATA', '000001717 Elmo Wirat', '1', '0', '2017-08-05 21:44:56');
INSERT INTO `devlog` VALUES ('83', '3356901120048', 'USERDATA', '000001718 Ayu Widya ', '1', '0', '2017-08-05 21:44:56');
INSERT INTO `devlog` VALUES ('84', '3356901120048', 'USERDATA', '000001718 Ayu Widya ', '1', '0', '2017-08-05 21:44:56');
INSERT INTO `devlog` VALUES ('85', '3356901120048', 'USERDATA', '000001718 Ayu Widya ', '1', '0', '2017-08-05 21:44:56');
INSERT INTO `devlog` VALUES ('86', '3356901120048', 'USERDATA', '000001719 Evasari Me', '1', '0', '2017-08-05 21:44:57');
INSERT INTO `devlog` VALUES ('87', '3356901120048', 'USERDATA', '000001719 Evasari Me', '1', '0', '2017-08-05 21:44:57');
INSERT INTO `devlog` VALUES ('88', '3356901120048', 'USERDATA', '000001719 Evasari Me', '1', '0', '2017-08-05 21:44:57');
INSERT INTO `devlog` VALUES ('89', '3356901120048', 'USERDATA', '000001720 Dwianta Ha', '1', '0', '2017-08-05 21:44:57');
INSERT INTO `devlog` VALUES ('90', '3356901120048', 'USERDATA', '000001720 Dwianta Ha', '1', '0', '2017-08-05 21:44:58');
INSERT INTO `devlog` VALUES ('91', '3356901120048', 'USERDATA', '000001720 Dwianta Ha', '1', '0', '2017-08-05 21:44:58');
INSERT INTO `devlog` VALUES ('92', '3356901120048', 'USERDATA', '000001721 Theodora C', '1', '0', '2017-08-05 21:44:58');
INSERT INTO `devlog` VALUES ('93', '3356901120048', 'USERDATA', '000001721 Theodora C', '1', '0', '2017-08-05 21:44:58');
INSERT INTO `devlog` VALUES ('94', '3356901120048', 'USERDATA', '000001721 Theodora C', '1', '0', '2017-08-05 21:44:58');
INSERT INTO `devlog` VALUES ('95', '3356901120048', 'USERDATA', '000001722 Aldy Mi\'ro', '1', '0', '2017-08-05 21:44:59');
INSERT INTO `devlog` VALUES ('96', '3356901120048', 'USERDATA', '000001722 Aldy Mi\'ro', '1', '0', '2017-08-05 21:44:59');
INSERT INTO `devlog` VALUES ('97', '3356901120048', 'USERDATA', '000001722 Aldy Mi\'ro', '1', '0', '2017-08-05 21:44:59');
INSERT INTO `devlog` VALUES ('98', '3356901120048', 'USERDATA', '000001723 Anindito B', '1', '0', '2017-08-05 21:45:00');
INSERT INTO `devlog` VALUES ('99', '3356901120048', 'USERDATA', '000001723 Anindito B', '1', '0', '2017-08-05 21:45:00');
INSERT INTO `devlog` VALUES ('100', '3356901120048', 'USERDATA', '000001723 Anindito B', '1', '0', '2017-08-05 21:45:00');
INSERT INTO `devlog` VALUES ('101', '3356901120048', 'USERDATA', '000001724 A. Rahman ', '1', '0', '2017-08-05 21:45:00');
INSERT INTO `devlog` VALUES ('102', '3356901120048', 'USERDATA', '000001724 A. Rahman ', '1', '0', '2017-08-05 21:45:00');
INSERT INTO `devlog` VALUES ('103', '3356901120048', 'USERDATA', '000001724 A. Rahman ', '1', '0', '2017-08-05 21:45:01');
INSERT INTO `devlog` VALUES ('104', '3356901120048', 'USERDATA', '000001725 Nurman Hid', '1', '0', '2017-08-05 21:45:01');
INSERT INTO `devlog` VALUES ('105', '3356901120048', 'USERDATA', '000001725 Nurman Hid', '1', '0', '2017-08-05 21:45:01');
INSERT INTO `devlog` VALUES ('106', '3356901120048', 'USERDATA', '000001725 Nurman Hid', '1', '0', '2017-08-05 21:45:01');
INSERT INTO `devlog` VALUES ('107', '3356901120048', 'USERDATA', '000001726 Lingga Rah', '1', '0', '2017-08-05 21:45:01');
INSERT INTO `devlog` VALUES ('108', '3356901120048', 'USERDATA', '000001726 Lingga Rah', '1', '0', '2017-08-05 21:45:02');
INSERT INTO `devlog` VALUES ('109', '3356901120048', 'USERDATA', '000001726 Lingga Rah', '1', '0', '2017-08-05 21:45:02');
INSERT INTO `devlog` VALUES ('110', '3356901120048', 'USERDATA', '000001727 Angga Nugr', '1', '0', '2017-08-05 21:45:02');
INSERT INTO `devlog` VALUES ('111', '3356901120048', 'USERDATA', '000001727 Angga Nugr', '1', '0', '2017-08-05 21:45:02');
INSERT INTO `devlog` VALUES ('112', '3356901120048', 'USERDATA', '000001727 Angga Nugr', '1', '0', '2017-08-05 21:45:02');
INSERT INTO `devlog` VALUES ('113', '3356901120048', 'USERDATA', '000001728 Bhasmara P', '1', '0', '2017-08-05 21:45:03');
INSERT INTO `devlog` VALUES ('114', '3356901120048', 'USERDATA', '000001728 Bhasmara P', '1', '0', '2017-08-05 21:45:03');
INSERT INTO `devlog` VALUES ('115', '3356901120048', 'USERDATA', '000001728 Bhasmara P', '1', '0', '2017-08-05 21:45:03');
INSERT INTO `devlog` VALUES ('116', '3356901120048', 'USERDATA', '000001729 Randi Riva', '1', '0', '2017-08-05 21:45:03');
INSERT INTO `devlog` VALUES ('117', '3356901120048', 'USERDATA', '000001729 Randi Riva', '1', '0', '2017-08-05 21:45:03');
INSERT INTO `devlog` VALUES ('118', '3356901120048', 'USERDATA', '000001729 Randi Riva', '1', '0', '2017-08-05 21:45:04');
INSERT INTO `devlog` VALUES ('119', '3356901120048', 'USERDATA', '000001730 Tinton Gal', '1', '0', '2017-08-05 21:45:04');
INSERT INTO `devlog` VALUES ('120', '3356901120048', 'USERDATA', '000001730 Tinton Gal', '1', '0', '2017-08-05 21:45:04');
INSERT INTO `devlog` VALUES ('121', '3356901120048', 'USERDATA', '000001730 Tinton Gal', '1', '0', '2017-08-05 21:45:05');
INSERT INTO `devlog` VALUES ('122', '3356901120048', 'USERDATA', '000001731 Kosumo, S.', '1', '0', '2017-08-05 21:45:05');
INSERT INTO `devlog` VALUES ('123', '3356901120048', 'USERDATA', '000001731 Kosumo, S.', '1', '0', '2017-08-05 21:45:05');
INSERT INTO `devlog` VALUES ('124', '3356901120048', 'USERDATA', '000001731 Kosumo, S.', '1', '0', '2017-08-05 21:45:05');
INSERT INTO `devlog` VALUES ('125', '3356901120048', 'USERDATA', '000001732 Muchammad ', '1', '0', '2017-08-05 21:45:06');
INSERT INTO `devlog` VALUES ('126', '3356901120048', 'USERDATA', '000001732 Muchammad ', '1', '0', '2017-08-05 21:45:06');
INSERT INTO `devlog` VALUES ('127', '3356901120048', 'USERDATA', '000001732 Muchammad ', '1', '0', '2017-08-05 21:45:06');
INSERT INTO `devlog` VALUES ('128', '3356901120048', 'USERDATA', '000001733 Fany Adity', '1', '0', '2017-08-05 21:45:06');
INSERT INTO `devlog` VALUES ('129', '3356901120048', 'USERDATA', '000001733 Fany Adity', '1', '0', '2017-08-05 21:45:06');
INSERT INTO `devlog` VALUES ('130', '3356901120048', 'USERDATA', '000001733 Fany Adity', '1', '0', '2017-08-05 21:45:07');
INSERT INTO `devlog` VALUES ('131', '3356901120048', 'USERDATA', '000001734 Evry Dicky', '1', '0', '2017-08-05 21:45:07');
INSERT INTO `devlog` VALUES ('132', '3356901120048', 'USERDATA', '000001734 Evry Dicky', '1', '0', '2017-08-05 21:45:07');
INSERT INTO `devlog` VALUES ('133', '3356901120048', 'USERDATA', '000001734 Evry Dicky', '1', '0', '2017-08-05 21:45:07');
INSERT INTO `devlog` VALUES ('134', '3356901120048', 'USERDATA', '000001735 Andik Pras', '1', '0', '2017-08-05 21:45:07');
INSERT INTO `devlog` VALUES ('135', '3356901120048', 'USERDATA', '000001735 Andik Pras', '1', '0', '2017-08-05 21:45:08');
INSERT INTO `devlog` VALUES ('136', '3356901120048', 'USERDATA', '000001735 Andik Pras', '1', '0', '2017-08-05 21:45:08');
INSERT INTO `devlog` VALUES ('137', '3356901120048', 'USERDATA', '000001736 Asep Rahma', '1', '0', '2017-08-05 21:45:08');
INSERT INTO `devlog` VALUES ('138', '3356901120048', 'USERDATA', '000001736 Asep Rahma', '1', '0', '2017-08-05 21:45:08');
INSERT INTO `devlog` VALUES ('139', '3356901120048', 'USERDATA', '000001736 Asep Rahma', '1', '0', '2017-08-05 21:45:08');
INSERT INTO `devlog` VALUES ('140', '3356901120048', 'USERDATA', '000001737 Bantas', '1', '0', '2017-08-05 21:45:09');
INSERT INTO `devlog` VALUES ('141', '3356901120048', 'USERDATA', '000001737 Bantas', '1', '0', '2017-08-05 21:45:09');
INSERT INTO `devlog` VALUES ('142', '3356901120048', 'USERDATA', '000001737 Bantas', '1', '0', '2017-08-05 21:45:09');
INSERT INTO `devlog` VALUES ('143', '3356901120048', 'USERDATA', '000001738 Mahanri Tu', '1', '0', '2017-08-05 21:45:10');
INSERT INTO `devlog` VALUES ('144', '3356901120048', 'USERDATA', '000001738 Mahanri Tu', '1', '0', '2017-08-05 21:45:10');
INSERT INTO `devlog` VALUES ('145', '3356901120048', 'USERDATA', '000001738 Mahanri Tu', '1', '0', '2017-08-05 21:45:10');
INSERT INTO `devlog` VALUES ('146', '3356901120048', 'USERDATA', '000001739 Heldy Satr', '1', '0', '2017-08-05 21:45:10');
INSERT INTO `devlog` VALUES ('147', '3356901120048', 'USERDATA', '000001739 Heldy Satr', '1', '0', '2017-08-05 21:45:10');
INSERT INTO `devlog` VALUES ('148', '3356901120048', 'USERDATA', '000001739 Heldy Satr', '1', '0', '2017-08-05 21:45:11');
INSERT INTO `devlog` VALUES ('149', '3356901120048', 'USERDATA', '000001740 Ir. Hari B', '1', '0', '2017-08-05 21:45:11');
INSERT INTO `devlog` VALUES ('150', '3356901120048', 'USERDATA', '000001740 Ir. Hari B', '1', '0', '2017-08-05 21:45:11');
INSERT INTO `devlog` VALUES ('151', '3356901120048', 'USERDATA', '000001740 Ir. Hari B', '1', '0', '2017-08-05 21:45:11');
INSERT INTO `devlog` VALUES ('152', '3356901120048', 'USERDATA', '000987890 M.Ali Arra', '1', '0', '2017-08-05 21:45:11');
INSERT INTO `devlog` VALUES ('153', '3356901120048', 'USERDATA', '000987890 M.Ali Arra', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('154', '3356901120048', 'USERDATA', '000000001  , 0', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('155', '3356901120048', 'USERDATA', '000000002  , 0', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('156', '3356901120048', 'USERDATA', '000000003 6, 0', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('157', '3356901120048', 'USERDATA', '000000003 6, 1', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('158', '3356901120048', 'USERDATA', '000000004  , 0', '1', '0', '2017-08-05 21:45:12');
INSERT INTO `devlog` VALUES ('159', '3356901120048', 'USERDATA', '000000004  , 1', '1', '0', '2017-08-05 21:45:13');
INSERT INTO `devlog` VALUES ('160', '3356901120048', 'TRANSACT', '', '0', '23', '2017-08-05 21:45:13');
INSERT INTO `devlog` VALUES ('161', '3356901120048', 'TRANSACT', '3	2017-08-05 22:46:5', '1', '0', '2017-08-05 21:46:53');
INSERT INTO `devlog` VALUES ('162', '3356901120048', 'TRANSACT', '3	2017-08-05 22:47:1', '1', '0', '2017-08-05 21:47:15');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_user_id` (`user_id`),
  KEY `django_admin_log_content_type_id` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'message', 'auth', 'message');
INSERT INTO `django_content_type` VALUES ('6', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('8', 'department', 'iclock', 'department');
INSERT INTO `django_content_type` VALUES ('9', 'device', 'iclock', 'iclock');
INSERT INTO `django_content_type` VALUES ('10', 'admin granted department', 'iclock', 'deptadmin');
INSERT INTO `django_content_type` VALUES ('11', 'employee', 'iclock', 'employee');
INSERT INTO `django_content_type` VALUES ('12', 'fingerprint', 'iclock', 'fptemp');
INSERT INTO `django_content_type` VALUES ('13', 'transaction', 'iclock', 'transaction');
INSERT INTO `django_content_type` VALUES ('14', 'device operation log', 'iclock', 'oplog');
INSERT INTO `django_content_type` VALUES ('15', 'log of data from device', 'iclock', 'devlog');
INSERT INTO `django_content_type` VALUES ('16', 'log of command to device', 'iclock', 'devcmds');
INSERT INTO `django_content_type` VALUES ('17', 'public information', 'iclock', 'messages');
INSERT INTO `django_content_type` VALUES ('18', 'information subscription', 'iclock', 'iclockmsg');
INSERT INTO `django_content_type` VALUES ('19', 'administration log', 'iclock', 'adminlog');
INSERT INTO `django_content_type` VALUES ('20', 'checkexact', 'iclock', 'checkexact');
INSERT INTO `django_content_type` VALUES ('21', 'excnotes', 'iclock', 'excnotes');
INSERT INTO `django_content_type` VALUES ('22', '节假日', 'iclock', 'holidays');
INSERT INTO `django_content_type` VALUES ('23', 'nu m_ru n_deil', 'iclock', 'num_run_deil');
INSERT INTO `django_content_type` VALUES ('24', 'nu m_run', 'iclock', 'num_run');
INSERT INTO `django_content_type` VALUES ('25', 'securitydetails', 'iclock', 'securitydetails');
INSERT INTO `django_content_type` VALUES ('26', 'shift', 'iclock', 'shift');
INSERT INTO `django_content_type` VALUES ('27', 'use r_o f_run', 'iclock', 'user_of_run');
INSERT INTO `django_content_type` VALUES ('28', 'use r_speday', 'iclock', 'user_speday');
INSERT INTO `django_content_type` VALUES ('29', 'use r_tem p_sch', 'iclock', 'user_temp_sch');
INSERT INTO `django_content_type` VALUES ('30', 'leave class', 'iclock', 'leaveclass');
INSERT INTO `django_content_type` VALUES ('31', 'leave class1', 'iclock', 'leaveclass1');
INSERT INTO `django_content_type` VALUES ('32', 'sch class', 'iclock', 'schclass');
INSERT INTO `django_content_type` VALUES ('33', 'att param', 'iclock', 'attparam');
INSERT INTO `django_content_type` VALUES ('34', 'att param2', 'iclock', 'attparam2');
INSERT INTO `django_content_type` VALUES ('35', 'item define', 'iclock', 'itemdefine');
INSERT INTO `django_content_type` VALUES ('36', 'att exception', 'iclock', 'attexception');
INSERT INTO `django_content_type` VALUES ('37', 'audited exc', 'iclock', 'auditedexc');
INSERT INTO `django_content_type` VALUES ('38', 'data item', 'iclock', 'dataitem');
INSERT INTO `django_content_type` VALUES ('39', 'export db', 'iclock', 'exportdb');
INSERT INTO `django_content_type` VALUES ('40', 'export db item', 'iclock', 'exportdbitem');
INSERT INTO `django_content_type` VALUES ('41', 'schedule task', 'iclock', 'scheduletask');
INSERT INTO `django_content_type` VALUES ('42', 'user used s classes', 'iclock', 'userusedsclasses');
INSERT INTO `django_content_type` VALUES ('43', 'att calc log', 'iclock', 'attcalclog');
INSERT INTO `django_content_type` VALUES ('44', 'attRecAbnormite', 'iclock', 'attrecabnormite');
INSERT INTO `django_content_type` VALUES ('45', 'att shifts', 'iclock', 'attshifts');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `excnotes`
-- ----------------------------
DROP TABLE IF EXISTS `excnotes`;
CREATE TABLE `excnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `AttDate` datetime DEFAULT NULL,
  `Notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `EXCNOTE` (`UserID`,`AttDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of excnotes
-- ----------------------------

-- ----------------------------
-- Table structure for `gammu`
-- ----------------------------
DROP TABLE IF EXISTS `gammu`;
CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gammu
-- ----------------------------
INSERT INTO `gammu` VALUES ('13');

-- ----------------------------
-- Table structure for `holidays`
-- ----------------------------
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `HolidayID` int(11) NOT NULL AUTO_INCREMENT,
  `HolidayName` varchar(20) DEFAULT NULL,
  `HolidayYear` smallint(6) DEFAULT NULL,
  `HolidayMonth` smallint(6) DEFAULT NULL,
  `HolidayDay` smallint(6) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `Duration` smallint(6) DEFAULT NULL,
  `HolidayType` smallint(6) DEFAULT NULL,
  `XINBIE` varchar(4) DEFAULT NULL,
  `MINZU` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`HolidayID`),
  UNIQUE KEY `HOLIDAYNAME` (`HolidayName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of holidays
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock`
-- ----------------------------
DROP TABLE IF EXISTS `iclock`;
CREATE TABLE `iclock` (
  `SN` varchar(20) NOT NULL,
  `State` int(11) NOT NULL,
  `LastActivity` datetime DEFAULT NULL,
  `TransTimes` varchar(50) DEFAULT NULL,
  `TransInterval` int(11) NOT NULL,
  `LogStamp` varchar(20) DEFAULT NULL,
  `OpLogStamp` varchar(20) DEFAULT NULL,
  `Alias` varchar(20) NOT NULL,
  `DeptID` int(11) DEFAULT NULL,
  `UpdateDB` varchar(10) NOT NULL,
  `Style` varchar(20) DEFAULT NULL,
  `FWVersion` varchar(30) DEFAULT NULL,
  `FPCount` int(11) DEFAULT NULL,
  `TransactionCount` int(11) DEFAULT NULL,
  `UserCount` int(11) DEFAULT NULL,
  `MainTime` varchar(20) DEFAULT NULL,
  `MaxFingerCount` int(11) DEFAULT NULL,
  `MaxAttLogCount` int(11) DEFAULT NULL,
  `DeviceName` varchar(30) DEFAULT NULL,
  `AlgVer` varchar(30) DEFAULT NULL,
  `FlashSize` varchar(10) DEFAULT NULL,
  `FreeFlashSize` varchar(10) DEFAULT NULL,
  `Language` varchar(30) DEFAULT NULL,
  `VOLUME` varchar(10) DEFAULT NULL,
  `DtFmt` varchar(10) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `IsTFT` varchar(5) DEFAULT NULL,
  `Platform` varchar(20) DEFAULT NULL,
  `Brightness` varchar(5) DEFAULT NULL,
  `BackupDev` varchar(30) DEFAULT NULL,
  `OEMVendor` varchar(30) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `AccFun` smallint(6) NOT NULL,
  `TZAdj` smallint(6) NOT NULL,
  `DelTag` smallint(6) NOT NULL,
  `PhotoStamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SN`),
  KEY `iclock_DeptID` (`DeptID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock
-- ----------------------------
INSERT INTO `iclock` VALUES ('3356901120048', '1', '2017-08-05 22:53:59', '00:00;14:05', '1', '565570035', '565569879', '192.168.1.17', '1', '1111100000', 'F7', 'Ver 6.60 Dec 16 2011', '151', '25', '53', '1970-01-01 00:00:15', '30000', '300000', 'TP739', 'Finger VX', '236544', '203604', '73', '38', '6', '192.168.1.17', '1', 'ZEM510_TFT', '80', null, 'iCON Technology', null, '15', '8', '0', null);

-- ----------------------------
-- Table structure for `iclock_adminlog`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_adminlog`;
CREATE TABLE `iclock_adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `action` varchar(40) NOT NULL,
  `object` varchar(40) DEFAULT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_adminlog_User_id` (`User_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_adminlog
-- ----------------------------
INSERT INTO `iclock_adminlog` VALUES ('1', '2009-01-08 22:39:35', '1', 'None', 'LOGIN', '127.0.0.1', '1');
INSERT INTO `iclock_adminlog` VALUES ('2', '2009-01-08 22:44:13', '1', 'transaction', 'Delete out-of-date', null, '1');
INSERT INTO `iclock_adminlog` VALUES ('3', '2009-01-08 22:44:44', '1', 'employee', 'Create', '00000000000223  ', '1');
INSERT INTO `iclock_adminlog` VALUES ('4', '2009-01-08 22:51:24', '1', 'employee', 'Create', '98977 jhjkh', '1');
INSERT INTO `iclock_adminlog` VALUES ('5', '2009-01-08 22:51:51', '1', 'employee', 'Modify', '223  ', '1');
INSERT INTO `iclock_adminlog` VALUES ('6', '2009-01-08 22:52:09', '1', 'employee', 'Create', '980  ', '1');
INSERT INTO `iclock_adminlog` VALUES ('7', '2009-01-08 22:52:32', '1', 'adminLog', 'Delete out-of-date', null, '1');
INSERT INTO `iclock_adminlog` VALUES ('8', '2009-01-08 22:52:57', '1', 'employee', 'Clear', 'All', '1');
INSERT INTO `iclock_adminlog` VALUES ('9', '2009-01-08 22:53:18', '1', 'adminLog', 'Delete out-of-date', null, '1');
INSERT INTO `iclock_adminlog` VALUES ('10', '2009-04-17 06:29:49', '1', 'None', 'LOGIN', '127.0.0.1', '1');
INSERT INTO `iclock_adminlog` VALUES ('11', '2017-08-05 21:41:53', '1', 'None', 'LOGIN', '192.168.1.15', '1');

-- ----------------------------
-- Table structure for `iclock_dataitem`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_dataitem`;
CREATE TABLE `iclock_dataitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataName` varchar(100) NOT NULL,
  `dbServer` varchar(100) NOT NULL,
  `contentType_id` int(11) NOT NULL,
  `format` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_dataitem_contentType_id` (`contentType_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_dataitem
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_deptadmin`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_deptadmin`;
CREATE TABLE `iclock_deptadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_deptadmin_user_id` (`user_id`),
  KEY `iclock_deptadmin_dept_id` (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_deptadmin
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_exportdb`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_exportdb`;
CREATE TABLE `iclock_exportdb` (
  `expName` varchar(100) NOT NULL,
  `dbEngine` varchar(100) NOT NULL,
  `dbServer` varchar(100) NOT NULL,
  `dbName` varchar(100) NOT NULL,
  `dbUser` varchar(100) NOT NULL,
  `dbPassword` varchar(100) NOT NULL,
  PRIMARY KEY (`expName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_exportdb
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_exportdbitem`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_exportdbitem`;
CREATE TABLE `iclock_exportdbitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expDB_id` varchar(100) NOT NULL,
  `tableName` varchar(100) NOT NULL,
  `fieldName` varchar(100) NOT NULL,
  `isKeyField` smallint(6) NOT NULL,
  `overwrite` smallint(6) NOT NULL,
  `dbPassword` varchar(100) NOT NULL,
  `contentType_id` int(11) NOT NULL,
  `dataItem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_exportdbitem_expDB_id` (`expDB_id`),
  KEY `iclock_exportdbitem_contentType_id` (`contentType_id`),
  KEY `iclock_exportdbitem_dataItem_id` (`dataItem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_exportdbitem
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_iclockmsg`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_iclockmsg`;
CREATE TABLE `iclock_iclockmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) NOT NULL,
  `MsgType` int(11) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime DEFAULT NULL,
  `MsgParam` varchar(32) DEFAULT NULL,
  `MsgContent` varchar(200) DEFAULT NULL,
  `LastTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_iclockmsg_SN_id` (`SN_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_iclockmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_itemdefine`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_itemdefine`;
CREATE TABLE `iclock_itemdefine` (
  `ItemName` varchar(100) NOT NULL,
  `ItemType` varchar(20) DEFAULT NULL,
  `Author_id` int(11) NOT NULL,
  `ItemValue` longtext,
  `Published` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ItemName`),
  KEY `iclock_itemdefine_Author_id` (`Author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_itemdefine
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_messages`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_messages`;
CREATE TABLE `iclock_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MsgType` int(11) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime DEFAULT NULL,
  `MsgContent` longtext,
  `MsgImage` varchar(64) DEFAULT NULL,
  `DeptID_id` int(11) DEFAULT NULL,
  `MsgParam` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iclock_messages_DeptID_id` (`DeptID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `iclock_oplog`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_oplog`;
CREATE TABLE `iclock_oplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN` varchar(20) DEFAULT NULL,
  `admin` int(11) NOT NULL,
  `OP` smallint(6) NOT NULL,
  `OPTime` datetime NOT NULL,
  `Object` int(11) DEFAULT NULL,
  `Param1` int(11) DEFAULT NULL,
  `Param2` int(11) DEFAULT NULL,
  `Param3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SN` (`SN`,`OPTime`),
  KEY `iclock_oplog_SN` (`SN`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_oplog
-- ----------------------------
INSERT INTO `iclock_oplog` VALUES ('1', '3356901120048', '0', '13', '2013-01-23 14:18:26', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('2', '3356901120048', '0', '4', '2013-01-23 14:26:25', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('3', '3356901120048', '0', '5', '2013-01-23 14:26:41', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('4', '3356901120048', '0', '5', '2013-01-23 14:26:42', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('5', '3356901120048', '0', '5', '2013-01-23 14:26:43', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('6', '3356901120048', '0', '5', '2013-01-23 14:26:44', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('7', '3356901120048', '0', '5', '2013-01-23 14:26:45', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('8', '3356901120048', '0', '5', '2013-01-23 14:26:46', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('9', '3356901120048', '0', '5', '2013-01-23 14:26:47', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('10', '3356901120048', '0', '5', '2013-01-23 14:26:48', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('11', '3356901120048', '0', '5', '2013-01-23 14:26:49', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('12', '3356901120048', '0', '5', '2013-01-23 14:26:50', '346', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('13', '3356901120048', '0', '5', '2013-01-23 14:26:51', '347', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('14', '3356901120048', '0', '5', '2013-01-23 14:26:52', '348', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('15', '3356901120048', '0', '4', '2013-01-23 14:29:07', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('16', '3356901120048', '0', '0', '2017-06-09 12:54:17', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('17', '3356901120048', '0', '4', '2017-06-09 12:54:51', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('18', '3356901120048', '0', '0', '2017-06-10 08:01:10', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('19', '3356901120048', '0', '0', '2017-06-10 18:42:48', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('20', '3356901120048', '0', '4', '2017-06-10 18:43:00', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('21', '3356901120048', '0', '30', '2017-06-10 18:46:17', '2', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('22', '3356901120048', '0', '6', '2017-06-10 18:46:18', '2', '0', '0', '1287');
INSERT INTO `iclock_oplog` VALUES ('23', '3356901120048', '0', '4', '2017-06-10 18:47:37', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('24', '3356901120048', '0', '4', '2017-06-10 18:49:35', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('25', '3356901120048', '0', '30', '2017-06-10 18:50:21', '3', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('26', '3356901120048', '0', '6', '2017-06-10 18:50:22', '3', '0', '0', '1128');
INSERT INTO `iclock_oplog` VALUES ('27', '3356901120048', '0', '4', '2017-06-10 18:50:41', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('28', '3356901120048', '0', '0', '2017-06-11 04:33:26', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('29', '3356901120048', '0', '4', '2017-06-11 04:33:33', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('30', '3356901120048', '0', '30', '2017-06-11 04:34:46', '4', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('31', '3356901120048', '0', '6', '2017-06-11 04:34:47', '4', '0', '0', '1038');
INSERT INTO `iclock_oplog` VALUES ('32', '3356901120048', '0', '6', '2017-06-11 04:34:48', '4', '0', '1', '998');
INSERT INTO `iclock_oplog` VALUES ('33', '3356901120048', '0', '3', '2017-06-11 04:35:59', '65535', '65535', '65535', '65535');
INSERT INTO `iclock_oplog` VALUES ('34', '3356901120048', '0', '4', '2017-06-11 04:36:00', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('35', '3356901120048', '0', '5', '2017-06-11 04:38:10', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('36', '3356901120048', '0', '5', '2017-06-11 04:38:11', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('37', '3356901120048', '0', '5', '2017-06-11 04:38:12', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('38', '3356901120048', '0', '5', '2017-06-11 04:38:13', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('39', '3356901120048', '0', '5', '2017-06-11 04:38:14', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('40', '3356901120048', '0', '5', '2017-06-11 04:38:15', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('41', '3356901120048', '0', '5', '2017-06-11 04:38:16', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('42', '3356901120048', '0', '5', '2017-06-11 04:38:17', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('43', '3356901120048', '0', '5', '2017-06-11 04:38:18', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('44', '3356901120048', '0', '5', '2017-06-11 04:38:19', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('45', '3356901120048', '0', '5', '2017-06-11 04:38:20', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('46', '3356901120048', '0', '5', '2017-06-11 04:38:58', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('47', '3356901120048', '0', '5', '2017-06-11 04:38:59', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('48', '3356901120048', '0', '5', '2017-06-11 04:39:00', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('49', '3356901120048', '0', '5', '2017-06-11 04:39:01', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('50', '3356901120048', '0', '5', '2017-06-11 04:39:02', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('51', '3356901120048', '0', '5', '2017-06-11 04:39:03', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('52', '3356901120048', '0', '5', '2017-06-11 04:39:04', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('53', '3356901120048', '0', '5', '2017-06-11 04:39:05', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('54', '3356901120048', '0', '5', '2017-06-11 04:39:06', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('55', '3356901120048', '0', '5', '2017-06-11 04:39:07', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('56', '3356901120048', '0', '5', '2017-06-11 04:39:08', '346', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('57', '3356901120048', '0', '4', '2017-06-11 04:44:14', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('58', '3356901120048', '0', '4', '2017-06-11 04:46:34', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('59', '3356901120048', '0', '4', '2017-06-11 04:51:53', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('60', '3356901120048', '0', '5', '2017-06-11 04:55:20', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('61', '3356901120048', '0', '5', '2017-06-11 04:55:21', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('62', '3356901120048', '0', '5', '2017-06-11 04:55:22', '157', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('63', '3356901120048', '0', '5', '2017-06-11 04:55:23', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('64', '3356901120048', '0', '5', '2017-06-11 04:55:24', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('65', '3356901120048', '0', '5', '2017-06-11 04:55:25', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('66', '3356901120048', '0', '5', '2017-06-11 04:55:26', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('67', '3356901120048', '0', '5', '2017-06-11 04:55:27', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('68', '3356901120048', '0', '5', '2017-06-11 04:55:28', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('69', '3356901120048', '0', '5', '2017-06-11 04:55:29', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('70', '3356901120048', '0', '5', '2017-06-11 04:55:30', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('71', '3356901120048', '0', '5', '2017-06-11 04:56:10', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('72', '3356901120048', '0', '5', '2017-06-11 04:56:11', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('73', '3356901120048', '0', '5', '2017-06-11 04:56:12', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('74', '3356901120048', '0', '5', '2017-06-11 04:56:13', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('75', '3356901120048', '0', '5', '2017-06-11 04:56:14', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('76', '3356901120048', '0', '5', '2017-06-11 04:56:15', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('77', '3356901120048', '0', '5', '2017-06-11 04:56:16', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('78', '3356901120048', '0', '5', '2017-06-11 04:56:17', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('79', '3356901120048', '0', '5', '2017-06-11 04:56:18', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('80', '3356901120048', '0', '5', '2017-06-11 04:56:19', '323', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('81', '3356901120048', '0', '5', '2017-06-11 04:56:20', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('82', '3356901120048', '0', '5', '2017-06-11 04:56:21', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('83', '3356901120048', '0', '5', '2017-06-11 04:56:22', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('84', '3356901120048', '0', '5', '2017-06-11 04:56:23', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('85', '3356901120048', '0', '5', '2017-06-11 04:56:24', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('86', '3356901120048', '0', '5', '2017-06-11 04:56:25', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('87', '3356901120048', '0', '5', '2017-06-11 04:56:26', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('88', '3356901120048', '0', '5', '2017-06-11 04:56:27', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('89', '3356901120048', '0', '5', '2017-06-11 04:56:28', '323', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('90', '3356901120048', '0', '4', '2017-06-11 04:56:54', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('91', '3356901120048', '0', '5', '2017-06-11 04:57:38', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('92', '3356901120048', '0', '5', '2017-06-11 04:57:39', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('93', '3356901120048', '0', '5', '2017-06-11 04:57:40', '262', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('94', '3356901120048', '0', '5', '2017-06-11 04:57:41', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('95', '3356901120048', '0', '5', '2017-06-11 04:57:42', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('96', '3356901120048', '0', '5', '2017-06-11 04:57:43', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('97', '3356901120048', '0', '5', '2017-06-11 04:57:44', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('98', '3356901120048', '0', '5', '2017-06-11 04:57:45', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('99', '3356901120048', '0', '5', '2017-06-11 04:57:46', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('100', '3356901120048', '0', '5', '2017-06-11 04:57:47', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('101', '3356901120048', '0', '5', '2017-06-11 04:57:48', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('102', '3356901120048', '0', '4', '2017-06-11 04:57:54', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('103', '3356901120048', '0', '5', '2017-06-11 04:58:01', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('104', '3356901120048', '0', '5', '2017-06-11 04:58:02', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('105', '3356901120048', '0', '5', '2017-06-11 04:58:03', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('106', '3356901120048', '0', '5', '2017-06-11 04:58:04', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('107', '3356901120048', '0', '5', '2017-06-11 04:58:05', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('108', '3356901120048', '0', '5', '2017-06-11 04:58:06', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('109', '3356901120048', '0', '5', '2017-06-11 04:58:07', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('110', '3356901120048', '0', '5', '2017-06-11 04:58:08', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('111', '3356901120048', '0', '5', '2017-06-11 04:58:09', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('112', '3356901120048', '0', '5', '2017-06-11 04:58:10', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('113', '3356901120048', '0', '5', '2017-06-11 04:58:11', '323', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('114', '3356901120048', '0', '5', '2017-06-11 04:58:12', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('115', '3356901120048', '0', '5', '2017-06-11 04:58:13', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('116', '3356901120048', '0', '5', '2017-06-11 04:58:14', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('117', '3356901120048', '0', '5', '2017-06-11 04:58:15', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('118', '3356901120048', '0', '5', '2017-06-11 04:58:16', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('119', '3356901120048', '0', '5', '2017-06-11 04:58:17', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('120', '3356901120048', '0', '5', '2017-06-11 04:58:18', '323', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('121', '3356901120048', '0', '4', '2017-06-11 04:58:23', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('122', '3356901120048', '0', '4', '2017-06-11 05:01:21', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('123', '3356901120048', '0', '0', '2017-06-11 05:41:04', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('124', '3356901120048', '0', '4', '2017-06-11 05:41:30', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('125', '3356901120048', '0', '4', '2017-06-11 05:43:26', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('126', '3356901120048', '0', '30', '2017-06-11 05:45:10', '5', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('127', '3356901120048', '0', '6', '2017-06-11 05:45:11', '5', '0', '0', '1277');
INSERT INTO `iclock_oplog` VALUES ('128', '3356901120048', '0', '6', '2017-06-11 05:45:12', '5', '0', '1', '922');
INSERT INTO `iclock_oplog` VALUES ('129', '3356901120048', '0', '0', '2017-06-13 20:18:39', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('130', '3356901120048', '0', '4', '2017-06-13 20:22:11', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('131', '3356901120048', '0', '4', '2017-06-13 20:25:19', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('132', '3356901120048', '0', '5', '2017-06-13 20:26:15', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('133', '3356901120048', '0', '5', '2017-06-13 20:26:16', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('134', '3356901120048', '0', '5', '2017-06-13 20:26:17', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('135', '3356901120048', '0', '5', '2017-06-13 20:26:18', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('136', '3356901120048', '0', '5', '2017-06-13 20:26:19', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('137', '3356901120048', '0', '5', '2017-06-13 20:26:20', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('138', '3356901120048', '0', '5', '2017-06-13 20:26:21', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('139', '3356901120048', '0', '5', '2017-06-13 20:26:22', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('140', '3356901120048', '0', '5', '2017-06-13 20:26:23', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('141', '3356901120048', '0', '5', '2017-06-13 20:26:24', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('142', '3356901120048', '0', '5', '2017-06-13 20:26:25', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('143', '3356901120048', '0', '4', '2017-06-13 21:11:03', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('144', '3356901120048', '0', '0', '2017-06-14 20:38:59', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('145', '3356901120048', '0', '4', '2017-06-14 20:44:33', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('146', '3356901120048', '0', '4', '2017-06-14 20:52:26', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('147', '3356901120048', '0', '4', '2017-06-14 20:53:54', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('148', '3356901120048', '0', '4', '2017-06-14 20:56:10', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('149', '3356901120048', '0', '4', '2017-06-14 20:57:31', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('150', '3356901120048', '0', '5', '2017-06-14 20:58:07', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('151', '3356901120048', '0', '5', '2017-06-14 20:58:08', '157', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('152', '3356901120048', '0', '5', '2017-06-14 20:58:09', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('153', '3356901120048', '0', '5', '2017-06-14 20:58:10', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('154', '3356901120048', '0', '5', '2017-06-14 20:58:11', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('155', '3356901120048', '0', '5', '2017-06-14 20:58:12', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('156', '3356901120048', '0', '5', '2017-06-14 20:58:13', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('157', '3356901120048', '0', '5', '2017-06-14 20:58:14', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('158', '3356901120048', '0', '5', '2017-06-14 20:58:15', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('159', '3356901120048', '0', '5', '2017-06-14 20:58:16', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('160', '3356901120048', '0', '5', '2017-06-14 20:58:17', '320', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('161', '3356901120048', '0', '0', '2017-06-14 21:20:15', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('162', '3356901120048', '0', '4', '2017-06-14 21:23:30', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('163', '3356901120048', '0', '4', '2017-06-14 21:24:08', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('164', '3356901120048', '0', '0', '2017-08-05 07:05:54', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('165', '3356901120048', '0', '4', '2017-08-05 07:06:10', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('166', '3356901120048', '0', '4', '2017-08-05 07:09:45', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('167', '3356901120048', '0', '4', '2017-08-05 07:39:16', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('168', '3356901120048', '0', '3', '2017-08-05 07:39:22', '65535', '65535', '65535', '65535');
INSERT INTO `iclock_oplog` VALUES ('169', '3356901120048', '0', '4', '2017-08-05 07:39:23', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('170', '3356901120048', '0', '4', '2017-08-05 07:40:41', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('171', '3356901120048', '0', '4', '2017-08-05 07:59:04', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('172', '3356901120048', '0', '5', '2017-08-05 07:59:40', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('173', '3356901120048', '0', '5', '2017-08-05 07:59:41', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('174', '3356901120048', '0', '5', '2017-08-05 07:59:42', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('175', '3356901120048', '0', '5', '2017-08-05 07:59:43', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('176', '3356901120048', '0', '5', '2017-08-05 07:59:44', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('177', '3356901120048', '0', '5', '2017-08-05 07:59:45', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('178', '3356901120048', '0', '5', '2017-08-05 07:59:46', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('179', '3356901120048', '0', '5', '2017-08-05 07:59:47', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('180', '3356901120048', '0', '5', '2017-08-05 07:59:48', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('181', '3356901120048', '0', '5', '2017-08-05 07:59:49', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('182', '3356901120048', '0', '5', '2017-08-05 07:59:50', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('183', '3356901120048', '0', '0', '2017-08-05 08:17:40', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('184', '3356901120048', '0', '4', '2017-08-05 08:18:11', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('185', '3356901120048', '0', '0', '2017-08-05 20:08:07', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('186', '3356901120048', '0', '4', '2017-08-05 20:47:56', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('187', '3356901120048', '0', '5', '2017-08-05 20:48:17', '26', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('188', '3356901120048', '0', '5', '2017-08-05 20:48:18', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('189', '3356901120048', '0', '5', '2017-08-05 20:48:19', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('190', '3356901120048', '0', '5', '2017-08-05 20:48:20', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('191', '3356901120048', '0', '5', '2017-08-05 20:48:21', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('192', '3356901120048', '0', '5', '2017-08-05 20:48:22', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('193', '3356901120048', '0', '5', '2017-08-05 20:48:23', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('194', '3356901120048', '0', '5', '2017-08-05 20:48:24', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('195', '3356901120048', '0', '5', '2017-08-05 20:48:25', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('196', '3356901120048', '0', '5', '2017-08-05 20:48:26', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('197', '3356901120048', '0', '5', '2017-08-05 20:48:27', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('198', '3356901120048', '0', '5', '2017-08-05 20:49:19', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('199', '3356901120048', '0', '5', '2017-08-05 20:49:20', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('200', '3356901120048', '0', '5', '2017-08-05 20:49:21', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('201', '3356901120048', '0', '5', '2017-08-05 20:49:22', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('202', '3356901120048', '0', '5', '2017-08-05 20:49:23', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('203', '3356901120048', '0', '5', '2017-08-05 20:49:24', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('204', '3356901120048', '0', '5', '2017-08-05 20:49:25', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('205', '3356901120048', '0', '5', '2017-08-05 20:49:26', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('206', '3356901120048', '0', '5', '2017-08-05 20:49:27', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('207', '3356901120048', '0', '5', '2017-08-05 20:49:28', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('208', '3356901120048', '0', '5', '2017-08-05 20:49:29', '346', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('209', '3356901120048', '0', '5', '2017-08-05 20:49:30', '347', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('210', '3356901120048', '0', '4', '2017-08-05 20:55:28', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('211', '3356901120048', '0', '4', '2017-08-05 20:56:58', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('212', '3356901120048', '0', '4', '2017-08-05 21:09:19', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('213', '3356901120048', '0', '4', '2017-08-05 21:16:59', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('214', '3356901120048', '0', '5', '2017-08-05 21:17:01', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('215', '3356901120048', '0', '5', '2017-08-05 21:17:02', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('216', '3356901120048', '0', '5', '2017-08-05 21:17:03', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('217', '3356901120048', '0', '5', '2017-08-05 21:17:04', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('218', '3356901120048', '0', '5', '2017-08-05 21:17:05', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('219', '3356901120048', '0', '5', '2017-08-05 21:17:06', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('220', '3356901120048', '0', '5', '2017-08-05 21:17:07', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('221', '3356901120048', '0', '5', '2017-08-05 21:17:08', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('222', '3356901120048', '0', '5', '2017-08-05 21:17:09', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('223', '3356901120048', '0', '5', '2017-08-05 21:17:10', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('224', '3356901120048', '0', '5', '2017-08-05 21:17:11', '346', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('225', '3356901120048', '0', '5', '2017-08-05 21:17:12', '347', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('226', '3356901120048', '0', '5', '2017-08-05 21:17:13', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('227', '3356901120048', '0', '5', '2017-08-05 21:17:14', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('228', '3356901120048', '0', '5', '2017-08-05 21:17:15', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('229', '3356901120048', '0', '5', '2017-08-05 21:17:16', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('230', '3356901120048', '0', '5', '2017-08-05 21:17:17', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('231', '3356901120048', '0', '5', '2017-08-05 21:17:18', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('232', '3356901120048', '0', '5', '2017-08-05 21:17:19', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('233', '3356901120048', '0', '5', '2017-08-05 21:17:20', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('234', '3356901120048', '0', '5', '2017-08-05 21:17:21', '346', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('235', '3356901120048', '0', '4', '2017-08-05 21:38:39', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('236', '3356901120048', '0', '4', '2017-08-05 21:40:02', '0', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('237', '3356901120048', '0', '5', '2017-08-05 21:40:19', '185', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('238', '3356901120048', '0', '5', '2017-08-05 21:40:20', '298', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('239', '3356901120048', '0', '5', '2017-08-05 21:40:21', '299', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('240', '3356901120048', '0', '5', '2017-08-05 21:40:22', '300', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('241', '3356901120048', '0', '5', '2017-08-05 21:40:23', '301', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('242', '3356901120048', '0', '5', '2017-08-05 21:40:24', '302', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('243', '3356901120048', '0', '5', '2017-08-05 21:40:25', '304', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('244', '3356901120048', '0', '5', '2017-08-05 21:40:26', '312', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('245', '3356901120048', '0', '5', '2017-08-05 21:40:27', '329', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('246', '3356901120048', '0', '5', '2017-08-05 21:40:28', '345', '0', '0', '0');
INSERT INTO `iclock_oplog` VALUES ('247', '3356901120048', '0', '5', '2017-08-05 21:40:29', '346', '0', '0', '0');

-- ----------------------------
-- Table structure for `iclock_scheduletask`
-- ----------------------------
DROP TABLE IF EXISTS `iclock_scheduletask`;
CREATE TABLE `iclock_scheduletask` (
  `schName` varchar(100) NOT NULL,
  `startup` datetime NOT NULL,
  `cycle` int(11) DEFAULT NULL,
  `cycleUnit` smallint(6) NOT NULL,
  `taskType` smallint(6) NOT NULL,
  `taskParam` varchar(1024) DEFAULT NULL,
  `disabled` smallint(6) NOT NULL,
  PRIMARY KEY (`schName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iclock_scheduletask
-- ----------------------------

-- ----------------------------
-- Table structure for `inbox`
-- ----------------------------
DROP TABLE IF EXISTS `inbox`;
CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inbox
-- ----------------------------
INSERT INTO `inbox` VALUES ('2017-08-27 08:12:23', '2017-08-27 08:01:14', '004B006900720069006D002000740065007200750073002000680069006E00670067006100200031003300200053004D0053002000620065007200620061007900610072002000640061006E002000640061007000610074006B0061006E0020006800610072006700610020007300700065007300690061006C002000730065006E0069006C00610069002000520070002000320035002000700065007200200053004D005300200075006E00740075006B00200033003000200053004D005300200062006500720069006B00750074006E00790061002E', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', '1', 'Kirim terus hingga 13 SMS berbayar dan dapatkan harga spesial senilai Rp 25 per SMS untuk 30 SMS berikutnya.', '1', '', 'false');
INSERT INTO `inbox` VALUES ('2017-08-27 12:24:17', '2017-08-27 12:24:07', '0049006E0066006F0020006A0061006D00200064006100740061006E006700200046006100740068006F006E0069002000640069002000730065006B006F006C006100680020003A002000310032002E00300030', '+628992236044', 'Default_No_Compression', '', '+628964011092', '-1', 'Info jam datang Fathoni di sekolah : 12.00', '2', '', 'false');

-- ----------------------------
-- Table structure for `kalender`
-- ----------------------------
DROP TABLE IF EXISTS `kalender`;
CREATE TABLE `kalender` (
  `id_kalender` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `kategori` varchar(2) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kalender`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kalender
-- ----------------------------
INSERT INTO `kalender` VALUES ('1', '2017-07-12', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('2', '2017-07-13', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('3', '2017-07-14', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('4', '2017-07-15', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('5', '2017-07-16', '2', 'Libur Minggu');
INSERT INTO `kalender` VALUES ('6', '2017-07-17', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('7', '2017-07-18', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('8', '2017-07-19', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('9', '2017-07-20', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('10', '2017-07-21', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('11', '2017-07-22', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('12', '2017-09-01', '1', 'Idul Adha');
INSERT INTO `kalender` VALUES ('13', '2017-09-02', '1', 'Aktif');
INSERT INTO `kalender` VALUES ('14', '2017-09-04', '1', 'Aktif');

-- ----------------------------
-- Table structure for `kelas`
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `idk` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(10) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `idw` int(11) DEFAULT NULL,
  PRIMARY KEY (`idk`),
  KEY `idk` (`idk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES ('10', '2', 'Kelas 7', '24');
INSERT INTO `kelas` VALUES ('11', '2', 'Kelas 8', '12');
INSERT INTO `kelas` VALUES ('12', '2', 'Kelas 9', '11');

-- ----------------------------
-- Table structure for `leaveclass`
-- ----------------------------
DROP TABLE IF EXISTS `leaveclass`;
CREATE TABLE `leaveclass` (
  `LeaveID` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveName` varchar(20) NOT NULL,
  `MinUnit` int(11) NOT NULL,
  `Unit` smallint(6) NOT NULL,
  `RemaindProc` smallint(6) NOT NULL,
  `RemaindCount` smallint(6) NOT NULL,
  `ReportSymbol` varchar(4) NOT NULL,
  `Deduct` int(11) NOT NULL,
  `Color` int(11) NOT NULL,
  `Classify` smallint(6) NOT NULL,
  PRIMARY KEY (`LeaveID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveclass
-- ----------------------------
INSERT INTO `leaveclass` VALUES ('1', '病假', '1', '1', '1', '1', 'B', '0', '3398744', '0');
INSERT INTO `leaveclass` VALUES ('2', '事假', '1', '1', '1', '1', 'S', '0', '8421631', '0');
INSERT INTO `leaveclass` VALUES ('3', '探亲假', '1', '1', '1', '1', 'T', '0', '16744576', '0');

-- ----------------------------
-- Table structure for `leaveclass1`
-- ----------------------------
DROP TABLE IF EXISTS `leaveclass1`;
CREATE TABLE `leaveclass1` (
  `LeaveID` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveName` varchar(20) NOT NULL,
  `MinUnit` double NOT NULL,
  `Unit` smallint(6) NOT NULL,
  `RemaindProc` smallint(6) NOT NULL,
  `RemaindCount` smallint(6) NOT NULL,
  `ReportSymbol` varchar(4) NOT NULL,
  `Deduct` double NOT NULL,
  `Color` int(11) NOT NULL,
  `Classify` smallint(6) NOT NULL,
  `LeaveType` smallint(6) NOT NULL,
  `Calc` longtext,
  PRIMARY KEY (`LeaveID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveclass1
-- ----------------------------
INSERT INTO `leaveclass1` VALUES ('1', '公出', '0.5', '3', '1', '1', 'G', '0', '0', '0', '3', 'if(AttItem(LeaveType1)=999,AttItem(LeaveTime1),0)+if(AttItem(LeaveType2)=999,AttItem(LeaveTime2),0)+if(AttItem(LeaveType3)=999,AttItem(LeaveTime3),0)+if(AttItem(LeaveType4)=999,AttItem(LeaveTime4),0)+if(AttItem(LeaveType5)=999,AttItem(LeaveTime5),0)');
INSERT INTO `leaveclass1` VALUES ('2', '正常', '0.5', '3', '1', '0', ' ', '0', '0', '0', '3', null);
INSERT INTO `leaveclass1` VALUES ('3', '迟到', '10', '2', '2', '1', '>', '0', '0', '0', '3', 'AttItem(minLater)');
INSERT INTO `leaveclass1` VALUES ('4', '早退', '10', '2', '2', '1', '<', '0', '0', '0', '3', 'AttItem(minEarly)');
INSERT INTO `leaveclass1` VALUES ('5', '请假', '1', '1', '1', '1', '假', '0', '0', '0', '3', 'if((AttItem(LeaveType1)>0) and (AttItem(LeaveType1)<999),AttItem(LeaveTime1),0)+if((AttItem(LeaveType2)>0) and (AttItem(LeaveType2)<999),AttItem(LeaveTime2),0)+if((AttItem(LeaveType3)>0) and (AttItem(LeaveType3)<999),AttItem(LeaveTime3),0)+if((AttItem(LeaveType4)>0) and (AttItem(LeaveType4)<999),AttItem(LeaveTime4),0)+if((AttItem(LeaveType5)>0) and (AttItem(LeaveType5)<999),AttItem(LeaveTime5),0)');
INSERT INTO `leaveclass1` VALUES ('6', '旷工', '0.5', '3', '1', '0', '旷', '0', '0', '0', '3', 'AttItem(MinAbsent)');
INSERT INTO `leaveclass1` VALUES ('7', '加班', '1', '1', '1', '1', '+', '0', '0', '0', '3', 'AttItem(MinOverTime)');
INSERT INTO `leaveclass1` VALUES ('8', '节日加班', '1', '1', '0', '1', '=', '0', '0', '0', '0', 'if(HolidayId(1)=1, AttItem(MinOverTime),0)');
INSERT INTO `leaveclass1` VALUES ('9', '休息日', '0.5', '3', '2', '1', '-', '0', '0', '0', '2', null);
INSERT INTO `leaveclass1` VALUES ('10', '未签到', '1', '4', '2', '1', '[', '0', '0', '0', '2', 'If(AttItem(CheckIn)=null,If(AttItem(OnDuty)=null,0,if(((AttItem(LeaveStart1)=null) or (AttItem(LeaveStart1)>AttItem(OnDuty))) and AttItem(DutyOn),1,0)),0)');
INSERT INTO `leaveclass1` VALUES ('11', '未签退', '1', '4', '2', '1', ']', '0', '0', '0', '2', 'If(AttItem(CheckOut)=null,If(AttItem(OffDuty)=null,0,if((AttItem(LeaveEnd1)=null) or (AttItem(LeaveEnd1)<AttItem(OffDuty)),if((AttItem(LeaveEnd2)=null) or (AttItem(LeaveEnd2)<AttItem(OffDuty)),if(((AttItem(LeaveEnd3)=null) or (AttItem(LeaveEnd3)<AttItem(OffDuty))) and AttItem(DutyOff),1,0),0),0)),0)');
INSERT INTO `leaveclass1` VALUES ('12', '离岗未签到', '1', '4', '2', '1', '{', '0', '0', '0', '6', null);
INSERT INTO `leaveclass1` VALUES ('13', '离岗未签退', '1', '4', '2', '1', '}', '0', '0', '0', '6', null);
INSERT INTO `leaveclass1` VALUES ('14', '离岗', '1', '1', '2', '1', 'L', '0', '0', '0', '3', null);

-- ----------------------------
-- Table structure for `num_run`
-- ----------------------------
DROP TABLE IF EXISTS `num_run`;
CREATE TABLE `num_run` (
  `Num_runID` int(11) NOT NULL AUTO_INCREMENT,
  `OLDID` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Cyle` smallint(6) DEFAULT NULL,
  `Units` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Num_runID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of num_run
-- ----------------------------

-- ----------------------------
-- Table structure for `num_run_deil`
-- ----------------------------
DROP TABLE IF EXISTS `num_run_deil`;
CREATE TABLE `num_run_deil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Num_runID` smallint(6) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Sdays` smallint(6) NOT NULL,
  `Edays` smallint(6) DEFAULT NULL,
  `SchclassID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of num_run_deil
-- ----------------------------

-- ----------------------------
-- Table structure for `outbox`
-- ----------------------------
DROP TABLE IF EXISTS `outbox`;
CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  KEY `outbox_sender` (`SenderID`)
) ENGINE=MyISAM AUTO_INCREMENT=421 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outbox
-- ----------------------------

-- ----------------------------
-- Table structure for `outbox_multipart`
-- ----------------------------
DROP TABLE IF EXISTS `outbox_multipart`;
CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`,`SequencePosition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outbox_multipart
-- ----------------------------

-- ----------------------------
-- Table structure for `pbk`
-- ----------------------------
DROP TABLE IF EXISTS `pbk`;
CREATE TABLE `pbk` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pbk
-- ----------------------------

-- ----------------------------
-- Table structure for `pbk_groups`
-- ----------------------------
DROP TABLE IF EXISTS `pbk_groups`;
CREATE TABLE `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pbk_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `phones`
-- ----------------------------
DROP TABLE IF EXISTS `phones`;
CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMEI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phones
-- ----------------------------
INSERT INTO `phones` VALUES ('', '2017-08-27 17:30:54', '2017-08-27 08:57:54', '2017-08-27 17:31:04', 'yes', 'yes', '012345678901234', 'Gammu 1.32.0, Windows Server 2007, GCC 4.7, MinGW 3.11', '0', '63', '4', '1');

-- ----------------------------
-- Table structure for `schclass`
-- ----------------------------
DROP TABLE IF EXISTS `schclass`;
CREATE TABLE `schclass` (
  `SchclassID` int(11) NOT NULL AUTO_INCREMENT,
  `SchName` varchar(20) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `LateMinutes` int(11) DEFAULT NULL,
  `EarlyMinutes` int(11) DEFAULT NULL,
  `CheckIn` int(11) DEFAULT NULL,
  `CheckOut` int(11) DEFAULT NULL,
  `CheckInTime1` datetime DEFAULT NULL,
  `CheckInTime2` datetime DEFAULT NULL,
  `CheckOutTime1` datetime DEFAULT NULL,
  `CheckOutTime2` datetime DEFAULT NULL,
  `Color` int(11) DEFAULT NULL,
  `AutoBind` smallint(6) DEFAULT NULL,
  `WorkDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`SchclassID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schclass
-- ----------------------------

-- ----------------------------
-- Table structure for `securitydetails`
-- ----------------------------
DROP TABLE IF EXISTS `securitydetails`;
CREATE TABLE `securitydetails` (
  `SecuritydetailID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` smallint(6) DEFAULT NULL,
  `DeptID` smallint(6) DEFAULT NULL,
  `Schedule` smallint(6) DEFAULT NULL,
  `UserInfo` smallint(6) DEFAULT NULL,
  `EnrollFingers` smallint(6) DEFAULT NULL,
  `ReportView` smallint(6) DEFAULT NULL,
  `Report` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SecuritydetailID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of securitydetails
-- ----------------------------

-- ----------------------------
-- Table structure for `sekolah`
-- ----------------------------
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sekolah
-- ----------------------------
INSERT INTO `sekolah` VALUES ('2', '2010902872872', 'Madrasah Tsanawiyah Wahid Hasyim', 'Jl. Raya Mulyoagung No 51A Dau Malang.');

-- ----------------------------
-- Table structure for `semester`
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `id_semester` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(4) DEFAULT NULL,
  `semester` varchar(6) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES ('3', '2017', 'Genap', '2017-07-01', '2017-07-20');
INSERT INTO `semester` VALUES ('4', '2017', 'Ganjil', '2017-05-10', '2017-07-26');

-- ----------------------------
-- Table structure for `sentitems`
-- ----------------------------
DROP TABLE IF EXISTS `sentitems`;
CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`,`SequencePosition`),
  KEY `sentitems_date` (`DeliveryDateTime`),
  KEY `sentitems_tpmr` (`TPMR`),
  KEY `sentitems_dest` (`DestinationNumber`),
  KEY `sentitems_sender` (`SenderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sentitems
-- ----------------------------
INSERT INTO `sentitems` VALUES ('2017-08-27 09:12:33', '2017-08-27 09:12:00', '2017-08-27 09:12:33', null, '004B006900720069006D00200053004D00530020006400610072006900200043004D0044002000700061006B00610069002000670061006D006D0075002D0069006E006A006500630074', '08992236044', 'Default_No_Compression', '', '+6281100000', '-1', 'Kirim SMS dari CMD pakai gammu-inject', '1', '', '1', 'SendingOKNoReport', '-1', '241', '255', 'Gammu 1.32.0');
INSERT INTO `sentitems` VALUES ('2017-08-27 09:19:08', '2017-08-27 09:18:57', '2017-08-27 09:19:08', null, '00740065007300740020006B006900720069006D00200053004D0053002000700061006B006100690020007000680070002000640061006E002000670061006D006D00750020005900450073007300730020', '08992236044', 'Default_No_Compression', '', '+6281100000', '-1', 'test kirim SMS pakai php dan gammu YEsss ', '2', '', '1', 'SendingOKNoReport', '-1', '242', '255', 'Gammu 1.32.0');
INSERT INTO `sentitems` VALUES ('2017-08-27 09:42:13', '0000-00-00 00:00:00', '2017-08-27 09:42:13', null, 'FEEFFD9FEFEFEFEFFACFEFFD', '08992236044', 'Default_No_Compression', '', '+6281100000', '-1', 'ﻯﶟ𢡊', '3', '', '1', 'SendingOKNoReport', '-1', '243', '255', '');
INSERT INTO `sentitems` VALUES ('2017-08-27 12:31:18', '0000-00-00 00:00:00', '2017-08-27 12:31:18', null, '004B006900720069006D00200053004D00530020006C0061006700690020006400610072006900200057006500620020005900410048006800680068000D000A000900090020', '08992236044', 'Default_No_Compression', '', '+6281100000', '-1', 'Kirim SMS lagi dari Web YAHhhh\r\n		 ', '4', '', '1', 'SendingOKNoReport', '-1', '244', '255', '');

-- ----------------------------
-- Table structure for `shift`
-- ----------------------------
DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift` (
  `ShiftID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `UshiftID` int(11) DEFAULT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime DEFAULT NULL,
  `RunNum` smallint(6) DEFAULT NULL,
  `SCH1` int(11) DEFAULT NULL,
  `SCH2` int(11) DEFAULT NULL,
  `SCH3` int(11) DEFAULT NULL,
  `SCH4` int(11) DEFAULT NULL,
  `SCH5` int(11) DEFAULT NULL,
  `SCH6` int(11) DEFAULT NULL,
  `SCH7` int(11) DEFAULT NULL,
  `SCH8` int(11) DEFAULT NULL,
  `SCH9` int(11) DEFAULT NULL,
  `SCH10` int(11) DEFAULT NULL,
  `SCH11` int(11) DEFAULT NULL,
  `SCH12` int(11) DEFAULT NULL,
  `Cycle` smallint(6) DEFAULT NULL,
  `UnitS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ShiftID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shift
-- ----------------------------

-- ----------------------------
-- Table structure for `siswa`
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `ids` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `idk` int(10) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bapak` varchar(50) NOT NULL,
  `k_bapak` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `k_ibu` varchar(50) NOT NULL,
  `pass` text NOT NULL,
  `id_usergroup` int(11) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES ('12', '09974602083', 'Hasna Nur Karimah', 'P', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('14', '09985108630', 'Ida Wachyuni', 'P', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('15', '09985108634', 'Iin Maryamah', 'P', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('16', '09974622339', 'Ina Chintya', 'P', 'Alamat', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('17', '0974603046', 'Indah Dwi Utami', 'P', '-', '10', '085733743907', '-', 'test_wamur', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('18', '09985109207', 'Jamingun Sobri', 'L', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('19', '09974603238', 'Laelatul Badriyah', 'P', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('21', '09965320734', 'Muhamad Usman Nawawi', 'L', '-', '10', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('28', '09974603400', 'Catur Fajri Ramadhan', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('29', '09965320870', 'Dimas Inggrit Wijanarko', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('30', '09965320876', 'Dwi Utomo', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('31', '09965320883', 'Efi Nur Cahyani', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('32', '09974603414', 'Eka Sutikno', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('33', '09965320887', 'Endri Isnanto', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('34', '09965320890', 'Evi Nuryanti', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('35', '09985109574', 'Fia Rahayu', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('36', '09965320905', 'Fika Septiana', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('37', '09974603422', 'Herlina Priyatin	', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('38', '09965320922', 'Ika Nur Fajriah', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('39', '09974603436', 'Iwan Nugroho', 'L', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('40', '09974603447', 'Kasroh', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('41', '09974603560', 'Nining Purwaningsih	', 'P', '-', '11', '085954590935', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('42', '09974603593', 'Nofiatun', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('43', '09965321268', 'Nur Khafidin', 'P', '-', '11', '085954590935', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('44', '09974603623', 'Nurul Khusnan', 'P', '-', '11', '085733743907', '-', '-', '-', '-', '-', 'bcd724d15cde8c47650fda962968f102', '5');
INSERT INTO `siswa` VALUES ('45', '09965309250', 'Moh. Ali Rohim Sihombing', 'L', 'Jl. Raya Jetis No. 08 Dau Malang', '10', '085954590935', '-', 'Mutasim', 'Petani', 'Rahma', 'Wirausaha', 'bcd724d15cde8c47650fda962968f102', '5');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `Template` longtext NOT NULL,
  `FingerID` smallint(6) NOT NULL,
  `Valid` smallint(6) NOT NULL,
  `DelTag` smallint(6) NOT NULL,
  `SN` varchar(20) DEFAULT NULL,
  `UTime` datetime DEFAULT NULL,
  `BITMAPPICTURE` longtext,
  `BITMAPPICTURE2` longtext,
  `BITMAPPICTURE3` longtext,
  `BITMAPPICTURE4` longtext,
  `USETYPE` smallint(6) DEFAULT NULL,
  `Template2` longtext,
  `Template3` longtext,
  PRIMARY KEY (`templateid`),
  UNIQUE KEY `userid` (`userid`,`FingerID`),
  UNIQUE KEY `USERFINGER` (`userid`,`FingerID`),
  KEY `template_userid` (`userid`),
  KEY `template_SN` (`SN`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '4', 'TERTUzIxAAAFBwQECAUHCc7QAAAdBmkBAAAAhCotXQcxAIUPLQD9AAYIzQA9ABYOHwBIB5kOFwBeAK4MNwdlAGwObgCtAAkIvQBpABAPXABrB40PJQBwADULJwd/AG8OQQBdAHUI8wCfABYOZACoBx0P8gCyANMO0we3AB0PJQB5AFkIYwC9AHcPwgHLBxYFlgDQAO0PxQfSACIP4wAnAJoIXADnAB8LRQDtBzwD2wDpAOMOugfrACoODgApAEQIjgDuADsFfADyBzcOQgD5AOIIegf8ALkB0wDBASgJOAAFASQIiwANBq8IewAKAbcDrQcMAUcP6ADUAT0KlgAUAVIEJwASBqoOtQAbAY0PLQceASAPHwDqASYJ4QAwAUkPBQBFBlQP7ABQAQ8Pc4Aue1cbdoMTm7+cjIG7CM+PSIVPjVYPPX4dA4/9cHqcA278eoM+oyKM74VSekP8N31/hDJz2YBxhfCG3IfrBMYFrgKqFL6HrAHS+ZsBd/WO+24CLQHl+1cBWAxLCb79A+y+HSLgT1uvCTM91wHTfRoBouy67OMNpP17/ToFRHufdTNxy/hm5bZxkASAgiMUPIvZ/2D7rPMYClUHVx3W5U4Z1ACphhIU2Ayg9FwLtQR9eYcIEE+IfamCeYas9iQMOPxhebYEvIlciqeR3bgeIBM1rPJcARUTqI4kDpP3IA2+4DoMcXZ8hRhm2QHC+DsVsPo7/Ep3NQXyAEZw/KICEGqB3w3nCTqMaoFHdLYjCO8E8s0QIEHEAsIiEwQAkRkMkAQFXh0DPw4AL9gD+vjBbf7AwEXAAJUjDlgHAFQrQ3h5CgFcMAZURTvDXwEBVDKDe8HUADc9/EPANv7CO3ZSEgEIRPrA/QdMxfnA///AwMGeVQYH308QwRYAwlHxKMD9wUxEQqHAxREBA1v0P0OORMVTw2UEAC5nsW0LB3NqCf/CMjpS+3wGAMBrEMAE/lkLAZVsif/CnMD6w3oGAClw8O79Dgd8cwzAwD+HwBMHBoDw//3D9f5WUE3AwVoQAN2L4vr+OP7A/0cFOwMHPZZ3w3wIxUWS/f41OAYAPVh0x4wbAAKp4P86wPj6wP7A/0z+BP7F+P5kwTwHAGCsEzhaGQAGruIFMftTNz7//8BYBFQIB6WxIMDBWAQsxvoHAN22HsAEZgYH9bYawgcAHbolxlv/FQBevbjDwYGWwsPBwsABwsTBkxAAJsBeBML7wsCMc8RqF8UF1dk8QTM1/sE7wFBNBwCZ1CQ1OwsFw9Yiwf1YwDn/+AMBWd8G+vvCAFTkUsbEw7cTxQTjyP8zwP8x/jv/+1P+AwBT6z0ABgXa7SLA/VUMxQ3rR8GI/5SDC8W96y7+//7/MTzvAIr0Nf76wf37O/z6IPwq/f3+JOb/+vj9//3AIfsF/fo3FgC3862EB//Hj5bCdZOICMVC8cH6/Pv6HAnFvf83Qf3B/f8Kxbf+ME7//EwHAIT8NcPDxMbEBAA6/yfH+hYQOAC9OPz4+P36/f//+QT9+/z8/P3+/P/NEDgAJsLDqsMI1dICN/79/VMjEG0JsnDAjf/EoMFUwcbGwcTBdcLBAMHBgwURAAkpJMoQqRdC//1B/P84/fr5wf8FEOgV9SoDF+IbOsD+KsIQtxlI/zPABxByHjj6//5LBxAE4S3FcsAGEAEtMLLBAhcgMyRvbwXV3zBE/zgFEQM2if5EAxG/RVY9', '0', '1', '0', '3356901120048', '2017-08-05 21:42:26', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('2', '5', 'TStTUzIxAAAEaGoECAUHCc7QAAAcaWkBAAAAhJUrh2hSAPEFjgCoAPdnYQB0APEPNACHaH4K4QCEALoJq2iHAP0P0gBVAARm8ACQAAMKFACSaH4OKgCoACIJJWioAGcJKAB2AN1hygDAAAkP7QDCaOQHTwDIACkLymjJAA4PiwAMAP1mpADWAAUP1wDTaFQIBAHbAFcOMWjmAOYCOwA9AORkwAD5ABgP3AABackGlAAGAckPImgMAUsOOADIAdZhlQAhAWALWAAgaUYLOgApAR0Kt2goAT8NHgD0AcxmngAxAU8LuAAxaVQMaAA9AREBP2hAATwG2QCEAT5h7wBEAUIDRABMadcO4QBLAXcJR2hNAbYH7QCLAcBgNQBSAcMLBAP3aLb3PQeq+s4Ej2hyAPMPQH9EAHbpAABlgR19V/2S6h8OyIJlgUf8OO8Yhf4EyIIkAv4UFYLgE94E0YJE+1OEcPdQdyz1rJY/j+IHXQ3Ek1boGwryCioX4QbiYzaRnfcLDwbvFWdv+2b/EXP7cgYXfoaDi19/CAlKadsWVf3lEceUCn/eDLfZ0XwD+K6BtK+qxKq/CIQxERdsMYl19Sj/KHJIEeFXyOqx+0Fi6J5lCx0TdPLJks/grfPOjEd96GPY8SESZYFYggqcnIK9Ax4iqIiREQRmbItN+Zh6gOuokMUJYYH4B5bi2fN0e7lwtHw5nIPhgIdIF5COqWSMiWb+dRrcQQJoIUMBAkAa8QME7S5MwQUAm5JwXWABc0xw/sMEwz5uAadddMDD/wkEF1Zwe13BB8VrXBiFQwQA31xFjBZo/W6PiMBzt2f74AYAXHZpwAX/mXkB/HaJdH4Fc4UNEAD4fYbAB/3ClsFtwcFqwMEA2emCcAoAq4a4wsSpY10EANyHuD0KaM+QgFnC/wfBVR8FANaUBsI+DgSmmYNpeFvClhIFYaeJwHxawbVnTmsBH61nwA3EEbD4wHB0eMADxSSyD8ADADO2ZwQDBHDKZ8QPAQx5j3IHwcJlfgQAncpvGQYAz74JR/MFBK++g34FAM8BCTlsAVnmYmQLxZPOksHA+/7BVjoEBDDTYv7/DgHLzJj7cYFZBADbCAxHYgGp1gD/+6g4Dmgl90lCxIQHAwQw3WD9DQCHHvr5l8P8wT41DcWF15JN//3AVDvJAIGN9fxLwP//OzQNaFjyYML9nlQLBFvqPfzD/v4GwpZsAQzuSV0ExRb3IUgLAIXv+gX9+6j///8pAwCa+marBwDF+xdBOwoU8AMD/P7//zn+NW4RkAZ6ksfPEJxgCP38wCQ6xhETT1bCDxBZHQr7+lnB/Cv+JwTVmCcyfQkQsSSnAMLBqsOsAxBEJYnEAnicKVP+wUfDELNCMfv+WQUQyStNrYEGELEsPTj/+ZcFEPA4MPo6AxQRNlf/BRB+/Un6lMIMEGw51zv++JL4/fsvBRBaOVI2AhA7RjrGxhDdLzz7CBBON3j8xZP/Jg4Ah/Y/wPiW/kD9/MIt', '0', '1', '0', '3356901120048', '2017-08-05 21:42:27', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('3', '6', 'TU1TUzIxAAAEDg8ECAUHCc7QAAAcD2kBAAAAgzMcQQ4eAIsPlQChAI0FVwBmAIQPFwBiDo8PpgB2AMoPjQ54AIMPXgBCAAcB3ACKAI4PmwCKDn4PfQCbAEUPPQ6kAP0P7gBsAJQBYwCyAH4PJAC2DhIPVgDDALEPQw7UAPcPMgAfAG4BowDaAIoPiQABD14PSgAeAYsNYA4oAWMMVADoAfUC1wAxAR4NWwAwD5gPFwBBAYAP6Q5HAZ4LLQCOATgAnABdASAL6gsTCS6LTQoZfo4LMo83Bg8CKgKigHMJFIrtj2eAEP79eU8FvIY2gVOFGg+rAjJ+wH7XAToPkwFmBc79Y4uWjW+DWXyeBWYHWQPnAb4BVYTvht+F5Plpfq57xI5hiGd7DXYC+4YNpwHie48PZRKfck7xXF318kXvUHSpGccHhZA5pY+Who7ihssDKnoifnc1TAon+zNXR4BrCVqD1forTNryJoRGBwO/R1AKAyRNAAKcJqUJxWMNAllr/g4APsoQblrBZFMLAF3VD3fxwWv+BACu1BBoCgEbGgleE8UKJAGGRMH/RVShDgRHIQllVcD/BMH5zBUABigMap7AQ87+Xf9wEQDANvnzcv52wP/+mcAPDgQ7DHtYW84AA0cBQv7BwTfOAANb+/1dwFHCzACUVw1Ywv81B8UBXgd3SggAmWXJVvtEDwBaZgNVBUr78VQHAFJogICREQ4Ccf1XYlSFwMVVSwsAhniDBV3FaMIEAKp4D5MLBG2FA1P+wFsFFQQNhPpbTGsvOlvEXwYAWYeDcKkOBG+LBlY/wf0EwjwJAVmOgGt8zwB9koJ0c4AWAMCfBM3+RML+P/86wftIZRIAPKT9l0tHMVDACABesEXAxmTACABmsv39PgAO5bQQRAcAnLV5YW0VAAu28IVUxvH/wP9U//8EVRQOW8L6QEFd+1sCDkjDdGrAB8VSwnrAwMBvBgAPxx7OwzoRAFLMMTUxQVrAYAYAURf6OfEHAFrWAMLoFwQM2OlD///+nkBARP9tCABL2bHDZosFAC7abXPOAKLVEsD//sFVBcAUDlncAME1wTg+XG4EADDeaWrNAE/RccLAb8AQ1U8H+v/9M8BHZEQJFEkEZMJ8xFrMEE8HY8KGfAgQiBvj8v39RgYQReVTlcwHEEojUJIEGRQKK9NA/0v9Ov/ENUf/ZHEKEJMq7RhcUwYQYCqnxseTFBDTLaBkBMHFzMDAw8HDwqJ3CB6bNZZZxcQCwcCABxBpOBb+lgYUrDkc/8BzBNViPjSjFxAZPczw/y4gOUJDhAUQrD4gZAIQGUVDwd4RB0WfwMBYwf8Ei3OfwcLAwsCH0hA8aLZBJ//8IQX/+13Bbw0QcWZZ/fr1+/b7/1bA', '0', '1', '0', '3356901120048', '2017-08-05 21:42:27', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('4', '6', 'SqVTUzIxAAAD5uYECAUHCc7QAAAb52kBAAAAgwsfd+YkAAoPkwD0AI3puQA9ABsPqgBD5n4PbQBNAMsPkeZRAB4PjgCfAJPpkgBzACEPFABw5iIPRgB3ADUPteaBAKAPmQBLAJ3ofgCQAB8IgQCg5tsOlwCnAGUJheaoACcJZQB9ADzvfQDEAC4OTgDE5iQO0QDYAFoPhebiADMLtwArAJ7psAD8AJIPEgAB55APfAAJARMGteYLAYcPdQDbAeHoTwAxAdoP8AA/59QMYABAASQPy+ZeATAGvY9DfL0YN3CChAJ2N47VGc6NSHPJd9NiO3WDgXbxsJPjkKEbwXcpcoKF3JKaYR8FzoQPCxoH0f1y5qPTznyLBHFnJAJhg5l/XPtiZYOAvp5q716/Xp6kBoKAVYjUC6odVBMyGdpmmAjmFSAL5fil99MAReMfE0MMFRPHBJm4NAwlG8oB5AzCEvcCZg2G9rMC+hB3pqNGrfR47/EfbA72Ag4LAPoW4Zf7nf+y9173Pux3AiYPC6veowhF8CNfBiA8xAJT+7QEAIMJDAX+C+ZbDAD/wDUFCgO2Ff04/0vCwgBzxYHAwcF3CsV4IOD++8P+/8AFwA3mKCjpKlc4iQsDjUGAjMHCbAUEA1pAGk8SABmH5/zT/ivB/v5CoA0Dj0x6woaAdDoOA2hOk8LDwcEHwMAmwsDAwgsAU1AfslP/XAsAkpEew6DDUcASAA+Q4v0n/zs1QcH9qAQDdF8cSxcAB6rawxg5KSs4N1UHEQNpbprCw4+CnMBj9wFIcuch/Tv+wyZjwMB1AwAQcx8ZCwCXdB7AOsDDhMEHAE128OExCeaSdyLAWGQEBAM3diJJCgBDv1qEu2QNAG+TgwPEx7D+wMBDCwBFniOywMDBwXAPxUOcKv39/Pv9wTv9w53AEQBIodY4/Pkawf5bacBXwgBUReb7+vpqBcVdpRb2IgkAQqeVw/2zWgwAaKkwOv5MGf8/CwBgq4nBWBlHwAoAVq2Ja/wZwUYLAIqx4cBcGZXBCwBju4bBOKJHDwBouzqD/v2kwP3FgxoAKcKjJlRzwcDCwQSgwCbDwsBtwgbFgcXLwZEFAI/J58DCJgQAi8spwFEMA57RNCxHN8HdANMyocBV/8LBBcHGc8XAwlX/fMYAshUOwAQAtf7VjQDmlP8MwQMQSABhJwIQugsG/8AQs+uHmAwQ5x5MwfwnwMHCxGIH1XIiuMFXyA8Q5uaAVieIw0XAxQvVxy9mwZDCwf+YwBAz10JZBBAnPIPAwe8RyTiAwMIHgcHiER8/TIkH1cpCm8DBwIUEEGBTdH4CEKdabf0=', '1', '1', '0', '3356901120048', '2017-08-05 21:42:27', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('5', '7', 'Tb5TUzIxAAAE/f4ECAUHCc7QAAAc/GkBAAAAhCAnZ/1EAOgNKQCvAFjy9gB/ABEBgACP/eIL8wCRAFYBov2ZAAwEhwBYAPL2BwGmACIJEwCt/SsM6ACqAOILIf26AE8PxQAHADjz2QDUAD8P/wDk/UUPVgDjAP4P+f3iAEAOXwAiADf3mADpAHIIewDo/UwM6QAAAY8Pnv0DAWwMyADHAVTyUwAPASkOPQAY/MYPlwAhAbgJN/0jASkL1wDjAcv1ZwArAaUOuwA9/I4F4gA9ARECi/0+AfEBvgCDAd3/SgBIAZoPuwBI/IMFwgBOASoF0v1PAe0GcACKAY/2jABVAfMCAgBT/HoFA4/rBw73ToYOd2sPuYFn87sRQ4v3l6vvcIU5khBz7hiD5VrRghEWF6O/AZMf/BbuWAWy8DqaGP0talcEXg8Lb4oXYQIfFC4X4Qdj9Vb/QAtGEur3nQvNBosXmvnSAkJ65AbX8poPTQrXJSPYYP4WEbrdo4SyARMN1f5a8Dsj5fsvCGKCfoUHASIGZ3wu+RL2i4zO7WfxQgGCk6aF5QOnCWKC8RtHfRbgAKExDUkHwOld+xvlHWX1cRAC0BPUYbXu7hID9paOdPgVkMH1hRq4ipAF/XQVAagZ6fXM//6YJXCUBhKVsY/xkLGlQQomvQ0gXAEDBuFpFf2TGG10eMAEwUYC/sIFAHIZrH4L/XwcbcJqagTA+T9YEgCYIXdMcMWrU0MHALIjuMJ8PwkAvyh9dQV8AP0wNGBdBwD8NFqQZwcAmDVwvXID/bA1eot3A8UkPJ/DCwCxO3pGwX+GGQC5P3fAB3x2PGdpYv10CMVAQ6PAQmAHANWNgGN+BgBoSWfBAUMB/TBMXMBKA8W3Sv3BAwCzT30GAwRJVQDABQCxkHfFeQIAkFlrwtUAaYhfa4tdczrNAG6SX2t+AwDooQnE+QFVZFpbBMVeYKNoBgAnbV6uwgH9hn1wxHIExeZ29EsEAQl0jAT/Af3GZX3AlhbFdHOddX53wP+RBsHAPY4EAOiAE44FBIp8YsFwEgBCimA9wMLAw3OXBMHGYAcAxIcMSjsFBBaJF/9JDwBCkWY9wMLBw3rBB8Gl7AF5i17AwTqZej//xcKiBwD1jV6VVwoAPo1atsBwPQgANo5XwAXA+z5KCwBCj1cFhF4BwwUAso8GOywA/bOUfYwQAH6XCNf+///9Qzs6BgQZmRMpwAQAQ5pgPMMFAGi8TASaA/3hnBf//jDIAL9gEf0oO/7/BcAA/YyhcZ4OAHChFAAp//1BaAPFrKB9wA8ArqUQO/wuPT///y8QAJKpU3RmYcHEiAbF7K/fwfzB/Q0AHawjxfxMwCsMAG+uHgD6/i///0LNEIPNksD9/TAIxemq1MFAKQwApnQg+QH8wf3/wP7YBQRksxb7HQMAU7swAQUAm7cp+joGBNjBVnbACADwxU09WUIKAMTGhUr6y/8FAMnGN/YLBCTWPUDAQDDJAD4eQk3Bw5aJwgCrGFLAwP4aBcX84sf//8AJAQstOvrGQAUApOpTO/3/+AFf6zTBg8IAuRJINcD+BRAsBE3NBBDEBVPB9gYUNARMOP0EEF0GZgb4BxEECEz9NgDsFw5TaQUQ9RRHAsbEBxAzJfHFxj3CwAQQ/0ClIAPtlkt0wC7AzxA0txHAwm5xBNU9U/J6BRDBWHSHBhQeWnf+wk8=', '0', '1', '0', '3356901120048', '2017-08-05 21:42:31', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('6', '7', 'StlTUzIxAAADmpsECAUHCc7QAAAbm2kBAAAAg0ccUZp8AIANTgBdAHuU1ACjAKMPiwCnmnsOaQCrAEUNtJrQAJ0PewApAIiV2wDyAJ8O8AD0mmoN0gD/AOEPYpoEAXAOQwDDAWGX7gAGASEOBQAEm54PmQAQAeAPa5oSAWsOkADWAZGVZAAqAUgEKwAumykPUAAuAY0P3po5AS8PogCAAUuXeABKAR0CigBOmzQNngBQAaULhJpQAaUCwQCRAT6XiABZAZwEjAtFkC4BSAPR++f4NJAeByODyAfU/81kjAuaCK8BxgAM4x4CVh1KI+f7OuYAg0YAOQnm/CiZNITNhWYE+ASRivPlwfke9Ov6Ah3r/KL60X0DAFnk0ZZSigOcAPxevHcl4G5yKl8Lspv83vbZwfnfCgCcMAF6FBbd/AmxbCIRiOuqpFuseuKAgmq9Duzn7kmB8RuRxqG+1QpyEthG1vXK3eMSn2CEgtU+iBqXBiOmAAIoHEkDxbyFuv4EAHJhCYUIA1x1IMD+wWnBAN3yIUoHAM9q5cD8wwYAx2wgwAVRBZrYbCBKwAPFV26c/ggASnID+0cLmsZ/IEJzCsWwhoTB/sP/Uv/NAMYcI0V4FABBufT/pMFAQlhYwtAANhoHbf7/wP46wPzAVMFZBQBBTQA+nAFAjv02/s4AsRQhWGvAWQ/FhZCJ/j7AwVHABFUMmj2U/f3CMYrAw8AKAK+VIFgH/1llCgA7nv3AO/9DpA8Ai6ATNpBWw/4MAFKkAP0F/0Nlwv5lEgBdagMwZf5kWERcC8Vjtpz/MGtMEwCUugOpP8BYNsH9shQD0cP9/yn+wAVUw6RpwQsARco/M/3WVBAAOtT06zDBqMP8WQcAby2MwBzAFgAd7OI4//xlJkrA/k/BO/9yjwEi7e3A/uv//VrBRv//wDYFBwPp8YyRgQ0As/EPZP7/wP7/Mo8GE0wBIljBBxAXAyda/m0GEEcEMv79tQUQPwZnd8IQXZx2w4vDBBA2BiNawQQQQgpkvgsT+AsDMf0rH8EQ85AlcwcQXwuxwpBYBxBcEXDEuAYTHxoe/v78+9cQIojW/SzB/TuKM8OLESYT4P/+4jX+2zoIEJwTIjr+/GUwBxBcF2tSiASKYxtrw8LCugYT+ytTo8AGEKlHLjDJBRBkLklnBRPKM0zBwsIF1cQxqsE+BBDcPPXAw54R4TwrVQPVo0rZ/AcQZyBtA8TBGQ==', '1', '1', '0', '3356901120048', '2017-08-05 21:42:31', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('7', '8', 'THFTUzIxAAAFMjIECAUHCc7QAAAdM2kBAAAAhd83nDIeAIsPdgDgAAk9RQBCAGUPrgBIMgoPcABVALMPYzJsAAgPHwC3AFA9pAB6ADAPqQCGMkcPXACUAIEPaDKVADkPOgBQAEM9FQCqAEMPkAC9MjIOlwC5AIMPQDK9ADoPbwABAL4/gwDGAFwOFQDDMjcPrADJAIEPPDLMAMEPvwASAEU9HgDYADYPTQDYMlYP0gDtAHgPcTLxAHsOWwAzAPw8WwADAZkOIwABM9AOkAAQAaYPyzITAVUMHgDQAaQ9wgAbAdcNqgAZM4EPNAAeAV8PwzIhAVoNEADjARg8eQAnAeMPnQAtM4oPtAAqARsNyjIwAc4MKQDzAQ89GAA3AR8OTgA9M+sOwQA4ARkOeTI7AfEPzQD7Afc/XABIAfwPZABNM+8OPABJAcANVjJPAYUOwgCLAQM8rABPAfwOEQBTM4kOaQBZATsPd7NWg1MXboEHAr6qK14v8ENeZZa7NgOqtG5dc4owqPRIl0L8UhOyFgLByu/D+9srvAz0cJgGPQwdAnsBzMYE9AIyOgW3DqM1K/93DF+FAPhkSbd1pe5VB0vyODqgef72yWGci+NXqKFZBg0aaPrPx4t6VQbZA/8RnLswj6aR2f7kDmC1OHcz/AP0JP6I7cudaX/m7M9peLXoJ27kzGO4g7NJraPOIA4Y3H9XJhv/foCS5aN6lLKA/BWHPYY0CiO31X6NhAn54Jxoxafodfo5k4991bT8BFWNkQGEfnsmQGTV9b36JA/zmjOQxQWNhUAJ/e0g9GF19eyMc5w1YBQNBSqB1PgwOLD/uO+REIABjDpIEUJwVCflG+zf8XutAT5wbPQoNZvphYId/78I4bmEghGKVRVIgfw/GBCF+WIgTIWoqKOtKQUVep8Nsaf9TGFqLSCHAQdLHhQGAH0GzC7GMQFRDv3ACMV8CD7+/Vb+CQBQH5bxdZIMAHkmzDDFB0cQAC4x5zoqW/L8/8D/OxLFKj7fwTv9PsD+Ov/6fgsASEDw/jr8+nPBAwBAQW0HEwUVR+lA/yr/BP77zFo9BQBCRqHBeCEBbkwMwP2F/ypmZScdAGxRuMPHr2t/g8HEwlLFx/DCwHIFAHSQDPsZEQBsV3egQInF8IAUAGpoADkjNnRV/vzBLwfFYmtQwsLAfhkAr28Dz/wnVP5L/jv++c/+/v79/v/GABhEV8EIAKl76Dj6bBAApX4wOJZL+83/QA8AcILTIfjy//3A+f35Pv8CMmmEU8V6/sIAd7kmKh4FAGQUtMTM/AUAcZc0BSEBMjuaSXAbANGlyXXA/Tv9wP45//vz////////BP5qOAEQrUNJjLoMBSSsPUKRwMNXBQVwwUPDkhsACsGyWHDBhJvBwwSTd/FIFQCrxMMHwI6pwsPEw8LBBsDF8sADAM/JOgUGBefLMf0rBABEy1ItCACozENLOv8vIgGuzEBBODj/+s/+wDMFADkUN8ekEwBW1LD+9P8azyDA/FcKANnbOPGDiMMJAL0eQzgYwAoAwts9OsD5CiYFAATgPVcFBbbhViYFAIokUPosAgDh8Eb/wwD/2jb7/2gEEDQAUqYGEAcNGsI6w142EAkUUBwD1QIQA8EDENEWUAcJFTgYHsT/w/8HiA0iuy1rwP/+BUwGIsEwYv4HEO86H/VM/wMQ9T2x/QEiyD90wMAF1ftAQv8oBhCdSL9o+zERMEsWxQPV+FRG/wgQb1gDsvvF8QkQ/Vpw/+hmAiIxYQD/wcE7wQAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:39', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('8', '8', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:39', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('9', '8', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:39', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('10', '9', 'TM9TUzIxAAAFjJEECAUHCc7QAAAdjWkBAAAAhbE6lIw5AIYPYgC0AIWDrAB6AIcPXwCCjAsPPwCQALMPe4yVAHwPwQBQAI6DewCdAAIPSgCijH0P8gCoAFMOe4ytAP4PugBoAI+DKwCyAGgPowCyjAIPXgC8ALEPAY2/AKkOIgAEAOmDdwDEAHwP9QDAjGQPBQHTAGYOYYzaAGgP/AAaAJiC8gDsABQNOgD3jJUNUADzACwPH4z1AN4PmwAwAIGDbAD4AF4PMAABjaMN/gAGAX0MEowRAcwP/ADXAbCBVgAbAdcPiwAgjT0PegAoATYOk4wqARkO/ADuAc2C2AAsAVINLAApjasN8wAxAQcNvowyAaAOMwDwATCD5wA2AVcN3QAyjbgPKQA5AQcOjYw7AR4NsAD/AZ+BwQBAAbQNdgBNjZsN2ABMARMOj4xMAa4OOwCLAbOCpwBOAZsOLABVjeEObwBYAW8OkoxZAYwO4ACdAe+CugBaAZAO7gNehzZ/JgdnDOqBZPIj/TP9XYYjkMMdYxLv+DMGkX9ADigCQQKeBUOCVQe0BJGKeYFcfqyOEO8b9HsN/Px8CUSGwQJ+E16BaPBMBfL26JJciWiL9XIZ+kYM0Al4myMNoYhphBoRpPXQgpEKqXgU/RJ8OAid/TqQMO9LgHeAvfw9iNgJhQ9EeKl2gINg+TRRoI92gNIWLBdueXZ5eyhDbpKTrPvX+HqK6O7I7LCdURoQB40lvPPzmucPkP95FMjuDRO75WbyJGd3CLfztNaR3x4dAP3op3+AIAs5IeByNCRI/DWTIFct61zUqf9QGzFsjQsUYDAKvHeBgwx/8SMclMUEzfgAh49isY9FCOEPWHFEiQgu0P8dADDoeJg0HF0cnQCQANRk1Oy1+IGDNCSIHdQXfYNt96f/0IxMEbkCBPvsDFgHyP+2jtoiVODYfeP0eA9BFJuVpHWE9rnfOtD15nwuQAAgSQECayHXhgFMGgNDwAX+xHMLADsm/TilbA2MMDP3NVMOxRg6ccFk/cH/wQQyA4wWSfrA/sI6CQXQQgNYSv4KxV1PhWxMwf4DAPxNf0wQAA5YA4jnwMVMVUcUAARoMUTEp1j+Qv/ATM0AW+GBZ3QGAGa1A1dyFQADcvD+kkxXt8ND/wgAXrGAb/sGAJ6GA/85ewmMl4eGamjEO8P6jwGfjAb/BcU7i/vBdxAAQ48/R0ZywcJA//4WxQWUZTRER1bA/jnE+nL7wgoAepJGwmzewwUAPJR0twwFDpQD/0bC/QXB+UwCAQeXQMTOAH8UfMDBe8DCBcMIjHycAP9AwILAIYUBjKiAwf8EwcQJCgCxqonAsXxbhwGArQDB/TrC+MD/AwAjsmkEBAWkt2JKDABpcgNP3/8+DABaur+S+gTCw8AOAGJ5BlNM/8H+QEAHxVrF+8J0wgMBBwc0+oQBcsR9wcEGwXmKAS7Ia8GSyQBoRvsvRv5ACcVqzvaJhMIJAGAccMZNwMHDfA0Ardn/czczRf8IAKXfbh50DwD435wFhHFO/v7EYQcAg7Z1Tv+CAwEG5Ib/CoxS7+f//TEF/j1MMQwAmPGJU8PGT8D/pQcAnzITO3L+BgCX+IkBwaGJAA/4UMFXxgBtdmPDBREPD4b9hJcR+BCewFoHfnJNwcTAkInCAcDEihFVHzrAwWUHFfck7fz8/TXSEOCkqITAd8P/AcHHTsKAkscFEM8qNfoFEE0qPYfGEHqmQsQDEJkv3/8BnNwvRvz8A9X7KsX/BBCKMBoH/AmcuzCkjcTDDMPEIwIQ1jBQ/cIQ7rw7+v36//rLEMe4sMKXw8PEA8LGHQUREjdWPcYQKrU2wxEQxD0SyKcewsSfw4gE1Yg7ocTDEBD2X0XBxXNawMFUwcAFAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:40', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('11', '9', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:40', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('12', '10', 'TFNTUzIxAAAFEBQECAUHCc7QAAAdEWkBAAAAhD0xyxASAI0PSgDZAHofhQAfAIQPbwAvEIoP0AArANEPTxAvAP8P3gDyAJYfkgBTAIAPdwBpEA0OwgBvAEwOaBCBAP8PpABCAIMfuQCTABkPmgCaEG0PfQCoAMYPyRCwAJgPJgB/AF8f4QC+AB0OBwC6ECAPfADJAMwP9hDNAJ0ONQAcANsf/ADkACAOVADgECMP3ADsAGEPkxD8AC8OCgE4AC8eDQELAawOTgAKEUMOBwESAdAOpBAXASkP9gDmAaEflwApAUkNBwAxEaUO7wA3AVgPUBA4AWAPrAD+AZEd7AA/AZQPBABBEZAOjwBFASEMPhBNAd8OXgCKAdkfvABSAYQOVQBWEfwMfABWASYOqxBbAX0PVACaAesekABfAf0OhwBlEe4OMXom/psHRJEG/x8DCvr2BoYX+3qCCt4DTIEsmu+KQYF7f1KDiJGfCnsKHnYS9LLufITKiK72RHxDYV8G1pWy/056FH7PfOL+/ZZXgTOBI2jmbT9lz5jH7C8HQXgBfleBU20W8y9TfYI4hufsOIheBBoL/wib+SKdfYIVf/v6V5V+d5vXEYdI+99tlPYGGabjE4WzGqKIqe0JDkQLlJCcFQUPLJpUhDMYFBVNGm37gWo0/cxyreLl6sz/LBm8kikTDSIsC1CnIBRREiYg6Qq06b+LUYaKgKd2+Bbg8olPuPp8828XPAyx7IH+HOgEEtjr1fG+8E+A+OFUfq74yfSsCKDjwQNBGP0dXOmo+oAC8fjh77iDFBFoFS4QQAPQHkQLkAFFEX4UHikjTM/NASBDAcefIcEFAKEBCU7BALwRDUEGAIkFw0TFGwFFBgNURKEKBZkKDFjCQMHPACseAULB/VUFxdIQAME4BABGGUaPABBPHADAUgTFRiVqZgYA1CkMOMIwFAGuKwk4DcWmKZnBdoRFxBHFTirqP0fB/0X+nQUF8jsQ/0EVANVD9S//wv5UwTc7wfpFFwAMUPTABP3H7cHARf7/wY7AxCcKAI9Qhnc6eG8cAZdUCUdR/cEOEI5WgGrAcrEXBRhf8FX/RlOGPsXR/FQPAK1rTML7hF3C/8KECcW0dRz+S8BGFwDNgOzvRUP/RzvBOsBG7wUAcYD9RM4ArZgNPErAwMHKAKWZh8FcwnjCnMMMELqUFjdUws8AXo11w8CQwWbMAGaN9kYp/xgAzaDn7zxDRv5GR/tqCRBdo2nAwsG+dMcWAYKo/Sj/3QANv+PAPv/+wQUw+idBUcEUANx/oGLTwYNphMH+UgUFM7xawML/CcXGuwxCS8MFAOAHIsdFCgDEwyRgocE5HwGAyAYqwfNmxz8UADTV2kE6OPs4/sD+/1vB1QA8yeFP/yowNjoHBSHcV8FiwArFleIw/kVpwgYAu/hh1MA5CRB6Bon/+tDBNAcQgQaGM1EYEYkTQ//8Bf/47QgQjxM9/jj/+9AdBBClGClOBRWwGDTCnxkQNiCnWmvBwMLCwgBsatFVwBQQwjBhR8TQwMawYsFAOx0VAjDQUVT/ODv+++7//v//wMAF/1BMDhCfMrBQBMfN1cLA/8H+wNwQ6iKdRsBmgMIBw8TTdVv/xBgQLjeTP1B5lZ1wPgcFFdY5F8JtBBCSPVI0BRCTRvH8OAUV1UcPwVwEEHxOjIYFEMFTCW3BEJFE/P/AAxCMkG3FExHPXwbBBdWVZBPD//8AAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:40', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('13', '10', 'TNFTUzIxAAAFkpUECAUHCc7QAAAdk2kBAAAAhb80tpIZAI4PMADlAIedtQArAIgPqwA1koYPvABBAE0PlJJDAAcPFgCGAAWdOwBGAH8PVgBWkoYPVgBrAMQPhJJ1AIMP1AC4AI+djQCAAAUPsACPkoAPkACMAMgPHJKOAG8PWgBXAH2dyQCYAA8PbgCfko0PswClAMwPzJKkAIkPWgAOAGudjwDMAAYP9wDLkmUPhgDSAL4Pi5LcAHYPFQAgAFudhQDsAHEPoAD3kvMPJQD0ACcPNJL1AFoPCAE/ACCd7wD/ADMPsAAEk1cPkQABAacOVJICAVQPMADWAU+dlAAVASoOkAATk0YP+QAcAfkPu5IhAZ0NzwDmAVmcfQApATMPdAAvk6QN4gA2AZkPO5JBATcPVQCFATOdwABFAeAOpgBMkzAPlQBaAWUPqJJbAY0P3ACaAdmdMAkqC0+K8wZfFQr/uf0pAqeDCxAaAWsKqQJ3/38RtIAOgmKDQ4FbEZoDhoG6/u6AsBJPBuoDvopng48RIIBRBil7j3xHkF4BsPsdhCiG0JDwfgV3KAs8jxgdFvtDD/9zOPvD6O70sIvdCjSHGBbwf4qAHXy8gmRstX95gob8Vw5P7Bv34I+9kA+Vh5tfDhr67HfoBEydsPzNcGUFhH4/lgv96f05EqwfqAzwo4qAoIv4htcKqXtqEL78EPere8LLRROC+GrYzPQE5y33WTkM8qSdZA0RZ8L9P/Dv+if5Ecm++LeF9Ge//SLy9ghn4ROLSPjtQCK9aMBAkZ+4MggK3m8GxJrTSAbExQPHIZPvSAJWCv/spATIkA/zAVdOPFeF7G7b/i4C4RYKwGrjdO7Vr/uwg/1rECpQe/6+2wteDLJVAQL9JhbCAGSSF39JBQB5xAzFywcAmwIPUgYMBbUIA/9DwF0EwQuSXw0JVcFUBcL7xRUAJg8Qw/pn++T/ZP9HBAAYFxMRAgAKGAbAzQCyiA3BQv/9BcU0JZRUBAAuI4CpCAWeLP1U/2oGxXI0m3LACwAGOzEzxFLBShQAGj84N8XBNm1EYAMAUD8GbQYAwEIMWI8LBQdEDMHBPlMFCwWYU/pS/lNG0wAG9N/5U1XARTvB+sFTFgAGZ/oFR21SS8BUWlQKxVpiksH//nY3BsVSbxLBdAMAWm7GwQKShHQDYP7CzwB45YFVwMNaC8WQeJHB///Awv6UBgVKfwzASgsATYCGxGvAcAwAkEYGUMn/wTgHAHFChn4RBQCTiwM6zwB0H4FZwsDBwjsIBcSVfYRkBwAOlgnGTA4Ap5yJBP/G+1N0BwDLnNZbU5wBr6SDZXcFwcXqBgDNpw9MggkFJagMRsD/PM8AU1t1kIdcEgCbyvJswU/AQMD+Ojf5gAE2zPDA/jpVQ6z+wDYOAJMJBsWnP8D9QAUA681oUGUHAILOfQTBxvIEAFfPbXzCADRAY8DDTRAAT9IG0sH+//79/zjANp8BgtR3wJAEw/oUwhkAAtnaOD5OUk1EL8BGQcoAj0l8wsLCZsNMdB2SCN3g/jjA+1RO3jxUCwCS3cb/+23+/v/8/f/GAIxzdsINAIjqPyn7bPz9/f/7/cAAh2Js/58FACwwYMcdBwAy+Fx3BgkF6//t//wz/DgDBJX/Kf8LAI06dMJTwpbCwskG1XEF8MXDfQYQlcX9+G/9+wkQTASbl3lSCBB1BVrDVsP6VgUQkAVrxgcIFcMGUHqDAxBnExZsCxCRFUbFBsHBUMO0BhAvFomEx5URlhkxw8IBxcKVEVEaTMGJBwMVxRtD/xEQvdmkwVbEw8jFwsEHw8dQw8fDBRD92jcplBH3IEA8/sAQfL47wsHFBRC6LDVTmQUQDzMtBMDHlxAUNVZUA9VTQa/CAxBYRDcEAxWsRzTAAAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:41', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('14', '10', 'TCdTUzIxAAAFZGkECAUHCc7QAAAdZWkBAAAAhYk3sWQVAP4PKADeAFNpMQAfAOENFQAtZH8OIAApABANrWQwAPkPBQH+AJpqPQBCAOEPHABBZPkN9QBEAEIMfGRLAO8PrACLAHFraABiAGkP6ABvZOcOSgByACwN3mSLAIIP/QBPAB9r2QCfABEPdgCjZAAPAAGoAFQP2WSrAIgPjgBuAPVraQCtAOUPXQC9ZGkPqADNAMUP6mTMACMPjwAYAFprzgDgAIwP0QDjZGMOWwDqAJAPoWTsAP0PCQE3AKBrcAD1AN8PbgD8ZGAPTQAJAREPsWQLAVcOjQDSAdpqmgAYAVcOdAAfZTQOngAiAZYOE2QiAdYPVADhAdlrtgAmASQOSAAqZdYOAgEwAWQPrWQyATsOyAD/AaFqLABGAdUPVABVZeUOPgBRASUPd2RSAeEM5ACdAYlqkwBZAfwOpwBfZfEOfQBbASgO02CfgcuPPHZEgF8TNY4JDdIB8Iub5XuGgYCV9Q/2xONb/IJ+TRmfq3ZGUwE+Du7/THM4G4Nb5el5k1II7O+WfX/5yX/CfJbh8H+GgbOKY/xvY5Z/JgSGgYoJQBU//AJppogvmddvoYs1keoSL5j/dXvyrnhuCYdyrR+7CPb5tYhL8Rdqm/anfMOLeHg4DwNoJZvqoAMEz/0LnjKWPWfPYOue42mKj14vmo8y9yIPQXp+geb6qPgco0r8hoeuGyZjNI6Ggg4ODGRIaVst4ft+gV/2dEDU+WU3pYh8jeRuXQeteC0mvRMQhLzl4P9ZGQB102eaB8/7WQs+/Q5tCfPB6eXSVIVsnoCDOxVb/2L/9I0oGRULgYOjaIMWxPVWA4/5HeoMnhsEOQ2u8bIFvJAQ8J78luoW7Z4PQRoBEQ4cRBCUYx8RLQyR8UQKNnOVanJNByCBAQfPIqYEAFEAoWoMZGEAacJYwZwJBfIBcHhq/wrFbwQPw2VtwAsAuAFsDmrAQRAAs8R0xRR2Q1L+EwAIBnim/od+WMH+Bv5lYAEVCEZQBsW3FZ7+NAwAsBWyh8c3YwYAuBf9OsEnZwHLJ4DCGMQANPqjbIXCV8EE//qkw8CGBACk93F2YgGsM/pU/88A8SSRlmKECQAQRYamSMJyCwB1iGf6pcDA/cPAT9QArCpwYsLAwMCnWcWmGAELW5D/AFqMNnFVe1gYAcBjlaWCwMLBwWYFwcU9/sH/SgUArWZipGcZARN3l07BxKWN/8F4WF2eGwR2g5fCacJuB8DHm3llwf9y/wEGBVeIZFzAFQATiobihf9xwMDBBcBdoBoBE42XfwR1iZvDZ0LBwP8F/6ViAdugEP/C5wQF0qP9//wQAGqncaTBwndzc0XMAP7Dl8HEwMDEpRAEcaacwH1fwQFnXGcBt6gDwAbF4Kl3PcAGAJS3tcN3aAGct/H/KDs7MX4AFrikfsMB/8XywFbC/8JbBFULZJa8aXiHQpEVBY/LmsOGxHgEwMCaUMH///oLxavJk/39/v9aQ8AA9qkd/v/+AwA10SylEQDN3JrFB8TGp//AbV/+B8WN5QZ5YBAAy+FVw6ykwVxFwPoIxdPhemFPDACl6Sj6J6TBQP0LAFcpWsQzwcDGycQDxajqk/oKAKDwYrJRUHQBcvLcOP8F/PiZ/v/+YgcAA/QlpGX/BACn+KzDx24Br/kA+f4EwG+ZAgCq/WLBwxC1blbCxCIEEMYPRaHBCxCfFNw++P6l/sLAwPsH1bwdQ3p2BxCtHYbFx6EyBhCeJ1M6//qYAhCJM1bAwBB8X13+wfsFEAk+GaR2BBAmVyANwAF0mVr0JAUQKGB4pFMEEHZi/Tr/AAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:41', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('15', '11', 'TaFTUzIxAAAE4uUECAUHCc7QAAAc42kBAAAAhA8rTeIhAIQPhwDkAIjthAA9AIgP+QBU4n4PlgBeAE8PZuJoAH4PvQBLAIvtWACaAHkPwgGY4v0PKAChADMPe+KiAAgPowBhAI3t0wC0ABIPUQC+4oUPNQC8AKkP6OLRAJQPgAAWAHjt4ADaABoPQADv4ngPkwD0ALkPxOL4AJMPmwDMAXjt6QAPASoPQQAd41MPwgAbAVQPo+IgAX0P6gDtAaLvXAAxAUAOCgA144YN0gA5AbsNvOI6Af0NnAD7AQ7s4AA+AX4McwBF44sO1ABFAbgNuOJGAf0NOQCNATLtXABJAb8NZQBR44wOiwBXAWUPsOJbAX0OqACeAfnsxQBiAQQOjgX7GRL/OQd3C+oHuR0nAVcOGgMK/f8ZpwVvDR//XwNP5/r1Vgkef5YPFpCChGsN9+8ea9sFu4yHfG97X4R+YwOSUQfe/b+BlmCj+hqH1f9bfF7qw3j39QtnlHyKZMKbPQbi+PcCTWobCsqLIfwE/iofnAQ1ArIC6wVa+NN7tQIxA6gvkWTLmrKnFdv/1fo4GA9pFz6VdAP5DVN0KSqZfogjhWCrDyvwLAr0DRHotfo8AxEAFXa84XR6sX59g7QPaeKQAJ36xI7djj3svQPxALn54XY84dSBTnk2+5abhWBHic8gDJM4EXUP3BXlp7qYRYMdm9SBHHOAg6ADFWswCwkLuy2cE8biIUQBAromtA8EgQQM/cNQZZg9AuKNDBDAwV/GAELvB/8IACQPw8BVtAIAJBkA/9QAScMIW8E/wUIFZQfi3yEG/wwATiMXIP/CwEJKBMVFIGSFBADZKAycFQT+KgDASj1Z8llV6AEMMAlwU4gWBOQ8+vx/VGA6SUC+FwADRQDAn0r7qWpTwG8FAMNOBCLBwAcAQE/FwMSiBAA4VH3/B8AO4ptfDErBRQUMBHBhhv/BwMFAwMUiBgBeZYDCOnAS4gBpBsX+WwX8dBzBwP/AW3PIAGKLB8BUSsBZwgBaiXxqahcAAkLwSLc5wD7A/naSBwRYjYxZWwgApnl5iMBlFgADmDVUUKRFVv5z/wTFVZxifgYAXZr9gf0M4lSdd8DB/wTCxOkBe6OGw8AFwl1kCACCpgb/Bf3GHVQKAKemDwX/+7lYGAABqOI4RMQcTf9VVf/Bgf4S4gmr7WD/NoL+XCJcPgYA1rXWwFDvAZC3iX7CBHfElgwAkLyA/wSAxZlyDQCYvA8E/VkcVkcFADK+tcJ37gF80IOTf0bCHOIC094p/1M7wPodRETBPP8JxYTX5C7+UwwAfBN9jCNugAYA5NvT//qoDACA633DBJOHmwwAj/GAwQbCkiPAwsTACQBS9RQi/jc6EgC9MJrGIpD/xIt1wkENBG35gMLDwpIFxMVDEwC8+5D/BMHFdcDDwIDAlMAAwB4dQQgQlwhGxMYhxZcFEOwP4sDEIBoQBBHQNKEr+SL+/zj/wEQ6/13mEegTMIQQ1cATdcGCw8Kf/gDDnOQRgBtXxMUExAzypR2MxMjGaw0UXByMwP/EqGzAz/kRCR7M//7z/8QfOv/B/f9V+8BG4RGrIwn/DNWjIGTHzsTCxMQ4xI3nEcszff79BwMUPj96wAgQ/4B0XxxeDhBkSy0HyV2QW8IEEPdaqC0AAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:41', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('16', '11', 'TStTUzIxAAAEaGoECAUHCc7QAAAcaWkBAAAAhJUj8mgVAIwPswDvAHhnBAE1AI8OJwBcaIkPzwBmANMPymh8AH8PuQBRABVnBAGdAKcPCgCkaIoP2wCgAFMPc2igAOYPvgB4AIBnfQDCAOQPXgDBaPsPmwDMAMYPi2jfAPoO+wAnAKtnvQDyAJIOLQD2aKYPjAD0AKcO3Gj8AKEPwwDFAYBmmgAFAewM8gAMaeUPtQANAbUOPWgVAWcPnQDSAetm8gAaAZUPAQAnaXgPoAAvATAPxWgwAXMP8QD3AYxnXwA+Ae0P6gA7aekPnQBPATEPIpVqE0MHJ/fya/+bowVTCFd7pHZKY9r4rZpRknoFwQJjcEL1hYqLlHoVWxNbHnMrMfeNFk8JbA96hVsZ0my+7b/m0vmzjWrqo+yq4FYADfrdawsYPArVCs8gZZLMmlkDNQr/Ex92HBA5J/7whAm5kk8m5WpBeot2zZVYHXIQqfSYFf2N0P05jqF/EX/jlsb78e2Bg/z70O9ngz9+TQUI/oXrMA6O9qLylAi1Y8f1SQrSAEuE0ZSTgMIGvfZCEH98FgQ3ip/7p4OflGIGUgBzgIoGH9gwJQIgPQHHoSGKBwDVAAn/8gQEBwBwwMIHAEMBcBxcCwC4BIkGfms9BQDNBQlN1QD2foj/wcF2wQdpxKjBAwD6FxA7DQTHKYCMwHDABFsMaLYqAz3APcsAq0V8wYPAwHCWFAV9MZqMUsJZB8CBDBUBAjSQwaJnxezBwcBq/RTEDjHyw3h0wcHBBMHFqGrAFQEOTFmUgBzCYsHAc8HRAOQ8jcHCf8JuBMB3DMAUAN5ZhrxfdRNqwTcGAOaeE/pTGQEXY6eSr4PEq8FxYsDAwAcSBKJkgIvBhMGhwMWXWAgA0mUMO/77ljkGANJqE+r+HGkVa6SI/5a9wXwYwcHAZhgB1HOm7MHCw//E/wTBxRDAwMBrwAjFy3jrk8CDCwDCRAP+Vj9kCAC9lMko+iQTAM+TjMMGwsSqwcL/wcH/j0QeaRWetMLCwbiAxanBgHNtwFbNAMjIjcHFwsGCzwCy2xH+/v9DhMgAhKrlRPz8wPw4RAxoeMVewMH/OlsfaRTFsHjBcQTFgKv+w2JkWP/DALSsAfv9Qw0AUsdmqMHB/1P/w/ILBMjNA8D7MsI6jh9pEM2r/37ARaPF7MDAZMDA/zrAA2iQ2fD7wPs5wgNokt/6//v6BsEOaIrhZGRMdskAmI5xgP/A/ns6CwT172nF/cA+rhwFee6i/VLCUgDDxfXA/8JzWzfJAKGbaMX9wD5kBQkE4fZiU//AacAQ2GgW/pwNEL/HgMatwU9wRQQQAgMUJgoRDAaiRDp3pWYBo7NpwcE6e06VdgcQuQwMBf2NeRAILYA1/wfExqrA//9JwAPVNhEK/wYQmRtnkcAHeMEhesMGECgxgpeDCBCcMnCTZA54vTNx/3NkOg0VajV3OMGUwJEHFJA+d8A6wgzV+kEF/v1NTjcAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:41', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('17', '11', 'TYdTUzIxAAAExMgECAUHCc7QAAAcxWkBAAAAhGkpmMQZAH0PVgDfAOvLgwAaAP0PqQA2xPgP6gA2AFcP7MRDABQPjwCNAADL2ABVAI8PqgBSxP4PiwBaAEUPwcRfABQPggCsAAfLrQBsAIQPggB1xPAPegCdAM8POsSpAOcP4wBwACjL/wC3AKcPHADCxKIPxgDSAGwPVMTYAOgPrQAoAKfLUwD2AOcPmAD4xFwNiwAUAYQNXcQUAeAORADcAdnLhAAfAfMMYQAjxasOeQAsAS4NrsQ4AZEP9QD+AavK7QA9AaoOAAA6xaUP3gA/AVYOT8RNAe0PLwCUAfXLaQBRAfkPcwBfxYsPiABeAUUPW8ReAQAPgYOKeXdCt/iS98PzRIPmwAcTKgxm/AP9MEdHBU+CNIcMhtbHxIXuBc4BpH7Jusf9of+Jg7f9XbjIfYWDXYYck1bHVIQdB04BLHOWwoODe/TXDk7zO83yJxcbzwGm+pcbqIlZh7aGmH9OwkoDtXlJ/gv+xc43Cbp+1QMPjU/Fv/0/ZSf7aY9dx9MIuHtpfhN1kJebWFqYGQWshl48nP12+oKCpbfpzZtICRlyaKe4cT1zrDIOpek87ybNSQZNHlMMCf5V3FcK3RJlF/cc7Szo5nHyte/I/5kziAef8ZP6JPgVy5t5yuiq+bIMlk2Dgv/4WQjkF4ZGs9gGgKYB5UsFxrUj9AYAl8F9xAdwBgCuBQY6RAjEWxzwwDj+iUILxD8u8ME6LgX/xDo8CgBxMfoFwDT5EQDoMpd3B//AOn1ywhAA5v2TxQTDwMJxc8KRBAQtRxY9BgCTjQNPBA4A1lGTwjrCewV/wWQOAHSQ/TL4wC9VBgDdnRpQOwsAiFp9gUCFEcQmW+dVM13q/vs6wEYIAMlf1TVWxwGGZgD/FcUibC1Swf42/8E5wD+f/woAfml6BYvFtwoAsG0MOIVGFcRLcO3//v8H/fvz/0BTFAAttO1sBP7/K1U0wYMMBFVzgMCAwmalCwRQcgM9/jg1ywCLugdLwCtMR8kAe0WBwsJ3wv4EWwnElYUG/0D9rf85yQGQngz/Mjr/+pbBDAB1nnRJwMaANgMAkKQQOgcE+6XiNSsNAFWKDTtK/v/9ZMHCAEBs5f48/gcAXZMIO/7/LgcAO2lexARYCwCuyCT4wfsFWgoA+rWnqnd/zwGHeX3AiATAxZ8LAKfOIjgEWsTOAVy7ZH7A/sECxOW4J//AUcwAwAEowFH/dgPV/Sn+/QQA1cWkuwQEc6mXiAsAa1xwc7D+wP4FANsMKfqZCACB6xr9OsDERQgAZ+9rkAX9RcEBhvckQwjFkOjgQsB7CQBzM3TCBMD8YAoAgzgp+0JY/gMAW/6bwQ7UfQQ9+vxHkwkUsgRG+UbBQc8QhMUx+vv/NlfPEAPH5mlkQAYApa30OiMLALjIJAU/xLf8CBBpC1zwVw7UDhTpwINbOAsEZNAiwPxwcgUKFMog6XHBXv/OAIwXEvzAwSt3zhAU7+zC/sRqLM4AgB8S/f84wljNEKH8lsTEwcM3zRBoifEqwC0EEKFTcIgHEGxT+sA4RArUKVYDxP/ABkH6Of4/AxCEW0PDANRaX3rA/wXVjFvHwVwDEGNixcAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:41', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('18', '12', 'TSdTUzIxAAAEZGkECAUHCc7QAAAcZWkBAAAAhIkqaWQoAIoP3QDsAJJrAAExAKINYgBAZIwPMABPAMYPWWRmAIMPyACuAJdrLwB9AAIPSwCDZIYPCgGIAN4OOmSLAIEPeQBXAA5rMwCaAAAP5ACjZHkP4QCxANgNhmS9AIQPzgB4AB5pywDDAJcNDwDLZJUOqgDeANEP4GTiAIMONQAjAHNrDwHmAFgN+wD4ZHAPiwABAUIP12QIAfgO9QDPAeZoAgEMAe0NKgAdZQIL4QAdATkM0GQfAREOBQHbAQRo+wAfAYoMRgAnZYQP3wArAcIM8GQvAYUMeADqAXhrfgBDAXMPKQBCZZAOOwBHAY8Pa2RZAQQO2wCfAZNrCv9DC2OLM/VfbzoHag0/E96LH5ni+4cHwwBWgbPjXgSTgSd5Vglba7r/mYG5BwuPYRpGBpMHxwMyi89nWIGdgWIKoIaq7yKJXYHlifgD6R3r+tZ7zQYMi7rut38bccf+BYa17VD+wH4oBxR/qJu0fQoQXoGXf8/om/Ci7lKP/Aq7Z8p7dm6u10d7xZpSKxPvRgUedE9pyOmx/p70YPTphNRaGQzR7SBllB/wCE0gAO8M9H2cbReVDC0ZOXs5cQj+9I+Mi4AEXWxDFMYBQQzY+IXhzPyBgbGGIPg9bU97wflpcxPwuWpM/56MR0ru0zO/WJNGiwu+AAur9MIVebbq91oAJCUAAkgeHQbFxQR3/1cNAIwJzCvEpcD9wGsJAHoKEib+wUUEALfKHnNnAWMQAP4LxZgec2M9wk4GAOkWAjH+DgB4HwwF/vs5RMBbCAAF7+34m1T/BQBxK8nASmkBBjIDa/8FVFZqARxCAML+iVXFmzAJAKtGFgVRYWgBM033/UyeRABkKlCAfhQA9lIIpv7AWExTwDpDxWMBCl/6QFzIAGUMB/9FQv//hAcEPWh9VXwIAAluE6RULxQAA3w1/V6aVjfBQ/3ABwMEiK4QwwgAMrgDbKT+wQUABIPMxSBrAUKKAFTCOjVAmcIFADqOgAdQDmR8lAb/Rv+ADQRSl/1U/lI4OwQESpt9WQwANlgDXVb+wTYOACVi/TMrw/1d/woAu7mNEP6M/woAhngJRprBw//JAwHWvUKbCwB+v4BVrH0WZATO9P9LZAX/M1rHDQAJ1veJZTorEAAK4PdGk0FTm3wEADHjfUgNBF3n+kb/wP6SUwBkt+kWwcYExA/tWfv7BQAx6rLBxqQFAPjwaUrAAD6edsNRBgBCP/pFpQQQPABwas4Qg2eBTsLCZsHOEItnET3B/cDCcRIUZQbtVP9LS5FGB3UXDG39ChC6H43swnXCAxEV5V79bRF/JYOGwwWXDHSGJRBBZAXVdC/noQgQfDAGOEHGmwYQdDF9wgHDmXERGD/a/ys6/fub/0b+aMWs0BAWJrz4//5GKQQxSJudBBB6QnR1BBQXVAMtCBBnpcz+nvr+/sUDEExjh6QMEMNmk/6nw4ugoAAAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:42', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('19', '12', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:42', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('20', '12', 'St9TUzIxAAADnKAECAUHCc7QAAAbnWkBAAAAg0EZVJxAAO4PqgCEAAOTcwBtAPQP0QB9nOEPxQCDAEQPaZyeAO8PvABmAAqTvwCxAIAPRgC/nPYP2QDJAMoPIJznANwP7QA1ABSTqAAEAQ4P1QAUnU8PdwAXATUPvZwaAR4PSQDYAdiThwAfAf4PPQAlnSAP7wAuAewPspwyATEPigDyARmTTwA6AdgPFAA5nS8PfQBYAZQOvGGW8/cT5w92gwCL1gU3CXP3Qvewb5rvTnhHAHaDtWZa/ZfrsYiDiJxgvHgeccsA6wqA53rzEpGe+94I9A3OA9MHFgtm+qhvl/DaE6/cxnU46kp7pfS+2coUunMHEI7x4Qdm7CgSGBC95mrzBfvNaxoOOAvK/C4NJotbBM4aIR5zyRGxYP+P6sOKgwTdYP8RAjnLejJX8EQiACA6AQKLIDyWAV4RbcHBBcP/Hw8AjRVtSbbAwWPAeAoAVyOse2n2BgClHXfBBXgEnK0nd2pqEsXAMubAWsFnasGHwgecHjJpwsEPxaZBHMN+c8JmWcIAUNhlwGTBBABrRQrjFADdUIDBO2eA98DBwVN/EcXwXhV/ToTBwf8EewiceWv0wDBbjhQDXX6GgHzAwTrCeOpXEwEMgZMHWcLRwP+MYv4GxcmHmkX9BwDBhUVwhoYAC4yTwv+1wfxYZ37AwIt0kQ0D8qHwS15GSsIAwzwHQsDBCACjoWriahMAuKKDTGd9XMFpwMT+B8XApJDBwf/B/hjEAqQQY37CWYTBBcHDY33/BQAjqJvBh5oBKqpX/8G9EwMmrInF/pR3oX7BxgYAwrIMaIIFAya1g8J7BQAYyhNcwf8ZARTcX3d4XYX/lsHAwEFqDJzo7ZN4jMEEwsJcwMEZAQ/sWYfDXYXBg29nwgRaAJzw7hD+BAA19BnKGAEP956QOsHCHMP/wsLB/wTCwfbBwgkQrQHJPf1cRwQQpQSAB8MJjK0IEMA7//sGEyYZlp/CBxAHGhViP/4TEE0bHz4wXP8rwP1YwsIQcIdmkJIKEIne9P5g/P///UsH1cAcvFUmBxCCIK7Ddl4HEEYhU34ECRMWI/r9ITMD1fsrvP4YERUpoL3/wh/BncHCaZC3BhMRMwP5+/7/1hBMqtL+Pv8q//XA/V1GBRCGN2sAZQeMsjgtLwQQSzoUigUQ0zwtOMgQXMbSwP7+/vs7+vhjUwcQkmTDB8nNXv8AAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:42', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('21', '13', 'SjVTUzIxAAADdnQECAUHCc7QAAAbd2kBAAAAg5saWHYnAOkPGgCXAOJ5PgBSAOQPpgBYduwPzgBpAMYPaHZrAPEPDQBXANx5eQCUAPcPTQCXdncPOwCdACMPTnajAGMPegBoAPt5VwC2AOsPdAC6dn8PiQDXALYPpXbhAAIPawAmAPd54wDkAIkP6QD0dlwPfAACAakPoXYLAQgPMQDKAeJ5ygAcAYwPbwBJdxcPRQBUASQPTHZhAeIP8wUW/syNo/3rB6f32wWpj7L1wfweCYoG6PnOh+8PPQQD/yR7rvhrA69/TIDGdD8LjYBhg3aFpvO7/ScIqX2IehEZRAJdhwINgIo1c4/1Tn5rDWYKGQZ/gMJ/DpCPhsGJf4C6iT8JvotIiZYPXX4bazp3wQ8fZuL7Ap77C4kJWIbXA4fvQ4dMDMYHR44nE9KvxnZWA1eHQQCWA5S59BevAyA4xAIfa84HAF8UZwTB/B4FAIcVdHbMAEpuZnvCwFoIxYoeBl1+CACaI7XAZB8IAFcpZMEFPHx5AaAscWJ7gpTBeQGxM3fBwLHC/InBw1EIALz+d8McwcIUANdIQ4txG3/AXcLAB8U7VRvAwcGVCgAaVo+3iGbBCgDjpIyEt8NmDQDKaEX/wR/Bb2sKAGepaWS2wcBgDwDqv4lpB8Nkew0A7kOJwwJ7wcJOCgC/j/K2/EM+CQCMVvf9if5PwQ0AdFNwwbbCQmRNBQBDmHMcBgA3oGDAncQLdkiha3/Ab8wAT9BjZFz+CgC7rfc3/v5bBgDyaIxatgYAo5t9kJ4MA9q5fVzBgMCqCQMkuGLAakwXxfvO7MJibMBvwQTBwi3AwMAXAPsSl3QPTcPAw8DBrFXBcwGq3wA3CsXg4/puwv7ERhLF++HldYBYwsLCBcFkcAFn5ml7wNEA8YGRflnCacG+fsFzASf4YFwFxSz4LFMJEIAA+gT+OC0LEHgBdMOicfxiEfsEif52QWnBtsB4wMIKEL8GaLZuwMLAwQfVpglwNFsEEC0Tn2URZukXj1nBiQfAbBnADRDHGoyqwoC3wIQPEOkxU4Ry/8NpDxDrQFnCw/3CfMP/gwTVrUp6MwYQpUqAB8RwchGsThdED9XvTOH/iYiAwmTLEOYlm8CQwojCBML4ehHhWpP/fbjBeHARe2Lp//3eBBP/ZfQfAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:42', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('22', '13', 'TIlTUzIxAAAFyskECAUHCc7QAAAdy2kBAAAAhXdC3soeAJkOigDmAJfF7QAwAKEMmgA3yogPIwA8AEAPDcs8AMUN8wD6AKXGwABEAI8PMwBRypANmgBXAM4OespbAIgPqQCeAIzEPQBqAAYPEQBoyowPHQB3AL0O6MqiAI8M9QBmAKvG3ACoABwNxAG3yrwMegC7AMgP88q9AKgLAgEAAEnGlADGAIwPIgDCyooLiwDMAMsP08rTAIIMuQAeAIvG2gDkAAIJYQDtyowNuwDqAMkMgMrsAIgPLAA0AP3EyAD5AJAN6gAHy2kOoAAIAUkPHMoQAegNTQDQAXTFjgAYAYIOFgAdy4sOfgAbAboNGsohAe0OzADnAQzEoQAjAQYOJQAjy4YNmAApAb8O2sovARENlwD3AQDE7AA0AY8NsgAzy/sMswA2AUIOAMtDAZQOggCGAQPH8gBGAYsO5ABCy9cOnABLAUEOespNAQIOsQCIAQLE/ABOAXUOBgBVy4oOIgBVATsNRcpUAXYMeACdAQfERwBaAfIMkgBfy/IMpwBbAUcO0spaAYwOCfrL+kfFYggjijsOyACEwPPc6/gfAbYHLktCD/f/OSXcN0vukADd3R0RlwhnTSMHqfHNz2PxhE7wh2Z/9X8/A5rLgIDa/HoDL5EiS1J/2v+iA0IE/7/O9+vz8OKgdAgcVSL58UmWnIxYuIN0JRQBcawRkMiEg6+FvewwXETX0KT1kbHDpYOASScB3eVdCTBDWU0UArqJNYEs+Xc+LIRdAuYM8IHYvVN4+YLdAqsENEqUffmC8vwHfR80wJDiEdcMVIXIWScI0XCBg6t9UMQ0i7oAyfxEg3c7qwmHhLN4vAQowxR9UIMZBeR6+DZMhxYERQSvhdfQUYOBhZH6JY/UyhCFQHqd/dj5Sbztd7X5NI5EhAzAQY5RALWCRIAgz5QJqfS5+pR/OEiYg4GHRSCgCYTNyQYdDM0G1RvoM6j96di+Ya/qIM8AfbWCTP4QADTA1ISBff2Fbe/gKrfofYUJAqMIROKHiIoNKIbQhouyVABR/v4Q6X6Uyhf1DQAVfkvw3LakAfL4iQIfAe/QEv6cr1TlVxkF6ksBAoshhMIAisoOVkMEALbFEFXMAUQBDEr+ywBhyxE9w8BDaDsLBbEAE8BobTjLABLCDWDBVW1LwgA6wA1F/8EDADoRRjUVABASDMCT//qnZVZYBwAK3ReM8BQAASQTwzpdx/3/wVZVWQnFjiDFRsB7BADw7TfGNQgAJz0DVTrBOsABBEr6//+W/mrAAQVSA11HpQQFNVIwVwcAg5kMxZfDBACtXAyREQXbYfr//1P/mMBRCP4QAD9oAIFExAs+wBwFADevgMVCDgA/bgldnUrENcD7AwDYbsnBAMsEcDf9hgPF/nDw/BEAIXf98kZersFgEwAHiD9bOv3BRcA8EgDNkQMOR0ZRVWUIxA6Q8P3/xP2REsULoyMwwEDB/0ME/m3YAQ+v7TVLnT/ENY0EAQG2SdkGBbS4Cf7AWwnFdr5Dw8FmmBAAyr3hMVY4wv1KWcEAigAIQAwAh8tJb8VOlwQAj9AQqQ4FauaJUX6Ii8EAui0NWRAAt+pVZX0JW5fABwCBKYP7SsMHAL/tFgY+xMcBo/CJwP5BeXXZATD0+sH+hzXFC1pQ/AoAqzAQxQn/TMD8BAA1+gn3DxCeBJB+qsH7D4oEEKQKAPQNFVYKif93dMQFeQHaSBN6lAUQlBT/NS8IEEkZcQf+xA3GxAgQ1xnSwsUxwPb7CRB53oCDpsMPENAbhrf9Yr6TBRCkIAMFLQ7anSOMxMFavMMA2jFF3v0rB9WkI8ZGcgQQkylFnwHaYDVnUwUQcjcMNF4FEFM4bQTC+M4RZzhgMATVBTnnw/4EEIdCxS0A2oJQCcQeD9X4VaH9+cH/xMA7w8Y1xFcDELJRysIG2n5YBsILEOdZEmhUwFkDEMqn/frKAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:42', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('23', '13', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:43', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('24', '14', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:43', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('25', '14', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:43', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('26', '14', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:43', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('27', '15', 'TWdTUzIxAAAEJCgECAUHCc7QAAAcJWkBAAAAhMkknCQsAH4PsgD6ABArmgBNAAsPcgBWJIsPLgBqAKIOISRwAOcO1ACzAJYqlwB8AH0PqQCFJPsP2wCXANgPKSSYAF0PkgBcAHIrCgGZAJwPAwCYJJQPtgClAEwPcyS8AFIPYAACAFUrvgDJAJEPTgDkJEYPMADqABcPaSTsAEkPLwA/AFQrdgASAUAPdQASJS8OaQAnAYkPRSQqAdAPTQD0AVcrbgAxAUcPvAA/JTYPzABAAecP4SRIAaEOxACPAagrbgBQAUoOjgBXJdEPyQBaAVsO3iRbAZQOHmyHdCPQoI3VCwaYpPt5pzOMrXl9g9r4hKdaDCtvgIMXjqPLJ3U+/pcIjAuGo8p0gn+ehwar3a4fjdaW3noi+BND0Psa7qJ/ooB7K2YLWQ3hen8G4dEv+YYWnQKfDg77IAJiCkcNYwmz2GJOqgDm9hb59aCWg7OLKgSrCu7e9IBjgV//XPaK3Pf6fw2HhhLyZCMMDlkXxH9rhu4mwYciCC4NIf9dNHv86fCd7ijvvF+kh22DOQ2og04gsY8JEO0bzBb+ILd9dn2uia8CkdDkDKl/bfgA9YHPOiQw2AMg8wEGdSE/AwCCAsPAACRXCgBZCwChFPnl/vzCUCoJxZQvp8F+wW8PAPIs6RfC/FRXOArFnCki/sD+TML9zACSFXtSZsEJAHA9CBJZ/w0ArT5Mf39QhAsAtEMXBcDE5FXA+hAAtouQx+XBwHdmwcG+CQSfVRZYVP8Pxbdjt8L/w8FnwQTBxUISADJo6//9RjHk/lVVEQC1qYn753XCwIv/fAcIBJtzGsM2wMDGACVQY8ADAJJ8RcIQJDGW5FT+wDs7xBZlPxUAxJdbw8S9icCIcv9cwwAsvWbDwXMHABqZGG7B/QsAj5q4wsBNwGsHAC2dm8HG220VAMGdmgbAxqzCwHVpR1nPAM66IVj/wME71gC1h43CxMCWwAd0++c0wA8AdcCWc1nk/v3C/6gNxbvMs8PEw8eEXQQMBHrNU3NiQcDYAQv9o8DAwMByBYiCp3WDWMEZAPbk1NtHO//8//86/cQT/3NoCwCKIklxRsKBEwBu6QlMHNj///5TwWfPAK3NX8fAg8GCzwCrySH/TMHAi80AbctIVf9dCQCq8ULk/sD9w//9wgCs3kHCbsMIAGv6JtrBwMFbBQDu/VJABAAx/kk1whC0IyxnZBoRFNCgxORCwGfCw8FQwMdb/mIDEHYZ+MAANLEaLXwGEK0tSOQtBRBsNEkFJh81FDWiw/3AOlPF5ZbHw8PCwQXCxOXAwYAEEEvyUzA9EAw9mj5EqsPH48nAwsDBwjrCxl4FEHw/NI7ZEQdnmz7+wf+DAczA58HBwv/CwQTBzeT+lgQQzEThpgAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:44', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('28', '15', 'TX1TUzIxAAAEPj0ECAUHCc7QAAAcP2kBAAAAhOMksj4jAJIPaQDuAIgxdgAwABIPqgBVPhAPoABRAFcPWj5hAIkPJgChAAUxQwBnAIIP7QB/PnMPYgCIAEwP0j6OABsPXwBcAIYxjwCZAJQPewCtPiMPVQCvALEPbz7GAHgPSgAbAEQyywDfACwPmwDsPi4LvQDrAG8PKT72ADgP9gA5AC0wIQABATgO+gAHPzMOcgAMAW0MaD4QASUMJADTAbwwzAAZAagP5AAmPzEPegAjAWANmD4lAaUPkwDvAR8xbABHAR0PXwBOPxQPtABfAUkPoj5hAZYPQwGig281BHwufj8GOIi+P4qB0Yo6Ae+Gd77CAYuB2XqoCzI8vJKFg396QIPxxWcQzXL28N7rRTa3AkYWxvkmi6vNxPhREgPwqhR7Mvp1PgnvkVL62cgv/NruqgSfSXYEVBKmCo4ScIVrOw4O5fIiuXP+vb8KBOODrQCkCpK+voHz/eeD6ACFv08I6f7S/HN8OLgMBoZ6QH5EggrFFYuBgZaASgDHv1IFHHsS+PcDhbyM/umPRI+bARqsTXvxe54I93piNUoEmYIm/E+IdcaTeJ9z6QxQgptArkkkWQ4g/AEGVSMtCABaANXB+lX+BgB2ABMH/k44AbEEFmTA1wBAOwj//8H+bQRCQHEJAJoFEP+fwfooARMJAEv/OmvE/kRK/8FLB8UbEDjANsAIAAbj9PoIRwgAuiYQkP/E/g0ACy/6wDhlT2cPAHsvDP6TWPv+Tg8AejYQOkXFfE3A/hcAA/jx+cFFSv9SNlaHCQQ/RQDC/kxE3QAgdQE+N/7BPphSSGIOAHNPDP6eVcT8/8BcCAABkAmQw0wQAHFVEIlKTsHAWxIAYmHWwMTAwD5tVcBbwgBeXIf/wZMSAINoB8H8wEbAwP87wMZrwQUAPmqAvwMEGnh3wQgALL/9P8BdGQAEe/H+Xvpq/sBGwMDBgv7EOgElf3SWCMVdgrfAwsHCwcLDAN6sG1jACABaUIaM/IkKAGOaDDo1xAkJAFubgMBXw8QyAVGsgMTDVMLE/I8LAMGsJATAUf5fGAACrtc4//n+/MD9wP//BP76wf7A//7BwTvEAC7gDLB4DQCcsALDQEL+aREAlLJz+sLBxP7FwARxb/wFAA3FT4XXAGL4gsaqwMNmslbHOQFl4CdYbMwAWd3H7iJCCwCJ9TX+dsFkwQUAwfxEugsALv03aQXBxK8FAPr9IEzPEEQ2McB+asAO1XYLGXPBwcLDwAfDXiERzhWpUsE6wXyyicONwMLBsP9oOhH8GXrE+ecRBB91wvz9/f2B/22+wsSlwcROtXzEOBEfJTeDwcIQIRsxcMDCHhHRJnn9Tv3+KEPAS8TN+MLDwP/DwQXAxTQRoCcgjcJB/w8umS0gwcPBVsF0NhGeSReQxJ8EFE5LHmkAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:44', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('29', '15', 'SpVTUzIxAAAD1tcECAUHCc7QAAAb12kBAAAAg3sgYtYlAO8PsAD1APnZiQA/APYP0QBU1tYPjwBhAD0PvdZqAHwPnABGAP/Z6ACEABAPcwCI1n0PtACeAMEPsdbHAAwPhQAWAPTZzQDYABwP1ADj1tYPHQDjAJYPZdbrAOEPjgAvAGfZPQDtANUPcwDw1iAP+wD3AOkPrtb8AHkPYgDMAd/ZsQAJAS8PVQAI1/0PewAUARoPfdYcAVcO1wDkATjZdwAqAdYPuAAz11APkQBRAZMOWNZWAUcOcACdAdLYqvi7+5v3Pwfg0b6DwgF+/+IIkD2i46/jQgV//ZCqUwBug4+EVIOpLzcFB5XvlRoPSq+Qg9IAQYnnCcEsj/A6CrLvfJbxzH7s/hDC/Qakt1G3B6/7uH//gDCh5wSG7qJ+CG5ZvjftOoSq9/8Dv32o9j4Fs/IqEtjZPU/kW3Z8cP9pKr+FCLsdEhc09sjkpoLM1IooCpIw3XqBgG0JGgwkxObGyIaBgLD6z6jw/e13ooUTBtBWPHkb+RNx9I2pq3+DPhGUquU0AtQ1IQ8JAIvNdMIUSGYJAGQRtHhnFwIAhxNwwcoApcN2wWRxZMGcEgMQGH1+YmfBOsHDFmwSAMcherHAcK5rZQQAJSaibQDWrTB0wAUAczP54wYA4jyDcr0OA1JBcMFmasCswBbW5UWGeMDDOMPDv8DAanIZADpalEBzwmRva8EFfm3cAZNc9P9A+P4T1opidMHBcARnYaULAJNj+j2CLxLWu2iAeH7COsLCtFYFAMJrA/0UA2xuesBvbsC7ZMO4CwCghPcv7lQX1rOJfXGEeKpYwokaAQWJmsQFwIgXw8D/wnjBBcJmEjPCBwC6i8Y4O8IBs496wHxBwWoURcBzCAC5WwP8Kf/ANxQBD3KewRaKwsJlw8AHwMC0CwC2xgz/BSvC/QcAidL0/zstCdbO1xMr/f+CCgMY3R7AMEHB2QEUCaqQd3uTgwfAwhZ6ZMAbARElon8Ww4b/lsHCBHBpg8ARAGfm4P3+/Rf9M0c0BQDe6FWKDQCK7GfCqVtnzQAR7KDAbwXCixaJwnxlwVg6DQNk8JDExsGMknYI1rvyE/w2/u7/Cda29yD/Iz0HBQN9+IzHlAUAOPoqKTYJELEBHDv8/hb+QxQQZAUfwP7+/P3///3+Bf/8KfxZCRCUCz/5+Sr+/mUIELPIJ//9WwcQnR9gAP9F0hGeIUZBBtXYJuzB/XoFEHPrU8EoxQMQejRMOg0TolbXwl799TP9/JQfEPBfyXqwhMJYicLAmcL+mMD91gAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:44:44', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('30', '16', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:44', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('31', '16', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:45', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('32', '16', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:45', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('33', '17', 'TMNTUzIxAAAFgIMECAUHCc7QAAAdgWkBAAAAha04wYAuABcPoQDyAI6PTgA8AHsPpwA4gAUPGAA+ALYPu4BgAJEPgACuAIaPGgBvAGgOXQB4gBYPEwCDAKgORoCVAGcPWwBaAG2PyQChAJ4O7gChgFoPGQClAKEPnYC2AJIPBgF9ADqNJQC8AN0PlgC4gFoPfgC9ALQPA4HPAMANYAAQAEqPkwDVAI4PQgDTgGgPgQDlAIMPzoDrADcOcQA1ADuP8ADwALcOQQD3gBwPuwD3AIYPY4ADAcsPSQDGAUWPNgAIAUUPFwANgT8O2wALAXIOmIAMAacPggDKASePaAAQATQPKAAWgc0OWQAcAfMP3oAgAb0ODgHgAUiO6gAmAVUOFgAigVMObAAoAe4PLYAvATsP8gD1AdSN2wAxAc0N9QA3gcIP0ABOAREP24BRAeANhwCUAaSPMQBUASYP+wBdgbEOYABbAWwPcYBaAaUP4o1qicaD73Uf/U8LzHmCiib7AYmngr57SowO+lMLV3xyfZ6JG2yngtf7rP7SdFoGBpRTiG6H4IZPCToWLQNED0+PqANmDDf4lg16C54Ppflxgsj3HIlIitb5ZSP/BEOpgIKTi9OjtIZU+qaEUQ/y9OPvRIsE4zbkgYLfCjYL3PdeEEYJtSdQyr/8FN9pJAz7dasI3KEJrfVH+H8BSCEp+Zl14wELbVOCGNvp4ey3JI1YB6ad7ZhIjTAPtP1Bd2oM9AVXko8OUIp1gxj/Xfrc7Qn+WYe7jcfl3PJdfyEHwGi0gYgK+XlFFdwSNIVgDh1vKG/A8NTop3yy+cqCkYe8GPCJFJdUh+j+6HYQ+jYIWHq7FhN6WX8tBkkXmX9wkJx5UIr+nTcWtHR7CHKGJQybFH+STP1W+ot4oHgb5RPuXYzWCUfu3IVf+c4KXf0MBZL9/p93PNrB2iBNgQO7IbgFAOsBBkA8BwCTAQyQQQ6AbQIJwP9KnP8CgBAJBsJDwMIAdY8IwP//SRLFGROAU/7B/1T+BcD62g0AEiMAZZZK+IQByC4Q/v7JAAKz9f3BS21ExgDAsx/CBABLOLhsC4BnOgA4Pv86wUSHAaU6E0RbwwBOv3bAaggAZoUJW0E4DwABXAAB/8VAwf1GRf4GxcJgmsHAKQkAfKKGckDCcxQACmk1/21+wf/+wMBU8zkKgIVsCUE4wDrB+b4TAB9u6/4FO0FA/jb+NAsAuW6GQcDBwcHCZcgAlvuIdcDCwMG1/wCAmnwP/j4FxZqEl0UHAD+TcAfAwX7CFABHk+30/vqxX8D/QU4ExUGd55ENAFeecAZvxEBxbxsAX54y/fqnwP/+/cH+Bf76ff/8+/v+/jv9xH0MAFqjaYS7an2EAeyjMMD9wQD4I0J2BQDMpedBE4Di3LCEdP8GhIxBwcHBXwYA4qZf6sMTAJaylwfCovrAwHDBwIDDAJE4ksLCpwYAXronuP8UACi73Dr/+7P/KT7/Q/7IAEs9X8F3wcBkBsAVgHu9esTDjAV+xRPGBgAhv1auww+AU8FaeHt+wABhUeP7Gg4AjhCTwEfCw8LC/8IFwoCOAVzXV5JWBnjCQgQAgtd3scMAZFlRwoYFAJYcJyuEAX3nScPEwwB3a9/69/3+BMWE6JMjEABt80Ne/8dBxcHHw8PBUR8FAvQ0w8LFyQ3Cx0LAwsHDwcQAw8RCwcLBe8DCB8HGgwH79kb9CMW4/8D///j5/P3PALt6O/3A/fn6Ox4CkEsFQ3iNA9X8DtPAAxA2DEYEDRXoFzDDX8LDBsWlhBAPF1ZXBtVWJb2TwAkQXCDygMRH/cUEEG0r9YcBkOgsV8D/A9UnNLrAAxAxNjoGBRSDPlf7egMQ2UkuQgIQi1UQwQAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:45', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('34', '17', 'Tb1TUzIxAAAE/v8ECAUHCc7QAAAc/2kBAAAAhCM2gv4cAIkOtQCGAJXxPQBcAG0OiwBw/mYOPwB/ACMOSv6BAF0OxQBVADDxYgCUAFYPrwCT/lMP4ACjAAUNdv6xADMOhgByAKjw6gC3AMINpgC8/jgPxADDAPsPk/7OAL4P0gAXALnxrQDUAEkPqwDT/i0PTADgAPoOiP7hALIOZQAkACrwPgDmAMQOHQDj/sgMngDpAAIOWP7qAC8O4AApAEH18ADwALwMiAD+/r8PlwD7AAkOvv76AFMO0wA4AFbyWwACAS4PWgAM/4AOAQEPAZAN6f4VAcoLmADYAdvyyAAjAdgMywEg/0gOsgAlAaIMbP4rAaoPtwDpAVn3ogAvAekKrQA3/54P3AA7ARgN8P5AAWwN0QCAAd71WgBJAZEPHQBJ/+0NdQBOAU0Plv5OAYAOuACXAe70jwBZAfcODwBe/+4NF/tfH5Yni/UqXx/TOgiXiUbsWQ+BgcL8WIiFf1t55PuleIALYoqO+W92PAYM+17awf5hI3oZKAJech+HufxdicTjZYf881Z1aQbbBTZ4NAh6DBLpoIGtCTd+GQ3Ndjz7YX/49vJ4wY5UhhnxtQO1/2J8dHxd70QS4e2l9cTrNPmxA9XyrYQgCsFpzYZtDgF6zP1J65CCMAPp8XRx1IBEiJX1TXiQ9zKS2JClkWn+GEyB+2QfMQKe1AOMDfP4irEC6XDQAib/qLRNpu4wZI1R8NuZrXVWebsRyQdwYq17FX3gcsoC4PbKgZbehQ6FfxSSGA4qGc8mzAQQhZ11gYVUjUXzofY5ExIYwATpD6xyoZKGgFeVzA2I/PXuxfc8C8YXORddEfX9RPsNbfgLUIuB+xOZrQOEE5IAWHvcc4LxdAUlBWEWvFVd4wyjDCA/AcdRGOsLAFkQA8I7L/rDBABOHf09wgCO4A3/Pv4LAJUo/sb+//81CwDwPPQBR/7+wTEQxStODsE4OP/9wjj+PO8BL1LwwP8FMvk+Kv7/OAMA/F1pPxUAImLp/bYxPwDB//3/wv46DwTWcelTLjUxOyAErHDtLP7+/jsyRwD+//3A+/k4/PsB//7A//3/ygBVg+b+/f38LAU+PvMBSYFiwsBMdsV+CAA8gl6AQ/4R/kyEXHXBwazAhD3+logUAB5O1/oBPyr+M/7AOcBh+wHJkjBBBcXEl8lZBgBgllpMwgD+bJYQGwQAOKRHPP8JAGWaV03CxAHAGwAcntf4/jgB/f/+/v7++//7uf8wBgD2oIY4xvsBeKctwTLCAG5QQpd8BQBwdjqN+gF1sy1RBcX5srhmCABjuz0HwIY9BQDqu0n+ABAEPMZASjT9/z7+IAACAMjHOv/UAJMywXfCpsPCU3sH/wHQUMYEADjwSD/8CQBu2isFwsA6y8TBEgBDJ8PEvv78/fn7/Tr9xDw6BgBl5DBHwyb+neXA/ovBBsHHOsXEwoODwAfAxD3BiZmIBADe6ER9BgBA6kDDBZYI/l3uNIPEwgDCwDzFBQDc7kkH+/v7EA0MQPrDOAUEsP83wcPBBNXSBq2ABBDIA1C/AxSnBDTABxEC11AwkgIQ2RRWwMEQ7+ZROgUQ4xqZhAHuLhwrwnwE1QYkz2wDECcoIAUHFE0tZ/0q/QTVFDTTqgMRAj9WPwQUCkRtbwkQJosJxwD/wsNHBBDjWASsAhBnYYDBAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:45', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('35', '17', 'TctTUzIxAAAEiIwECAUHCc7QAAAciWkBAAAAhLUnX4gaAGwPUgDuAPSHxgArAAsPvQA3iPwPbQBOALEPT4hQAPQPbwClAPqHLgCCAGEPaQCNiBQPRQCLAKQOMIidAOIOnQBbAIKHZQCqAP4P0QC3iN8PswC/ANkPZYjLAPkPgwAdABmHrQDaACUPEQDiiCkPWgDpACkPQIjrAN0PZAA1AAWHKwDxAFIPWAD+iDcPkgAEAf8P9YgEAawO7QDJAa6GbgAVAUwOrwAniU0O8AAkAXYOhYgkAUUOTgDjAU+H6wApAaoOawAwiUAPRwA+AQkOKohDAdEPpgCCAbqGmgBKAUIO/gBTid4OaX0yco76YQ3b/pr28xMim8dz1Isikg4OjHnZ84uBioFWBlv6OQUXDk8AMQKcg3MOxJOn+gcbdAKFCkNngYJZg8MG0fsnbnOLxgTjnwuVi/57fot/dPsKEor10gxO/F/d8q3LHmb6JQtr8dqC5wd6f4KDae8Rml/0ofIZj2vcHJ8LJD4KJXfuaCvbrPweEfIb7ASefbfyKAYW+NsFqIoQ+h0DhQCUCqaJBAA5CrED9QqNgpMIwfrZ+tcNhQowAyIBuPpYA5qJkIWdA8/8RIIpdgjv2fapBleLPPeUfWN5NIfYA+J3TBJ1F3OVAyPQvEsgQAECkee8B4hOAXTCCgBdCnn5TGYEAFMLsW0MiLITgMDAfgYEBN8da8H/CwAaJIJ3wcT+gW8QxcItC8FpwlJ2Sc0ASqZowMFRwgPFyiuY/gkAezEAlv/60Q8AT0/x/ztK+7b+PAoAaE+xacRKWBUA81qaRmJwA8U+fgwAc5n3L85H/gYAa2GxfsWEAXNj/f//iUA4ngH3dZrBe0FpwLLAwVrBBQDugmBJYQ8ASYfrhCtP0v8PAKeHjAXBwAnDwf/AwlnCAKsPEkpGBgAuTWDESHYFAEGKZKgHBCaMF8DA/1bQAPERlmLAd3GAucFemQGYnYyJwwf/xkv/wsD/bxHFPqBqOv7//v/+icD71RAAQqjnPDjANc/BwMD+DQCiqvN2/8D9/1P/gQYEp7FgeP8HAPa0XupOBwC2wByPPRWIYsj0/Sr/9zjEd/78CwCG2NL+L8tPCgCw3CcE/sS/KxEA0eKgoYjGScDFb28UAIbm0738IT04N8E8BwTU5+f9/Pv+OAQEUOYiNRkA9S2nxkjAwMDCgYABwftKf//BbBMAjenavCL8ODhX/sEA0GImVQgAQu6WwlW0DQBo7vT5Pvz6SP7A//7ABcUm9t95BgAr9VAFwGuOAZz+N8BUwACldjXA/8EKEKgAC3/8P8AnCBC0CDN3/cL9PAgQVwowp//AwQURDNxTxXTBGxDtILEBP3NIicHDw8P/BsHESsH/wcDABtVmIsTBOwYQbCeD/zePEfAoSf79BPzFjRGAKkD/M8EQqL9CXAQQsTf4UR2YLz3Qa/84OyEld0rBOPwVEPdC3ktSwP3//fs+/Pp3N//C/RUQ5lD+TsLBZP4f+zn+U3f+/gYQP1IZwce0BhBrEFZ0/QAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:46', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('36', '18', 'TD1TUzIxAAAFfoEECAUHCc7QAAAdf2kBAAAAhaM6Vn4dAIgPvQD/AJtxdwA9AI8PtQBOfokPRQBoALIPaH5sAIcP0gCzACZxEwCKAOUP9wCKflYPtwCdAOoPUX6wAB4PhQByAKJwJgC6AEEPSwC5fjgN2gDCAOgPr37GAEgOeAAJAKJyXQDNACAOOgDIfsYOowDQAAANl37QALgMnQAWAENzVwDaACIOMwDafr0OdADkAFoMjH7qAHUNHgApADFxLgDuADEPUgD0fsUNewD0ACMMpn73AFwPGAA9ADBxkQAFAXkNNwAUf1QNggAUASwPUX4ZARcPDAHZAcNw1gAdAc0PwAEaf0gN6QAgARINNn4iASIPigDmAXhwSwAnAR0PKwAif2MNdgAoAT0OR34uAaQPMgD2ASBx2QA4Ad8OuwA5f40P1ABKATAO5X5MAX0ONgCKAaxx6ABRAfkOnwBXf5wPcQBUATkPu35VAfcPPQCbAZtxVABfAZoP3vgmfEITF39jE54bRHaSCDsIyfj7AWZvE/JeI/PxewGHbML4t/QTh177p+7OpYdzsnQ743Nln+srDHcFXAOngH977HMxAszzD5E6JIsN3JdEgajpY2p2ctPkUYece6iTIQqxAiTztH5gexUHDQ2DngYJKYKYfzkMFXfAioCBKILAk9gBNHpvhFJ9mfWjkg4XELjxLqn62LBw7pjaoANRBNL10ILA/j4TzGuIUAwzhHBJSLVvcZuMmLTrIAM9BrIVYO/Ute0egYCw9kBwxGx1ce3yBP3ACd/1KH5Nc+tkvIfEbvHzKIYU9qyU0XaBhDENZPx8/2QGsZR5hZDzwQU8Ce3+xI4gDhRkgH25bmESeYtQ/niFHQRRgIwL7JPUZmEXpZaMk8xtlXtVGZn+0YeJ9bSiBQyRh2MFHQEUBjIcNQQsolN+CGJZc/ZkvAaHA2sakfTlBhMAsIJo/tqgmXD1ypuLrgIgPQECZSLMdAGEARP//Qb+Mr0PAFoDCf46RFyDw/7AEABBwQn6OP7AWMBVwMIAf3oSP1UGAJzAF0W/EwA8CglAgEr6vPzBWwYABtP6x4JABgAFHAMG/kdvAVcdEP5YpcH6RmUZAAUkDAMy+oH9wf5rVf46wF2BwQkABTP9BzXFRBYABTz9aAX+SYH/U8D+QsCICAVsQvo9wTEJxWxI+MFcjQ0AdIgT+jr+N//A/xzFA2aa//7//cH/Ov/6gME4/sFG/6H+IXkBQWV9kpPGAEwWAsAFAEFrv5IlfgNw3v3//jv+UoA8/////MKKR/qC/in/BADTvSBPXAEDf9co+zrAxYAzNf3B/0fz/PiB/v79+zQWxRaMnP4oNfz//zvA+77B/sD+wP7MACrsW8LBhMH+0gC93iz/U08q/jtL+oDA+/3/BQCSriWAgxIAhLOtBpvBu57AwmnBwsAAUMsqwYQMAChzyfuB+iH//CwKxSO7PcCBwcFwBMUpu0NYCQA/wTS3wMHwBADexCfAOP4UftjGMMH9wjn9+4NSNUAMAHUNqcW9y8vGfcHH3wChs7zDasR9dVSQxr5pnR0Anc9ywcS/wMLDwsLBV8TEv8N7wMDE/gdwEH6A1LSMxMYCxsCBwMHD/8fCB8bBvR8Ardk9/zr9+YD6wPz+//3q/yyC/fn9/f7+8AcFKdwnwsLDxg0RBbXgOjT/KTDpKQB+H+80agUA6PEy7ggAM/EwwELEeH0Bn/lX/QTFpf8uIAcAFfs6Bv5zewEb+zRrBNQCATc9BBDzLVY+wAZuagcMwwUQYhNbgCcHEAoXMK+LAG8EJkz9/P/AEDZZKMNaBBBO7B6KehE2NiJsBNUxMleFChDUO2kF/sRLLQMQ31FtOQgVxFd0VDgAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:46', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('37', '18', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:46', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('38', '18', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:46', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('39', '19', 'TbFTUzIxAAAE8vEECAUHCc7QAAAc82kBAAAAhB8rhPIdAIwPqwDtAJ79xAAzABIPWQA+8pIPkABLAEgPWvJNAH4PfQCvAIP9XABxAAoPvQB48okONgCMADEPdfKNAIIOygBLAJD9wQCUABQPvQCb8g4NOACiADIPzPKjAJkPTgBgAHb9kQCpAI0OWwCy8hwP0wC6ANIP+vLOAJUPegAXABH95QDaABgPvgDk8oUPKgDrAJgP0PLzACMPpwA/AJj9MgASAVYPHgAX8ysPcAAWAa8PyvIgATMPjADiAYb9pQAqAaQPOAAu86sPZwAvAZMPevIwARUPwwD5AUD88gBBAbQPqABO8wUPkABKAU8OofJKAZcOrgCVAbr8nABZAYEO0/oGBSoBRQr5i4cPBYnrg9+HSQkM+pb4zP1KCc73g3UmCQLxRQFyfI8FgXVvhJ6JSQgAAY1xyP6uhXfsFPw1h6d5WIMx/eN/XHGYfJr/JY1EhzZ7RAaRhn93VISp9xSHlX6ygc9nFYOEg5IPAZE/E8/6GIOWARoHmH97clJ2qZBT+IaIXXXA9xYBuXDW6d+YWwrva/vv8A+SC9aI33gr+L4Z5ghCAy/vtfnLCXZwZBdGVC7o6AmZAceTZWwF4lMYZdQfDPJhKfq3gluKLEL572FXlJT1MMcQnYsNE2+tmfxScGuANbOT8HqPGAn59QLMOdtF6mwNWCsxPWB/0R7sxaX5JBLOgmLzIUYBAsomHAYEdAMaV8AOAJsIFDD8QsH+dGDBAKnmG3kFAEULzFUA8oEMEDYQAPsTDTJZO8FaZArFIhgPQVM9EgAi4ADEzMFGV1lvE8UkKvJE/lU//3EFWQHyxzcWwcH7zwAeyPtBwcD+WtEAFbb8wMH+RsA6wvmxZkoGAFpKRnjE/QFiTQZAwDpSZjP+BwBaT30FwcUN/BUAE2L9BF03Df5HZGn/CcV5bXuQ/8BgDwDSbP6BwPw7wf7AnAkEknMGPkz/CcV1eHvBxH5BDwDKhvCWwf///MH+OsBH8QFYhnfBCsVggvL8XsBREwD/iPTcw/3//0bDlP+C9AFYjHdv/8YANnxxwAcAw5PJ/lIyCQDCmBp0BWER8j2h9P//QTvAOw1lwGX/BgCPo3CGwAUAUqP67AYEuKh0fsEOAFGsFw1KwVti/RfFDbcCbED+wP3A/f9cNv9HDgCguNlKWar++/wEANd8E1X3AdW+HsKOyAB6JhH+/zU9VMEA7CkbWRMABd0bNvsy/v4pwP3+BEQP8nbeg8GShwXBHfIN4OJEQSk6//ky/sH+WGj73gALFuptMCso/4H/QcooBQAo7mKoBgQq8iBK/QUAEfYjrw4Ao/eghVvCxmJLDACC+IxlwpQzfBsAA/7a8/9C2MH9OD7/wQT9+7QbEAIK3sD9wSoN/v4pPv7BOcP6ygUQMRVXwAcIFJ4XcMOWiQTV3BLVJAoQiSOQBsbFbHcGEM4kLer+C+KgJqnBp5UHwMYziAMQkCogOgUUkS9ixJ0DEDsuOQ8ZEBEv1sDy/vsM//7+KTAxOiAA4oIxEz8FEKMzXjaCHBAVONMFLz8MIjP//cAkP/75MPj5BBDDP/gfFOKoQ7TEwI0HxcYxwMLBwsED1WxCAvYFEHFKDARWDeKgTZP/wMMPxMEyEhCuTcPCRsTFNsDBxJbCwF0EFJ1RHMbCAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:46', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('40', '19', 'TRlTUzIxAAAEWloECAUHCc7QAAAcW2kBAAAAhIcleFoZAI0PYgDaAAtVXAAuAIYPRgA2Wo4PdAA/ANcPblpGAIQPOABHAHVVUQC4AGwOpAC7WioOnQDJAPAPq1rOADAPLQAfAEdVEADoAEAPkQD9WsANbQD9AJ0PxFoBAbQPfADIAVJVzQANAcsOUgAXW08PMgAYAdIPt1ofAcAPzADlAVxUAQElAU8O+wAoW6IP8wAuAYgNIVowAakPuQDwAdFULgBEAQEONwBBW2IMpABHAR8OU1pJAXkO0wCNAeRUNwBNAYkOngBUW+oO5QBQASENQlpXAfYOhQCeAfRUaIMpA1oKBIht3Z/9yXgpB9B3USeoB1YM1JOUhQ3V4XepA+L0hgc/Ee7vJUF3KAL/4ZvC66NvWQUWD3PZ3P2HfYNnawQbglqFLvxrK4qDwTDXbyOsSQZ0mjtW7Oke9P5dCAIxUb+XWRn1ddsMuaFDkCKflXZ4c6pB9O7FalJ0LI2pwIiHmQSC7U5tjdRU/jWnHQCw7oIzBKnRCq2XpBYVpYh/pHstWZBjhdrgGpqEiQfX7XJFNZJthoLwdP2aJjsMnIsNlWfgQCwI9hplgYDoBWrDIG2BDm1+vxkaXSJ5NBIwt8ggOFsDeyAyBwCoABelUsEFAH8B1kYJWiIH9zj+O6HBDFoXFu3+M1bLABNE8TU/MFIIxWUkVv4+cwgAWu+JjDMKAAEs+sKBJ2lSAVkwhozABP8MWmAwCf/C/J8JBCo/j5CE/wbFeDpWQcAHAHZD1sBAmgkAZkSJhLIIBDRJFsFEQQnFZk3awf/Ch8EPxRJaqsH//cDA/jr+xB7+EAASY/eSODEeRxAABG/0njNPm/1dEgABdMXE+xwwT//APRLFCHqq/k87wP/+h/7FpwQAM4N0wrYTBFuM5/7AMDv9PsRkCABbjonEBYmeXQFjjw/+//QVBFmS68A7/y84/zkQSgMQxBBMBRIEO5UT//7+O5HAOKdDCQBalYZXiMZIAVmhE/8qhUD5mv/+//8MAJOlgpnCwcOAwf4GFgRZqN7+Pv7+9P/6ZMD7e/4LAIm4cJ7DwsLDwcFNKQQ+wSku///8Oir/oP/8wP///Tr++qT6/f3/+/4F/fun/8D//P/9OAcE+8o0SkQEAJTNZPQMAJzNOsGJOPqmUAQAsNMwkxsEdt9GwsLBxQPHlsXDxMnDqcEGxM2cwhwAAeLMhTH4mv78/v3A/QX9xaX+/v/+//86/B5aEuTM//7/OCP/pfz+/sD+/zr++6T///s9BgDL7EcjwAYAFOxABZYKWmTsvcPEyQPGx5nCy8nCxgPFVNNt/AkRDwFJO8QwpfoHEGwDVzom+FcRexBTMPw6Kvh9BRDcEEk4wBDnSkH8wfwFECoWTaQkCRCWF0k7/vua//rAAxAF3jTFWRGzIkn9A9XNIBb9AxDwMlM4BhS7Un3/YQMQfGACmAUQsWGAWcEQSDj8RAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:47', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('41', '19', 'TbdTUzIxAAAE9PYECAUHCc7QAAAc9WkBAAAAhBkmf/QtAO8PrAD3APj7UwBDAOcPRwBW9PcP5ABdAE8PwvR7AA4PYQC+AGb7gACAAGoPoACP9O0PdQCWACkPF/ShAOQPWgBkAF77qADCAAsO9ADH9FgPUQDGABgPofTHAHoOlAAMAP36RwDcAFMPZQDZ9BEOvgDvANkPU/TwANgPWAAwAEn7dQADAeAP4QAN9UsPfgARASwPjfQWAf8O4QDkAS770QAjATEPlgAw9cMOMAA2AfkPW/Q4AdwPSwD6AQn7lQBBAV4MGwBM9ToPgQBLASYMNfRQAbwOTgCXAaj7bgBaAfIOD/r7/Jr0CwzrCWZ3gwym8dOHRgoKjB/lW3+Tk3+Xk4f3UyYXVXgm+IN5aXaLgJ4ITYxoAe1iLAFphgWXBoybe7YL+XIZc7d+0GboFsX/LnyLCMuA+I4qhG6GLXKFdFBugYB98nTqBY5Qf1YIHRr8mjnz/w0PpBcRJY1Jc8P56HXa/I9szQzA4zaUbxDu/iOCre89CDOc0Rsl17uj0fia8joTSfyD+gMW0OvctALshINRM0J98R8dJf8wTUytYawxlYnbY4pvChI/Ds8riIUB8jIKQIPB56+wjaFV82vQdeYbST4Zr68W7ATUSgEDCSlWzwBo9WZrWMDCCsVzA5BkwMFKDwBZBGk0ecDAZFXCwwBT82htwA0AgMxnxQvAUsBKwgjF1wiF/HSIAwBAyWfF/AGkD3rCh5kIBCgXd07/dxXF3iSJ/sLCVYV4p0rH8QGwLfpBBMV3K53BwRAAqDKyb8QLflxFBQCw8f37C/4UAOpFjARpxXTBZsH/a//CAEqzY1JlCQCFi/D6yf4/CwB+VLV4fwtSCQCGVPcF/0TKFADhXInAsGrFNX/AWMDBwdMA65GHwFl+wcEEeMSQ/nYZAP9yQ//EnsNzw8F/WgX/xTTA/gUAwXlMwofxAcl5Bj4LxV95kGpdaw0A+riPawvAh8DEwQTFyHrkaQQAf4RnoQYElY5iwf93C8V3lR01O8FaDQC+lu8L//79wEJLzgB1bWbE/sLAUqoLBKGiXsHB/8AHUcT4AVulXMHAoG165QAPvJp4wARnljTDcAsArcPDK/s0R/4GACzFmWvF5gAOxppwwTrBxTXFwMKEUwnFMcOjwcBiqAsAbMcLNSrAwDsLAFXJdTXFbG/BIgHCypM1wcBwwZLBBMF9vcDAg8LIxQXExoMaAQ7coIsFwWg1wMNvwMRWvMDGNg0ApN0M/QcrU74KAELeVnRCwKLzAUfgU8DCOokV9Q3knoT/b0yJieYBW+3X/y79Klc0OwkAwvAckFT78gFT9FDAiMMAUw1RwcGgCgB9/iQ0/v9E//0QxXP7Iv/9/fk9/wVgTv4ReAHe/v48M0j3EXEHUMAE1SAJuG4FECYNSawNFHQM5P75/v04wPsJwTsKEI0WMfv5CCk1BhCtHuIq+/kRzB+kZ8QAxJLMBBCgIif95gQUESIkQgYQ4eArxMAWERUlp8AHZMSDwMV6xMDDBGcM5Jsmd8f//zshAuTVJi1U/gXVzyPE/jUDEAor9cIS5F8txj7//jj++Qv9QcFMwP0HBBRqLDAhDBAz/DrEMMnDRcBPENVjPhDCwP7/+/o6/MQI/v/A/Q4Qi0IHNsTDwP38+zwn+/ARk0Ze+8EAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:47', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('42', '20', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:47', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('43', '20', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:48', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('44', '20', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:48', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('45', '21', 'TQlTUzIxAAAESksECAUHCc7QAAAcS2kBAAAAhPchyUoaAIsPPQDnAGlF2QAtABQPHwBNSo8PVABnAKEPgUpzAG0PrgCxAHlFEwCKAFoPxAGTSpcPmgChAK8PRkqkAFQPdwBtAFxFzwCpAIkPuACpSugPywCyAEUPikqyAFsPjgABAEpFwwDMAF8OzwHXSqQPYgD/AA8Pe0oIATwOuQDVASlFkwASAT0OaAASSzEP8AAYAdgPl0ofAbsOYgDjAT1F5QA0AR8OowA4S7gO7gA9AVgOtEpAAbAP4gCDAR5EpQBaAaMP5HkvtkYTSws3A6IXEcOoi8ObsX9uBFNZJvlrE9P70/KbQ0IFhhJXFCLzO0AW+zMHXw6eGyO5cBKKgJIV9v3HtDJvRHI9/ufxQEBHLX8hNJJgkbnVzfpNI48ZoAyxP/zy9fTZZx/59anz2asRlxO2J2cBx5D6kseNnAFhydN0wP/S8gN2hM3UAUkPPAcAd929twCmgbMERYO9xWiDgYIKcu/+hM2kBTIEgYJ2Ap80gYNJhKaB4A+KyXf3TXwt/fL8tb2S69OLjTPVAARqQgECmyPNxgBFSnzDBwB/AcP/QbUHAKYBDEo6AwSLAAn+CgCAwoDEiP+AwMAIALgZBw//wMEFANHYEFNaAckeiVrAVf5yiGwJAHUfgEF/xEwBOSRwd8XBANhmDkEGANkx38L7IxIA2EWTeAdiiIpycBIA1ktJcm0wdcDBXAUAG0wUtGoXAQ5algVbxc7A/4TC/4cEWwNKUWlkaWQExRygHG0WARBzmr7CxDnDZ37CZ8DJAIU+ccLAiWtowQAhskhcEwCqdUXAwIvAwYBiwHShAxRtQTrCGQEPuJp/PMPAacGFwrvCXEkBFI5WwBbEFZXodnBqe53CBXQBSh6wU2gVADqTnorDcWKIicGcwRxK+5iawm7AAP3HxsGLwcB0asYQMQ42wAQAnqA/KQhLF6GpicB3BW8PSopjesDEewdqAUooslZ7BADJ8EgmCACYpWfAU3AJSnyo3vwpMTr/SEkBP6pWwQbVGQADa8QUAMqrTMLGicRuwWl4cAEMBD6tXMJxwH6iBBQfPTePCADSaRP6tMNDCwB6sJ/C+8lxwAMQXzz0wBdKxLKGw8OjqsH7w8DBwcEPAE60WM7AwMCR/sFAGgVfwquAe5L/V8L7iWjAcMAGEPgoOT7BBgCNx1C9wgtKvM1pxsKdBcGFi4cNAMfUaQPFxovAwcHAwX/NAMudIVjAcB8B0Nq0i8PAwsDCwQSLxonD/8N4wMKsWWlAAcThRsPDuVwDSsriQMLFW8YQ92MdwAgA0eb1lHROARD9Rl8axBX47XfBwP+sxQbDxovAwMHBwcEHwMWIFhEUCZ5XBcL7j8PFxMZ5/wTBbYsJEHwNQ8K1lgNagA06wWnCwhC/XzHCa8EIEGsaNIrDasIEEKDeMcSLBRDzHB5vAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:48', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('46', '21', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:48', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('47', '21', 'TEtTUzIxAAAFCAsECAUHCc7QAAAdCWkBAAAAhDUylwgOAO0PbQDdAGUHcwAiAOMP3wArCNgP2gA1AMkPNghJANwP9wCPAIkHhQBVAGYPqwBTCOkPsQBdADsPTghyAN8P8ACxABYHJgB2AF0PaQByCP4P6gB/AE4PkgiMAPkPUABRAOUHOgCrAFsPAwDCCBMPWQDJABsPjQjNAGkMcgALAOIFkwDTAGcMuQDRCOgMhADdAC0MHgjiAFIPxQAhAB8HpQDlAAUOjADvCE4P+gD1AO8P2wj9ACwPiQA6AOIHjQAFAfsPfQAACS8PmwAHAbcP1QgKATUP9wDOAaMH7AAUATkPIgAjCbIP3wAwAfgOiAgwAeYMawD8AdAElwA5AVkMawA6CVMMWABBAQIMzQhCAUMM7wCMAbgGigBLAdgNewBKCdYLvgBZAT4M+wULjt+LTH/fdmZzTYeK+eP9D/3md87/joHXEm77Qw3ygNP8joH7ezoKmIIjaDtpXIb7A14FyQMLmB4G2wgfhYb7wIvziyYDI4HvgD99jAPnAB6ZyHvDArqPb/Re/juXAoSfAD6NB3xGf9sCdPvXB+atrfr2kXf1NQ+AgGGAsANQgrAKtQOBgJmC6Qe9C4CAPAOBgKSAMgwG+x93KQsjFIP5HKIGHHrsw3G+9BppnYbNA2/xsPF8900HyO5odVMJNRaNiGL6mPrUtyMVlXihjchHLAHUClr8PG9kfnR3KZeVifEP7XuYdacMII9ugG/8vYfcExIRHRFn8cf1xXd9gTEKlH688jQTqfXD8WrinGSQSsXzboC/DU92gIFt9z4FLd+AnEiGRCdZuveo5wgFECWQASD7AQeDI/AMAGUArsGCyFcmAwCJAKzCAQidAGldBAAFAH+HBgBNAWTDO2gNCHQBa8LAagQUBbUIdMFSwnChwMVVUgMAMQ5eBwQFKhJcfxgA6tKGcsrB/sPCwWYFwG1jWAYAaBhkBGIICGwcV/1twAf+XcoRAP8qkJC7wIbKZAQA3jUMjw0EAzyaw4t3gToKBftHk8LBw3QHwgMILkxaVcAPxfNJjv6QwsGEUQQOBXdUbX7AwkoFcxUIhVlg//+EBcD4g8BaCAC2XDg++8r9HAEPYZAEwcXIk2ldwcBqB1rH928EAPV1E/UFBbh3/f8xBADheVltHwEWfZfBBv93ysPBw8BiZEHAZ2rCCgCcjPTu/sX3Ph4BFpOXBcB5ioHA/8JZwAfAZ8h5wR4BFqNlgHtyxP/AwH5wp8FsiQkAOK1awAc+xhkAFbqeeIAFwsXJxcB8CADKAQz79/7/SQ8AwgOGx8vBwpDBdpDWARPOncDBwIhxB8LE98LAcQ8AdQ/k+8j+/TguVwnFyc4bQML+LxoB0dOnyv6DwoSLw66LanoJAKrjA/3iwPgBAcrlGkswOQMFEelTwAkARChTx251CABK7kyceAwYQ1YGxP+ktRgEHPCrw2qQibzBxcxeZwQA+/fiTQsIivze/Pz+Pv7E9fzAwf7/CcWo/QH8/fv//1/AEN1Lwf+SChCfw/388vwr+tcGEHkHLPX9wvsFEInNWsRfEhD2CKvCB//AyMDH/8OHwozAAxibC2mUwAbV8RI/Pf8KEJgYNfjw9P7+wRYEEC4YOGECEKgdcMTBEKwsV3MWEQYjcsLFyYiIw8PD/gbDWmkEEJ0qXv+qBBQZOFfA/w4Q82ADylJm/sL+XQAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:44:48', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('48', '22', 'SjlTUzIxAAADenkECAUHCc7QAAAbe2kBAAAAg6cZwHpFAJMPWwCcAHV1ZgBqAP8PfQB6eooPjgCMAL4PtnqVAIkPSABcAGd10QCfABkPYACten8PkwC7AMIPonrAAIMP8wAHAJ915gDaAJcPgADjelQPXwDgAJYPv3r1AIAPegDBAVd0uQAEAWsPtgARe9MOrgASAYMPtnoWASQPtADuATZ1eAAwAUQPTwBYe58OvgBdAegONHA2D0sbMXmSFyyFKImjhdue/AchDWYQDvYu/jLwvnkIc04M92Yu81xp+JMSk9uciP1qANv0iYRhivKMjgbEBdP8OQdChEhlvP9XGU8v6AdEeU6HrQNWA5qCTm5TPEpdgYSrE9F54OxxJF1JRIDp6mKCVCYV3LQT95gkuaHxDRHE8xG093T+82+oUlzkC8JrD/nXkcoL5oVxASA3AQLpHatzAaoSCf7+BEzDdwGFFgD//vtR/CwEAM8YE/6YDgMMHQD+wDDABcDDuk8HAHUkBgX/Q3IBZy4A/kejEAMvO/1DL1TAnsAEesZGFlPAwtQASD38SkBVVUrXAEco/P/BwP1XBcD9EUUOAHxkA/3/YYREwAQAY2qygwV6am0AwEAUxTV3mPz/SzL//wVgUIUIAImLeoQHwVZzAbGPjMF6QRUDVZHiM//+wPvB/ITBwP/+wf86DQPLl4zCi8LBu3wHekWXaZoVAOid54X+QDVMwEY6SwB6Rp1gwAcAFp0QT10EANKjGooJA9urg8KSwGjJAKrUDUs+W/0NxaGzB4nCasNaB8WXtHr//0AFAI95dJV8AaXBBi/+1gDsuJ1qi8LBwgTBwRB1DQCdxH1lwcCFwYT/AwD2AB78fAHr3iDAwPAIAyDjV3DBcgXFR+ctwHkIAGDklsFlFhYAKvDeW4/+/IT/KzhHwMHNALmKjcTFwokLxbj1/MTEw8DDwQduC3rB9hf/NcAFCBPOAnTFxMLCRAYTwhMa/FgHEGkVRbhvwBkRERlsacO4wXfCwsKdQnRpfBG5GzBowtIRCGWmcsDCwXUBjnQCbQQQsi49RgUTwi8wwP/DF9QHLcrDan6dxJ0FlMIaBRB2NEnCOgMTBjRGwhURA/2twrp5gMPDxMIHwv2+/nwREPJGdHvA/MbFwsJ/w8oQ6DGowP91yMUDxMO7igQQe2AABf0AAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:49', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('49', '22', 'St9TUzIxAAADnKAECAUHCc7QAAAbnWkBAAAAg0EehZwZAGgPoADfABKTrwAaAIkPrgAYnF0PqAAmAEIPb5wtAOgPxgD2ACCTWABNAFAPWwBXnDEOoQBhAPYOlJxiAD0OagC1AESTjwBwAD8OfwBwnDEPOgB7AIsPRJx/AEsPngBEADuTPQC6AMQPugDBnDcPiQDmAHAPaJz8AK0PtwA4AKKTYwAOAaEOWgAMnZIPUQAaAVgNS5whARANawDkAY+SVgAtASENAQA3nUILSgBOAWUOHseUD36AcYhcjPY3TQd5eBpppHQiayZNzAOheM9kVhB/gO6a7pw7nfWLB2peCoMFTf+iaKfwxPsEB3T2P5OcABUMOglv/ulmGARlCiUOL/y9ZOP2PAcrCMoCw2MnBgf96frH/DWUhnt/e8OTR4GYF9J3goEyCj4kKpEXIbr6RhCy7RT+tPVJBQ0VE/SYfA5RTI8ZfQj9W+uM8Vpwpe2kboJv/BEVhUmWGrH0Osa7soGjkGIFTCTPPiA4AQLXGnafAUsAYMIMxX0C6JB0wFwHAF4BD2IxwQQAwwHZLwqcZQJpicDASwUD0QhawG8EAAYLI6IQAIIWcKKcZ/z2w/4GAKwWScHBX8AKAGcaYLvB/PcJAKMeGv87U8GSAWofXMHAtsJTXKcXAKUmkwGkwF7A/8FrdHw6pwecxjcnSRYAGT+nwMCRw8HDwQTCw13BwMCGBACdT1PFDACWUzBQgGp9jQGQVlfEZ7TAw/DFbQsAn1fiOPz2fQoAoWQwkMDD8wwAlmY9wv9nwxwRAGtszMA7/f5n+zXAwP5KywC786jBwcPLxAZ+e5EBZ3RMfnQFwsM8DABsdENiocNkXg0AjHRDdLHBwwcPAJF0PWIFwXtewcP+AxDQyS34nxHSMEbDBsW+dbdD/gcAuHf1SnODAd93sYfABMDGXsKjwcFqwAXBwlzDZ54EADm7TGKZAUOBTMFxwABLHUjAcwoAnkA3w/Z9wRsA34h1wMFcwMDBwLDDB8LCXMHBwMFwwbgdA0Cqt37BwGkGx8UHWGJxecIIxT293HqeCgA3v4N/xxDFAwB9xToHAwOy0j3/BgCKLy3AX18DEMEbjAUIE/oREMJdYAXV3iLc/cf7BxBv5wNJ6AIQQiY3/MEQ8LYs/cUDEO3uPcKUEVsuAMDAhsIHjOQyOjoFEAU3T1nx9QMQxziFwAWMmTyASscE1WNBrPX1AAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:49', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('50', '22', 'SudTUzIxAAADpKYECAUHCc7QAAAbpWkBAAAAg0kaYKQ8AOYPpgCNAG6rXgBdAOMPJQBzpBwPjwBzACsPr6SFAP4PwQBMAB6rnACrAAEOcQCwpHAODgG2APYPqKS+AFMOwQAFAD+qMwDDAE8PZADMpE0NrADPAIIN6qTaADwPkQAZAEqpmgDiAMwNuQDvpEgOKADzAAgPiKT2AMgOBAHIAUerSwAgAcYPugA2pcAPPgBNAXwPY6RQAbkP4gRme8BfaoBTc5uLo/ywUZJ7ygLXIjqzqVVqgCcNjeLfEdFb7CJKArKvSJKqFr+1aSAxNVhyrF3K+/cbCeSoDIat5M3F6q33voREr2qLNAcN+USBu1v49Jl+3wDiCXBeTX8d/Z0DiYeCJZCGUYEdA+t8fCTaCrOHUYFQ/4In6goDE+MLwgzoqmL6IgtT/k77zaWS9Lv7TgFv+3RSNpcsAyAwxAJJhlUSAKwkfQbC/GXAwXZzwVrGAH+CaMEEAIYorMH8rwHTKonCxDvCeCMLANQyg4RAiAWkXkBcZMAaxfNAN8J8wJB0cLXAUdcHAFFFWsA6eAWkq0b3Qf0OxaJE0IJ7wXDAwdQAp+hxd2pwXMC0DAP4YFzAcFjAmCACrWWXwMCdiAXBe2VoZXPBe8S/HQNaaZqMkXjARsDD32hSgwwAkqrtTIz8/0AGAOS3Gvxawf8NAJZ0KEH/Zf/9/sD//tYAiNNmi8HAwlEHVsFbghMAsH/6O/z9lcE3Sv7B/zsDA5eAV8AVAKhAccJmgm1vWMKIBw4DFIf9//v9/zvA/WRhwBMAxIrS/ihawcIxTMD/8BIDBan3+vozL5b//GQ8BwCyr4MDxMLfIQEMsq3BtILH3MCJdGJ7wq9eBKSvtXTFw8BUBBMgAUl+GgC4cjf8kv7AwMDAwDvB2WHAwMHAwMAEwMJlAgEMujH+wACsGTb+QgkArT1G/GTARMAMAKd6XsBnRXtsDACrBk9f/VTBDAAtxpXAfWRxnQQAM8eJYQikq+BJwFjC8v8ZpOnXuoPBwgbEnWXDcMDBwMEE/8IpCgDn3z1GkUsPpOzfNzVKODsKA9zvScB4acPPAH1UR2fAZ8MexBPxHnH/gMGCw1aBgGRldggAKPeMwcMkwwgRAA9GljMLtQcQQD0uI9ViTh5H/1P+wMAF/vxa//37/P3AOMD8W/7A///AwDtKJ7R2ZKIi/WiOwfyc/Pz6/P3AOMD9ZMH//8D+wTr/w6QAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:49', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('51', '23', 'TBdTUzIxAAAFVFYECAUHCc7QAAAdVWkBAAAAhfk0gVQbAJUPdgDlABZbZQAiAJEPRgA8VJIPJQBLAEcPt1RsABQPxwC3AJdbfgB9AAoOowB7VIgPkwCAAE4OKFSEAAQPxgBAAJ1bAAGtAJQOiwC0VAUPNgC1ALsPkVS4AI0PPQB+AHxb7gDGABEPVADMVI0PUADTALIPt1TaACIP1QAeAB5buQD0ACoOZwDyVJgOSgD6AKgPrlT7ADcOMADDAVlb5AALASEPAAAWVTIN5gAjAe0PUlQlAVoOrgDuAcNThgAtAWcMmwAqVWINfAA0AS8MUFQ2AeQNbQDyAWxfKAA6Ac0OSQA/VeYM3wA6AYEO91Q/AUoOyACBAbpYWwBFAewMjABMVfkMlABNAcoMZ1RPAX8NzQCLAY9YzABPAYsMIABSVXMOoQBYAUwNuFRYAfMNawCfAf9bXIQuBGIEmIDs0ZiD7YHm/M8CnNezAIoGO4Mu8x6vdIaSfNaJ9P181mYKfYH1gq758Nb7A0uGfYEneX9TtoijArOOaAmL0G4NRoRPe0L/7Nn0irqNIAY4fiNePAAWb7cGYf70IS8ESnzW+CbzuFQLbif0rgAPdVdalPuq7LaIjwzjrcvyxfTRksgL8TLgcr54gRMf+k9D2aI5DBYU0PNGUGqRnfrW8GLcQ0CvbP4JGQpg5o+0UftteUXzX5TfXSvhgH9NgEgDhdfFCzH8gIfUgKBQgYPR+GGN1ICoXHx+xtWy63rhSNQo/MnZRf3MHqjSwAmJ2+YkNTf1YxTOuG9JCMj0hFhgFpF6jYjkKSf9pZcphNUa/QChm1yZtACkz6SZmL6c6+ErlXw8m6fxeGl1aWE26HwoR0uRDlosBiUGBXRGAQK/JCjKAGJUEv9awkNRkgUF/QETwkAFAPkBCas0BABVARDwDQUvABD+dEX+sQoFyQUXwMJGwYkFBXkHDP9LBgDaDgNkwgoAERzwPzdSlg8AeR4J/jvBxZTBwGJCFwDSIQNqwP9bUv9GB//ElEYDAGgkFwUPBSwlF8DAwjYH/19oEQAPKgY9rcFAlP5TEAAHNcVA+pVTPkcNAIf5E2U2/mr/EQAD+wZClf/AZEr//wQVBVJV/cA7wMAE/m2UwcBaWgwAx2LxZcA/WhgAAqj0+6s2//5bwkudwMSXQQkAtXATj1jEUwEMdf1UOM4AktYRRMBJcBjFB4GgPjbB/HT/+lhsqxUAMIQJwjtexAphwMDBagbFyoJDwcDAwAoAwZDxf1k7EQAKmD84xBD+/0ZVDQBHnQmrOVbAaxgAzaPye8BLwMD9UTpKxZVlCwAKr/H0c0VGAVKxA0Q1O8M3lMDAWwMAMneDx1MBOrQGwME7VgFUM7h9bAUA/L1/lI8DAPTHEwUMBdnLiWf/wsQ5ghVUlMsX//1z+MH6rfr6wgcATBR9e8UJAFTU/TUFIgNUTNd3asIGxdneTsD/wMMLAHHeJR7B/sT+MAbF1dp0esEQAAPhIv/4B0FL/v7/DcWh8ciQ/8PAw/4HhQNUuPYpwMBNwwCtqjz//8H4BNUrADaXBBAvClqwCRUoD33/xMDEB8PEURHnDyBTDNWQFeTJgsHDiMHPEIxFn6OXjQgQRhR/lv/BxaADEEgURZQGEAIVN8M6wmBFEQgV1//+O/76aTL/+D8QEFEnxpTCyMLBwcOswcaVwgUQxRc0BxwARH8cZ/rExMIQhHdW98LE/cHDEO9zJv/9FwMQRTt/kQUQ80VPHM4QwRN7wPnIwP8G//iWBBCYTg/DBMQBRJ9Wg4QFECRYdav9wgoQoWC/N2GqyQAAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:49', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('52', '23', 'TENTUzIxAAAFAAUECAUHCc7QAAAdAWkBAAAAhC01bwAcAIcPmAD4AJcPRgBAAAQPXwBbACIPbgBgAMoOhgBlAIsOPQCiAHQPxgB6ACUP5QCHAGUPuwCCAGIPpgCJAKQPrABYADQO3gCmALMPqwCpAJMPxwCyAPMO3gC0ALsPaABzAIcP0QDGALcOmgDPADsPzADWAAUOTQDZAEMPXgAcAEcPJwDcAEsPEwDnAMwOcwD0AJEOyAD0AL4NKAA+AEUPhwD/AEoPswAVAWwNpQARAY0P1AAQAc8M6gDUAVkNxQASAb0NmAARAdwN1wAVAYoM5QAXAd4MTQDdARUOxAAeAc4OtgAxAXkP1AA2AaYOLAA9Aa4PjwD4AdUPugBDAdwPlwBMAf8PpgBLARMONQBPAQ0PewCLAe8P4gBPAdIOFwBXAeQOTABTAVUPpwBXAe8OvgCcAfUOkgBaAfIOnoQW9jp7LnBGC5aGz5ZefJv11ZrbkJODeIVy7++guH3oasv7cg7abs5kwIDPgrb3/vY2YwpXwIRRBi54yHbQ/s+CAY4mjKv9HPg8fyL9RBOHWTpQUH15gjmHVAhIhRwF1PNRSo9BEPig/XmCifjcurT75PSNCAIEhAIsC7v5AQjBAqPxcwwzCTcKWQzAEWgbQA5p69IVUPH48xMA/vRfMOb8yPqU3k4F8SZIktQbO4xKfc4BDYI1F8DwkIOdDWCOBfPB88lxGcxYcnuKyYI0crmV7ZKVhzAQaTRqp8rQdROQAaGBPZPQq8sNYIOJi8mXwKHvI+OzFevJ/yjj5O4UCr372HM78WuK+eud/hHm4GF4f28ReR+p+4x3LOxYcybmlRTI9TALyZd5h4rnpRsM/JQDhQ1NFuAfgAR0HiELWWVO5L7GBCA/AQJf2+APAHUBE//AR5MGBYQAE8D/OAzFbQ0QP2BW/g8AiwkJSvxdVFQEAP8SBTAEAC4e9zHJAGsfDTJGwFgKxSMv+jxHMRMAF/z0Mjv+/8L9/z4EcwIASkADODcUxRhB9EMp/0b//jrA+8FWEwAJVPQFRjMp/v9DwP8ExZ5YHjIIAGleiULBcwkBm2Ig//4GNvoOAQlj5/1E7sD4/U4FADlld7MFBXNkEP8rDQCEZvg7//87QwUA/2to/8DABADIfeE4HAAigOtB/v06/UM2TVE7/wMA3oFiwQUAH4ZgwAUEBaaNKVcSAJRZLUbA///AVy7/Of0IAHGonsTExQTCxGl9FABqq5cAxcaL/sNnkcLDsxcFA7HcUS4u/AX++cI3RsENAHJ1KTY7wcD6GAkArbKSx8WdiRAAZHKJw6OFwYjEpRnFCb3cYS7/ISsvBT76NQUA3rlMccwAabosMP/+/PvCALy9MMD+YBIAmr5yxcTAkMGhwwDFxsLBCABhvyk7//j7/sIGALTF8UbEBAHy6EkqBMVhyDcxHgAD09Y6wMU4/P3+/P7+O//F/v7A/8D//zv++v39/iEADdMZazT8/f0qwP43Bf76/f7++sD8+zr++cAEAEffQGfNACDhTVzDlgQAOeRVXQUAVvq9LMMAStRCeMMLACU6RojAx/6gBxEAzUzB//o9BBB0Ep8VARAAEzRtBBBnFElHBhCnFEP/5vwAEOoVT3EDEBAaVsIFEPYhTP4GAxXEI0b/BRDW/1MbAxEaRi3DB9UmSB7DwsNeBhDxUBaUwgYQuGB68sAAAAAAAAA=', '1', '1', '0', '3356901120048', '2017-08-05 21:44:49', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('53', '23', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:50', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('54', '24', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:50', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('55', '24', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:50', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('56', '24', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:44:50', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('57', '25', 'TfdTUzIxAAAEtLkECAUHCc7QAAActWkBAAAAhFknpbQWAI0PdAD5AA26ggBAAIYOEQBFtJAPaQBCALcOVbRSAPYPmwCWAAu7vgBkAJAPqAB0tHYOWgByADwO4bR4ABkPwgC6AIq7fACEAAMPLwCNtJgPewCSAKoP+LSZABsOzgBmAJa7hgCnAHkPvgCttPkPdADBAJkPoLTGAIMPkQAJAGe7PQDOAFQPWgDYtHAOhQDdADIParTiAN8PUgAhAN+6IQDmAFUPbgDstHUOQwDrAIgPBbUOAaYPIQDTAUy7TAAbATwPtAAftToOdAAxAXkO8rRDAREOuwCcAZC62gBaAY8OCABftZUOTwlbh/6D4C+AhOIXhXy8FxLMRwIne2eHPWsJW3R/cYfC/GuCCjyHggoLLQdDgs62hIEtdzoJQIU6sJ/6nYDijUsCqbfvdSb+xZTkj7Y5nIAFgkoKHGxVzjz6AYYOBhqIprLT+ud4gIN0DmaogYNJitWeNGYyTP/kdSFJFvMREVV4bUH1ZgiLeJa1MPyxEdnyoJUFroiLmeohB6+FESSk/0aIMgnXAWu4rATG8a4S5HTuTLv5J5UvG/IXOrv69Bf+RgEP9143gILGAQdeRIJeN4Lf0oXbfP5t9bXvBN+Hcfyz/NI16ARxAdeEr+FkygAgQQECveNXCLR1AQP9TF2YCAQgABDAUUoHxakFpP/D/lkFAK8KB0tBBABiC3pLEgSGKuk8MP9TjnsJtDQy6/84K47BCrR5OQZRN/+hJQy0cTx9jMB7ywAr9Og4O/7C/jpbArRmQ3fCewXF2ECnwMDBEABUivE0iv7A/ntDBsWXVj2NwAsAn1LM/lFLwv43FAAjkOL6dSjA/v3CQJPAb7ABTVZrVAPFn1OkwQcAcW/67j4NtGt0dHpiwcEA7M8daQ8AgYTFL/p1/MBMWBQAL4WadsF7wIODwax7F7TniZfAc8KjxHZ1wMFoDQB3VHfHdMDAg/9cD8V/lrdAwcD+/kydCgTMl23Ab3DB0QDJFZLC/sLAwzvDwNbDwG1tGQDIouN1Uv7AwP4rO8D798D9WP8LAHqmHuBHaAwAvKpWd8ZwwXfBCABxB17FcPyQBgCgxkzDwnXFGgEQxqAFZcfTwGaUh8HBBFYHtIzKbcQNAFDNBEkpPsHBXgjFOMvjwcLA/1UOxY7U08X+xcCDw5zDDLQ90k//YlrZARBupsFkwcCAOsHGdsNuwcB8wAXAx7kBiNzp+vs6OPp1eRQAm9xxBMbGdop0xMfC/zrBxUoTAFHg1v86/DCHP/9VDACoIYDAcZ91cxQARSLTPEr//v/7wME4/sRL/sBUCwBsIlDGdILD/30FANnoU3TBwgsAT+iJcft1kcAFACHqlsBJvQGv6yBPagcKBIvsUMDCwIO5CgTw7kzBcovAzACqTyX+wMBxw80Ai0hRxIlsCQBd/Fdyw8DBwcDDzwCkSBv9/XPDmMIQurcoWIggEQ/Kp2TKwIR4w5nCBcP7dMNuhMAFEOQbSHCFBhBKH0BBwAKkUR86asIF1QovhHYeERIypATBK97AwcLAqMMEw/p2gsFvwQgQDVqeSf5EwAgQpckwxN6KAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:51', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('58', '25', 'TKVTUzIxAAAF5uYECAUHCc7QAAAd52kBAAAAhQs7Z+YdAPQPfADtAAPpiwA5AHwPcABF5pEPQABMAC4PauZXAGoPJACfAGLovwBhAJgP/gBr5ucPxQBvAOwP6uZ9ADEPmQBCAILpYgCLAFoPNACL5rAPNgCQAJIOy+aSACcPMABfANLokgCdAHgPTQCi5iMP6ACnAGwP4eavAKYPkQBwACjoUADEAEsP6ADO5lgPYQDMAIEPPubUAFAPeQASADLongDmAC4PhQDt5koPBAH1AOEO5Ob3AKkPtQAyAKrp9QD8AKcOIAAH5yQOEwAGAZEPIOYGAU4PBAHPATXr9AAOAUENWAAU57EPOgASAfcP6eYZAa4M0QDlAZvoLQAmASEOlAAp57MO8QAtAXsLP+YxAakObwDxAajpXQA7AaIOTwA656MOUABGAVwOIeZLARIPSQCPAYvopgBMAZkPTwBL54wOaABSAVYOXeZbAYUP2gCfAYrp7wBaAYsPcABe54UPnfOneCILmGgMF8ecqXqjFgsJJ/l6Fydpw4Tb456A9vLjZGaAP2YLfE8SFXBbCRqXO4Bi/eKRwJCL42f7jYG6DlOLQPRPZUNcogeGOMaSjIEdCyINRYP3lyf/doB+gZN5hWV38++AbVgQ8kioQKyJ9Dad6QagHXOEsP6q9UeB+OoYtq77SQlY/6sTQAhSESIRFPlI6bf2yfhlBdAH2BFbCiYPbYMn+pNl7P3e9QoCCHyYE7TnDIflBTtoaGUzAdILSYQMhByPEX9NgHXl9AlX0Dsmtf1FHq8swBYQDe2JnJfwEPh7swGShyMRJOas9JOIsG8J8kCK3BXz4b55eXj88h8y9BFJChEbvBKPmlMhcYjR+l94QOvkDx4cQQhA8dQTIBRt9/IIlQ7MHhgWTmk68beF2RAUCtnuCRWgD38etOzx93L9mBGcFYD/6fWt7lj69ONzDcfRdf1/z3LsnO3+9Yr7sfaMfKbISAAgScQC+cFpCQCZABCJRMXgAbQACf3/gwUFigBwaAQAzcQWR+4BrgQQOMAF/wzmmAaGwsHDBcFa9AFlHPE7MTr/xSb/V10LAIDtAy4YSlYGAIc1RcKG7QGOOQlA/ZBLDuaHO32QacKAFAXBQd41Wyn/OD5RJgsAskCWgwTExI8FADxQYnPcABmy5VtBVCgrgUpP7AFrVW3BwL3BdOEBc1X3/ycFGQXOV+BGS8AjOjhDJsA4wQsAbJ9rxCZ5dP8MALyanJQnicF1BQDJtCfFsgQAxXMtwZ4FBRV/KVUMAJRAjMYgwsDCwf/AuxAFgIbiHP3//jvB+hnD/8HACwCailuYWP9VDwA6SdowJ//9//z//jv9xP0BF47eWSsFMfgZwf39wMDAOsDFGMDA/gYAYUpXxSfBwAUA9JLowvgmCwDOly3CBVD6YBEAkJqDxwaTfZ6QBQAtnlqeBwVqqSBATQcALKsuGXrAEQB/t5bDeSbDwsCHwcOcBgV0uyf//2QRxYS4tsXCfoF+ewUZBcnG11vA/zU+/vkY/v7AwP/ABP/EagkAUMdMwal8A+aEyjrBewXFKcm8WQYALs9WkcAN5mHRRn7BgMIAMj9OQcT/CwD42UkYecL/yMb/ygB/PDt4hMDCwAbA+iYgAAnb3sC+ZUXS/vz+M1pWBU/AGA4AicUxwJ//xm3CNx0AC+YZwMWVwcDA/v/AOP37GPrA/sD//wf+xCdwBgCj6Su0wAPmPepMZ8QJxZ3v1sGLxFcDAITrTCYEALj7KcK0HgUH/5wxwMDBBcHHJcLExsHCwQTAxCbAwsHBwMMHwQD2+QAt/vzCwRBH50GVBBAjCpVtAfcHDTo2BBA9Ej/cBhA3FT3EUcIB9jwVN58GEMEbNY3DHBDhG6AEMVwmwcPGyJ5+sMJsJxwQ5yO9xp7+xSbBwMLAwccAxMZjwMLBcYUE1SwuxMX+BBAdNOisDvZzNxpwwy8AwAb2YT8ewgYQqVYGJPzAwgUQNqQA+p0GEHdi+v6n/wAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:51', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('59', '25', 'TGFTUzIxAAAFIiMECAUHCc7QAAAdI2kBAAAAhc8wkCI+APEPWwCAAOQt0gBMAA8PSgBLImYPKwBoACEPryJpAG0PcQCvAOMtfAB6AOkOSwCCIu4P4ACKAE4POCKOAOEOiABQAGYtMwCbAGIOVQCgIvEPqQCmAMYPRyKwAF0P1AB8ABMtSgC7AFoPPADFIpcP3gDMAFUPgyLOAOsP7wARABstmQDaAPwPIwDjIiIPIgDnABkPWyLrANwPdwA7AOAtTQAEAdgPCAAJIykPngAPAd0PbCITAVwORwDaAVEt6gAfAS0PrgAhI+EOVQAoARkPziIpATUPbAD9AfQseQA4AWsNmwA4I+gO5AA+Af0PbyJAAV8OjwCSAfsuhQBaAeoO/QBZI+0OSQBcATcNYCJdAd0OWACYAe8svwBdAaMNJIy6pu4Oyv+rfVrz3of6I6uH6Xj//XugzwfbhYcHcwl3ocJ8wf2++ruCOCew/cmL4YzoCdciQnQn92OLOIDfp0//7XRNdQh/+KJEB0YKPY1U7ksiABYSoSIWgQfM3d99mYlygkv6zd3P+tt4PXqfCHegBHWdfSVvaPFn3f4Q9ZG1/fCKGDPmGMPlMQXUlzetvgWrA4eHOwTH2tuC9Yo6CC8G9KWD/L58nfe3/Tcl+zdn8H/lpH34WIeARXj1f/d1m9bL+O4FXYUk8RwkPIid/tX21A9HKmv82JaQi8QIkV18DL2OpI9M+EwsEwzmBK+ULXK1WQj0+Bcqljsjic0XDEqBlfxTBJMxkAgRCJEX5fdooSTvlA8Z+N8AYobCbKtytpRlLHkiIUgBAr4krAcFtQ1nclsKAEEPYqfBwGAJAHLVYMXiwVvBBwCb1mRgSgoArBpwwAZYxeLD/hAAtB6uZsXiY//BVcEOxb8tVYFYc3MEAHowclUCAEUwYMHLANcYgsHDwHF0nAgF70OAhMNcBcVXTUDAPxQAz0tFhMfjWXBiSsAIxYtKRXLB/8EXACJgk+DDicPAVnuZ/8XjSgQAP2ZkiAkFwGeQwZPCgMEAo0VwggYArmc4//hvDgCnbHDCk3HEc1oGAHl8ZwTBYTsB9ISWeMNTwlDgaFRZSwkAVIbs3P8qWRcA3U+QjeFjif92U2s6BQUPimD/XA8AQZdn4/7BeMD+dIkFBQybZMBeGQA/nJZagcPBdsJmnVhcJwEyn15KCsWTps/+J8D+PQfFraLfKjIIAD6ymWXFSBsBA66ahLnCx+bBwMDAwsE6XPvjUwkAQrVal8H7TgcA17oXwAU0DCJJv1rAwMA7wlwxAALBnoTBVML64MJZwkMIAE3M4twi//4QAOsUmmngwKDCQ2oQxAnWvMJOwYTDwwTAdiYB89QXNgPF8d08/gwAm9r04cAuehUA4uKawzvExuPFZ8BWxP6dBQXI5B7/WgYAI+onePwQAHf64PH//t00wP9LDwC+/uEZ+v04/8A9wRB2I2FuGREPAmfAb+Zew8GTwHOucwIySwdaYmAJ1aIOK/r9/f/AV80Q1S0m/8D+TwjVohc0/Pz/WgcQSBzy2Br/EBBsISVU+Nz7/v3+wf87UgEy7SEpQAUQgiJSeQ0QySSwwwfFwODDwf/AwQXVUil0wDMFEMos/8IyJxHQLDE4BNWhN7i0BhCrMqcAxcHgBRB3PF5XwxCZH5/KpAMQ5YQ3xSsRl0KGycIF+vhMAhBmQ1r/wRCUZ2aUFxBFUh/BxN/D/zXA/fs4//rd////wMH7wBC5QIdwAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:51', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('60', '26', 'TEdTUzIxAAAFBAYECAUHCc7QAAAdBWkBAAAAhCksRAQcAIcPHQCCAHkLmQBHAI8PEgBPBJ4OOgBNAL4PeQRTABEP2QCWABoKVwBoAH8PUgCEBJUPpACWAN4OsgShAJYOiwBhAIgLywC+ACgPqwDABH8PmADJAO4PXwTQAGwPlQAQAJkLRADbAGEPCgDZBCsPkQDiAF0PLATqAOIPQQAuAFELEwDuAFMPeADqBDcPdAD0AKoP1gT4AC4PUAA7AEELlAALAa0NmgARBSoPVQAnAekPSwQsAbgP0AD8ATIK6gA7AS4PAAA7BU8ONQBFAXEOlQRHAZUPwgCPAVoJZQBMAacNvABJBaIOMABPAesOpQROAeMNlQCcAfoKdQBaAY0NAwBeBVENQwxbDvYLCwTi9hv/YoD2//L3GYJnE0cPSwAj+s70YoTal15+HYbqk8uPogYrc54DFHo6CQ4DvIUUjtCTfX0Wca8L5HPD+SZmkgDHlaLxbBYW5wZXZZOkkwuigQ4B8rMZtXcwBHYjaQzI9o+EtPeR/xIEcPywa1MpGZKhkk+A/PCsdlESKXLqACbyXAopD9egO9mPKWtG5foNB8oL5PZkG/LlbkJXFrp8qAH96650fXYsBYeGrI6ijO8Fve+k2k0L1fsX4sPXIRt883ED5Yur+a+LAbUhmaT26RdYEP0q2QU8HYf2LBhd/dUS4X83f1KJAeQ1UV+FYBg4bRZcwexU6feU6PDxB/4ZahuqX5wBIEwBAhUjnBABFgUDwD2XwPtIWf7C/QwAlwUJ+8HC/kz/Rs8AiQESwf7AOGDPAGgCEcL//ko2wgCrDRs9cBEAKMgG+kFZ/kxbwAPFGxcNwAUACBsDBUoKBEQeCf9i/ZHAXscNAAYkBsKG/0lDCgALMAPAkz5REAEEPP1CS64zUF8GACFH+vwG/0YMAZxKGsBYkwQFMUx9dwUAf5UMNgEBf1YQQRTFD1/+Wv83MVNMsAcFVmWDd14WAMZo9UTBOEYywf6cMwMEW2gDMP8GxVJveWjABAC/etvAxQIBu34iZP/JAJaGl4PCcWIJxZuBHsE3VQ0ACEjw+sRHwP1GwATFpZ8aVhMAApzkOEv6QzLA/k//BMUxmmlcDACJoJNMwcT7w4MUAAihLP3H+MP9wMD+/zjA+vvB/v9UDABCpYqMwYjAcxAASqcfxP//////wTrA+Gj/BADOwCSBBQXNwynAwMAMxWnAhJDBwoluDMWaySP+/jjB/Pw6+woEl9GnxMGXsMHHWA4AkdSewwXDx5WFw8H+BwBc2Sj7McETAAXaH/9FNz3//js4CsVA3mPCfMLCxP7MAJfancHDxP/CUgkFR95kkcPCc8YAy+QxwwcAjeJfwsajBwCV5jA7BQgFOe1exIh3GsUD6tc0/zM8//2FKlj5HgoAQe9XB5bG+qAKAHLwiQzFxsfCwMHCBADU8VVoCAC88zpXOvwvAwHB8zRPQ8EAdfJ7ysUEAHgzKYEDAWr8NMNsDQUFa/0k/5AJABf9LPr9/8VVAwAS/SX5BRBOAUmfzRBmBzGEwcbGC9U8ANLB/v77/f04JwIUOwhDwsJsyRCVDKrBwsXExgfAwsXABhA/CUAHdwMUIA5DwsP+BwUVZxctiwYQXtI0xsSRCBBWKy0EwcHHmAMQUDEtBAQVFjspwMIDEBU+McQCEMtFPcHIEDJNKMHHwsDBBf/6x//JAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:51', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('61', '26', 'Td1TUzIxAAAEnpwECAUHCc7QAAAcn2kBAAAAhEMttp4dAAsPigDaAGOR2wAkAI0PBQAjnoAPmwAsADkP8p5HAJYPegCSAOGRYwBaAGUPIgBZnpIPxABlAL8Pup5zAA0P5gBCAJGR2gCgAI4PmgCvnlkPgQCzAIsP9J7CAC8PywABADyQxADIAD0PaQDKnkIPYADVAJkPvJ7aAEEPegAaAE2RZQDhAFYPqwDmnk4PrADwAAYPe574ADoP6wDQAayRlgAZAbwPLwAZnygNXgAeAWkNjZ4eAboP0QDiAaKQiAAsAa4P/wAwnyoOmwA2AWcP3J42AakNzQD8AZ2TPQBAAR0NsABFn50P2ABFAQkNN55NAR4OSwCJAZ+TyQBMAYsOCQBVn/UOngBfAUoPlRPcE/amNW3fXid0cA9+hhr7WHn5aXuFIZVt80d9RZmPC1cfGYKy6m8dGIL3AwNrAP9ihzMDWWz+6e7kQQqLe2N8PQtrB4YVxPtGWh5i9w1uYWYGvvl6B1b01mf/os73sP5j+LpqLQad/rn/pAUxlTMMWAtFDfAX5Z8YBpWCrP9w9nWNMQvc/ykOcfssldD1lYZ+gfKIBW3s7+blHIKHBCqcNAQdEgEf2YLNGbOA/hM+gxP3DJG0AO0bCfzgDcnhlffpDa32VROlkHyTdfWF61zrVI0Y3IkE4PPMzLVrHfe9AIGFAPO+eNv+dSRVNNDYOZ5khi32gYGgfontGZrlwMH19Wpptkxesu7jBCKcl9QQ5QAYID3EAlqAngUAhwFtBMTEmgGUBXBtBsWkDul+wQUArAs/IgeetxkJ/wkAaxx5PP7AaAgAjtjt+rD//gUAhh6sVgyeuSAMwMD9+wYEFyJiQsADAHgmh18JAJ8u+v/rwPuYAZcva8L/B/8Knn1U58D/JzoyRY4B5Fyaw8AGlnzg/sMOAMBhuMLGX43AczgTAclhpBpnw8LAxISUwA2eyWUM/v/+if4LnsFneojCwqfAOF8FAMJyCSnXAQzqpcLB/8LAUsLGX15zBwDAeLiehp0BwnkG/AbF6Y68QMAUAQ+IbIPHYMOSkIb+bNEBFAmmdMNuxMFJwcZewUEOANmdVcLCWsLAwsHAwbEIBOO0T1RcEgBGt0jUdafCi8CRzADJKSxGfsEZAdW7tOZun8N1wmQEwPphaQQA8cctjwcEV8k6a5QHAAvIMF5mwRoA+s1owG1bqcOLdH6SXBYFnsywwML/wgbBwFvDw8LAwlwFxF6HAAfNtHbDBcORCcPAwv7CagWhDJ7F0TrAeVbOAMddTZSSwP74wQBaRmF2BwC13oaGmZkBut5AecIEDQTn40yAwsPEOsT6XMAFAGLkV60FBPPkUMDCwA7Fr+hd/sL8/ff4OcD7XsDBCACs9IWbx2P9AwCA+z0EGQWd+qlD/sLBAKaX4MBhwpkXEDoHqdRYwsbGxsMEwMZfwcDDw8PBwRBOvxH8wAoQYeckxWHCdH8IEEXsGsReesAJEEEx2XH7X8HDBhAzMv/Dw8MHED04HP9VBBSqURaWAxDxlIPHnRHxWYDBB9X3Wuk/ZQQQMmLFwMSeAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:52', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('62', '26', 'TPFTUzIxAAAFsrAECAUHCc7QAAAds2kBAAAAhV86c7IWAOkPmgDSAPS9YQAvAOYPQwA0smcPUAA9AJsPhrJdAO4OIACaANq9fwBrAGUOtwBxsuQOLQB2AJoPx7J5AAsP4wC/AAO9MgCCANwPWACNsv0PVwCZABgPG7KdAF4PcwBhAOO9UwCwAE8P3QC8slYPswC5AMgOlbLAAPYOpQAPAGi+7gDKAB0PVQDUsu4M3ADXAFcPMbLbAFIPtwAfAHq+JwDbAFIP1ADmstcPiQDmABwMoLLoAAUN0AArACy+FQDzAFAP5ADwstAPwAD1AOQMlLL6AAYNOAA5AEm9ZQD9AEAPewD6socK7QAAAfEOmLIIAQQMvwDLAY+5RgAPAUAPVwAKsw4NBgEUAfcOhLIcARgOoQD3AYi9yAA3AV0NtgA6syQOXgBDAXUPfrJIAaYOSgCOAam8QwBeAZUOdgBbs+APawBfAVYOf7JeAY8OkACaAY+8ngBfAfEPB4Tztpv56owSCcYP+Dt7/J6CxnwzdJswBHkHdhv6JIjouVeLzYPOBk6DhDLoeDprgYCw+/K6UYfNg3ICvwTjoMID/vz3DxL7Vc0DgFL+dvLjmxKq7JK2+D4Dqwj7NvMCKggOmXvy/MQnaY/98vifBXcx0KKykOoZCAiYOIPp8WKJgmB6yDzC9KfqUfhAhuSo1HZBa24VaACPMmsJZX6hFvBjKLKgfnWD5YhYhsi0dO7Z1q3XpIrYsQAvyQi5puibPTHofA4ANIN4hlRMqZ9R+KGaWAW8SywuwX5ZDjf9r7NnKyprxGf8/NjsawTmDf6nLfcks0sAtQS5aruJ4EQrAdtwXA/0CdBI6wDrC7vXiApXp7v1poKOdj8yr2Db13p/gIMQdZMqyI1BBtoMRYMYqDQXJRnF/isauFvP5u4GHfHbWXM17ATJ757ktPz0tLTq+Zh5/l/kFNqMERJlvferG4qK/gMgTgECESRHuAFuBWLAZjrCQLYBmwVpPQfFqA3fw/7AXQkAsQtlc0LAbQ0AtNJ0a+DCwFgFALnkesU1EgDJKoCEB8L6c8HAcFJqBMUxNOVUCQCBMWkFfsXBCACFNmdqBWkSsuM2hm/AwgZkcdbBdlIHAEv4YF7AFwDiQIZxB8GBcnVbwmT+B8VQRO7BRMEIAOKPiXk6CAD0XJPDOnl7vgF/X2nDYpN+D7LyY4xyiGrLAPPejcBvi8LCOnYKsvd0kH6MwQTBfnEEAMZ2BjbfAPTFh01swMJ4VcDFcmrAwpoEAKt4W3PBFQC+eH1JwYHMXXzAlAYA63pST8D/xAYAxrkJRkwIAKGD+v/0wUa2AZmKcIcKxaGPSChKRQYAVFhaxTUCAB+gWsDcAQwCloVxiMP/Zf9vcGbDBQDisdZUCrJPslPC/8I7RcZyw8KmDQBTdkxe2GanCgC3tsnANHL+YBwBCbdTwcXEgZfCd8BcSP/EEQIAFLlews8Asg4NL/7/YgTFGbjlwcIdAQ/DX8L6cMNOwcLDwgZ+xHBtgMTErBDF68Iow8DCw//EYniUtwGpyQP9/wQEBUHIGj0DAKEIace2AfHOIEkUxdjWJYHCxcWQwgbFwXT6/8P8BQBZ2OhOIxoBD9egB1zFIsKgi4STw3EHBVLbHv7AwUHMADNsTUOIwQkAEeAJSf/B/P9wA8UO4uHAAwDI7iQ4BAUJ9YaMAwAQMFPHtgHd9in9/8YAE0VN/wYAH/mKdce2AZX7AMD/yQDvTqjFwsDCwgTCz3PGBQBj/0C8BwUi/hDGJ8AJ1TcE4oLEwsPBCdXxBoJKwPlKCRApBDLa/PwwBxCWyAzEcsHA/gcQRtZDxyDABhCFHhxnwAGigSEnw8YH1egnlvr6/T0FEBAvUnI5BhDjMEw7//lxBxDpMEP87gUVbjBTwDEHEAMzZ3D8/SAEEMf/Wj2xERU+LcMAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:52', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('63', '27', 'Tc9TUzIxAAAEjJEECAUHCc7QAAAcjWkBAAAAhLEmuownACEPHgDoAIeDlQAwAJkPhQA1jA4PtwBCAGcPToxIAI0PhACoAJeDwAB5AJsPcgB7jBsPqgCDAF8PVYyFAIUPYgBKABCD+QChABgOkACjjIIP0QCxAF0PB429AJgO8gB6ABKDdgDCAIkPBwDJjBwPhwDeAFQPfIztAIgPsQApAJ2DLgD6AFoPggD+jFwP/gAGAeQPa4wKAX0P0wDIATSD6gAcAS4PngAhjTMOMQAnAfsPxowoAakP4wD5AUGCowBCAaEPMgBGjTYPywBFAWEOi4xHAR8PrQCWAQKDaQBfAS4PbIPSB56LAnUX+e4D+nbfezMLoYczjXf3qINyChsKYIOLgTILBvtPgDp6VA9UAp/6UIMcgPMG2IDVAn4L0HE+ier2BZHBk4qAnQ+zBNqD0XN/AR5zP3z6hdqDpISdD3IBZYA2ADuBJnQ7A5YLOoR/hV+FUAmaCP77HPlCgLsDvn12C85oLXJnH0crpQbz41egvPfa87ffF/RawJcjaQeqiI8T7Y8wD57oKrQL9/tYQw8C5xfhyAeq9O9mSRGto8MYXQkIncb61fU7Cs4bzGOR/06gnIF2lMrwJWUO6K9kO5wK/0OPspgH4TSsQAECoSSDzQBojRH/Rj8PAEQBC0z9wP/+wcKTZA6MSwIJS8D+O28MjD8FE21GFsUpDID8h/9F/luXcmSKAccOJ8T9tQkEOBMgbUrBFsUmEYX/av/+W/8EPsbodw8AHB4MjP/EukZWBwDCKudcZJkBIi0D/FIEL1xycsL/wMILxUU2n3I//1cFAMg983P9/wUADkU4MAyMukYcUsBWzABKwBHBNWQKAMNPB07/S8BGGQDMWA1P/jhHU0TABcDETP5wEgABZ8XBOUxBwFTAwFndAAz4+8Io/sL8of/E2sMy/3sYANN68KT/wf/APsKGwfrpwTQFAMV828FuiQEWgfo2CMW7hZLAwMDAwMDCAAwH/EdkEgBmSxBI6f7DMsDAwP0TBOiSF1tk/v67/k7kGwAFl/c++PzHcv7BwP///wXAxEz+wMH+wRvFAaVxwP9L//89k/866TNEAwD5pdvBA4xQpoN0aBfFBbFxbED/K2X/hf/7ywgAdL6PwgWLhIgB9sEWRgrFc8AFwHrAwMHEwwB/SRb+wlkGAADQGtfBCwCD25NOg8UAFAAD3ef/Ozf5TSti/ypoC8V06ACDwcGMwg/FMvxl/Tv///1GsgwEx/n9Lv/+QkEJBM/4a8ZunQTFKv/uw8ETAAL9H/43TCg+QDUGAOr+UwrABABG/l5VChTgC4myxMLBqgQUcQsnwcMSEMEM16T///79wf44V/vMBRDVEi03wRDprSxsBRBcKPLDQYkRLSpDhwXVMy+xw1kGEG8y4sD7HA4QnkCg/6nEx0TFxMHB/8HDEOTMPPj7/vsE1edEtkYWENRFbT78LEzAwZHGxZu7/gCc20VXFgQQVkokTcMNEKlQmgf8+07Aw8nIxnPDEIPun/7+VwcQqykYusHCAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:52', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('64', '27', 'Ss1TUzIxAAADjo0ECAUHCc7QAAAbj2kBAAAAg7MbZI40AHoPvQD+AI2B7ABSAJcPXABnjoEP0QBsAEsPmI5uAAcP8AC+AB2B7QCRAJgPywGQjqEOWQChAKsPgI6iAHUPaQB5AGaBogDHAH4PCQDTjicPUgDmAJUPAY/tAKYPYQA5AEWBSgAFAUcPXQAFjzINpAAGAeoNN44ZAUgPWQDmAceBtQArAbAPVwA4jy8OsQBDAWgOmY5KAa0ObQCLASmBJv8rdwvv4gEEd1ISTgoqeroJO/Xe9gf2BnET+hh2MYt7es+WbIr1H3+CsX7u+VYMZYd/hnsXPgjT+1itbxGOCy/4A/j9f3IUDlunCE4b5SVug7f7WQ+/CARiboOjC5MTaALidYeGKQKeAMP4T4l2hJMF0P9HgqCMHwBGhiMFq3xJ8IeCFQZChkeCgg9fgEKCmf6AAl0OgIHFArL+g/9V8QZouYkwBOUyAowpHwcJAK7NFsLb/jQEAMwN1TUIjqsQF2JGYsgAhJsC/v9DRv9NCgP1HAM2/lr/zQBhpPvA/P/BwDgEA3MtHjUOAGv2/Sj9/MDB/1USxUNJecHBLsBY/47BQZ0BOVzp/UrsXfywwUIIAJVgRnh3igGdZANECMWVZA56eA4A0GhVeFrxwYkHAJ9txf/+zwYA1W4awPrBCo6Wb4B7fsHCAKP9BzXA/wMANn4jTxUANY7wVDpP/M/AO2QFAO9QIEmYASee6TZF9D1C3cH/BgBWorXCcYUBfqN3wmpBiRWOJqnn/zXCOMH+TjHBK8D+XdAAIDnmwf3A/cI7/0dwOlRgDwBtfPH8cfwuwf7/wAVSCY5ku2uEd2nPAGtOZn7BhP4LxaDFDcLDwsHCwzuXC47P0yRYRhbFH9lYMkr/KEb9jmQKjlDrU2xuwc4AmWEjP/5xwv7OAJd6KEPAwf7DtQoDA/RJwsJ5/0cKAxz5PXrBwMKpGAOs/sw1O0TAOf/8v8H+wUoHEIwJReeEAxClCS0FBRMZCzDAwMIY1TYXQv7/N/7//zj+/XP+/v3BwMAF/sNxBRAwGk+SwRA1kkd9BRBZJ/jBgJUR8CitwMAEZIhKnoTEwHjBBIsbnvM+tMPAUbWbxi6RwWwaEO+JrcJxWsJmw8PFAMPCTMJfkMEYEC9TqtnBwMB+xMQNw8BMwMDCwcKE0hDn16U9wMBnwQHKxkrDwMLAwsEHwQAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:52', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('65', '27', 'TSNTUzIxAAAEYGQECAUHCc7QAAAcYWkBAAAAhI0mqmAoAPMPiwD3AOdvgABCAGUPoABMYOQPAwFVALkPiGBZAOkPGAChAFpvnABvAPQPsQB8YOYPVgCIABgPpGCIAPkPBwF3AINurADFAPoPmQDNYGQPaADOACwPRmDaAOQPTgAkAFtvpwDiAPwPKwDvYIQPqgDtALcPxGD3AAcP4wAyAAtvBwH5AAgNvgD5YOwPnwACATsPBWEOARcNyQDeAR9vfAAjAesPLgAjYSIPvQAoAeUPl2AzAfoPywCJATJuvQBTATEOrgBTYdgPrQBaAUcOsGBbAaEOxwCbAa9ujwBfAf4PwxH/8eoP9YGW8Rv+9eVIfpWDlYNr/4JnRvebi3+LgIa5l1sKO4MXe+p7zZ80DwYPBg2zApaXk/nje2/7gAcfdDoRSwc7g4p71mDLirv1LH+0C4LgKYf+jAoGdYeC4JP+tH/5/894sO9PBM4AWXjUfy4SwXthdh1uzJYSbH/5UYz2CbMJxZIMh/75mvEXBoMdVI5OBHb58BLOlAcKxf12+dsWqZNXAnfsPgwrCdtkQAWS7qLz5BN6v8//uQSVjXCXtPNwiD38st1O4nOSAeLtUAXbpSLEE+j5dXyddZgNehwPJX5eNIL6sCxAPwECdSJ71gCsYGzCwcHBOjrAdqDBwEMRAJHEZ8efwVrA/8FwOkoNYLgEccJ+wfcGBKYHacDAwMLPAGFsasX9bf92yAB0bls3wUXCVcIAz3JswHDABAAlGHAKDgDvI33CnYhgoWEFADEuXpcKBJ4vgMJi/8NDDQQdQGmBwVrBOFcPYRE7g3xlwkMPBOBHYMBia0wFWgphF0iDwHjAB2bGn8EYAP9SgET/xhr+/oRkYv+lCASfWHdUwmkGxYhYB8PBPhoBF62XzCpr/8DFQ8KgwcShQ8AaARNuv1L7FMHCwv5+wZ/AXKH+CQEUfIa6/3JvABCHg3RoqsLEFgsAU4tewAXAThIEAReUhsI6wA9g3pF3/2TBBsBfYwFfwGvCBMQTpOZtDQDjm30FwlHz/o8OAROtTGaDocH/kxgBA3SGxKL+w2LAfnqQwW2iGAEUvYzDlMNjnsNwfmZnwcwAtKT8wf84exjEDdbpwGZrgMJmmXF1aQGq3fr//45sDGA+3mDB/8GnCAQq4GJqwVoYxBfm6Vt0wMT/hrfBY6B9DgCi43cHkPuhwG/AwgYAb+T5NP8IAE/lXqfAYGQBput6lQXFruidSgQA8uwPTQ0Ex/Bxa8PBwAf/lGQB5/UGKg7FvPIdw37Bg3jEzQDAmQj////+W8AA4psSwFsLEKTE+i0hwUIGEM0c0v46aRGCH+n//TtA+mgRuSWJxYxABhShJhcx/gQQKicaJgUQ6yskRcMQu0wjS/0GEJf18f+c+sAUEQ8+bMJ643iWwXzBBtWwUsnIxpUIELeTt8KnxZkREPNXbnHF8sXCwJKACtXAS9DFxMbDwcMF/wAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:44:52', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('66', '28', 'TZVTUzIxAAAE1tcECAUHCc7QAAAc12kBAAAAhHsqutYOAJwO2QDUAKHaTAATAIkP7AAS1uwNIAAYABMN/dYbAD8NJQDmAA3b8QAnAMALOgAj1roNHwAxAHcP7dY0AKYLEgD4ALTZVQA+ABMP8ABJ1okOBgFYAG0Ms9ZcAJkPPgCbAIDYFgBrAAMPvQB+1owPWgCPAEEPCtaeAG0PAQEBAIPYtADHAIoP9ADP1nQP+ADeALoP6dbiAP8PGgAuAGrZZgDzAHQPsAD+1gMPhAD+ALoPu9b/AIsPjQDRAXHZwQArAYcOOwAq14oNwAA0AUcOz9Y2AQ0O/wCMAXrayQBMAYMPtABL1/AOgwBZAT4OENZbAToN3wCfAYnY6Pv73gP6pAv6Mutodp1qg/d7CMzg5OE/oOodz+nwcISZgJqY4TdByshYwQQVHFyAcapE/C0Xoaj0BZUIrOjF77JodAGufuMq3o3Gku+PIdPndZ7ZfgdS7I88zvdXD6//bP3SpHOCcoJef/5UWt+GC+P35vluAlPF3m07+k8DjAtWX3r/MwILj8IPYtyyCicDcIMU+2shcYNaee91K/rL1Rr/IXQe9O4BjVIQkKKNjXz0DpbaNwfjjTcKePqqo6oBOAYdfPcFMdlygVMCwP7NdzXU/Y8ViLmNBPd2J5JyxXmxAtD7oS9if1t3GQ2Ki3utQktHQwvPTA/mx5+Czv7bvMkBJJ4AAromzA/FdgTBVmk3wv4izQCZ1hL+wMDAwAQMBFMADP1TaMEH/gHWsAEP+10DxAIFn8MFABYETAfEx9IACgRMlgTFIAGFqA4AaQUQO1dt4cX+AwDfBvX9FNZRCQzB/jaea8SpAgERCz3/zwBVwhJDwv1kD8VlEcxpXWTBwYXIAC7I+/3AKMM2pAME0yNDxREAKuAG+5BZwE7+bwTFJCLIxcAGAQsx8v/7F/4VACM1EDrB+41cZWp4wBHFVznZVcH+wMDClMTEKcADABZABjsRBINDF8HAU2UFwYCPBQAGTANZ1gA9mQj+wFPAwAXAxIB2/wMAA1ky/RbWQ14PZP1wBf/EFsBwwQMAJ5p9xNMBu2AafgjFG2wrQWAVABttzGhYlsFTcHAXAMZ1AoDBUURUwMAFwcYpeAcAAoj07loD1gKQBnZZDsVelNYu/1NZfhXFEpsrV//APcBDh8GPwAEKrvT/RAXAT5pLwcFwFwDHwO0r/lXAwD7/jsH7FMHBwMMOAHTDiKR/wf9JwgrFrsxfa3hsBAAtDICT0wG5yRPAhMEAKxl2dwMA8eTF/hLWAuntQ0o+BCtAF/57FAAe6jVCT4hHwFlZCQCm8nMWfWoOAGvyMjw8FsDAwDQGALz2+ev/CQBm93CLa8bcAXH7cVnBnMII1on+/f86/ZNQD8aAAndqwlngFxXBB4n+XETCRHj7F2uEFxETD0pZ+4V4dGJxWwvViRWhwHFywMAJ1ZEQLPxGWQoQitJ3c4o8BhC7KolN/xLHFyyA/P7DOsDFF3DBcHvDPsIQd+RswmbAERAhMpQWwXeJwH/AkgcUSDd3hG8DEC42DRIHEHo5cMSVAxQzOxrFAxDN/hP71RAPQVr8ENQWTYX4Qf/+wsAEwF4pCRDETIaEBzQPxnRP7UH9PAXEA8aGWPc+PAAAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:53', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('67', '28', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:53', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('68', '28', 'TO1TUzIxAAAFrq8ECAUHCc7QAAAdr2kBAAAAhVM4D68MAFgMQwDWAPCkgAAbAHYPxgEYruYMLAAnABwKYq4pAHMP8gDtAPGgMwAxAOoN2wA6rsELFwBBAIQLv65IAHIPGACQANSlhABVAPEPdABlrvQPtgBwALAPu654APsPdAC7APWh5ACGAAEP1QCJrnMOZgCeACgPLq6lAHIP6wBqAIChfwC9APAPawC7rgAP1wDAAMwPaq7lAO4PrAAgAA+hewDmAPYPkwD/rmQPfAAOATAPvK4RAYkP4wDRARyhagAeAekPTgAarwIP1AAhAecPrq4nASEPGQDtAeSjeQAoAfcO1QAur7QNUQAxAaEOI644AeQNGQD/AcajCAE6Aa0PRQA+rwUNoQA+AdoNaq4+AfgLXwCHAemirgBGAZkNVgBCr3oNpwBKAVkM+65LAckPewCJAfujKQBPAQ4O+gBWrwYNqQBXAUAM7K5aAc4PeXBDZYpF7xziDaKHvAdOKZKDaZAB9cJ31V38G4rk/f9jg44kdA1qnfuHhRP4gAOoNIIN8mzaMSx8cSpYXX6T/krWbJF5EorrJwOfUTqCwYBdhnz/KdHAgNIGKIv0C5NQ4wViA8sDywq/0BKNLgHXohYzY1O7/hN/rgHOh8INYH+2hnOH8wbTUOMHwvqC+sYQWCn7Ct8CmPsziGetOwqug/cV1QvPrPeS/ngKcoN/qFjsDtEDUWvXaPvdzPnuk4tudPR8WJvo7Q0hEgsARKf3mNoCsQf8m5smFS7hIcX94BC8W3j1wNb19CDTRNQHfC5sGCOEBdx0veNpEH3l6OUyTnaW9QzJCegNlSl4iMmkAQxE9KxTjPQ5iqbwkf540jQV7VwN4Vh61agdG5B/kR3Y/14FJAlN/XmG9C58pBhPAfoaJaMdsUXI7bFrmQdWIGIBNN0tx77wDyBLrwPpJtkHANABQ1HBxSkGAMvEdMZTbRAA6QF6BmDE9FtYBQAgA5XDf6sBpAZ3wjHVAOmoZv7AwFVrp0AAricHT8RLFcX4FcP+Vv/Awv4Ewfpuwf///8HBBxYEqBBg/UZkaTvBxFD+wMDAbgXFYBfZwIQHAH0Zv8B0bAcAYyZ6wzqEA65iLG3A/8E7DAS8LH3AcGB3wgEIlnxtaBcBFoGDeshs/3hGwMAFZQGut0d0aggB0EtyblR5DgC3TahMfm5FcQsAgVauRFFuhQ0BD1h6pcLFUcF+wQgBFKGDx/XBwwcBEGy4VnSrAbJuencHxBd13ixbDwCzdLHAYcNZw/3ABwB/e3FuZ8EOARN9uGb71sHAwH8JALWBaORFwQQBDoZF/8e5ABCRg1TDtE5Sb8D/bVkXAdedjMzDZ/7Dc1Kn/0OnAWKfcMBilhcEoaSG/2p+hIDAYW5EBAAnpnS2CQVJrYmAccEUxeC1LW50/8FkbQT+x24CAO+wCf/SARYeiFqBd3JRBWtGrQGxvgD/BcXbu603CwEPw5BBZ32oAdvECf/A6Q0FJcRxa8FWwAXA+KABceDtwf39QPpuVgwAheT0/f767DgIAK/kA+pUHa8V5JfCWWdFwcXFav/CHw0AtuX14UE4wv0PAGLlf8rDwsM+wMEDyAyuauZpwP/COm8MrrHpCThb/8MAVlVjSsAFELXJj8cxEBDfEZfAssLGImP+YAYQtdeMxGp6BRDnExM7wP6rEeUYF/7/PAgVIRr9Kv3//cMQ3Y4W/vr6wQ3VBiaeaMDFxMH/B0MGvtYlIP0FEGomE1ApCBB8Kvo6/flTPwUQrSoeO04WvlUu3lUq/P7C+lH++fz/FhHWMbVqgVHBwsDDB//GbMHBQAMQTPdpxKsRAjctewTUEjz4SwYQczvr4fwLvldB0/8i/zj9xVD/JgQQc0I4JQa+Xk+TxgQQulD4ngIQLlQTxcMQWvYBwMA9BhBPYQVuwVkAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:53', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('69', '29', 'TXlTUzIxAAAEOjgECAUHCc7QAAAcO2kBAAAAhOcmQjoMAIEPVQDjAHk1eABXAIIPQwB8OosPqwCDAFMPITqEAGYPXwBVAHc1nQCUAI0PCACbOiYPVACjAKgPpDq/AC4PSAABAF81lQDJAJYPkADKOlIP2QDWAPMPajrcAFwOjwAaAIo0XADmAOQOBgDrOkgOqQDwAGANPTryAEMPqgA5AMI0vAAJAcoOUQAUOwoPFgASAfwP/ToXAdYMwwDbAX40qAAjAYQO4AAjO78P7AAnAYsMnTooAQQPqAD0Afw0RgAyASEPFgA5O3APMwBMAWIP1jpNAWwPmgCUAQc0tABTAYQO7AcvOU4frf8r/+r3NsOmB1MTqgnb/QbMSAp2Dgpz9vonzUYPZQr76KYa1cCbBTJj9pMincfA6P5iFVYfcJiimxOjQQj28Zd6yVI0Clo/yfikckHBq+y3kgMSVHm5MSvQvfoK6LM0jbNQkhKitadEg6G9GePZX3YY92IfyqIMeCPV/mx/6WhQBoGDrQpQi15+bH8r+GMbwIkPXCZevbKB+6uERbZsgPUPaYcXnfIgDHmW3L7XVAxpujT6TXQd9LeAvkbvZfvrUQQ3JLrDt4iO6otzHPyK0u8jgYNODfsChbn3GK6NkzWB2TwaNgECTx5RzwBJOwL/wTbAP8YAJTL8/wsASg3GR1DFVAMAQg99BQ8EGh39wE/B/gRA+3UEAFEigHjOAF0cAUBLwD0GxVEtQMFvEQASRiL9+2grwMA//8DUABd28cD+/8DBO/46az8RABhU7Tr+Qw9DPv4KAHechsSxw8GEEgAOo+c8ETn+wEfB/MEAeFQRUgsAg3dVw4X4Y8MTAAx7ITA4+sHA/f/+wTr/UDQBBX4Axv4F/z9kPwQAIoZpuwMElYcX/g4AmlWQxPiHdMPAgwzFW5ZNw//DwcPABMJhNwGYlozBbk7CjCoBoJYaRv71wPvBwP0aBADRZCL7xQUAzaMtXcgAVZ51l8FxwG/vAAOS3T79S0BAO09BDyv+wPwh/jr/McH/EQCcupxlwcD7/sPBwsJuBwsEnr4twSz49ztfATqewjfCRwjFRMFmw8DCwIMVxZfBmMXDoMPAwgf+x/iHw8F6BQBVxpf5ngUA58s3BcL4KgFQz1rCwgbAxfvFfMDAkA/FVdBpwJPCwpBnBAoE4Ng3PP/8wNgFBLfdl8WrDwCv3l6dwsCTwcPAXxIEoeCiwLDDpFbDevoHAG3n6fk5WRI6wuu6w8CJB5HG+cHBwYvCXsMAdshBxYIGAH4zHMT+fwoAOfhGTcDH+HwFAHn4LQaBAir1EE86/yHVmRc8/sPJwcXCBMDH+sPCwMPC/wTG+vrCwcLBw/4Hwfv5/gcQExY9SZcBKhgWPcOEBdXrLnbB/cAHECfuMMZVxQUQSDQnRgQUx0BTJgMQIZkMxToAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:44:53', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('70', '29', 'So9TUzIxAAADzM4ECAUHCc7QAAAbzWkBAAAAg3EfnswXAHIPjwCAAPDDVABJAGQPEQBvzIsPUAB0AJ4Py8yGAHoPCwFiADDDwACrAFoPGQC0zKYPugC4AIcPwMzDADgP8QASALXDSgDkAFIPqgDmzEgPqgD8AOoP5cwAAaEOeADJATbC5AANAdkPjwAezeUOXQAgAV0Oa8wiAaQOfwDgAbfC/wArAXIPiwAvzQgOywAzAVwPcsw3AY4OuQD+AY3DlQBAAZ8PBABNzYkPggBXAUsPncxYAYoPW4CyEzgnWoAPk/ebpwsYvwb3ShBHM/bn6TcOa2sL2vCLIVD1wo2jfs/buBhm6ju0SXNuTJ9lY8MU6D6d7PvA4jpfdxIWF1+B9wlwvk4fuvluFkKzxDG2f1eTJMtv7wj8gIOlk7KdqTvNpgJA0dylTWNA9ztMkXG1aA/IGeI+KCpREoGDd5q4HIrZLSRdcaxnWsE0E8PAoe0U3pU04PUhCW7x1Bc+34vtqf3J86sB9svM86IBqe+8/+nJprPlaiA6xAI10KUHAIwAfQeS/MgBxQAJMwnFmRC7gWT/CACs0QPDMj/ABwCaGrXC/A16EADvHJdGfHIPVsMUAQU/UsDBrpZ4wWLAYcEAkYzs/v0JAMDyBij5wQ0Ak0b09Sn8M/4+DQCLR67BwqNWwk4EAFGNaYfKAVRNYFLD0wEKmKPCwMP/wkfBe79ciwsAz2tKm4u4CQBgrFfAp1MEzKp1cJZ8BsVNe5DA/2gFAK9BbZrLAYS8TMHABMDC3AGvjWedxThcwkeqBwDMiR7sRxjNFJqtcHzBBMPCD3R4wcBbwLYPA3GoacaUw8I6jcBrAgDFrCf/wQDVBDBbBAEMrPRAGM0UsbHBe3UEkcEOhXjAwP7CjwcDDrIwU8LABcXesHzCqBUAt5OuxY+of8PCw8LEBcDADxAA17Wrw3zBwL/D/8PBoAnFZMWcY//A+v8txba5ioF8xMLFxQfCxw3D/8P/wMMEwMINwMDDw8KSucH8qMFnGgC8u4WE/A/FwsjEw8RBZ8EMwaDBDACrqHSRDHrAwf8GABu7M4b7CABwwFAERUTAAYvBSWrBBcKVDwUQuEgDXMIAwAk2acHHAwHT2UMzBwCAq9bAO//+wwG4ev37/ThKMgzBHQMAR+aTwQbMaudMwJwExU3rgzEFAHHwRjqhANx3LCLCCQBp/zcOw8HDxYwD1VIrMfoJEHU5GrvCwwn/CBBAOvfnQgfctUEAWQUQjj8PmAIQmEMWw8AQRYsNYAYQYl7GZcHMAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:53', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('71', '29', 'TENTUzIxAAAFAAUECAUHCc7QAAAdAWkBAAAAhC0xuQAkAPwPTADyAOUPXwBFAGMPRABKAOsPtABiAMQPfQBnAO4PMACuANoPNAB2AF0PXwCNAPsPxACLANMPSQCSAFIPMwBaAFYPqwCiABYPowCvANoPjACuADwOGgCxAFoP2AB9ADYPhgC/APYPAADHADsP8ADRAPAPEgDUAFcPewASANsPVADjADQOSQD2AHAPGwD0AIkPxgD0AE4PVAAyACMNRAD9AC4NuQAKAYEPNQARAecPQAAQAbgO/ADYAVcPjQAiAWcPHAAnAVUOawAlAUIPyAA4AdQPOAD/AaQP2ABEAdgOiABCAQcP7ABPAR4PcQBRAe0PUgCQAYsOsQBZAfEOWwBfAfEOvQBaASEOXgBeAYEPigCaAfAOygBfAfIOHwBlAeoPy//vFyITuH6y+/cDuYbveUd35P4iiafqd+/eCA4aYQY6j3L01YfKjOON0IOPDWMOs+TWAornCwHrHx8XnQNOeRP1lPscA/L6FhwbHEsBR4mq5r7mEAV/5A8iCQtyBtYKvPlvAf8cVf0YGyceNAnqJ1cEKwXe/LLrZgzy/joHcOvPbBaukRFjCEdaZ/C6lFMMN/RfLj8jY/33FXLeyPgc9bJwRQhQeagPJBpd+9YQpGw89wPaSZiJjVuUrwGOfX95vepT4N74gINufSoFEAvzII/TzfyBg8fx8J4DFZ6CSQR4/uzvrHgRZqWH+AYM8hfprfv9b8thEQ+kiO6hlA/IAZwDjAEJ/ZIM5feo9Kf4oPepfyyXhAUkC4YGHRBUCBwDGPh5ElUXHPRVBKHgASA5AcePJpkIAGoAacOnwEIKAXoAa8NiBcBcBwGLAW3CawQOBaQAd5NlwGqWDwXHA3p+hcI9BlkKAMkLdMDB/wfCxcFawMHAFQAWFH97kWTAwWLBhv8UALkmd8LAwgRkxWvD//7DAwAnJ4XACADsMYNqRcEMAPA7g8BveMAAX0ZjZBAA9UhMb4FNd3cRAH1Son7FXHdWLgwBA5yXwcFvdMHACAB9Xvg1/jMdAP5gSWqVwG6Mc8JSwATDwcLDxBIAsGKyacSSTFGACAC4oAAqNQQALG9geMAANHZjfgYANXqba/oNAZ6H9y4wO0z4EgHIixP+OwQvPTsxIgBIlFdAZHDG/8LBxMPBB8OW/3aIw7QTAIiXVnNqwcLEwJsBmxcArJ8G+//8O1T6///+wD3/BcUxp1NaHQEUpLBYfILCjYhqwG/DAMbHEgFlptMpMf4wxf4uEgCtphPmMcUw/kA0EwBqYtr6/v/ALv///TpBxf7+BQBkrlAEwMQEAYiwV8DD0QCVsfX9+v37wDj/+v7+/8D/wP87/fgEAR+0Uz4Oxdm4Lf//RkAr/90AwMY1MjD+/0U4Ivj+wDjABACQDmD6/QYAncxM/Tr9HgoBo8xDKP4//h8eAZXOVv79PvL5wP3/wP39/jv9+/3B/v/8wv86/sX//MAUAH3TH/z4+fv7/v3A/jvA+8D+/Pz8/wrF8tE3wcAqPQMA3NlW/w0AqdxM/vX/+vnA+P4dAF8kxkT////9/ML9OP77//7/wMD+/zr/+8L8/f8GAFgjN8DIwccGABr5icWWCgHC+kkr/gXA+/4HEAUaN8OjBhX8IFD//j0D1BIuU8EGEBMuIKzDARBeYAN1BBD1YQZpBBDHYYDAnAAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:54', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('72', '30', 'TT1TUzIxAAAEfoEECAUHCc7QAAAcf2kBAAAAhKMnvX4gAJoPjADrAJZx8gAyAJ8OxgE4fqEOMAA+AL4Pfn5CAIsPxACOAJxxngB0AI0P6ABxfnUPEQB7ADcO4X6JAJYPPgBIAHdwLwCPAPgOUwCbfoYPXgCtAKoPGn6xAGAPdwB8AAVxlQDAAIMPCQDnfpIPrwDlAEIPdn7mAGQPJQAoAEpx9wDxAJ4PkgAFf98PqQADAUUOfX4FAVUPjADKAV5xtwAZAYAOKQAgf6EOrgAmAaIOaX4oAdQPhQDrAeZx5wAwAZYObAA1f10OkAAzAYYOXH5OAcEPmgCVATpyyABaAYwOGQBbf4sOHgdfCDb/SXXm+AP/+QGKCWt5eAFbC3MLjgpf9Qrz1fsfAybzmn3W+UsOPgsW9p95TH+FhzUDQIOug56AlwN3C377jQK0Ay4HhYSMhyZ3PwReisL/4HO2gap69mkD7B5yFemLgGZ+ioQH/COCbA/+91MUPPdGdqIEVhB+iSZkRwzu8zPvcg/qASt1p4mGfc8M6APOhnMoQf7i8Hd5uXgb3HJ4WRhoA1FZNQ+rBWsiqQ/1losktfa6kb+CtN0oEmqIvPvyDENz9fehGvnfFWM9lHMElu+n4mqD8oIX5e5eAQW6UMuHgAHD9MPvZYpnPUMgPwECh+GQFX5dABBGav2hZ1F4Ab4AGv7AvgwEQQAMRl7CWMoAcX8RP2j/XMCeBQT2ABNLDACbxBD5PP7DUcAEACwMHj0KAK8CF/2ZwsSBTQQA2QkimQgEUQsA/f9VwdAAI2sCOFHD/FMHNnaBFgAZGhPFOzdWgMHARGjBwAX/DX4OKv1AwP+WCQRuN/orwFkDxSo7/cUOAH5FEDrBR4HD/cDBYBPFCVKc+ktD/0ZYnRcEdmLp/zFERDpV+wX/aw0Am3BVa3P7xf8MAJt2TFJoGsULAKN3EwVKxYBcEwBCivc6OEQpUsFEBgA9VHBwvxgAAZrc/jhoL0BVVFtqDQBUno0AkP/EWhgAxqbgO/81/sA+VQX9fzQMAFqscJAEa8a+wMQWACGtIlT5RcD8wkREWDoDBGeuZ8MDAB1xXMRyAXe1+v3/O09XvA8Ac7p6wgZ1erz/gw0AmMHJ//o0/sHA/kwQxZDG/cDDgMHDwAdrX2sByOOad4MA/8a8wIlkfBAAb+SNC8HFm8DBwLsDBBPpZMIUACcs1zmAPyfARkT/wAAkj1JwBgAn8YlZxXoB+vUiQRLFzfPuwHDCwcV5Bv/Gv8L9GwAH+BX+xL5B/sD7aEGWP0GABQCl/oaVwgDWgB9GdwoQrcEMN75rwggQdAWbxGseBxClBX3CBMbGfRF5CFfBENXYFODC/sSBw8IBwseBw8AHEIYRn8KMgQQQsRiDwgDFAm6oJnDHxV/AEGhTR3gHEK0vwzJicRHhL5ZFpwDDwST/BBCpNVppHRVtNKLB/nLBBcX5vsPBgpKQwAfAY3oRjzhGiA/UAkzuVFnDxMXCWwcU2Uve+CLBBNWsSYQfBBC0XRABwQAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:54', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('73', '30', 'So1TUzIxAAADztEECAUHCc7QAAAbz2kBAAAAg3Mgts4eAB4PmwDuAJbB0QA8AKAPgQBRzngPkQBvAEkPw852AJ0P7QBEAJ/BXgCJAAIPRACIzoIPmACNANkP3c6eABsPbgBjAHDBXQCxAPYPoQC9zmwPpgDMAGUPfc7bAG4O2wAlACHBfgD9AD8NIQAHzykPmgAHAVwOzs4IAS8PhwDOATvAiwAbAbgNlQAfzzcPqQAgAYUOus4lAUQOlgDpAb/AcgAxARQOCAA3z0kPggA4AV4Ni85JAZMOoACOAWbA0IuGgreXHHv4ODILgoZvDuoHNLUW7yf7LnCPCPw+UoDvAGsQ/4Fszpb/rpCCgQcOAqTX+FoQ6ZrbkFBOO4EPgav7vH1exbtwtYh1hYv2vrbk/zYCVjc2gijFUzG2AgbTU/2tOe6GbQhRq7OI0jQTCa/hYWGA43aRSAqu7brzMPiCTkChgYDx/WAjYeg2+mOeTfxshu5lyARZ/xoVqAWusDAifXiOgItc1snPCvobeYjcCNIsoPj1MpKAZNbRZrfNvod9GeU3AswtGtAKAJPBE1b2cggAsAQcpW0Ezo0IF8D//rwOA7IIFlRSQsCWBQOnDRBLBQBf0AxFwQFJHBPG/DpULA/BWQMAuSHbwBDOQiwAwP4+Bf3Dm3HBNAwAnusaT6VEwQsASTfGPfyOwcAFANM/5cFaxQFERf07S5AOA4ZQAEE9UcH9CQNAapPCwMNxBgkDQ3CJcXzDDcWVcdRX//9SwD3LAIO7Dv9GTGRkwwB0uIeDwQYAxL4cwjDF/gQAW4qyeArOlYqXwcX/BsFtwwGcjBb+VDrBwg/+wPwMAIVLFvzwRcFQCACaVB5XiwUA4p8TN8AA3W0jwjgGAGpgdIAPFgAwqenA7zTD+/7AwFhb/cIAXH72//z+MhHFL7gu/zv8wP4xOsD9owIAX79rwdQAQQbl/vzB/ScF/vwON8AFAD3Vk8HBDSwAetZ9xQbCjw7Aw8HFwcABxP4Px8LEwsPBBXTBD8DCw8LEwwXCwA7CwcH+BwBH3BMy/EERAHrdtMTAD8OdwcLExQDAscoB3+EcSwXF2+flw8L9BgB7NWKgDQkAhPBexATFwQrEBBCLASc5/QfefgJGog4QXgOuDcLHxsTCwQbCwgzJBBDoBSA7wAbe5Qgp//7AzRCfxTb9//73GM0QyMI1aPwnBxAUDC4P//4nCRBQ5TfCD8XBxcPCBdW5K47/JAUQ0Tb4/DLLEcs3Rv4t3xBKgawxwMAo/Dr++DMr/0AqwAPVUFbZwwAAAAAAAAA=', '1', '1', '0', '3356901120048', '2017-08-05 21:44:54', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('74', '30', 'TBtTUzIxAAAFWFsECAUHCc7QAAAdWWkBAAAAhYUxllgjAPoPHQD+AONXxwA9AA0PugBMWP0PpwBvANUPaFhxAG4PKACzAONXwACGABYPSQCNWHkP3gCKAFMPWliRAPIPIQBfAOFXuwCgAB0PkACtWPMPGwCwAJMPbljDAAUNhgABAB1V0QDVAKAP+QDTWOEPiwDbAOMOXFjfAPcOZgAvABxWjADxADAPhwD2WN0O6wD1AOoPHVgAAToPVQDEASxViAAFAUAP/wADWSwOuQAJAfIP0lgOATMPfADTAVVXZgAZAZoNtgAfWbkN9gAdAe4PGlggAboOSgDnAaxW6gAjAbMPrwAvWXQOkwArAYEPhVg2AVYOawD+AW5WvwA8AT8PhABHWYMN7QBEAfIPjVhVAVoOPwCTAf1VYwBaAeIPtABlWeIP2gOb73rv0lvaB7N7CxcO/+pL15NaB6fuS/3XwaL1Zn0u+iN3513mk1cDtfu0gw9R62mmDoOItINTI36L4QNihU587MpnAav2LQuLi/79YAOy7ecVMHZKISZnge/WEOcVpK7sF6PoBnP2apbe2wSu6LfIXPoUSs8OqeEWGCscAH3A8949mfHIDt9C9LG9tl78a/yPXveTfoBODf9j9BbQ/zETCRFY8afQJFFNB36ElwTKoN4JbYPW/O8EpcOsuQ0R6OfkJOQVuWtMIx1FBXvvoaP2foCqjg8Ty0iDfOI0uIuogwskSAzF3OG9YPLbrNONpe0VFgTj0KAMFWKI0/yOCPpRRI3K2Bqiz4QTVtL4lXveBAPySCGPGZMVrQCveCO1LACJi1p5ul6GPe92ASBPAcfnJusLAI8DcEoHwHVQAU8EcMPAov4NWHIEcF/BW8AAMl1mXQ4AkA21wFyYwMH+b8EQxagLLHpSwcBkwjrBAVjDGYN+DgBKJHEEwMFlwlIGxZchpTzABQDJO8P/+6YPAME8hsAH/8GYdcBvAwAZ+2LFTgH3P5PBw4B1fZjBcML/WQbFyERLwMD9wAoARkTycy5HCAB7SrHBxDLBCwCDSwAFMMSmQwUAqm0J8AQFKW/6NAcAaap0hjwEAKlzE8CSCAUzdW1qbQQA4XllmMEIAMWHFoA1AViGiHrCwAvFYo61KChEBADiSB5tQAAHjppYfkCJxjrBdFwOAFtXaYDTw//C/sbB0AAkzuPARkT8wTtGxaVT/hQAtp1SwpOb/MSHwcDEOsHGNwUAHZ5ihc8Au8cX/sAvwMAFDAXkpSDBNVn/jg8FAKfw//80/jpGO18B4q8nwUM7AwVPsFzBBQAdcVfENAsArr6akkyXCliLwgn8/f+BwPuZ/cM/BwCyAyvEE8EHAIrIGjow+lABvMonT1vCAIWTgsLFwMDF3wDViabCwXWTwVTBxJmCw8HCyJvIAIOKFy7//sBGjB8EU9mk/sKB/5nCxJvDwMPAeHi1wcTcBwDT2Sv/gA8FBd3w/foqNzjAQFQBjt4i//7qwD2ZDABs6RP7OTM0ph4KAI70LTr++g9LBgBB90ABwsOdAgBi+B77wADqoChRAwDq+fHBA1hV/eD5+Po4CBXRCzr+/sL9OvsBSLkMOkcIEHgMMRxFBxDVEjcEwftoBRDbEjTCOw0VARmc+vv8/Dj7/qPBNAMQfBmKwAZI9SAxwQcQ5CUuno/FBBDtJ/WBAUgXKSvEwCDVZi/bwP36/PvBBfv4mMH+//3+/jj9+qfB/8D+wMEF//qnAhCQLkbAwBCTdkH/QwUQ0Os3Q18RZzprMBzBEBZjKnUEEH87lScBSGo/ZP/9BNW8RRjBwAMQwUD4wABIbGKGwzcAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:54', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('75', '31', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:55', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('76', '31', 'TRlTUzIxAAAEWloECAUHCc7QAAAcW2kBAAAAhIcnelocAGIO8wDiAJBV3gAwAIkPUgA2WvkPaQAzACYOm1pHAGgPdgCVAF5VdwBiAOEPNQBmWpQPhgBkAJIPnlp+AOEOvQBBAGJUmwCHAE0OdgCUWlYOfACdAAgOp1qgANoPugBtADlUVACqAE0PTACoWkIO+QCuAGwPi1quAMoOvQBxADdUfwDTADsPZgDXWjkPCwHdAFoPoFrwALgP/QDZAYlVlAAdAaoPbAAZW6QOSQAqAfkOVlovASkOawD1AaFV0wA6AZMP+wBGW7wOuwBEAUoPX1pIARsO7gCIAYBVmABfAY0PcQBbW4kPfoA+bKIJWVQyA18v5fbu9W95uJImmO6ju4DK0p7syXJ2ElcTbSNMB9Z4pYykibtang2vA1czdHjJpVN54Ja6jIONfUqbGaKF9G6E+2EtBPCJfl0eHI3RXZuBhYa1nsgSfFXQZvnqKoLyDVNNUXrheS1rzg1TIV5vSIqd8pD/AKHrWAbdRgXfchagi4DK/SYGUvkvTXZvioAGF9IQR1Ne/b/z2QWCBKOuXP0KG5rvkReR2U+Z6O9dhnxvZSQ3jGZpXQbDEU9WlIOll86kJP45UaPvGfc+eDdgkqvK+Yf19QcfA5OxeP/F+9f07k+KAHogQQECY9pVB1p/AGfBBwBhCwSaMMADAOYR1f0CWnQUZ37ACMV6GDPDwk7/EQAqKJSlgsKTXHjCwwCddPX//UEJAFY0bSJywQsAmzQ/wfilwcD8VwQAXkR0xwoAo0X3LgX9+5o1BwCcSmm+xPtPABJOoHduSYlum8HBwQkAdJFaxD3AVQkA7l1fiMeamB0A7GKWRZfHmMD/wmTDWQWQx5qCBADzZR6EGAVVZJ7AwcHBBIh9mMJCwMJHxNUAhT1beMBtSXQDHQTcaVbAeFt+B8DHLcDDYndwC8Wubq0g//7ANwjFsXSnIEYKALmAtMWZIsAEAJeDU7sKBJuFEP01fsDGAE7dV8EDALmHrMQHWpmMTMAFAHSUXpmECgC2lPAyKHWbDwC1l1OIBsCUm8CUDwC9mZPCmctgwF8JAMVfHvoUhREAgJvQBvz7pPz+/vzA/QX++6X+EwB8oU8EwsSbwMGEwoeDOgkEnKYn/sGDhc8AxPIxwMCRZwXFUagVWgwAuq1GAcDG2sLBVB4A9WipbZjCw8bDxMBEwcWbw8HC/8PBv1wNWlauTEp+wt0BFfSsaoDAxKAGwsaa/sHBwcHABgoE3K5GfHyDCcWLqxrBwH6XBAA5siMHCwC+uDFxBnz7SQFmwUZ0wFzCxdlxggYAptbxfMVSAVfXSW+gxgB6jTzCCgCn9e55xjv8BhDOFBYHwXJZEUMfScMF1ZkkQMNuBBCtIN94DUpXJR5nc8LAECxwQqAEEDArhZ8ASkktPZAEEJMwI84FENY7CWnBEEQcLKcFEF9I0v/7nAIQXU0iw8AQvDoHdgAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:55', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('77', '31', 'Ta1TUzIxAAAE7uwECAUHCc7QAAAc72kBAAAAhBMs2e4XAP4PpQDYAPfhKAArAOkPBgA57gAPVQBhACwPee5nAO8PoQBnAAXhLgCnAGEOPgCs7hUPbQCuADEPfu6uAHEPMgB2AGbjOQC9AF0OfAC57g4PjgC/ADwPpe7NAAsPkAAcAAfhMgDbAFkPjADk7tUPwQDhAOQPMe7oAFEPmAApABjgvgDuACkPKwD77icPpQABAfsNzO4AATEPgQDDAeDjJgAIAUUPLgAI7y8PvAAOAfgOhe4TAesNFgDWAcrhnQAWAWkNaAAY71UOSwAfAfYP4u4lATUPJgDjAcDhuQAwAVIPhwA37yIPwwAzAY4Pi+43AXgPUgD/AbbhJgBDAbAPJwBN704P3/z/DiITthmK9uMHvwN2/9NlIxNbBOsXW/477e6LGgq/8xKD3uej9faSVAOUBlvn4gfP97fzVYemE4b1lH8te8NyTOnVA14KzP8Q/m7q3AcWEarxZPIhZcT73QkNFqT/qQdk+T0PYQj0huoSHIY1flp6YfueHhsV6fgdfkcNEfeM4jIQHAtA+ZoCpfum8tr2UNbpyFgDrfX9Cc8Q2BWzfHrJpXm7gAobHQud+uL95A2hB9gDVAudhwN2mWfUDuchJRUsLpltuO0NGVkGZBKBbcdyFQqS6dMSZRT8F36AOAscAvL7bHAx8vJgBfvSFu8S2hG6jismZX6Eg0YHke97jM7t9x3OBsv8I1nLdUcEIEYBAn8kcusBTQFpwF3DAGbvbMFqEQDMxHDEEcP/eFNzbMMA6+x7wH8KAIfDa8WK/sBsDgClw3SBLMHAUVYGAKMIbS5pCABtC2CG/nfpAfQLfcLABy8H7wIUgMENAGQfdZ5lZFkVAQHlg8WASGltwMDAnQ8F5CyJwsFlxJWE+/oAATaGcMKTwcUvRnZbBgDH+ABQLhQBD1GQwzpyjy95UlXBDAHLWoiEwcKBagsBx2GNjHRvCgB5aa7/x6zBYRMBCm9Ke8Rma2pq/xMBz3mNvP6IwH57cNcBAWyIWmfCwXgEwMWEFQEKj5DAu//FfX1nwXEeAc+YlIR1g8LAwXgEwccuwVrDwMHEBQoES5/9NTxWD8WdoJqKhIR0wAnFq6DtP//+WRMB1qSILv57wnzCwEbAfe0BK6ZpwwzF96J+aMCWwVkGxXe0npzBDACQuzX9+Sz9wP/+wFTAADBQYcFuCQC8eww/vcAFADjBVzplC+6LwWnBiMEEwsUtxcbDwg0AV8HwE/3AwDXAwP8HBEjNDMD9RhTFvMh9xcR5wZPCBsPNLMXCqQoAwggXQr3/wQQAk9Q4JA/ujdtpw5PEAMio6gGU2wAgBcUv2I7D/8UFADQaV/t4BADE4Bcx0wEWDKXCa4nAwQHC+2eKdgwAR+SVeMRjjgsAw+UgOjjF2/0LAJ3sFzj9+C/6wP4vCwAG7iCv/sDA/iYExaP5TMvHBADy/+dEAP7vAydUCRAJBCmvwPv//ggQAgU1EcH8PQQQnM1T+BUEECMLTMRCBBQBDilCBhDq1TBSFQkQvRE6//QqAP4XF0CbEhC8Hccv/fz++/v8O/3FEP7//jYNEGofSC78//z//f47/SLkEaggXMDAOfz7Ff39BRDnKPHA+RELEKQvWsE+/fvP/gQQ1zdA7wUUWTlTOwUQxP1MMO4AAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:55', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('78', '32', 'TTFTUzIxAAAEcnMECAUHCc7QAAAcc2kBAAAAhJ8nFHIVAIMP3wDfALJ87wAaALIO/QAfchwPawAkAGUP1nJHAKgPMwCZAJd93QBjACEPQQB9cqAPogB/AGMPS3KJAJIPDwBIAHZ9uQCxACkP4wC2cn0PJQDAANYPbnLMADMPHAAXAGZ9jQDSADQPOwDQchwPTADdAGQPGHLnAB4PpAAuAC99OAD3AKMPJAD8chQO/AABAdIO9nIDAZYOlADGATB9ywARARoO+gAdc7MPaAAeAYMP9XIgAZYPPQDtAaJ95AArARcPawA8cyYPegBBAZcPo3JGASoP3wCWAZ59kABdAVEOdgBacyAOBmov88LnyXYWEA+XUfziDR/h755vfauProVHfRYDDoin9Hb5E3NKI7N7EngKfycd6/xXEgN7owQPDMqHmwHn8oobPok+YuvjC4Z69qNxSGhSHa4P9JjFw7v2upVWAXaTZTfwUe7p1gGrCYNzpwvDCK+I/wDKA3qQJb16fesOqYn3+XcSugSzhR6DgIF5A8r9IYP9dbuB6IOBgesAIXkGAbfxRgVDBX71FAyKEdZur/bG5LOjTYCuAH+BpYbTY5sETYDP/bYMrPyWCrfYkwHafDcrKQSFC3/YqvRfe7cFEij3MdJzDPvi0Rr+xQCluFQgNwECe+F2H3IqABPAP0EHWzMvw2bBPxcAlAATXHrCRP9r/wfCYrITAHUAIv23c8QQ/3XCEQCAxSf7FMDBP1vCatUAiHIoWnv/wMCjaQtylwAnWmvABXBAdQGhACL/WjoOBMIBHi1SwXQE+wJy7QAr/ogExUIFZEILAMUBNAf/xhTCPwQA+AToZQpyHwcJ/FfBO8BmMwgA0gc0gwRbHnIECBbD/yi2wFyMacBSWcEUxW8MVf5iwkNZ/rTCTXQB4Qg0iMDIAANv/Pz//MH/BFtOagE8Hh7AYKHAULJjYnTAHgDCJweMKWvAVT1Kp3HEtv//wxsAAuoMxIz/WF3AS0qfYpRlAQI7DMD++mhfsvzBRMHAc8EAAzQSVhIAB1TJVUSyVDZMGwACpwD5jUb+wf9GVTtZxS3AbAYA32fna8R0AQlsDEr/3AAACgjA/1L+MQX/K7L/wX7A/MTdAAzxDsJD/v/+/f9EssHC/Vf7F8UEnIYmwP/+Ly/zwUCN+BQABaD98P/6jP/+Pv//wQT9+48fAAWt9/44wC6MKsD+/8AcPv35Qv7//h0KAHy0IySKdwQAKb/KJB1yA8Lw/sD9Pv/4jf/A/////j75+I7B+8D//fzIAAe86Pwh/v025QkEHtAx/sBEaM0AJKAO/f38wf85DQT/1zTA/8NRQsHBdgEb3wD5/MAAGZYW/EQLAKgoKcSyZsHAeAsAZu41CX1qChCVBvFrxLDBxMUDEM7UGsZ0EQMUN8P+ugkUTyKrV9fJwQcEFJorEEMJEGjoSfmO/f/5MwMQIC8esgQQkzM0//MEFMI6J//FBxCxRE2P+/tbAxB8gUb5dxFeU3D+JAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:55', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('79', '32', 'TRVTUzIxAAAEVlkECAUHCc7QAAAcV2kBAAAAhPsks1YRAJcPrgDnABlZfQA+AAwPtgBGVnYP3ABOAGQP+VZcAKYPYQClAGdZbgBiAAYPCQBmVqIPmQBpAEsPTFaDAOUPUABDAFlZKQCjANwPkgDGVk4PyADDAHQP/1bNAK0PZQAWAD5YggDhALANmADiVkEMjwDxAFoOBlf4AJ8PyQA+AK5ZoAD/AKIPgwACV9oOUAAJATIOv1YMAaUPlQDTAZBZUAAcAX4PQwAlV4cPbwAjAbkPTFYqAfQPxQDrAZxZtgA3AYwP8AA8V/0OQQA9AUcOzVZIAYcPPX3S+1fZOInTEod/IZfCXNOr+G9ScKcVOVXz/YOHbgWSBHPdJFz27XILxKRGxkv+uQfb/J4Vft3u7ZuFsIqzh/teuXr2/wNYQviL1r6OVRZuEYqi31MSCisTDxCa/TNRmP3p7lqMMBFmLk9yEQn68VdJjaf8/h4Nn/Sm9lOpMAZWChsVvAY1Rff8sOfVXiPpEEnIedYFuf63BBZbVBHB96b1nIzF37Cm4fV5DhPnBayPAH6KZXgYdfGsUAwlE571GPQRULvrlH9tCqOClN3MkdIFmf5w87exZQqkCggg8gEG1SP9CgCrANI/XBoGAMUAHESWBgSGARr+wEkFxdwESj8MAIkBDDvAQpb/wVIJALnEGvupwVv/FgAy0/BLFvxY//7AwDtcXkEBMyHpNSv0VMQIZVwFALAj2VQcViwy4v8qwDoxPA5FZcEQAID+BvqrRUZMwcH/3wAlavbEQf44MTr/xWnBUcFLCQC9Po2Te3QTAH9ByS/6qUdTwcFqwMwAahR1esB+DwDiSO2XMsD8wv3+OjYNVlxfa8NiwaoFBDNe9CQbAB6l3ERl/sD+/f/+BWD7qf7BwMDB/gcDBCVgA/0HAGChZHwPEQCdbB5AOv9Sl4rDwQ4AS0TgxKr8/f7//v46/zpAAVSC5P79OP35qTpn/8DCwAfC+5cdAB+E2v+C/UWr/MD//v/AOv/7l8HAwcHAb8IASNBjwcH/mAjFUI4KZcGEHAAaW9D6qVUu/v8nwDvB+ZbBwMDAwcEEww1WebAc/TrAuQUEJrJaw8DBB8V5vntTwv8GAHJ+PfuTxP8RAGzDg8PHkGHAWMH/xvoIBADET8BPZx3FIuKGVETA/v79Pv75ef/BWf+Jd9MALbHRQ8BE/vs4+zWpwcDAeAkAo/UNqMH8fsAWAO/215ZUwMA0+vvrW8WXwAYAzf8gQMIfRi4B1sBqPwX6/ar8///AwcE6wsWpwsJVExBGxNfHDP///Pn4/zjAxZfBwv8GEFPD8P9nAhBDCV7/zRC6Rh+G/5oPEI4S83j/w/7/wFyyBBQDGgA4BBBO2mdNXBGzNon+wwV0k1URDjgi/g3VxkDGxVBmgPwO1SFBcsfGwEHBRYsEFJtLBlkPEPeSfUYHZXX/BBDzpXAmXxG+YYNdXDoAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:56', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('80', '32', 'TalTUzIxAAAE6usECAUHCc7QAAAc62kBAAAAhBctQuoNAN0PiwDUAGzl0QAWAAoPkAAp6t8PjwAuADAPIeo2AFYPdACGAOLlAwFVAJIPNABf6ooPsgBfAMcPZ+pgAOIPIQC3AFTlFAB2ANQP6AB76lIPkACKADYPJeqPANMPhwBxAOnlxwC5ABMPwQG96pgPRAC6AI4P1OrAABoPDgAMAEvlowDOAAcPGgDl6isPpwDmAJIPwurmAC0PdgArAEflMADwAMgPbAD46kcPxAACAYUPGuoRAUgP7QDQATPlsgAeAVQPHAAk60IP6gAqAYUPuOoqAU8PmAD7AdHnxgBPAU4PsQBV664NnABZAScOWupbAasObQCfAZLkggBaAZcNlQBk69oPrQBgAR4P1uv+iqt3VXeuhoNl+qfrF6eDlwG6EBqIRY/yEcobJ5IGem8LgvE3BTLgYAmXi2uTLPlzYaaD2xInD7p7chdWBr/zpH+U/XWVoYe9g9kDFAWNa7yD1gtr8uoTjWtcA22Htumb/7txifvaD6/opoFDmGqLr/7bekKGBOGX8bLuV4nuBvuVsLIaHWb3CP8C+7fvZRLhUussTe2Y79bYO+2O/SPUE4FfeYd+PPJB4XP1BRfJ/1/sFmvy+wv/kflw9toRVAQGFOIRkAUt5LP01f0FCQbw3RYnDGYC5ffDQdIUn3TqAqpv6Rvt8kAGsQkdTpwP0f5E0MX+xOuo7OnogOhpAum2UDCarpcuNfmOjJcKGeRhgEIYID7EAq7NJgUALABeB0YM6jkAYMQ2dMwARupbwv7B/sIF/w/qXgBewHvBocAA6hwBWoQLAKkBY2PBwGL/BgBCAX5IwwoAwwWGB3vHK4IGAMsJAwX/+RQdAMMLesC4a8WbWFvBwGT/kwwErg5XwMBtwLfAEuqGE2l4dG0G/1aPSwQA1BMGhBwEJheAeMN+cJlrxbDBwFTBBQARGhQoMgsAkSrtOzFQqwoAkzD3wPTAxNwIAFIxWnuhwALqIjlTwP6YyAD6uJFih5OMH8XsXmNvwv/DwIm+wnS4WcFnchAB1lqehlh1wnXBCMW2X+r+VSoZAK6aesZiwXzBwG1qBWLFZggAtWIGWPD+FupgZFfAcFgH/2kqw0MaAQ9kUnDFKsVSxHLCwjrBxSr+wcFeBQDYdV4pVAcAI3dQBP9S7AEtg1PAdMkAl2Ls/TM9OB/EE5RweXiGkmnBr3L7KFNzHgEVo2eLxZLDwMWHwsC7wcSAwcFkDQCKde37FCr///7A/zkZBeu3nITBwsEEwcFuw8DAwcHBBP994QHKuQwz/+5KCOpCvkzAXWq3CwQ5xRc7OP/BOh0F/8SndWnCdwfEeCt5wMHB/8GqCQRMy/r8/P8rOg4EdNFrxJ1vwwXOwisPAKbRCf47/i2qSggA4uQnOv5mKgcAo+law1QFBCPqKS4HAK42N/oU/E4XAHb1jH/FKMDHssP/iQHC1CyJGxEXALSpgMUpwMDBjcPBB25YlgUQqQFDMc0QwOw7/cEv/APVHRGjwQcQ6xg6B/362gYQ8Rg0//7/AvrXI0ZT/QbV3CeqPP4FEOot+DMB+r0vT8AjFNWQNF40/v36/fo+NfkVQP8GEA0x7MDEK/8EEP0xOuAaFeY0tFbAkf8FwsYswcPDwcXBonoD+lVhA21SAAAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:44:56', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('81', '33', 'TCdTUzIxAAAFZGkECAUHCc7QAAAdZWkBAAAAhYky32Q9AB8PpgCKAJFrLwBRAHAPGABZZJ8PdgBgAMkPq2RlAB0PkQCjAIhqegBoAIcOSQBqZBYOOgB1ADMP72R3AJsP2AC+ABtrUACBAHAOcwCBZJsPhwCNANIPtGSRAJgPFwBdAF5qgwCZAIoOpACiZG8ORACwAJkPzGS1ACkPlgB+AJ1rcwDDAG8OjwDOZEoPbADLAJkOZ2TaAO0NcgAlAFRo8gDmACkOjwDrZMoOXAD8APwNaWQIAbsOhADIASNq2wANAasPUgAKZagPfAAYAekPbWQhATIPWQDhAb5r0AAmAaEPPgAjZaUPQgArAfYO92Q8AZkP1gCNAZdqUABPAa4ObgBQZZoOvQBZAU4OO2RbAacOgwCeAaVrkABbAZIPZABeZZEO3wBfAU0Pm+TWjscHHXqLCE8aR347Axtn1Acv5KOAnIaN97iDEO7gk5qESHu0CnjnpX4JcfX++Y/89QAPnYs+iiqcWBmU/18CWYXvgN/hpH9CBl8U/QebGN99uI8yANuSvWdvgxJzB2T+ARKLyXdmHSL2QxQ7ZAPlXRMa8PoAB/fSkQuRYilTEl9bbRdph1EjKPNIBzfxAO99cZwOpPhokW2DvWQg9vSDsoCXh/8DFJafhHeBZYHlctdNZOHkkg2KtfykfeQKJA/yCq+EmIVIG1/zLQjF/jBywBxAChV6vYj8iqdkrPsaEfoK6A5/nl8HQXp+hocCvJJbCD4SIQ4n+FNsPAqGfpr3lQ/odVwLffF1/xv4wJ6edK/v4RAnENticPTxBOX7Gfd0ZOwHqfqC/QvyMf7OCOAMAiCAAQeDJpwIAIwe1sBFPxAAbR8JPTtYxTNj/wsAsyHZwMUnWsANAKUi0v9BpMHAWMEOAIko+KX6wv41wMAFWwFkyCgabBUA6DQFoCtH/kJYwjhbAWTcPxxLCwDiRPVZMMExDwAlj/dtVjNPwQoAMor0OJr+/lYJAHKaicemim0LALJj30TFm8FbBgB6ZNbE+VsLAHZnjJIHasVoAbFoHkr/BFXFpBsAF2nn/wX+Ppv+QP9MW8AFW/phAXNshowGxXVobSrAEACPcNNUMjHBZcAXABWx51FN/jNGVcFDBAoFWnf3wP7+QIEGBVJ2acDCagfF3H94VWUHANp/5VhcYwFNgHqZf80AUOQBO8ExCQCIhXGnwMDCwP/CygCM6hdY+1tZ/7wbBX+V4v///E/w/8SZ/v9Mwf/BOsHECwkAtZQiWIEOBRuUjI6DwsCqwRRkfZqJwcPBBndwp/yJCwCGnNI4+idYBQBlpwDmEQU7q3Gdw8DDi8DHpIkKAECwYEXBxRERAEO0Xou9dcSkwv/GCgDMcinFMcF4DQBnujj7NZrB/sLAfgXFbsUZxKQLAHbFyv36VsBxEgBuxrLGwRzFwGrBwcINSg1kaMxnxoeNzQBDq1GLwcDDDcVMyivDwmZ2wnPZAAGx0f7+wUHAOP/5mz7//j7AWTqFFGRl1+n6+v47/8WlwMHBwv/BuwMFk+kpwQQACyxJi2ABeOkX/P/DAPeOLMHBwf4KxXPrJP6Ti8IHAOzvQwhvCQB/+SsHVnBoAXr+PcTCOsHEpcCJCBBbAPLB/qDCbAcQhhDh/8SlXwYQfRwtB/+QYhFnJjDC/wfDBnTUKRzAAxCFLj+nAhBFLjDAwBAISyzBwMAjENk9saQx/8BA/v87//uZ///+/v7BO//Fpf7BwsDAwbUFFdhCGsNXIxHDQ5aawT5HYoufZZDGmoH/w8JcHNQDV+L/OMH+O8E6w8WgycfGwsDCOsHHm8LBBBCtYcZpAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:56', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('82', '33', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:56', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('83', '33', 'T29TUzIxAAAGLC4ECAUHCc7QAAAeLWkBAAAAhtE7SCwQAN8PdwDRAOsjkgAfAG4O/wAnLFUOrwAmAM4PmiwpAG0PeADvAOkiFQArANwP9gAxLNcPbgA4AJoOdiw/AOkOWgCIANkihABNAPsOtQBcLOYONgBlAJEPkCxpAAYP5QCpAJQiJwBtAFMONgB2LBgPpwBxALsPyix+ABYPpwBPABUj6QCKAJQP8wCRLNAO8wCYAOUPYiycAN8PeQBbAPMjKQChAFEO5wCyLM4OMwC3AJUObiy5ANwP3wACAC8jvwDJACwPVgDLLCIPZwDPABwPhyzTAPEPugAsAD4jqwD0AD8PoADzLNMPmQD2AIMPyiwAAUAPaADBAV4j2wAFATgPTwABLU4PTQAIAQsP7CwLATIPfgDJAVQjCgEdAa0PkQAZLdkOOgAlARIODi0oAT0O8QDpAUYhWwA/AdgOMABGLbkNaABIARMP5yxQAc0N6ACQAdwgOABaAfMPiABcLecPBY+m9joI1y6ngN6RNAPYZ4OveIIRd6J6NKEHs/YetAMRZVeB67zgClEGtghfipHTeIY6/ML7kXr7XICDTI5p/nTzv9eI+4GD8RbkFyCwhO4xC1kDXAEQW+qAjYkmDG/2/1QvAFZ8HQGnh2kp9Ii5h6r6UHlDQhNqeoRShCcGK7ofDmL+EXV4f3isFID2gAoFwI0kJhaQpe3dB+4QCzXnGH/lFYC4hVsuuIB9gYoBfIDbLveA5QZh/7vo0NC68SsJmvSXBNQn1DWa3lr7rP6rx+sKhdEVG/cVt9Vv+A4MvfjsCVQt6HwWBM6B8Aif1qP1TQjmCIsQ56Q4CqWP1fiQCOAvof8RCrb5LPqrV5v83fza9EP1Jiu8/s6BHHP7bGxSXA4hA+IAZAOEJccCDJO9/meEf6U8Bi6UwQQ79GQsgHkh4i3vhAAQ3FoAyPaZF0OOOiJ8JnKfjQ23H4UxHPVuEIYQcMoF3w8UZQEgUcQDRABJBAAnAGK7CwZ9AV5bwcFTBA4GQgFiwf9zwadOCiyKAHDEWHCgBAYeAGBqBACfx3eLKQE9A2JqCMVCAUzA/3jADQCxB2FSZG1kDACkz3fH7cDCwHhcA8XBCjzBBABLFFwH/g4slh/6wChO3wDZDZFxxG7D/7lnXuz+XcADAJHmbfkqAbMjCUHBwgA+CVtdwMAEAF0ndqgGALIpDEQF/wosmS1wwsDAu8FwLwESL1bBC8WIS9so/0RHCQCSUFpZVMEdAPxUUmt46JF8wMHBwTrAx9LAwMHBNgzFcl7LwP39K/5Y0gDFdpHCdcVuwb1m+exZ/hMAgl2shHjuUFM8/gUAT13yBhcA/l+ae7udlexuwMDBwArFmmMvNMD//msIxZJuWMOIwcEJAPJpVtJoQwcAmmrMPUEqASFwV8FWzQCeXHuSw8DBB8Und3xTTgkAp3bD/vt3VAYAnXd9B8OJLwHQgRrCDMWqjD9HVf9QHgHMlJx2f3mCwcHBRlJC7C8PAGib2jv9+dH+/iv/UwnFfJvB/P78//5KywBkjFJqWME1/ToEBnuoU3cSAGdx0/jT/SRAWP/+thMGQLTa/vz9/zn++ez//sL9wsA6wMcpASC4V2sHxS+8f2pUCQA1u4rAxuxVwAcAZryWbVokAePIJEzA8RUGSsrQ/Sz+/DtA+XnD/sD+/w7Fl80/+zX+PsD+iQgG88op/8HA/gf+EixqzNcs/f05Szju/MArHQEGCaLG7WfAwcLDwQbBxe3CwMDBwEk4wfjT/AUAwc0rOlkXLIPO5/34/Dj+xtP/wP7A//86wAMsZNNPWAcAu9ZR7Ff/DACe1vUpQG/+DwCU5D04R/nt/8D9//tDzQCMxFLC/WT/CsW76hj+McDALxbFZ/X8R/z9+/v9iSn5by4KAKv3Peo4YiYBmflG/0Q6wSAkEcwFPTDB8gcW8gY3QTMIEBwIPOz8/8AvBhBPC1Z4wAQQ6w0wiAgWUBBTwMD+PsMQVg9d/////gXUFyt/TRYQSjXnAf/H7//A//z2+DnBLRNHAxBGPWQ7IBYwQ+2LwXhdOv741/z8/f7/Vfb/TdIJEGdD18C9bgosgudWez48OwAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:56', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('84', '34', 'THdTUzIxAAAFNDsECAUHCc7QAAAdNWkBAAAAhdkyVjQbAH4PjwDlABA7SwAzAAQPaQAyNJUP1wA9ANsPODQ+AHEPMgCLAP07nQBdAJQPvABaNIkPkQBuANMPWzR6AAcOiAC5AIw7rwB/AJUPggCNNPYO3QCLAFkPkDSyAI4OwwBwAJk7WwC8AAQP5wC6NGgOEwDGAC8ORTTWAG0PHQAdAO07ygDYACYP5QDmNO8PlADpAFQPSzTqAGwPvQAwAKA7TgACAWwO5gAGNeQPOgAJASoOCTUMAaIPXQDaAWI78wAhAS8OjgAgNVYOxQAmAWIP7zQwAakOgwD3ARY6lQAzAZEOdwA4NacOyQA9Ad0O3zRCAZsORQCCAd87jQBPAYsObgBVNY4OgABRAUMOmjRQAZIO8ACUAbQ6OgBXAd4OjABfNfEOuwBbAVcOVEtbDwtrioE2m6K33JVNi9oNT4E7NvN76o/PjzYL9Floeeb3YYmj9WZLRIFqDUYN1HcjNPf1wYxBhcST4Cdbgn6D0XRjANfBg4FyDpoCsPO6wj4Dcwg/AGaD8sA2/qsGHnmiELo035nLmC8OQIBktlt9hYDBBQP8ODaHgZKFzP+AAWS2r4ASjc+XjQtHMNMI/u+zBiJvUDa8Am59roCvFxI1iH7VAkIEYPpfzFf/hYYdDnuYQ0A++TPzjREP/LdOpIk6jK6X2PHTXHN9FZI2AMcNqEk0EhL4cYRniLe4cIA9C/7s7BnYpjgXdX3pduRycLHE9v3v/f0Y7WuxcQf5+cH/qf8MycDp9P/+9Ht06TN0Cc3vaRtPCGOvrPB5BXOJ3BRMLVKZiQV+AGPsuspW3L//ACCCAQeDIpkKAI0Lwy89aQYAPg0D/6X/DTR6EAnAQT3GAEojgsIHAFcazE9cOQGSHww1RAVoxSEBMCoAwjQH/vtc/sBaQsASxU4qyfzAQVhD/5jBATRHNICYDgCLNgYKQUrAwP8Jxa8/I//AZcL9BMU5OEN2BADbPRf2CAV1Pv3//Vv9wADddSXCVAUAPIZtST0BNU30LsA6TRI0Dl7wN/1HOcPFyj/BU8BkCsV1W72FwMLAhgbFoFouWcALAIxsVXeBRgoAhHiMwU5+fjcBYnkD/wjFWnm0w8LAwWAJxWJ7Mv5BWA4AjLoWXcpz//9kCgB3gx9sWWAaAAKIIjj6ci78wVfAwAVYxfT8BgBDiXS+wQ40Sor0KP7/gcAANOCPHsBnDMWTqqfD/8LE/sQ6jBw0BrHn/0f+hP/6ylL/VcD/waEIBbCzk8OAhAvFmbAuwf/+SsFUwgDJgSHAWMEKAJu4BR8xNQkAxrjnwF31RwUAVrx3RQkFar8G/0H/PtcABPToaDs9//0FRsUwASDDZ3cNxUTQw8H9Mzb/RMwAyu0j/2r/wvvCADnvamzAwgoADtws9f5tw/r6DsWP4qKQgMLAwsBHBAV/6m2AGQADNtfFdP//Nf79wzgzxWVkBgDB+SmTwRw0Av7cT8D8BC45CsH//ng9EMUj+tT//zL9/ME6/fr1/8AKEFMAMf35BP5VBxBNBq6EezARHwdaWgPVYRvJ+AQQWyNiVwUVcyVgxEwTEMop3/T/T8D9//04wPj1/MH/wQQQjylSWQ0Qki+gfVrCgjIRfjGTxMVgFRUnNdfAQP/9BPz4ycH+wP7AwDqDBiSENiDABBHXN1MJBRDJQSTCAQQVSkqXxMcIEE9Lp/bDyMVXAxCqTHL3FRAbTc/+BTDFyPz9/f//wAXAxUUKEDdj+v+QwV/KAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:57', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('85', '34', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:44:57', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('86', '34', 'TDNTUzIxAAAFcHcECAUHCc7QAAAdcWkBAAAAhZ00vnAZAPYPegDbAPZ/rwAyAHAPYwBNcPYPPABWACgO5nBZAAkO9ACfAI1+0wBkAA8PTQBpcG4PlQBwADwPz3B3AIEPTwCyAO9/+AB3AJEOPAB6cBMORACBAKYPo3CEAAAP4QBMAI9/rACMAHgP+wCScOUPWQCcAC8P7HCjABkPvABsAA5/7QC1AI8PeADFcA8PnADOAMcPm3DfAAQPzQAlAIl/UADqAOAPvgDpcPcPpwD2AMgPA3ELAaAPPgDIAdh/lAATAQoPAAAZcZIPbAAgAS0P13AnASMPBwHvAaR/cwAxAfgPugA3cfcPfAA6AaMOv3A+AY8OsgCAARl+ygBIAZoORgBPcQMMwQBMAd4O0nBPAZ0OrACVAY5+mgBUARsNuwBTcQcMkABZAUMMOnBeAe8NbACaAfd+3IvfAQsHWoaqj4r/YXrlf2Z+XPrbA+eIvgYLj9Z7fIDh/Z56uIA0i295xZFZCaOJGAgvcu94FYxo+6vx0HUe+GYJPIjreUP+MIKpC5MINfLgiyqNAXisgkMJoYslC3KCLHssA5cIqHs2bCv5bPKk/3L9HQv7iUtyoI0dkzoKcP4n5CMPrXmqB66ANHajheINuQCr9bOGOASt++4SZ4Fn83aI9gam7wr7e4YPG273JQsPBS9+IwBPf1cPv/6yhb7nTv3SFi8nDAA7BSr7zfF898f0+JC+laaJWwBi8UYHjAeol/gR3eINA8X26HJ9c0wUWXcddAX1jY+943QAWIP4/7wN1Y8snKF9VIPUjPxweQdphnoQDXNoAOxx1JddkDAbSXeAgekV6G9EgZj1k/+P63f7uO13gItt22w3Ka6tCVBMAQLbJiPOAKF1dml8VQUAdQhxsHwGAL8LcIfBA3BpDmvCXAvFtx0HwXTBwcHBPgsFpx56Um/AbcIAc1BqwWTAEAAeK4WwbmnAUsBsyACuRHXBwVrAcpEKBYc9jHzBxMCfCQXYQvQwO8EIxaJMAEjAbwkAqoz6OI7+UAoAfU+owWMowQ0A8VaJr8P7tFtTBgDWYcn/RmMBzmOGwsEExPuwaFbAwME0xgDTGA3+BwCEbajB+7NaCACZb/f+PhdwxnKDfsJcB1bFFP4EAGV0aUEOBRp168A/OCv+BwW+dgz+wf5gzADDCIKLe8IFAIWBYhkFAK6EADjDAEH1YcBSCADfQJDG8YIQAKmKgAFJbALB/3cEAOVOE0N5AbGMAC84OxEF2I53wWlnwLX/xD4NAHmQbcI4w24bwAYAOptgBf/EsRcA5aCPdQfAx7H+wcHBb1g6/8Z0Ae2iE0AFxeqjasFZBADAp8M3F3C5qYOQwmoGVcSPWAgAwq0J8v1HeQHBwQz//zr+xToKAKDKAC6SwCp+AZjOccHBBG3Ej3rBEwBN0CFHUVv/M8BGCgBl0AWO/jJECABKHVxhPgUAot0DPtcAz6+OwcLE/8MEcMUSwMD/EgBSINxEsP7//f7B/v02DXDI5QwxwDzXAFCa30Y7NjH/hg8F8Orw/jE8SvAJBT7sXMDCPpbOAK6ECP//Mkr7yACmhoLDlsHAagX+D3Cq+gw1VDjQEEV63cD+XTX9Ov1Rj/7/TAQQmcoGLnkRkRNwwv8GwHN4EZkWBjH/8wgVtBmXgp4FEBMlGV8WEQQop34FwsaPiJHCUv/C+wUVoysi/1oKELAs7Fz/LsAHEIHr8PuN/P3/BBBu92BodRGDNfT/IcEQckpmw/4KELaEk8azw8HE//38whCCNvD9+vxuBNW2TVJgFREAS6mxw0Cyw8PDwZTArgQVtU4gwcYEEK1gco3ABRBwYfo4wvtwAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:57', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('87', '35', 'TVdTUzIxAAAEFBkECAUHCc7QAAAcFWkBAAAAgzkimxQbAB0P7ADaAJ4anQAiAJsPAwAgFJ0PeQAuAFEPBBUvABIOHwDxAIAbrwA3AJsPeABZFBgPjABwAFcP6hRzAJYPxAC2AJwbZwB9AIsPtwCnFBIPNQCuAL8PbhTDAIUPywAVAJgbHQD5AGMPuAD/FI0PtgD7AFkPRxQBAWcPZgDQAXUbCwEYARUNcwAdFZwPRwAhAZ0PDRUjASMNXgDtAVMbggApAYYPvQAyFSIPzwBDAe0PZBRYAe4OgACfAZsajwBaAZIOqwBbFZ0OsIaShKuCBZ5jAlsDtILMA14dSwDiBnKCJ/neb/b6CXr3e35//+ce+zcPiQMPAJaUnIIagtuJpwrnbfL+agN/fXKHmZbrB28KKnov+jMfu5AiikOC0vYHf+rzxnSLDvb7PxQyA1MTJv76D+v/Ux0zCE824wC/FGYSVhCiBvf6ZQmDGO7lsPcW7+tvpwAPdFsZ8ALi5BvoIBPL/yaL/f20Aj40WWRTFXolOJzyzJaFwoxDE86bpVSWUKvP5RhYBWawcfSv+J5ndLDZ/d4MvgL3EAMgOgECWedUFxRJABZKav8ERcQqhggAWgAWncBSEQGPABb+bc8AtBQb/2f/wG/NAB4VDTbAcwcA9wEIJloFAGwBE/sDBGoAE/4EAKHEF0QSAdUBE/7AvAME2wYWwAMAzM4ixwMBGgwQRMAHRVUrZ2T/EAAR0A9Df1lVWwsAo98aYOvAYv8LAQ+3l1x2/kMXAAwf1VdpTP7C/cL/wjjBxNRSCADKJxc6wMXUhAoAfTETBf/E1MP/UBYAI/MJ+klQVcDAwMAFYGAYAQM9D381ksIPFAdO+jI+WNwAAU38QMBLcP4F/lnUacIwBwDBmhxxKxkAB2b3MQXAxC7+/1VDa8AFCAQRbANXYAwAVXMX61nA/8HAYNwAB277QFhHwP6QQmBREwADh/QpBVv7UkXB/hEAA0oDxurBUf9PRFncAAyK9THCNf7ABUTFUMH/wUEPALKkF+tGwv7BTGTcAAK58f7//MPA7P/7cP7/U11aBMUwqWNaCABjwYZBaR0UA8ftN//+61fF68E2ZFoHAAvTHkDBwRAAA+Eh/U/UQf3/wEcYxQfp9vxGOzVY//JKXxkBIPbtwP7r/WAvCgB4+o+CBIhoBAED/eIv/zv/+uv8wGX+AwDZ/WTUBwA//22LBA4EU/73/f7CKPs7AgRDBGJiwgjVYhaUxMGRwwoQrxYC6P5B/8DBCNViHWWewcLACBB8HCbU/8JSBhBD4FyS0AcQWihkxAeIAQReLFrDdAXVez40RBMQH0PDPv8r6PpPRjX+BNXRQz+ZDBBUW9MH/vns+v3A/v/ExhB2dQHAAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:44:57', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('88', '35', 'SmFTUzIxAAADIiMECAUHCc7QAAAbI2kBAAAAg88YeSImAA0PpAD0AIwtiQBNAIwP6gBQImkPVQB3AK4PLiJ8AFkPcwBLAHcsXgCQAF8OPgCXIiwPHwCfABMPcCKmACIOUwBtAEstawCsAEAPbQCxIqIPIAC9AIUPOyL8AC0PyQDRAaItmQApAZ8PRQA0I5wP3AA9AVEO7SJEAZoOpQCVAY8tbwBUAZYPRwBdI4oPpoJ+gxqnUSR/h0cf1v5jglgBXxM7/T8LgA8x2JMWeoUi8i/zijdMVlo0He2wG9LVxo/3o+ujL5h9X7KRyOchssfEQigM6zooLCMM+vHCZoJjZ3czx2ww2ArrB+8j57aTDS1SBQcLTQfTFtAjzAM6CSIWOP2d1WILeQmP+6YTZSCr7o7z/Q4H+egsiPbmArbyQ4HcAicBAeEb4cgAhyII/1U+//+ACAOLAAxC/FsPxWIBK1TAQ0DATNcAVykHQkHC/cEF/cLd/jwEAOAL20oJIiod8SlDSsYAfQUSwhMALCkx/yjc/8LB/sBG+8AJIqk0E0ZGStAALxf2wfvB//47wkTdPP9H/wgA7UH04v79wDgJAOVQ9+IxwD8OAIyVDDXc/v/APWoYxRtpxcD9KT3/RDhEQXoIAFF4cJKxxBQiGnne/v4z+Db830pyUREAW0prx+PDw8DCwMIHacLiwxkAFpPQOP783DMoQTXA/wT/hy0BXpRewZFGd8FHGQAgm9fAOvz93sP+/cD+/zv//N3+wf/CwH7OAHSLH/43wHjC1wCnjqXBwZHDxFPCwePBwsATAFFqTMBXe1zCwMHArxADS7FDwoBzwbvD/N0PACDCQMAH/8FMcIcLEDwA7Gd74VAPEDcBNEaFwOKCOhgQyRBhR8PceMDFxsfEB8LC4MHCwMDBC9UjEBLBgMLAwcQFJhPNEpb/McD/k5DBqsXDwMOExKfBcl6DBBDNGBetHhPVHokqPj3EvcPH5MXEwcGIwAb/fyQRIiktecHDEJ8OF3TBCBCE/BPD4nrADhDcOV9tOOJGQwwAh9T0wsNNaMD9AxDOpAPBIgAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:58', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('89', '35', 'TXtTUzIxAAAEODwECAUHCc7QAAAcOWkBAAAAhOUkojgNAGgOlADdAOw24AA4APoPwgE+OHsOHQA/AC0PdjhRAOQPuACfAOo3hgBgAGMPUwBnOOUPmwCPACMPsjiiAO0PdABhAFs37QC3AAAPbgDSOOkP2QDcAMQPDDngAA4OLwAmAGQ3RwDuAOAPtgD1OFkPwwDzADsP6Tj1ABkPfwA8AOQ3rQAOAfMPxQELOSkO3QARAeIONjgWAVoPrwD1Ae40nAAxAV0MowAwOUkNxQA0ATUKxThHAWYKlgCIAdc2wwBYAegNgQBdOecNkQBZATcOojhbAe0OgYLyc1dHgILzB+OHT4LvNSKXioJ7j14Xpz+mh48DuYN3AnPHCw0PjHf14IC9uxp0JYCS+fcCssFXBwaLLgkaBafXD3sjd+//EwOvzRIXvu6f6Kb9otDjBFYD2vR+6P80NIJfCSsL8IKis/aIQXiue9JzZsTjDSYaDhiXDJbIOIiz7Yf6Dwluzd+aAhDWAeYcKihbAf4q+3wi/TsvFI2d/r2H5HVpt/dum2VPdvLu3bUYCtYJWYEgecVH/ePJ6Xl7kIURx1/5e6FTj1r3ZBuQBVqXMR3Q/ZU/AlAQ+gAg+AEGXSBqBAAxAKyIDjhaAGdcWVrNAGs4aMJHaQwAugBj+ktCUAwA98V6x/jBcsHAWwjFSgVJiFkPAJIBqMJ/BmXAZREApcRwjcfBYMBW//4AFQTvAG1NTsBm98I8YRkBCQd3ZwRfxPn+RWTB/0Q6GAU9E3T/wXh0BP5dXcFURg4Akd5iZnRjOBsBFR1Fd8RPwP/Bc8BRBUX7XgoBFCiAd6xtADkRNIOIGQHHO3n6/MPCwlfCBV1cY8D//8EHAchAc/jBbhoBEEy4c8b5b8BzSsL+BGDEuR0BFVV3/gfAxfjAwYT/wHsF/sX4fv7AWQQBwGF+Sw0Ag2NiVgVR+lwEARVpgHbAANRXdcJwFgENsXrEUsN7wcFaQjrBhzcB0nVtdP8GUVlhFAEVf33AqMT7v2XAwFKEBtVFFG/DSwgBFIlFdoAgAAGVesB4BMLFx8DAwMD/gJzAMC0AE5x9dMBFwcT4wcCQRcINxA2juIpsZFwMALWpZGvAhT4DARJ3g8U+Aei4dMCLxgD0ggH/DAEOxkOExfrBwHcFAIc+YI0pABLShv+SrMFYv8UFAN3Y9zhfATjU3XR3BQAb3wTH/P0FACzmm00AOPDxEzUDAA3y/sUHAG/3WsI7jQEoSjhQNAUANPgm+T0OAQ75mgTExKNMwoQJELDO7fnE///7MAcQJRMgxv/7RwMRBNYp+jwRLhhebAfV0B6+x6f/BBA03lA7NxGOLdrD/Dr++cb//f3+/jTJEKQV0f39+/36O/35+PoDEJkxbTsEFSw2XML+BBBwPF76+wQQjlJ9sg4U3GF9UkNk/VgAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:58', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('90', '36', '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', '0', '1', '0', '3356901120048', '2017-08-05 21:44:58', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('91', '36', 'TMNTUzIxAAAFgIMECAUHCc7QAAAdgWkBAAAAha0zhoAlAIoPZQDrAH+PZwA5AAYPUQBPgB0PdABLALkPf4BfAHkPyQC/AKKP3AB/AKgPWwCMgKMPlQCgAF8PaYCgAGgPOwBsAFyPcgCsAGUOxgG1gKgPhwC+AO0OoIDCAKoPPwARAFuOEgDVANoPhwDagFUM+ADpAGIMGoDqAN0P6QApAKaM2ADyAJ0P4wD9gN4PZgD6AGYLmID9AKIPPgA4APGMqgD9AKEPngAFgYwLywADAV0PHoALAe4PiwDLAZyPLAAPAfwOHAAUgY8O0wAXAUkPxIAeAYoP8gDgAV+MdgAnAYoPVQAtgYgP3QArAbkNzYAwAYEP1QDzAfSP1AA+AXgOKwBEgd0NrwBFAUQP/4BLAXkO5wCIAfaOXQBRAYMPAwBUgfsOsgBbAbgOpYBfAfwOahCbhSPzRXf68DYA/Y+kDmN95qDKpNOXPIWoegZgvf0rXLP35AFPBEMPoAH6g1ILLQrT/II+sHo7dFo1QAf/Qh9SZ/8j8WMGAf88vw/NIwd/A+4L/EdjgCqQXoRDEm7GWQ+KgmZuFP7Xfqd/4PtyYGd5VIRPDDcZ0QCUBu9w1PxRCEYOEPxEhicQTQT58RDmTZtfsvIP4QCECi6YFBbt+pFroADviE8J4O95m186DI0YDsX+nfWsEV+QyPohE0YQ1BE8nmQKVAaV+egX0YJkBaX2KQkgAeR/nOJtg8LMPALXcJ78eQKx89MLWAxUBfkmEZDkCbR50XppdCFwDYqsedj9+ejBZOxmPIYUi1WHoZxEiceiZBiJfSl+EvnmfwaL9X5hhtx7eAG8/vGGfYGYf3+GX4IwKPwtwCBMgQP3KPsPAEcBCrZVVFn/EQC3DBV+acD+V8DBh8ANgJgEE/5TS9UAeocWwMDA/0SDcPiGAbMKHErA0AA5lfzAO/3COIH/xL9xCACAI4wEhMRFBwBhLH2GOhIF6S8DMz04wgX+xOQGAGEyenivCgXqNwD+K0D/1wAkuOjB/P5LwTnB+ED+wP5WCQCnOXLp/osEAGo7wy8PgHFIgJDAwASDA4CZSRpL/xDFeE6PMkbAZMBkzgB1zXzCccB4wsoAks4dRkpk/8GSEQXzUwn9//5BB1HFQcFzCwBwU7iDxfjDwQUAcGrG/SKdAQdt4jhE6zFDylxr/zQJAJFxdEHAwsBpEQCgcv+hMGt6wI8KxVtw8cDBwsDBwLYIBUt8J8BbWxDFj4ogxcPCxMDCBcHHf8HCwf0ZAMKW5cdF//7+J/46/m7rdA4AlpuaBcKsQsH/w8BbEMWRmhf+xcPDwpY6/sXeAgCXoynAzQBlJGbDaFQWAMaq0r86RP/8/f06/mHsBgA5q1dEmAsF8K1xxcPCNDozDoA/t9f+/v44+/lC/cAMAG/Ag8PHE8PE/VwIAEzALkFYiQYATMGVwPu3DQBpvkzESHV+hgF7witnwM4AdkY7wonEZMDMAK1HLIvCgwUAvMoo7AUAy84tidwAA1PO/v9KOP06/x63U4AHAD3Xm1P4fxYAH+beZATAJXtB///BhITUAEdr0cDBwP38PvjFQCqQBgA68aJVxYoBTvUPPsK1wBSAqfmi/sFFAMnCRcHEjMIEEGoBFdsCEM8HE8LNEDWP9f39RcAF1BEKxvxREhABFMbF+EX8/f3/wP4HwfpCwGUJEAgeMlf7flgDEMUgADoJFYYn9Dj//lvBEJGpB8DCAxES71rGjxEMK/f//+rBx37DSsEQEA70+jN//sP/wMI3QQ0VkTYGXVJiwQUIFI88Vv79/ELKEBLAB8BbZ2TASwMVakJt/QYQFIMPgn8FEPlOdDXLEB7RDYV2ZcH+BwkVHF99UkbCAAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:44:58', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('92', '36', 'TJNTUzIxAAAF0NMECAUHCc7QAAAd0WkBAAAAhX01zNAwAPwPiwD5AHbeLAA+AOUPvgBH0PIOuwBbAL4PudBgAAQPWQCoAG7eIgB3AOIOcACT0AsPzwCaAEwPjNCeAPsP0gBlABPfAQGkABcPVACt0AcPAgHCAFkPL9DEAN4P5wAMAJLfiADUAAYOkgDl0OQP2wDlAOEPbdDoAPALBwEsACDehwDtAAULMQD10J4PnADzAEYOMdD3AFYOHgA9AFrePQD6ANMOrwD+0EkKdgD7AMYKqtD9ACwObQDDATraXQANAeIMTQAU0R0NygATAe4N29ASASUNIQDRAVXePgAXAdcPHAAc0asLZgAiAZ8N8tAiAaQNbgDjAVHcgAAoASYMvgAq0UYMzwAxAYUNn9A5AZkM1gCAAb7eNgBTAd8PggBQ0eEPpgBVARoOytBWAe0OUQCZAeHfcQBgAd8OF4PWKf6LgYAn+u5z4te+f5/3gYAuipqrQXrWg58K8YpO2cL983qPin6Lnqpm/98HfYND9OPWJXZ9gwN1bfd7I8b1GI76DF6Ar6zDg+8AHA+v/sfTWAeihCJ6HonqUbr54f86dNv6xNKnheYasfUDnPvFbIcujGIDCKkg3bTuzYkWiicD2NWEhkEC1X20f5PaEFmJglZp+YasKl+BHQpdE+OMRa7o/zJ0bAv9R/CJ/b/ZxGEBLKl30ecr+PsdPHRdlHV4ns2KsfrMG/APZIBVCZLsfX7YLXeA7fM2eM/9YNcviJ70tIaggCy/OQrVej0Ws4BvLFNnwP5FDPQxvTLg1SkOGCIU9NQ+dIURm/oUR3QfbHdUFdF5fU8TrNCw/68DuP/gAKvTU0im9pcloDVTfhcSNAcpB2cELywvA2+Z7RbFYsWrEyBVAQMv744A0GAbZ/93B8W0GFB5cAQATiCsew/QZCNtdMBpOhAFFyV9WnCBwafCDtBmKGliwMEFZBbQySp6UcL/B27EL8CE/v8FAPQvZRA8DgDFMoCx/8cRwX5zCADj/oPFoH0FACpBYgVzDdB2RHHAfnPQAPKYjX50wWb/BsDEslwXAPtSkE50xBBmccBxWQvEA1tDgWJ+BQC3nn3HiQcAwF79/QU2DtCBYPRU/cE6wC7CAbhigMJku2lssgYAwGMDNvMJBYVqbcHBdHjJAG28aFlqwWQKxVV0u3l0RgwAebb3xYT/PksLAJa9/cXgwTfAAwAfvlzF3QGCfXrCwb14x54YAROSkFEEfHsQe3LBwMLAoRQFHJeMg8LAwLLAexHDwR0MAI1e+jER////wF0HxdOZ2SlECwCFn7HAhr/+xA0AjaA///gvPExPBQDUZBMywwH7oZzCaQTCcaDAhcIbARRjl8W6wcJ8cMDBRsDEvcBXBwCUqMZARd4Bt6iJjGlFXQ/QuKkM/cE2kAwFf7aJwsHBwwXCx6QLALy8Ez4FNsTdAZ/DDP7/BSththoBFsOeWwfD+0FwZnjC/8I6wzXfAaHKjMTEOsPFEYTD/UcKAGbLFZD///+DCABc2AP3NxMAWt7i/fzELP//Q0xGCMWT29P8/f/9/8PCANo6I1hCAwCLKf3/xwHy7qJ0wQTBlkOKa8BZFgDz8tYvQED+McH9OsE9LcMNAJnyejihx5LBOAYAJ/SV/vsvywMAj/gDPgUF4PhX/2YEAPL6VoUFABz8V/wHBgWi/TDEwEsExXr61jwHEK8ALQX9xc0EEH8GEMM++gzAaQhgZML/8AgVuxNnw//BU8EQicIXJwYQsxP/wPgt/BMQxhOwBMPEE8XE/v/GwgT/Z+AVEEAU2lvw//ksOSnCVwMQaxQ4LwIQ3xUnwcMQxss2/v78+gXV3Rj3TAUQYSNetgUVCSIrYQcQZeNXxevBAxDVKDA6BRW6K1P/NwcQtCpJLf7A+/8FEL0yUxAwBRClOFynBRV8OVD8wsAF1Zg5sMM3BxB6QJn/xyn8xQQQ/FdJpwHA912Gw8MAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:44:58', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('93', '37', 'TFlTUzIxAAAFGh0ECAUHCc7QAAAdG2kBAAAAhccykhobAI8PfAD+AIwVyABGAJUPuQBUGg0PoABUAEkPRRpkAHEPrACuAIoV6ABvAB4PTQB+GocPxwB9ANgPkBqAABQPMABWAPYVlgCWAIoPewCnGpcPgwCqAEQPMBq2AGIPCwF8AKQVdwDGAHYPjQDIGu4P9wDOAGcPhBrUAHYPqwAlAIkU+ADgACYOIwDgGi0PpQDvANIOfRrwAGQPUAAyAFMVigABAWYOaAAEG5ENwAAJAWgN3hoIAT4PdADOAU8VggAMAe4OCwAIG0YO9AAOAfwPghoSAREOkgDQAQIUtwAWAXwO1AAeG0gOXAAjAfkPwxopAcgPLQDsAUEViAA1ARgOLQA8G1gPiABBAdsOlhpOAaEOgQCUAa0UZgBYATEOagBbG4APxwBfASwPSxEuB0eHOX4T/xflXwtLCBN58IZ/m6uLIf96gS/7WpoGZ/vrnQeXfA9u1wELieeTyHQj5uv6/pBWAWuK+IqojU6EypGahLodtHlZC6IEc3p/FIaF4ftSDIcPRG3bcSvvQQP3fzpsMAHe9EoX8I/PgY54GX05e3gDtBtYF873RXT3/IcBFIXR/S6HjAk0laPyOYyZiRewPBhkH017JvaHDuNxdHhlVU1hZHkE/yAW4WgtMKAdsOJMBsWTOVyMOSD8vd5tiBWk6AjAhqzP0f7K9j8PHTx5DzmtAPvUGCi74NC17im2iwQm7T4PJvUyUz7oWFSEg3Ic0vz+CBLprf+Ze7Vze5LzOd4dJAu1eEx9gJ9c+ZGLqYwQCUhhRIs6FkqTxJqT+o7YGWp3keJK+sBpjYFRAyCBAQeHI7wOAIEA08H7RkJS/w0AlMQTSXhVTwQAcgbVWQwasggXUcFPwABnEQ3/wMIEAAgQE1QKAE0RCUoFVD4WATocAEFkg8AJGpocFlv+awREFRouKf3BLmSDwvtZCQAhMBDGOsL+2v8PAIA8D4JYM9rATQcAKz4/wDjkCQDMSRzAoT0OGhpN9EbAPvEJBWJRhnhzwATFgFAKVg0ApFcXoEPF2v41DAAbYzHAPVv+VwUAPGOxwIYOAURl9zNFOjvE5cHBP8AFAPtpaH0EAO1vGsCFBgXzciLBwP//yQCGYYeBiGf/B8XLeQbBVP8JAMdEIFhI/woAmoIWBf/6ScHADAAyjyj/+9o3/P9gFgDVkefkwTguwP/C713FWAkAlJKQg0IFBTaXaW8OAJNdiWqe/sNxxQkAXpgT28D9TMAGALqmhpbBFACHqgz4/0Tl/sD+Pv/8OP8KGoGtgMDDd0VmahwBMbZrw8G4BwUpumB0bQ0AtMd/2f7CkG/D/90ASNHo/idG//84wPjl/vz7/f3/P//5BgEI0dr//zs3NiTB/zJFNUTBAP/LIzgNAH3Wv8KO2MNcjxEAqBmWjIfAwZDBwXzNAKL5iP+iwsIGxa/mBP//+/4FAD3kLtsxCQDo6C0FR/o+DgCh7Y/EuMKTZoILAHTyaQfDxJrDewkAqPPn//jh9vknCQBMMl6MZcIJAFH7V0GAxRIBqP6XxMEDwcfeAhCqEIbBwhBqFlbFk8ALEBkMP+T8/f39/STDEHEVSJ3ABBCAylCsEhH1EjfA/jj/IhwRih0iwsJpJBUTH9PAwMD/80H55Tk1wP79wAT9+uf9//39/cA+/wAKWCZDgwgQmiY/28DBw8n/BNUsK1l8BBDnPVPhBBWfVQNQAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:44:59', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('94', '37', 'TXFTUzIxAAAEMjIECAUHCc7QAAAcM2kBAAAAhN8jmDIRABsPmwDkAIk9tgA4AJsPpwBEMm4PtABEAOcP2jJTAKYPowCtAJI9rgBuACkPoACGMmgO9ACFAOoPSTKOAOoOXQBdAFg9qQCjAKcPKACwMrEPXgC9AI4PwzK/ADoPswAPAEQ94ADQADkPRADcMskMcADZACEMrTLcAEoPlgAbAFA+hQDjAL4MvAD2MsQMmQAKARQP6jIkAVEPbADqAZ49jgAvAWwPfgA0M1YP9QAzAZQP1zJLAdUPeQCKAe09rABPAdgPvABTM/0PjgBbASEPraKOgJf6tXTX9R5dMXuCEf/0OudXOfZXKIuyjmP7brV2DEd+/G97drvP7ZceC5+FoA6BsV4jm4ADimr3qaOAg8uguXUw9mIjD2r6bqOB53hCSJqAXmj28ZeHtcxjAD6OlfnoCq7fG4jiAM/4KQ8x1sR2mRyxKhQjscsIDbKNoZnoDb28efsd+bltUAlp0Yj/+mZKDqt/WTKKfKv9GrEvMR6Rl9Xinm6Gu4FKt6vv3QCafnb/SrMn/paG2O5oBk5jG/R6gaYGgRaJKztnJekx/ksMeUk63wEgPgHHaxrhCAC9ABxEkcECMsoAIFPADsWSBz46S8BYXQrFtAcSWkxdCABp1fr6EUsHAKAQEDhMxDUBnRQaRFXAAGEq+/4rCQBI4/AvGfwKAEQz8DozxM/+/wcAuzvlVFAhAUQ+8Ts89EdA88EFAF4/dAWfETJnQPouK//7/2Dy/2gNALhC5f/7Yf7/ZMAEAKREaV4LALZIJMD7wTo0AeBVJ8DA+QoEkWWew5vAxKULBK1pmp/AxHIHFQQBaufBL/3+O/0zzP9VwMD+FMWnaBlWwP/B/sD7S0/MFQCycSc4BVRCZTo4BwBpfzQgKDgBZIZnwIBVwAAy+YcpOAUAN4k08sHAHwA1lB/A+gH///rA/f86/8TMwf/A/sH+OsD6zMP+/v4HAKWV5BIcEwBYmGBBg8W2xX3DnQ4AmJxe8oHC/8LCwVcDBJmmNMAeADJv11DPMfz7wP7+OkQ6DCrAKQ8AkGuQw5zBlsXKxZfBAIaGUqgDAHm1ksQHMpO3Mf0FAEK4Lc4cBQDvuDEF/McqAWC52sD8Pvn5FcH+/cH7wD/4+M38////DQCfv1fxh3nGxsHFzADM8ztGT8AIAHTOR/D9wf8xDABzzkRm/v4+MAoAGtQ58/7/TzYHACDUM2ZkFwCp2MAEwsXxwLLF/8DCBMLE8MPBw8DEBcVt2QjDxc8EAKYlRi82AazgRi4G1aYCaD3+BBAPCvLGxDkRLws3w8EHw8XwxcPCBxD40UDG8Pn+/wYQBeUtxczCwQkQFSnZwHPNaQMQ6ilQOwUUwihG/DsHEOowHvPAwVwFELf0WsUcBRD3OVNAwRArehuUAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:44:59', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('95', '37', 'TftTUzIxAAAEuLoECAUHCc7QAAAcuWkBAAAAhGUrsbgmAPsP1ADsAAC3ZQAvAO0OjAA/uPAO4wBFAMoPTrhLAOEOjwCRAP+3ZABfAOwPWQBhuHUPJwBoAKEPhrh/APUPzAC7ABe3LgCKAOIPQwCLuAAP0QCXAN4POrizAFQPIABwAFG3vwC2ACIPqQDFuO8PmgDDANEPgbjEAAkPswANAIu3qgDgADUPKQDtuDUPNgD8AP4PGLj/AEMPxQA7AEe3qAD/AJ4N0AAQucUP5AAZAYIPpLgbAWkN+wDrAUu3uQAzAdoMugAxufAPywA1AZ0MQrg4AasPfgD6AYe2ogBFAesNagBBuW4M6QBMAQoPpbhRAW8LtQCTAWq0pgBaAe0MT/ibVuIDAgiq9CILAkT3DdcAzRBHBLO8HwwLFsP/mPC6TYP1rYn+ExcLNrW3+4rzsXmrgWfMV4UDhPt2BPRqOS8LpfoDon7zUjnTk++MNQySjMdCHAq++b+ObwDazzpoKgD7dKoXsS03CdISmeZS3Cck6A11hprhsPX5pnp8yW1BXrx+HRKPmPYhuvNS7Ne7xPuuen+TTII5s2abvafiEpv+5ecwN6ZoiYJjit+jW/ia8toGIM8+KX970giKgWr4qT34bQnz1HNnCnIzrIGW6AYSHirTBnLrwJcGmdcW2MeVf80BkIewAUG5i4FOem+JHYc4P/QBiYDFAVgBODuIgE0Fv8fEuvy6IUEBApAhbgcE0gBweGwKALICbepqWQ4AnQGxwMVHxVrAwFIJxa8HzFeEwQkAy8F0xN3AewkAzQq1VcTRDwDrD33Ck8B3eMF/BADoGr9oB7jZJQD/EgB0KHN5wFlkwXBSBAMEby0JwQcARvtiS3nBGAD9PoyowYfAa8DBZ0rBzgDb+415ccHB/8EA4/sHPwMARk2nwA64k1T3O/9MBA0E0WHwa/3/O4cFBNlgZ2oMAJimfcfMaMBvCgCgoP358jn/BAAjZ66QFriZaXR+wG8FwITewwUAJ2xgogwEPXjwLkorwMMA1McXV8AHAH5FbW3XDQCGgPc7Ov1f7BsBDYOgwgXCbXjAwcF/d8A6wlIuDgCLjv3+Ov40eF9GFwDNk1Z5xXtmwob/wXhMwwK41JYWRsAFxdOfpsFZBwA6tJmLxXkEABy1XIjXAEQOV3CAwcDCUpnHsQEhuVd3egQNBHm7HsD9PUY6/cStAXC+6f0qPv9C+fxMOw0AiQEM+Xj//f39wTE7CgQmxRfAI8H+OP0LuLHGl8TBxQXBwjrDxbAFAI4eicx8xAMAl90pPwMEPuFnxAoArScw+YP8wRcGAO0uMDpHDwCp+r3CAMPGfsTDw8TExgEgBb39scF4wMG5w8R4xcGTwsJZXMHGfMTAAwBw/snDAag3ADrAlg7VHgWCZ8TBjcL9A8MaqKkMacDA/TkgLoP///39/f87/MVHQTgFEKoSlv8YsREVGDrDegeOIaidHGT//voE+/lEwf7+/cH/O/77Rvz+//3/wDjAxEbBwf3+wf4E/QGo4R1G/zcG1ecZ+DP8BBAMLfWDAKj8MUAhAxANOVh7BBBKPBCNwRC28WXC+wMQ6JVe+rwRnlJpNQAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:44:59', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('96', '38', 'TGdTUzIxAAAFJCgECAUHCc7QAAAdJWkBAAAAhcktkSQSAI4OpQDZABAqIgAhAG4PJwAsJBsPMgA3AKgP1iQ5AJcPEwD+AOsrcgBBAIQP8QBAJPYPTQBrALYOPiRwAPQN/AC0AJsrkwByAIwP8QB4JGUOZwCAAL8OpySBAB0PKgBAAOAqRgCGAPcNZwCLJI4PcQCPAMkPLCSSAF0PogBZABErswCeAJQPzAGlJCYOgQChAEEPWSSkAGgPewBoAH8rHQC5ANwPfgDDJKIPhADXALsPXiTbAF4PUAAlAOErBgHjAKwPDwDtJCsO1QD7AGkNyyT8ACkNKgA7AE4reQAKATQPHwAKJakOngAmAe8PSSQoATYPJQD3AU8qegA6ASgP9QBEJTsOugBVAWMPAF1ODgv7AYlGgta3OANqgEJ6DIX2I5p/TXi9A0uAzFmChhP7aoBLgKfd1vpfEif7gIwTLTuKgYFVf7MQ5LSAgbn+G3hOC5KjEHEi/FqDRYP0VDBtMXGChGcIoLQAkaULgIMkiHzXHJU1BlGHdHQ0WBD+HZWZihOk7Fz4+hZoLYS0gCjfcICNBpp51oiaW8qHUA+hejNw/3gn8Bbl2Pt/cJcwc4Jz+nd7y3mTNoqQgiK6B4pNiVsj4uf5iIvGmJJNQgJTh0eHVAGEpgeJSIYNBUSGSVoQAYGCG2i+AV4yZgyLDBe5VP2EpouDwgbz+EaGq9nD7lsRXRHrFv4lRwIX9Ov1KPEvIQbzh35vg2oDvlUSGNkEIEXEAuEMUwYAnQAQOkcDJMkAF8HAPMAAMyV8wI4EAFLEAzIqAYIBCTbA+2VvLQG1ARNSQQQZBSUY5yg9wP6A//pyP8BKBACo3g8yMQEHIPD9wQT9xR9XTMD+wU3BAKIEFlYDAB4hqMEAJOcoFkYGACYtJeXBXBMAVDPFL/pgwThowP3CwAArEnHB/8QXANI47gv+/UbASv86wPpAQgUAMTtpBW4CJNY8HlbA/8AAahqIghkAAz8iXioP/kU9WGDA1wByZgj+VMEyU4ZVACRuQ4BnBQD1RmzkcAYAN11rBHsIJI5ukMGJ/wB0bywBjnSJccKzEAWydRM8R8DAnFEZJAB13DX//YLA+tlUOEpEUxrFB3zER/vBwP/+BP375f7//8D//wXAxdv+wQUAa4DFMwokp4EcOFhYtcEAJCeIZMF9BcVDj0PDwMIaAAZK4MVi/v3/wP4wm1RQ5GEIAHWPCfD+NT0BLZDkPP07/8fZ//7A/cH/BP/F5MHBwcHBBcUkl0R1BQApl14EWwgkrpuQwMCNO8LG5m0OAKedGjv+xeTBWHfCFgC4oYng/sSTdMB0B8XF5sF+DABYpa7Ce1TBwMENAFho7fna/ig4PwsAjLhb5XFn/8IGAIu7X1DABQAZvVoEkREktsSgwIWSB53E5MB4wQsAvw8rxef9ccGDDgC61onjxML/w3TBBnUWJFDd4MD6/Dn/+trB/8H/wcEFwYUvAVjeWoDBBYDEKQF76HTGk1bCxbkPAIHuHv+GVsdKxQUAevYg8goFVvZXwsPBk7kFBQL+TGIFAHY6UKUhESsCSV4K1XwGFMP/ZI4JEL0OMuf+w//AmAXV3RYAbgcQoigkO4zFIBGcKitxBdVNKR7DcwUQfzvnUgA0ez4wiSARwUOW2kMrZsJpxgTAwLfBwW3CwV/lEQFqkf7/Rv//BcDH24jDpcJwwQdfxh8aEPJbj/06RPp/isbFxsHBB8HG5v7CwMMAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:00', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('97', '38', 'TcNTUzIxAAAEgIMECAUHCc7QAAAcgWkBAAAAhK0n94AXAJsPmADZAHmP+gAuACEPdAA0gIcPlAA4AM4P9IBFAKMPKQCmANKP8wBwACwOAABwgKAPlwB2AKoP/4CAAK0OewBPAFePmwCMAGMPnACVgNQPhgCTAI4PDYGZAC0PkgB0ADmPyAC2ALAPRgC6gEIP8ADBAHYP64DjACwPfAAsADyPdADtAFIPGADrgK4PhQALAVwOnoAKAaoPcQDKAfeNYwAbAeoOfAAfgakPCQEdAQMN2YAnAaYPvgDuAZmPCgErAckNiAA8gegOyAA9AVQP/oA/AYMOmwCGAZWP6gBDAYUO7wBDgRkMGX4r+JIXTfcj+EcTtYLQiqN3c3yWCAvn+JNqBLafsYYee2YIz4O+h7+PgYHTi9YP33dfNE9AiA5upXsdgYH9g5oOTYgz8BblkRkc9qaQp4Wuj8+XFPgtaWcQ/YP/AG58rX339A7e3v6SdvMHIAkC+4YP14hehqaIvX4WeD5/sGp/oZZGGB6buXLhuIaj/RMKpKntcZdJWRHqBZO69YmEXVKhffk3AYLSDAxuAQoZMPwKxTMjOhRWCM8gnXQQDd74cQTQShrGcwEK0nf6WPXKbPcNcQDdvhe93nfrA8vp8QRv4IZ1WzJPM08n4CsoRFMgOwECiebnCICqABBE/cHqwvuGAb0AE0bAwQBZgWx+BgBvAbXBdIQB0AEWwP7AAOmBFvvD/wkAQwV5QoLBwMEJAFoFDX4//zgPAJnVEMTAwUDBSv4FxfYdosP/+w0AldmDxhLBe3AQAK3qjMcGiHNk/wQAPjIj6RMAmDgJMzs+V9HAwv8VAOyHom5Bw31xgFaZwwDwyCrBwEoaAOxg00D+RP7//cDnPjJ//sP7khYAAG+tQpbCxMLCwgXAxkD+wMH/wGTKAJfxe8WJb0DB9wwEQXOiwo7EnUkHBBt3Fv7+/zjJAMP3KkZycf8dxR+NWsBKVC7AI4X+xL7C/VIFAJZOYsLsDQB1jFN0BcBE2hwAXY7XwDr++nv8KP1GwMEFSsZC//77+ff7ywB/DlJ4wTU3XMsAnxBWw3qBd37LAJkQH//+TMHAmHkNgFaVU3PA/4oPBAWYUG3D/jL7wMeOAZygF/tFl2SEjwGYqEB+wbVZlosBn7I3wHaZgw6ApLIwwMDABWnEiQGStD3AdwR4JYAbu8z+U8AFVft+/zH+//zA8/5s5FwcAPK9tJNwxEHCgMGjhXuZwBiA7b+wVXB5B8HHQcSMZmBwA8V/xcbDBgCFwUNFwQGA88UwwoYExfHisHcIAIDsN2VOHoDd7K1SWMIHs4BBwf84Q8AHxXX1zP3B/0siEOwH19DAwGs2//4+/Pl+///+wP//B//FfsPBwcD8CNV1FIb8/cDBwsDCERanV8H8+2oD1cIroMINENdJiYr/+kHFwsWJBxCUOO9//f4iDhCXgI96RMPWx/zD/ATAAJCeRRBvBBDfRyDECRBAShrFBP7AsQUQKksgwAYDFHdTd8IDEKikA8aAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:00', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('98', '38', 'TR1TUzIxAAAEXl8ECAUHCc7QAAAcX2kBAAAAhIMlIl4PAOYP6wDoAApREgAxAGEPnwA5Xl8P8QBMANUPeV5WAOkPJACcAF9Q3gBZAA0P0wBoXtsOKABsABsO7V5sAIUPtwCqAPtQlwB4APUPPQB5XhAOuQCBAM4OpV6CAGwPyABCAINQsACOAG8O/wCVXl0PBAGdAE8PuF6pAAUPbAB2AONR9wC4ABYPcADDXgUP0wDHAEYPOl7cAFYPYQAxAN9RLwAAAdQPaQAJX/wPfQAXARwPnV4xAVsOiwD6AdlQywA/AW8PpgBBX1cPQQBJARYPq15XAe8P2gCfAYJR84a7i9+PawC7XraL9n5SC5qLOimSB4eD2QbvBL7Tv/Yyj79+mH2F3Nf/Wf6hilv/raOAgsuBJQWchdbYHHapesZ1ePWtJeeUrYiC+W+JFdCjiRoHzZxAhDVTtHgt/RFiTHxpRKCL6WSpBcDq1tzGhdcDSnRveadYLJvGAEqB9o/7zeIPPozaluoHet5HADuWfoArbqLcf4ZCfw9z+4fOWR4JfoKn+SYD3vj+JK+TxoIf/0pdhIHGhvpiRIUa1FcHPuh2gVoVotsnegN9qn1u+2Ndd4EqF5ZrYxh6xZIvm/QOU8EgP18DfyOmDACvAGnV/sFk/8QQxZQEM3/BQ3f/WssAeF9qdlxgwsEHCQTnAHrD/8NcOggEFQRkwV9XFMXNAyl5wcFkwsCBZGBbASMRXMBm3QD9R42OwMHAwE5kxRpqVhMBBytSl3qf/sLCZFjAzADjc4GJTsIDACsxFKEEAFU+ZHDOAF4fVj7/gWYExfVNUv//GQDtS0bCxJxnwXH/wcCsWPsmHQEPS5fCBJPFnnLCc8FnwAXAV5/AAwD1UBA6BQS8VgP9RhkAH1mHnHZwwMJRwQRbxJzBZgUA4V3VVwNe52mMwpDBwQC+MwJcBADtb8MuFl6TemnBYmmlwsUGwQgAmnr3Bfx3oQkAvH8GwTr/+x4KAJ2BdJSvwX9dAfqBE8ASxZ6DM3fC/8LAfjtnTlgBrYx3k//CALHQAcDA/y4HxTWWAMHAwXETAGqSdNr/wMKLZMAEUQxeOpVawMBiBRkFXp6G/8HBeb3B+s53wGhbBwAEqAehU/4aAROxUsTFoIXDwIdqwwRKaRwQAM/DjMVMcWqeZf4GANfJ1f9mTwAS05dZw5rDxwJoFwEQ2pA7dIaaa2rAw/9tBwgEZt9We1kDAPvhV54ZART6oH8EhMaaw2rCwMDBOsH7aBcRDgCXW02bg5zDN1QKEK7M8PiiOTsJEKgPpcHEn8M+CRCwDzgj+55CDxB/EtoFMPmlQFv/FREQ26B0N8XEwMRkwTrF+3EKEJ0s3v89//ihRcAGEJs0n1n6ShASNKnBwgXC+5zAxpHBwf8H/1hYEcQ/esbE6AYU7FDn/Pg+DtX/U8DBYsLFxcU6wUdaEdVZjMTDzhDzPqHAwML/xgLDYFoR22GA/8MAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:00', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('99', '39', 'THFTUzIxAAAFMjIECAUHCc7QAAAdM2kBAAAAhd8tzjIqAB8OcwDrAJ08twAwABQOJgA3MrEPKgAzAEcPzjI7AJgOpQD+AJE9KwBGAAYPLgBIMqUP6QBmAFwPcjJpAIkPVACsAIQ9sQB8AJQP8ACYMm4OHQCpADUOuDKrABoOzAB3AJw8JAC+AGUPowDBMncPSgDSAD8P0jLSACgPxAAZAKE9/QDcAB8P9gDlMlwPcAD6ALMPdjIDAW4PpgDLASw9YAAYAUAPtgAfMywP2QAbAe4OyzIeAasOvQDkASE93gAmAasOQQAsMysOPAAwAf4PvjI3ASgO2QCFAaM9VABEAUwPAwBCM6gNJwBPAXoOvDJRAaQNSgCXAbs8yQBbAZwOHwBeM48P6wBbAU4OpLrYDm1y9wXiEzop1IFl9oF+mJJAKAQPQX0nAzrvrEp8ht3q1YEr/ttEPIWbhm9z5A6UxXcNrfan6VYBczu28wf3/vlaflIlInx7Dxv/RINjP0J2wY59gwaXeLIeiJP0fYDbcTfFzHbu+U4Jv3xCMHYb8Z92hNuXzLcPkWIKzX1jD56/7/rjfgOLyGfTyxLrPApKSJs5wchUQnEzdgR7A2+xRBUd1xbNHO10NBTCyIOAgwgLzbFQiOUBWXhk/VDJgYNlASEHMP7v3Ae/YvB2fVt9hLMcBZ2HTf1g/xwpkJHSEAMMhAQQP4CBxgGahX50wM70CaF/nXWDAXO35BF9+aH1MARwx7Drdfye5LPxEhcGZVsDIEfEAvcVaQgAYQATrUUNMnYACf7/VQcQBXIACf7AwEeRwvvzZwQAmwUWkgsFFQ8GXlhFB8UkHDH+wP5MFwDMHBbxwWD+wsL9OljFY8H/wf4DACIoMvYFAAEqBsE6DwVFLgz9wsBAqv/7DgUAzS8pf9AAKwAH/1PBNv8FwF1nUgsAuDQcnsBj89MDAAY1CQYYBTtDAG39VUeJwGDNwP/B/xUA60cFzGFUTFhKwLsOBTRP/T1YRv+eCQUwWQBWNsEJxQJtxsH9wf/9wAQHBWNrhndqDwC+ahVwwDJCcxgAzXry8y7BL/7/wAX+xfJFwHgSAAFO6fvNR0b//lv+mBsFMZTpNcA7wDr+xM3+Q0X/RTTOAIWqjXXAwv/CQAUFA513xGEWAPyc8s03///+OP87wMRowWkbAAOhIv8w8/xB/sI7wTr++vJyZAkA0LblWPpSEwApu/DA9jX6zf/APlYRAM284szBwP8r/sAFMUc2ASG9aYAKxWLET8J4wXgEAOHCYl0LAGLHesOvwsVEGgADzdz+9ztE8v84wP9EwzvAhj0BTtL3wPw7wf7Nwf7A/8X+OgkFYNd3omnBCcXZ0xXBwFhBBgD042dFwBYAAengkcA0zfz//zA9aNEAAtzhSjP/KP2DPsc+AW32hsbERcHE8cHCCQBs+7/EwfHBw3YJAHQ4HDXz/oQIEG4CssXG8cJJERCjCmx3mvHAicHBjArVqhUVV4bBxxMQdxGhzcGIwsPDwgTCxfDBwsDCBBBgEi7z/gMQAxQ6BgQVXBk0fAYQYNlDx/D++wMQdRz1wQYiwSMpwQUQFCMhQAcQbCQ3wjrExTgRgiWrxc4CwsbNw8cEEIgq7FYBIuIqIGwEEP43P1oFEIlBLYTBEJRxKHgDEN1D38IGIhtIKcEPEGdIrmTDwcnFxMRR+R0iJEm9/v81Ov/5zPz7///+wDrAxM3DwMUDEIWMLcQnEbdLp8DAO3XEqsWJi5QDEA9LH/AEEMRi/f8E/gAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:00', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('100', '39', 'TalTUzIxAAAE6usECAUHCc7QAAAc62kBAAAAhBcvQOofAOcPjADtAPnlXQAtAO8PXAA06ngPNgA0AKQPW+o6AGQPVQCcAOLlpgBnAHgPNgBo6h4PqgCCALwOnOqEAPkO0QBJAJ3lXACRAFYP9wCc6lgPuACaALgOhOqcAFEPPwB6AFblqgDBADUONQDA6q4PoQDNAPsP9uraAK0PcQAgAETlUgDrAEkOswAA68EPowAPAecPeeoRATUOmQDeASHlMAAnAUEPQQAj67UOxQAqAVEP7uo2AYAKqgD+AaHl9QA8AVAMhABE67AP5wBCAccNdOpGAacPmACPAaTkLQBMARUOiQBJ65sOswBPAUwOSupZAZEOqQCcAQbkxABaAYIOTQBf65QOYQBeAUkOc+peAYwOmwCaAY7k8Iux+76GXIQH+vaYyYwpC8+SmZY+AoMX+X/fdiIV1HRqgL5+r4RmET6ERQNegfr+w2LKp+ergYEAAzUVgIFegeqpkB92yMp8OgWm/0YGWuAjB/93rQc055psE1m+/RvZJ/pb4gb+qfgaui7mCex+G1d/IQh2AhMokAJje19zf/h+ancPMghSiyL46WZ7gPIOvfwb7sKY9HSBgl4Q/ATBmO/wapCGLaKohWi4kn72VvA/FkbkFTNMg47uzB5F7B+kxNOhUAa98fI4nv0jSIeotB6ZDB4xH/YU2Bn5SEAOVWZufL+FJOGI6AETWYjICaEMqfv9BZ3jpHjpkhxmlfmBg2feZeL0Dcn2gf0wApUd7Ph1AqnmIIiFH7DtpxBNWidwJNYAApIjpgjFYwSQo8BaBQBKxGvHsAcAhgF3gjsOBE4Hg8PCwP8BRccUVwMAXQdnBAUEqiNiwG4IAEoj/tnDLgoA1yRVd4i9DQBeKef9Bir70vwEAIgpd00IBHorAEZGCQCdL22UwP/+ww4AUDB+Zn1VwFYEAPY4YIULAFs5a8MFwMQq/sLACgBd+mR/oML9DgBWVyFBT9z8TBUA8lpSwHNpdsJmZFsHxaNgl8PCwoUKAG5nDcT/T8EOAKOvfccowv/CcMDBjxkEFWyXYsHBhAZpfCj/wMDBwHjcAP1rpobBwYCDB3B0KlnAEADPiVmNwSvDhMHAwMAEGwQTjqfAg8J1B8LFYcDBWsBYwQQEBLOTWnAOAF5QV8UqbMDARWYMxbWcbMfEwsLAwQTB+ysHADCcWsChEQSVoFPAcGfBScDGfwsAoazp9Tk3xinAEACqrV4GiHYrxcLDxUEMxaCqsMJ1wMB+xdsA+1O8xMDCbogFnZeIcsD/bcIdxfLEXnb/wsPBxAfCxyvDdMFiYsC4CQTRwFNlZcIbxezFR8D+l8HCrgXBxirAwf7DwMAHwMdvCwBBw1BlOsBo5gGpxD3DwAXBwCjDwyUKAK4AMMQrwcLEiwsAW9FHYZbDfwoAoxQ6eH9yHgDw2KughMcswMTDw//CBf/EK8LBbMHCwQDCGurv55opwJUDyHaUgX3EwMLBBPnA4wFw6UBzmQcVBBDqok/AccN1xHYrwYMLAFDuicDGKsDEksELAJDuQoyhwXYEAEE2TF3iAfL4j8D78sAM6rC/J0LCncMQM+tSV8QEEKTWKaLtEZofK6FlwBCCwSjBpgQQD/ArdekRKTwXwAXVLlTIwsb/BBC3lAZx7hGfXwaEAAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:00', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('101', '39', 'TDlTUzIxAAAFenkECAUHCc7QAAAde2kBAAAAhacwknohAPkPuwDhAH91ggAmAGYPpgA+euQPhAA+ACgPq3paAAwPVACaAFx0bABkAOgPjABqetkOmgBwAMMP4Xp7ACMPkQC4AAF1ugCDACgPQACXevkPvACWAPYPonqZAIUPmwBfAGV1cgCcANoPKgCaeiwP4ACgAPQPnXqnAEoPAAFiACx1YgCoAM8PdQCxekMPpAC1AIIPS3q3AM0PzwADAEV1FADKAE4PTQDLek0PuwDPAIEPcHrUAFMPPgAbANV12gDhAEMPMgDgejsPXQDxABEPxHr+AEoPUQDLAWV1JQAPAd0P9gAae+APXQA3ASUNQnpEAecOfwCLAdt32wBTAdYPKQBTe9oPjwBaASUOeHpeAewOPgClAf11YQBgAfYPOJXnd4+BjoGHFpZyFBdYeoaCovhDguv0UIoaCG71EAuvndMLgYExcj92JOgPElIHgYFb8nqN1ARZ/5LiZ/aXgNf/VQDRDneknI+4p+4m9SFcmliMDA3JsZ7wsSdYR/hVGN9sG3RqCHeQ5bKS0fygBQ90TARaCN4Bxe9YfxjF6f3i+MYJnI8YBpravP8Q+3R5NQfd/e3rWAIDhZ/3sf5y/BMBQvomg2tzpfnfBgN9LAbtB+L95AmL+96Eyv2CB4KEQHHvBNYBzfsm/bKJ/3RGBYqB0wr2cgIP8oyOgZODwISnf3sOQQZLgcuFCPu6Bt7uRAvsib/x6fS9AcvptIcq+2OPLQXi/1LpFPU9BR/snBCMdxT7VROKBaIZjHUPAXYZKQTMSmWdIUcBAxYs0Q0FEwFnwXhZwJcVBdABdHHAwsAEbcW4/sHAU8MQxXkEF4rBwGRrwasSBfAAbcCLasAFwvsBYAUALwJgBXcPeksCXlliYNIAqn5sUYj/wWusWF27DQBXBGd/rlzFfAEyDWJ3wMIArmp1wMP+jQbFmRmNMcEGAJshP//7PRQAkyJpwQRacIXAwVpbORnFtyEAwcLDXMDBB/6GhXE9/1ADAEUoYrsHALgq/f2EBQXMKnrBhQcAdTEFQj4XAKs2ekaAWQL+wVf/NwPFrTJ5/gQA0zoQgA0FGj9ea3ZtZM8AtyMHKcDANgbFql4Aw8NyBQCymww1fAHYYBdU/9oBDxubdMHD/44FwcTzZmL/wTX/jg8FFWLiNf7//gUr+oXABwCfbwA5/jVvABF5nMB4QcLHu3nE/8NiBsXof2b/wFkXAJS4+vmB/Ef+wf7/O/7BUcErwAcA5bsi+rpWEgBzgOA6/vqH/f8zRf7AlgwFEYVQwMP9SjvBU3kBcYRQwBPFvoNdwf5C/sD/OsH4Nv43FQEWh1lixbnBecJ8woOlEwX9jvD8+fz9B/z6hf7C/cH+wTv/xXUBpZaQxsQBeMU2PxsAdJjWO//4hv3+//3//jrC+4X+wP/B/v4F/8VVCACXmHTFVv7FuhIAvJkwQQVRxYdOPf/7DwBmmzWE/MA+V0b/1ACc5F2J/sL9VwT//rtVBQCRn15MCgWKoytVQ1AOxd+mTsBENsAr/9cA4dksRGUw/j46MQh6mqU0+mhbOv8ydAGYqkzBVYH/+7o9AwECqikFAwU2u0z/EQCvfz37NsE+Rv3/S8sAocFHQ1Q4LQTFz89HUAQAEc5QqQQFbc9JMAsAiBdPxDpVOAsAu9KDwSouNwgAcdhTgT8CenbZUDhtDMXb4TpDKzj+CQAy6DGHwP3/SwgQBAVJusH+/z4nEO0Q5Q7BwmXAwcA4/cWE/PwxM11Kg/76hDUGEE8RXDorAWsUJFN9JhDIMOcoZsHAwVo3Pvv5h/jB/////wX/+oX+wf/+wP4EBRUeRG1CAxBDgnD7egAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:45:01', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('102', '40', 'SpNTUzIxAAAD0NMECAUHCc7QAAAb0WkBAAAAg30do9AvAJ0PngCBAJ/fdQBFAJAPsABd0IoP/wBxAGQPEtGUAAsPjgBdAJDfKACbAGoPqgC60H0P1wC+AOUP9NDAAJ8PWwAcAAffigDdAIwPqwDn0HsPhQADAUEPWdAGAV4PAgHCARzf9QAJAaQPBwAS0aMPlAAcAUgPmNAsAY8NRwD0AdvekgA6AX4NjgBC0WQNpwBIAUIMt9BZAY4OUgCfAendqABaAX0OSABc0f0OKQJTDYYXqtJnD08QMQY399wltP7j8Cf7y5ok1zaDJm7PbRrvTcueCzMLK/P6a/wzX3pGB+bro4BIx5J/ZoC7ldqDkl5Xir+obhT7CpjAnHr+8C767PvFKqcO+uYi3yJc3qzefx+D2YSSBZzXVhRHFNsB4AGe2zcQSRChBecI4qTf83t82fDY+sUg0IxRf+cL8A0eKZQKbBOZCauWTldPF5vz/PME+X5TfINqdU6BOHWowCE5AQJSIIkFA6gIFv9LDABJDhQuwWJVYBMAoBAUL8BGWVVkVMAAd8AW/8DACgBsHBQuwGBSBwBb0BZQhBUAUB0MNo//UBFUZP8EAL/lFzzFAUYkCS9CiVjDEGVRBQA9KtbDNtwBozEewMCdXE/WAS06AMD+hw4DqEYXQv9VZJwVA8lT6f7+KTwFSvwRwVXCCABzn5PAvH8HAHFgiQTAwhX/EQB5YRc6VVuJVlUbAAKGIf82EP4p/UX/wAXA/C/AW4gMAIxWmsERkGlsGQACU+D+lzr//T5YVKdVC9AsmO3//v84PgfQJJlwjQwAV5odg8BDWAQAJ1pnatsBa7WAwoYEwcEQwBEAc7oP+/5QL8BVwUQLAK68fhJ2jG4HANkHHmO8BQD7xSA93QABHdv+wP7BKzlG/S9FWFgaAAwK3j3j/////v8+BcBSi1cEAF/YA/sNA1nYk5XAg4cHBgNf4Rr/RwsAr+GFFcCRZ8EOALfkDxD/NsDA/XMFCgO75nqRwnTC3gAAIs7+ODP//jswRxBNwf9bCwBG/4wUwo5+wgcQRAWFFKHCCxCJBdI3/JPB/wcQVgiliMMWBRD3DCRKwhCQyJbEwcWfG9UKHgDB/sL8OMA7/Pwtwf7/wP//BcDDEMHB/wcQkNiMwn7ABxCYHyIH/kHbEZYpjMHDAMPBEvz5/AgQoP2QwxPEw5kGEI78icYVxf8FEKQ/2TcGwJZBfcDGxN0QIJnHMMAu//05wP4vwf/A/1VXwRCVmXbCxAUQrpCTxRLDBhAvYgOo/wfAkGIATwAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:01', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('103', '40', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:45:01', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('104', '40', 'TRlTUzIxAAAEWloECAUHCc7QAAAcW2kBAAAAhIchl1omAO8P6wDsAPxVLgA1AN8PWAAzWvIP7gA4AEUPJlpCAF0P5QCDAANVswBMAP4PhwBQWuAP3gBmANYPuFpvAAwPKwBGAORVgQCIAPMPHwCTWpIPiwCgAMUPK1qmAOEPCgFiABlVWQCrAOoPewC6WhoPagDaADMPsVrgACAPjwAhABFVcADyAAQP9QDyWtsPRAD/ACYPyloGASoPZQDOAQRVZwAaARIPWQAuWzQPPwAuARsPr1ouATIPSADzAetVfQBbAYQNeP2zqr7nwXjS8BbnBd/PAecDOQVr9L+xuIhZeE9sxIE+J15/UYhCEAf0Ila79ScQNoWPBfdbNwzmCT+Uq/kuS5553gF3AXr7ua3yCX/rS3h2gPsjMA/7GZfnmwGioL7v840PDx4HHlDK9Y/tsv2GiPtFwPaW4tP46wXaVIv72hBq9jMiNUjQB27wufpy3tulMAqu5brTxw+zo773vfBV/9cdKU7TJjoSWQQeJqPpwfOSz2v8GPwrU7KzMBN23q7x0wmWl99X9zfRDAR6RQECqyXizQBXWmrCdMD/BsVgBD3AwWYFAEHEacYwBgBwAW1/ng4E2wBrwlLAZwVVFFqVAWvBZMAEwH8AwQsAsAF0ssBZNwwAyAFxZwViYJoJAOcBdHI6ewNa4BBxQl0RxekYIMHBwMHAwovAxDjADwCPKm29/2+belkGAOcqRXTFTAHqNYbCaQXAc6VxYmvBAwA3OAeYFwDqO31ZtcFdPnXC/lwEANhDZjcFAOhEADjBAOQcgowFACFHklEAWulKCUoSAGtNcCl/WXhKwQjFtlSnQFQIAD9Xm1lcTwHZZYnCfKpkby7BcAUA4WXJQAxawWoD/FRZwwDbMBbB///BE8W4atrDhlhwwHQFfAxawXEMNkQUxBR2zYTCdMLBeAXBxJtgDgCChOv0Kk6a/MEPAHyKrGfFCsL+a8AIAEGK9KQxKgsA1pdWiIAqBwDdmhb/8g0E1aH6Mf84/4MNBOC6j8J9dIAFCASYvBP+TMDAzQDEmB9YwEMGAKvY8HT/CgC54Rw6wDoBHAEP37DDr37G0sPB/nfC/wfBXCAMAJPjEyv7VIFQAbXlIltLmAwELfAA/f3//TpTUUEADPenwcCswMYiw8LCwHfBBcJfKRUAR/zgNAX9xqD///7A/sI7wfuawAsQZgf0Of34af5vCBDPC+JV+5rEBBBhDWlOChQzDP38/P39OsIxUhFqFgP8+zj/WEAR/xipZ2IEwcbLgWxRcAgQpxtpmMPBwNDEBNVMV0qIBhBpHQw+/TdfEZwuNFsF1aw2aksbEQUzqQXAxJtzwcLAwsJXwcUmwVnCBxBL8Of6ofj8wAQQEf0rcU0RIkTQwDc4S/un/CdERMAH1UBDuv3A+fn/BNVKTLEWBRBTTAA4WhFKKU3QVf8xOP36pCPB/sBCCNWMZtlqWwAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:45:01', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('105', '41', 'TVVTUzIxAAAEFhUECAUHCc7QAAAcF2kBAAAAgzsfkxYbAIoPWwDeAA0ZagAtAIcPjgAzFoMPmAA9AEEPrhZmAIYPxgC+AIwZaACEAHgPSgCMFgcPHwCeAKEPmhaiAIAPZgBgAG0Z7QC1AA4PhgC4FloPyADEAE0PqxbJAHwPFgAfAFAZcgDbAFwOoADpFtoOKgAAARUPGRYFAUcPXQDOAUwZkgAMAVAPIgAVF58PsQAfAZQP6RY5AagPgACPAcYZ2wBNAacPcgBUFy0N0gBTAf0OrhZfASgNNgmiBHOVmIbOiHuDWIJqEwoE1njy/cYDuusuAI/8FgGfg68SkwVzhlsKixAKYB77pogCkp+DPx5mEyP/rnz3Bhvv3/CCE/9lI4rjgR6LDvfD+EoKdRjrfpcJ/fZz/n81Zw9ahxf6RIJzA972gYLylHqOIZ5ff7uJLXgz9zsVB2zDeQvtjwG3HMp2HvpbTur7zhduJCe2OQP/cpYY0pzHmo93hXO9FVd9tQVZ95eFKIXMDyqSOf2L8ut+705fMSBBxAKENUoIADIJCZlHAhaGDQ9O/wXFGhDs/jIJAF8Zxf5m63oGACIcADr+UhwBXx8Mc0qMBwQEK/pAZwsAqi4NQWVFBQBHNUPAgxABTzgAVMDDAEwtfF/BFAACl+37JcJAwME8XYMTBBRi5zRbU8AF/0VgDACmZIlpnHR6EAGuaAlCwMsAonyCUnODchTFA2vxOlTA/8E/jsHE1REAwneMwQb+YtdzfsEEAMq5DGgGAcJ9hsBttoSB6QcAZYGAiQcMBHuF/WU2wT7OAGKRdcDBgP+IzACQngJQ/0QDAN6dadQFAJqgg4TGABq0Y8AKAGKktX7FhcEJAKKkAzvB++j+OAYAmqa4gcYfAWSpbcN4QRgE6K2Qa23AgQSLxW7Dwf7EFQHGuJfVO8DAwMDCBcLE1XOADQBgvCz9+1IuLwcAQb6ljMTXFADEwInATcGV18GLYsJrBsVRwEiFwA4AXMSlhMRhwf/E/sQUxcTClV7DwcDEwQdqbXEGAMzHEP+D/AEWqsiAwpEExRjaWUMbAQPdmqiEep7F/8Jpb/5NCgR08E9n/8LABMATFwD3pMGMwAbCxIfDhsDBwMGbBhQ/BUZWwAQQ3AdIYAQQIAhJwosNFIAJ5Pz9/P87wPno/0AFEI4Nk8KHERFcD0ZNPtUQ4RmjjMXBoMIEw/ufBhCTEFCEtBYVFhqtb8KNeVPCeNZ2GBEJG7CwhJael3xv/wYQaB5a0H0IELUeDO36RRARsCNQw8FkBBShLiA3DxDs8KuI18LFxZ2LBNURMiaCBRC3NjEHwP8REdlJq8PADM3BDhH8TcnF/wfC+4ShwcPDwYC7/xQGm126wP3/Ohf5VvrA/gAAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:01', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('106', '41', 'So9TUzIxAAADzM4ECAUHCc7QAAAbzWkBAAAAg3Ekl8wvAI4PtwCGAJLDUQBQAHUOcwBhzJEPbABoALkOtcxrABwPrQCyABXDkQB5ABgPBAB/zJIPdgCdAL8OXMygAPgOtgBsAKHDaQC/AP4ORgDBzH4OzQDCAPcPdMzMAEoOSQAeAETDtQDjALMPoADpzEEP2QD1AHAPQsz4AMkPrQDGAbfD4wAVAagPHwAZzaMOgAAeAfUOSMweATYP0wD0AZLBiQAyAbIOHQA/zYcLRQBBAe4PhMxLAaMONACJATDDaABbAZcOswBYzZEOgwBbAUsOm8xaAYoPCv7aAxy7MwAydoYG7/kkk/rrMHZBfuT/ocUbZj8GJI54CI5FRPx1hT2KoAf9Ulv+eX2ZeVgHgkpbfTr+gYJ7/Ki0A3GrEJuNZLWKTzsIZTSFg3MG8V2rgod9GcwQTY3Bh4BOCB5L0wDhzquC1vga+Xd6AcAPFV4GgoRviu1alwDDAOMVhQot1I/0yP4tEucdgk6Ljz99kg3HbpzJHQ+98sboRIYS3hcmqPe+5QPivjUf9XKXKRRk8j7aNAkj/VueLQvqx9f1cPvwBxTud8+87PUFef1c6nkxtpaaZgAg9QECNRvQDABwE9VXRpvBCQCOFQz3cv3JAbEbHsFwxgB20BLBBABqJsw8BMxmLQxkRAPFmDPc/hAASjn9g/5YM0XA/v8GAH5GGQ7/OwgAVFHF/0DyBQBkWH12wgBvkAhYPwgAtKSQw6d/DgBZQAP4wD8O/jYFAGhlRpETzHFoA/7A/zhENQz/TQYAuWnW/vzyBABpa3rAUAgDdG8eVP9QCcWwdNLD/f9D/wnFjHtDwoCDDQCUvQ/+jf7AwvxbC8WTfttB/UdgDQDpneMz/8AqMTcIxXqe3P/+/v9CEMVboKjCwcDCwsGfV5rZAS+o3v8z6UHDMi7Awm4OAK277tk/c8KXDgChw1UOf8GGwMKVwQDMCTVbDQB6zOX9/DPBwMHBxMIGwRTMKc3PQf7/O/0pMv4wRcCVCsVyzJ+YcIwPAHgUTMCmbcT+xcCTywB9FTE4g8TCiDscA3retHyMw6AHicII/lpowYwOxXnj+8FZwv7FnUEGA3rmN8GPCQCh7UMMbsHDwhoA+vXDMMD+wfz9IDj//az+wcPDwv47+/zKAUH9Q3TA1xCvzLVrgsPHwwHBwAzBcgcQIgLy/cGdBhBJIj2SLPUF3E8iNMDDwQQbEwMyhv77K1YExMUExMLAb4vCBsPDwRFDRTfCyQZaW5UJEItNE8ABasDMAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:02', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('107', '41', 'TA9TUzIxAAAFTFAECAUHCc7QAAAdTWkBAAAAhfEzqEwuAPMPcAD0AONDpABEAPkPoQBNTOoOXgBUAKUO4ExXAAoPTgCjAOdCkwBmAPYPdwB1THQPygCPAMsPSEyTAFwPbQBTAGRC1QCgABgPZACnTPwPWACmACEOJEyqAFYPJwB2ANxDpAC1AAMOZgC+TGsO9wC+AFwPcUzDAOMPvAAHAH9CpQDGAP0OVgDMTO4PzgDJANgPokzTAAoO+gAdAJtDBQHcACUPqwDgTN0PIwDmAIgPkUzvAPwPqwAxACdDYQD9AM8PTAAMTfMOoAATAeoOd0wVAdYPHwDpATxDMQAsAcEOpwAyTdQO0AA3AYUPbUw+AYsNPwCFASdCJQBLAboPrwBITfIOTABPAWEOc0xRAXAObwCeAehCfABbAesNTgBeTfEOoQBbAREPx0xdAU8O3f7KD+az7P/uiqvukArbSr6E6I9pBzcJ8Tt8gvZ+55YO/wZffIZ6+eKLX4FnsiIOmoEyagZ8mLUbmuITUXrv/OMzhH+mBFqD0A23ssOjvf3BlgcBTMaAh74CUH/S/S46TYePfZ/1CZrERDQJ5GpUb7x9ILMbdF5/qvQjCTtOFF2BfpEThZe9u0T8jfR1hWDm8OnbFioGLA/MHjTu8XudB3OAKYsLwOoK+Q9u+Wvi/jny+0ODkd4QD1u56Cqu9BoZTPfct7/focb9Hpj75HIjDAY2meaUC/tOSHiCgF4ahIjg7hMI0E/d5hdkl76mb98TnLv0mBxSgIEFYtFrfJuHzJf4mIdJaAQIhMnbsMoYnH+thz3LbX+VBEX8+X8QTJT8EQSRHuCCKKqvhC7ptnzHErYuNb0queUAwSBNTQPDJdUQAAIGbIxQZML/ZMAFBgXiDXBpwQcAdhtuF20LANcWbTvCxAbBVAgAcRybQ2FJAd8dccDAOggFNSFiwUJUFMXYLjjB/4T/ccE4h2iNBgD2NoN+pQgET0WMiVINAGRGdSd3wML/cBTF/knPwcBwhMB7tsF7SAHpUwY3CMVZUS5XZw0A4VVDgMWMwmRxBADonAxORgGVZfdPwDv/TlgBrm56wntFw1SNZmoIALZwODXFcwcArnR3hwQXBF1/lnaDeMEHwWM8bAcAzo8M800PTEmSXnPBYjoOBQCXXHNrwMEH/saIIAEUmJfAvYh7yG50cm2NyAfECExqmlz+xMCvdGlIAaWe+jAHxdqlX//APiQBEmaab8TAi8HCwMIFfnElwcbDx6zA6gQF0aVwiAcApWH6+2X+BADWpBaEBAVRrVppEABLaVqANGjEOsQcAdWtm47BwJHBhMIFwn00wGbCx8cFxSKqHP91CACpsTj9PggHAKG1dMNDCwXluf0o/cDAO18ATJ+9a8GFA8W4us/HBAD7wieYGQRCv5zAwMLABv/Gj33Bwn54ZwYKBZ7IF////cCSwQ9Mzs0eRsA+OwYF59MDIcASAcTYoo7AdcLCjMJDcwFNAuApSQYA2ulWzP4IACXqTLTAx7MMAJjs9/0+/fuM/MDA////zQCivnzEw8P+wjsGBePyF/w7CQBo+Cez/yszBxDnxS04DwUQXwFMhM4Qjkrm/PcqMf/NEOZKMUb/TxMQthDWef/8G/5BwTv/UksRoxEkITjCEKRbMf79/v/4wxCeVmjFSwUQnuVJRUoRlyRT/8LhFhUoKc9X//7/OPv6sP79/0vA/5EYFRIoxkFB//wF/viw/j7/Rv7/wRCkZ0IoBRAwMPiWE1xnOd7AXvw8Gzax9v7D/lkE1c4+DEUEENM7OuoDFVBLJ8AAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:45:02', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('108', '42', 'TTVTUzIxAAAEdnQECAUHCc7QAAAcd2kBAAAAhJsku3YbAJMP7gDmAJR5TgArAIEPZAAydpEPfwBHAE8P+XZMAJMPuQCdAJR58wBZABoPxAFtdpgPuABwAEgPVXZ/AHEPKgBGAGN5bgCuAAQPJAC9dpcPhQDDALoPo3bJABQPygASAJB5SADgAO8PWQDxdoQPbwD9ADgPUHb/AGIPnwDAAYd5PAAWAeMPzgESd5wPcAAfAaEPwXYtAZINngDrAXl5rQA2AYUNmwA/d1gPkwBDAc8P0HZFAYgNxACNAZR4xABQAQ8OWwBSd3oOzgBfAU0OfHZhAfEOUgYyBDdxJ/97/C960voDhUITXgrS/t8D4oiOCgP/TXjs/6ZxMAaaA/N6gIiN9CaOiYKhC1oLsYim/+d3ig7+buudF/ozZ+vrW4Qj4I7zRgZjh1ILpgoLbTP+9pW7grPmywJ+glcSA4yrgtoONQR3iAJwBenDmX94HWcXdHr2tABCCoeIu4DH+6aBSxdbD4oPcnrfacIHYQ/0Bx15GPhZdgLuVAjpgWh/AvRSaw55peRIjmWHcfiYeUV1LYLpCCEK6YKZ/lSJsXLW+buOoQ6o+sEDhnqr6j7tWGq93AwghgEG1STIDwBjAMnARonBwj1FBgC+AAg0/gcApAAQgFkLdkYBBj7B/p52RHIBlAEQRQjFuQVm/lNDBADOxBBIZQEuCf0vRIl0RrT+DAAXFfc6QPuJwcBVBwDD2QxGRw0AEiH0wDv/+bb+aMEGAEzvg4+1FwAPLPA7O1FRt/9ZQ08IAGA4FCPBRgoAe0NJcce3/4kPAAdFLv88Rv/BW/8FAEZICCMKAHtKiWkEwsS0hwMA91oaBQgEy1oQ/2VKF8UIbJ3D/UD/Qz6PwMSJ/lwQALZsVcDFt1zCfMLBgcoAsASNwMFib8EEwYJ/AbxzE8BKBTgQdi+A8P5R/QVFMon+wFsIAE1Fd40dBQAmgW2DwQAj8WVkFwAIiyX9RSX/wMD+wT6PwEdmAXSuA/9G/cD7EjkUAN+1mq/CxAKNwIvAbxnFCbKSwEDAwCpKBf3FiFlY/xQA3X+TXvPAwYuDwWLAAOHLHVsOAIG/RsLF/2XCwJgMAEzECEhOa8ENAIIDfcW3w8P+eMGFxgCuvBH+EgDJ01+LbrfCwcNiwWDCAMqtG//AwFkTxU7anTL//Uc2ZLYaBHTo1/5KPf7+wDo0N8E1BgCYNIyTtxsAA/bW/o9LK4j+Pv/+U8CWCgTW9hdGwGrAwQCcjoeYBwBQ/a6UgH8Ba/9wf8KsBAQF/v0+DBCbwn37t5NwfAoQo8IXOhx8BhBrIWKhwgpmuSOcwp3DO8bEEMAIELAokwbArLYbEA8p00GK/sRKM/4+wcDABcLEfxGaKoanxDpUB2a3LhP+BxBfMX63xcPC/RkQ1jXXSD3/Qf/+/v3/YLaUBxCoOX0Hwcez/wQQWjxeRwUUKT5X/8L7BNWYRnX9wwQQ2EbSbABmy1APWgYQdVietcOxBxB8YcVXaXYAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:02', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('109', '42', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:45:02', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('110', '42', 'TAtTUzIxAAAFSE8ECAUHCc7QAAAdSWkBAAAAhfUugUgVAPAPxADaAP9GRgAgAGMPZwAhSPQPSgAoACAP3EgwAH0OxgD2APhG2wA4AAAO7QA7SOQPeQBBADcPv0hPAAEPOgCaAO9HsAB1AAIPUQB9SHQPWQB8ACkPaEiCAPQPvwBGAAxHuwCIAH4PWQCRSAEPfwCiAKsP7UilABMPiQBvAPlHbgCuAPEPRwC/SHAPHADAACcPykjJAI0OngAMAA9GsQDRAIcOpgDQSPEPswDVAM4OKUjZAF8OxgAfAI5GHQDcAFYOnwDrSFwPcQDwADcP4UjxAB0PiQA8AP5HNQD+AN0PZQAMSQ0PEAASAREP4kgYAZsPSwDqAd1HIQA4AdUPvgBcSeQPlwBeAccOtUheAYIOpv0eAAJHxP2lf6r8lYJ7yzZzIgWG/Vv6Sc4HArP1PH5EgaTPgIFBBY39+YYITScIyv6GAruHXkx2/ScNUgSvAs9KQwa2A2MGZPmozfiPQXcJd0eCpLE3B7eCGQl/iYfK2Y4ZCeYKIXa0NXeA3Qc1jyuUKT94fU3+xovODQLeIZPVjP0PsIWsyoj34XSpgggG5MfIh9MHSQWnhG9AiIWNAg6Y5X2INQj+4Ze+AJsCGc2AgQ0CmQgMf1/OgIHJAYUG5PjoP1N7KW7xb1OCFN6c+z4E/pVnhhfbFAud8xOgm4IXQpeCDRMLHYICn7LfAneCpoJWE3bbIwdb/sf3mwKjt3r7peejZf4PhMoEH0f7gYJCnb4zbkJ6Dhoz5U0ESv0pSQMARsVtxE4BVQBpZMDDAIJIccJmDwCXxXB+iMP+wv/+wgRuAEi/AHBYCACnAWwVXQQAcQFrsgMF7wBwwAwAzMRwUxrAWhUA7wK4g1CIasLA/3BVwgDxQntpVAUA+9F9WU4BgBZrwMCqBQROHYBzBgBC5GfELAIARyRg/84BB218ZcDCWcDMAJtucW7B/1UExAIrNf7DBgDCM7/AxT8FAN84AFnSAQ8KgleD/3jCOm3EFGELAHVEaQVKfREEADVJa3vDAD8FZcBYBwC/iwNWLRYBDk6GwKHCxRXDwMJkc3TdARUsiP/CWV//BsDFi8FYe3sPAcpujBpywv/BwYPNALA+AT3+YAMASHlxiA4BEnqPZE5ox4p6CQBVf2kFcMU4CQDEgwn/gcHEWQG2hIPCwqWHgDrDGQEWhYyAwYUEksDAwv53BzsCSL+JDEVVEsW2icvDw0LAfnA6wZBOAZ+TAMAr0AEX0ZLAasLC/FLAxbbCa4MJAHtldMe3gksNAIOgMsD4Dv43wcADACmjFYgNAIym9/7+RGFMAemoF2gMxY2ptcEpRGQLAK6wdYrBef5+DQC7u3GKwX7CwkTCywDJjJKRwMNnaQQLBerGAy9GwEbKAJ+BdsFriGZpzADOgpGCeMEHABbKE4hSwAkAtNDJ//qIVf8HAKzTRpB9TgEq22CHwcEAHpZWcxoBFehSaMQqk0mLwsFxgRQFqOyWhZnDwFXCxAtLBwBV7mIHYsRHAXXu8Dgq+ELETQHo7xrAUcwAX7pfbcL/ZgXF5fFWwFAIAI31PzQyTwGF+3CSwDsIBcX9/cH8/j7MEKBACCptwAUQLxwnIRUQSivWwfb9QbX///7///8FaAFYSTNaWRYRwkmhI8P/wcHCxAWRx4n+wMI6FBAzU6GJY8DBw8HEXsDFIP4JEH1W5AX9/rT/ThIQVFkfYMVr/f3+U8A+zRB9KujA//z7/AcdFapknP7BwMEGxseMwcH+++n9B/7Ftf/7/v3/wDrAxUgAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:02', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('111', '43', 'TYFTUzIxAAAEwsMECAUHCc7QAAAcw2kBAAAAhG8s1MIRANMMywDWAKLO+QAeAMMNEAAkwqQLjQAiAEsP4cItAKcLUgDrAIHNsAAzABQPCQAwwpQM+gA1AGoNlsJIAJEPjQCkAInNQwBrAHcPTwB+whIPZwB8ALsOUcJ/AP8OeABLAIXNFACxAPwO5QCxwn8O2AC8AFkP4sK8AB8PHAADAGbMfgDGAIIPZgDIwpIPugDaAFAPr8LeAB0PjAAjAIDN5gD/ACoPUAAEw4MNkAAJAUwM3MIKAaoPhwDXAUnOIAAWAdYOxgETw6sPPAAbAYMPZsIhATsPAQHqAbPNnwA4AakO5gBHw74OLgBSAXEOE8JXAaIOWQCfAaDNwABdAdQNgABbw6APGC7hMBMtwBQAABoQ+RbgHjrjgACR1PUB6/4CvGoLdQXp+gTm8zlGEw/3bYMThgZIvPLh822DpAqJLGsPOQbWfm8GuTw4flsQKXvb+tM1MIrNl+6VuIEhPANtfYEhi1OCpcTcc5KGlIN8nm89kYdNHOODLHxCyVoK5YTLjWb37SbQal+PMgHD8ROnHHkFA04RpHiFxc/7WYgVjRuYNcX3aK4FvYGzgYe0VftZNrEDCQtc/bcFvYHiAzL2EAUQzqYWsZMvG+flGPZ2gWIDBHNGzJKIzvY68vK1icxqDneOgl9KIP8X6A0ZHt4jsPVB1OAXtebZ8i4AUcdn86drTy1SH3/t1P11737n12NiE9MMIEIBAksiF8UBggEWWGrJAJzBEv9TYv9PzABgxBHD/f7AasIARcgCPkcIADPJFsCWWhMAPBsGkVT7lEtb/wMA39kixNcBKR0MwUqB/sUD/sDASlUNxZEh1cFaWMH//gQEBN8oBl0KABHxBn8AKf8JALU00lbFggcA0DcXwAVJE8IQRPc+wD07wkQDRcH+WBYA3U7zAvxXwf3AVZZV+wLBCgAPWveKVT/VARBk90f+B/3EAjxTRMBlBcU+aLXAWRgAEG4xRvs9/sDAwStEnVfExQFjeIOJbM8AgbuNwXrCwFXIAIm7DTb/VV3AzwBvvwf/MsBED8WLetHB/0xPwz86CQSxjIDAwcHCBV0bwgih6f9H/oU1xT1Fwf8+wP4FIyzVARmu8ML/OzjFOULA/v/B/wX/+5sXACSz7cAFK/o9/WQ3QGQGxeq74sHALwQAfAeJpNgBIMPn/8D1//gDM0tLTv78OfcBwoLIEMFVDMV7zUGBw8CEkxDFn85STMKbWsHCXgQE2cpifBAAuRCX+r2TwcRifAjFaty1xcHCwV8MxYHYzTrA/Vf/y8AAuR8h//7/CwCu33RQa8N9BQCwGhovxwFH42LCbssAjCSHxJvBwMUFfdPBAQ3uUMMJxZP4UcbDw8LCmMwQncEj//4zwv7BEO3BLML9CRB8wmvCYcH+xwQQ2copLcoRgxBnyMMB/ovKEYsRDPn+hcED0oQXQ5NyCdUbHQH8/UYtDQCp0gTxOv9H/wMQ7x1NAAcQOyBJwgXCw8ERHSE9/wbVFSeCwcOUBRBh6DT6Bv4FEJItMAVRANL+M0wdBBHXNlT3CBBNQb0zO//6Pg0AfO79/Dj+Oj7D/s0DEFqMMcDGEfZUd3cAAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:45:03', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('112', '43', 'TXNTUzIxAAAEMDMECAUHCc7QAAAcMWkBAAAAhN0f2DAWAHAPOwDeAGM+zgAhAPIP4gAvMOgPgwAuACoP9zAzAAIPEACKAGs/qgBeAPMOfAB2MAMPGwB1AKcPATGbABIOVQBpAFM/hwCuAO8P3wC7MNgP8wDAAN8PwzDHAIcOrwAKABE+9wD0ACgOYAD9MDcO4wADAVYNxjAMASoN2wDUATk9zAASASENWgARMUwPGAA2AX4P6TA2AUcPJQCHAcA/iABEAc8OagBKMeAOzQBRAbYOszBYAfMOdYDzcW9PfIN3+yd7sISmwuYDfYfyfxqLs88ei4//IpXXEu8jRw7qi+8LcPI3N2YDJRLfF44T0sZii+d7wvsSjwcjLmifg8v30pir7aJrn4dre2bvPjvjl6f1bXczb1djXJO24wspeJa+3sIJletmDdMjQWjQblV3aAuY7kqpwBwZrMkWNftZ1EiT/RsqJfYs4cnO74fnntYvD9sYXAm/9697e/LD7YaFxfCmcO8WhbKTlPIuNRREgicVFhgEHCBHxAKeEiwFAG4AegaIAzBKAWf+wMG4CwRMAG1nwMH9BcL7PgGTAXBrdgXAZs8TALwBesFBTlfxwVXBFADexHp0z4FFwMBkwfoLBTAJfcBqwcCsAwTPEn3BBwDY0Hp/QAQANxpwxP8FBSAfgMJfEwAOInNdaMBrwMHABFscMQwogMMyw5PAxvH+a3jAwULIAHsBalzAYsDC+w8FJTyA//6JXAT/x1AJADeIXmgDwPghABZIg1JxOsJt8MBaBwBNfZvBXs8RAQ1RhsC3d8TyWHIHAMRTxcA68QgAs1ZwwAXCXfEMAFSTYnu+wHrPCACvXvH8OlNkIgAOcIlawAfD+fTBeMFqCwCBsF7y/8HCUcLCwgC6QQE2UxEBEb6Obs/Cwv/DcngHCwR3kVpYwHB2zACruwFH/MI6DcQSibxZfpCDDwCwl2Twfl12wWcMxBKTuUJ3wnkEALqaZkgKAFHcU3Oowlg5AbCcAEH/hgsEfLJacGb+lMwAtJMBM/9oDACQsFJUa8BrBACCdGJpOAAStJZZwrkGBKeWbcHDbAnFnMXdIUbCBAD3BxpOOgHU5hbD+Ts1RjwBX9ZWwW0EwMVXBwDf35yCAQQERPVTfQYQYeFJbvASAQ7lp36wkcby/sP/iQkAnfxLbYLADQB/0iHCJ8wwRAYAh+QswPjKwQsAyukiAf74zf5D/g4AnSn6/s36yMT79sA4/8XwCABj/1N2ssAHMQv5MP8IAG/yGMz8/cA2BwA89iDN/v79wAgAbPojy////jAFELMsSFgIAKT9N/7u//vKCwCC/drAOfz4y//BxwMQe4VJ+zURbSRMagXVxBYKKAYQ3xVDgcEHIJshSf8GEBYdQnv3BhAHIDCvwgcg7T9GwAQQZ18CQAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:03', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('113', '43', 'TWFTUzIxAAAEIiMECAUHCc7QAAAcI2kBAAAAhM8kjCIZAG0PXQDZAGQtTAA0AOAPkgA5IugPNgBDAJsPjyKLAP0O6wBQACEtpQCaABkNhQCxIlEPqAC9APkNmiLFAMYNlAANAE0tXQDJAEcPxwHJIi8PqgDOAPkONCLjAFIPpwAmADotxQDjADcP2QDoItQPSADuAI0P2yL5ADgPgwDNATMtwAANAUQPPAAWIzIPewAgAfMPmiIhAcEO2ADuAUAtigAsAbcNXAAoI8INYAAzAfwP4SI5AUMPtQD/AWEthgA7ASEOWgBHI9IOmABEAX4OhSJWASgOkg++h4eteINqeR73BfsNpXiDNAtiideNCaEfdQcCnuR2w78ZjvvbD8frxxyi/69XSgmDAKoLqFmAALH2LH9lj92uKYdBDiUOE/mKIab1r/oHCwL75VoAAIkBnX6ED/smCAVFC/p4DPvi3mcBmYauj0KHydkPA7p35gF39W4nmAJqeYKB4w1mIKuG7v228mfzYaMYAnoUEAPsDuZ/XAHiAq7iDPQRumSBjAc9DOSmNiZTGkKH3QHXE7vCjJaOrLKk7GxxS0RiKBplElhyxMhYnYn6IQv7bEZ3ZyqCAAQg8AEGbSPJCwB4AajAa+LBwMDCCACbBWngav/DBQCUwHfEXQkAoAt0wLR2DSK5F4DAwsQ6cgkihRltwcCFB1hWKgFYHGRdwaMQBPMojIPAxP8EwX7iWAcASThiBkP7NQHfOZDCXFZpc92EVMAGADSDYGDjGwDvSZDAsnV0q/7CwMDB/gTAxEIbAO5Tk4u0hMdIwMBcVcBq3gD9TpvAwcNxwATCx15rwMDBVcCYBQQHfFfAVRkAOn6aWoF4ncHBwQRVb90OAI6G8fs6MURkaQYAKIpXkMIVIoaMYovCdJlUljIBj4z9//30OFRuHADnkZzBqsLG4MLCfMHAwK5WxOBvwgQA75XlRgIi65knW/4PxamfMfw7wFk1PeUBD7qjdH6MwcFcwsVFaVttdhIAXp5w5pN7cMB4dsoAr4AjS/7BwP6dwDYDAAupqYt0RsPFsYJiwf/AWTrBxasRAI2wXIkH/3RTwoUFAK2w7sA0LgGTslD+w6rA++d1CQA/uFAFOMWhCQClwUP+u28PIq3BMUf+/zrBJz0B/8mrwf9FwcWswonCa8DDBcDEesDCwgkAkA5Ma6X+BwCX1EwEicQpAVvPSXT/roUHIwfPKf4JAG/TM+MqNBIAwub/wEMa//v6/Pz+OMDEKQHJ5jD+TPojAyIu51ZwhgjFp+wfVf3+xQwAjfVISHDDx8X9B8Xg+Rb+Rf8gEPjItMbcwGSLw8TBBsXF4MDCa3OEes8QxTBBN/z7+B7GEPw3O8EFENgvhjAAMmE4N4YFENQ5KVoCELQ+U/cAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:03', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('114', '44', 'SolTUzIxAAADyskECAUHCc7QAAAby2kBAAAAg3cjgsojAIkPUwD9AHnFPQBGAP4PVQBmyoYPHgBtADcPKsqIAG4P6QBPABLEjwCrAIUP7ACuyu4PxQCxAEoPRcq2AHEPSQB4APjFcwDAAHoPVADGygoPfwDOAEUPScrbAPoPMwAaAPLF3QDfAJQPRADjyhIPRADjAK8PjcrqAI8PPgDPAfbF6wAOASIOjwAcy2AOWAAiAa4PfcoiAXwP/ADmAaDEQwArAeUO7gAwy+AOOABPAYkPkMpOAY4O1wCRAS/EhQBfAX4OtABjy/8NqgBgAXQNZNsyB2ePcX8y8WhBbIffDM+TdgM8zZYPwoRr9A4HxbZXgT/+z4VyfwBFOH9iDU4GZ4ClP1OBI/3TgbIOP7CfhE55NI4AAxnHKP0OcO71II0yQc/4PW2hCSh141n8CkUDmYhM+mkwInSbBR/zTIQqX0cI8HOheBtyjrafELaGtZYPEKlHgIMXkKv77Ph6tshunQyFinN5hdgy8IsdgYP+e4zZdISNfg0GVP7NXouB5mwCacLtUtgM32KSy3z2i9hpgIHh8gbORIFxuIZOaSdSNgKEsDJApwcgMgHHAxjhBQBSGADCPgQDmyAAPQcAheYMSKcQAD0qA8CWRv0J/FvB/wQAijSDWw8AVzgD/wQ2/DVOxf0DAE/+d8LHAUBH/cH9OsH+l8FCFAAYYSckwgr8wv1kRcAFbgrKimSJcF/E1AAhpfbBLf9V/o9VFcoJhfBEPv8FwD2GYcH8FAAtQ/Q4C/5ERP7AwvL+AMokh3TBBADjjWSfDQA1mf3B88A1kwcANZ9xxJcIA0CniX7/w8HJAJFmB0Mv/1gMxYqut/+FdcJ4GcUDux39wMAw/WAF/sI1wf1zwP/COQcDi7lxhHsQAIi59+HBwfzC/v/9XQDKb72AwgcAgMBzTnkGAJXDAzv/O8MBT8d3k8AHwMHGAZTJD0n+BDU3xAGDzgn//5NAw/0FAHvRgHPIAE0W/MBU/WX/gwcD5eNkwYXDDcWF4drBV0b/wEbCAEIuccPBwXsNxYnpWsJ8w4DBeNQQQs37R/1XODsG/gDaXSD6/gUQgyFhvwkQgiQPMDo1BdpXJmf/w4XSEBTt1sBAI0T+gf7DCv5ABxB6J7iWwQgQECww3P85/cI3/jj+/8D+8BgT0jvJKMD9Kon+w4rBwP3/w/zDEI2BkcPFwsQU1RlMGcP//v79/Io9/Yw1BRCYWZAEqgnaplykwcHCA8LBVQIQiGAGwssQranHyH7GkZs4AAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:03', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('115', '44', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:45:03', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('116', '44', 'TfdTUzIxAAAEtLkECAUHCc7QAAActWkBAAAAhFksabQ0APQPsgDzAHO7hwBVAPkPKABRtBYOMgBcACwP97ReAJkOSACoAGC7+wB3ABMO9QCBtOAPTACGACsPwLSSAH0PtwBSAAS7kQCbAPsPrACbtGkPnACvALQPGLS6AFgPdAB+AOu7YADBAO0OTADMtF4PiQDJAKcPVbTOAGQOewAdAPG62gDYAAYP+ADYtOQOrQDeAL4PfbThAHAOaQAkAPa6jwDlAPoPAADptBAPAQH0ANgOarT5APAPpAA5AAi7jgAAAQIPCAABtRwP7AAHAVwOKrQKAdIPrQDRARi7pwAkASkOoAAhtd0PmgAqAf4Ot7RCAT0OdwCKAcq7yQBVAUQOHwBStT8Osv7nk0p/dzYeY4uHLga2hv8jlYOeBf+jdIfevsL8kIcdioIfUc64f36FIX7n/d8voPeCfWL6iI4Ru7OKeXxvDLqFcTDnkf4GsY5H/gYiS3hifbZ+fHpuoGsQS3Q79j57AbGokqmOiQEwic5IYfyBbblyJQR52bh2AXmFgv900DL4BWmV3vQyjM9chIKi94L72G9WxH+A3H6NgNx6iTB8/cUGEY7kBsFPpPYFm1IMAIf7rNoCSQJhg1/x6bmk80KQefn4Cw6hGA5mhNIBDH9uyIKIf+zD+2LnsUAUE8HjxPPsDI5Z1hBv7Kuh8Rchl2cBYfv2FSMFZ0CSla+TQQkcC+OrxP3WA+MXFi5b2g0EIEABAkUhVLABfQtt/sHIAKO4dsDBwGuBRA8ECxJ6Z1liwAfAxLIBsiGDw1zBAD6daGsGALMquMFYvwGuM3rAbbLA+rMBtjYA//46VwK0aDdwwcHABBAEBDt3wHNv/rnBx08OAP5SjGQFxHZ2/8JZCQCKkPrFdPw+/ggARK5pxuhxGAELcpA6wvt3TFPDwWrBBWlhugH2dJBxeKJ+FLRRh/HBwP/1V0VLwAkASIlkrsH6IhgA/46T/0KHlNB5gP/BahbFwIs3gcLAcMD/VYXF1gcAyJQJ/zpAH7T/lZNpwMI6wsd0wcL+wsDBvcJg2wIAspeAwskA9i2SwsByw3cEBwQOmwZBTg0AoJ50M8PBwMJmwMsAbBdmwMFxcMGhAwQssXHBDQB3cun6SkFA/0EPAKG84/swRjj/BADcv17MDQCMxPEuBTvF5A4AhMh0wgdqx+bD/8T9BwBJyv6JNgMAh8xtBAYE5dJg/sSIB8WA0kDB/f9VBAAs1xL2AgDf3BP/0AEIap94wXjDhzvDxXdPwg8Afd8xwPlL/k/+/1X+yQBhUGOEdHv/DMV34N2JwMF4VA3FkuxOSv8qW8AExcnppDIKAHL68P3++0v8wQoAa/unw23ZwAsAp/wJ68D7gf4LAJP/AzjB+fT/TAYQ0Qff/zawEfALGjYF1SwL+8BsCBCxFNn/P+cFEPYXKVbKEGKr1iBB/v7AO/9HshGoJiL9NMAQjoJXwiwDEJrzQ/uwEaE2OkMF1ZA8/cAbFhEEO2zA+3aTeoTBw8MBUPu3EbRGOv4L1XVPZ8D9+/n6/Dj/xLoRx1G0wY0BwsF3xcHB/hIQEWO5JMPBwcTBxAHCxnDBWQAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:45:04', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('117', '45', 'TIFTUzIxAAAFwsMECAUHCc7QAAAdw2kBAAAAhW855cIWAJwOBAHtACjPbwAuAHsPVgA9wo0PCAE6AGoOE8I/ANcOJQCVAG7PGwBRAO0NgQBUwvcOhgBRANYPUMJYAHYOPgCeAP/MMwBiAGIOcABgwpQPaABwALQPtcJ0AJIPcgC9AHTN2QB7AB0OIACDwpwOogCHAE8PRcKKAGEP0QBRAJLMVQCgAO0PUgChwoIPLgClAJAP1MKpAB8PagB9AFjMkwDGAG8P1QDCwtcPdgDQAJwOccLnAEkOogAjAHHMDwHwAKkONQD3wh8OxAD5AO0Om8L7AB4OTAA+AMrNLgD/AL4OxgEHw6EOIgADAfoOOcIJAT8PoQDPASTMkgAMAScPfQAVw6EO0gATAWwOCMIhAbcPIQDsAbjNKgAsAb8PdQAyw4oO5QBBAVsOxMJCAZYM2QCPAZjOQwBSAa4NkABcw6wNxABZAUMM3cJbAYsNnACeAZTM+3ID7VcTSIHjUKoTEvIua5oFTLmDEhv6iYW2FSpV4O3NbtN0VYM4yLiWkIdNGWiP5T2cge2WQYvTm8tlnIGJfi4EmQf0WoSGCWjF+sRuPMZDDgJ6LANz/PehvPxJCvZ2aQO3PedjgYCxiy+OhEJMCjqC0fqDCMs0QHd6DNID7HnUPLR/NY+2kMuayzpHFW8oBvTjao9BIIk6hisElAfDsjPzhhja7Yf9j0Him9cbbRIQ/x8u/PIW36Z/kFm/x09VLQlWjIYDhEBjdN77rYtDgN/MnPwtrbn50JEo0SuTNYDdgHjzvDt8hlf5NYCMA5tL2IAlcckDHPwcxmiCVQgxCZuJaEC0e+X7XQtDgLNN3P7a+KZ5FQNQyIeCTAdSCFOCFDcjBr7uSQDwF2fLhA0lEvX6DAAg1nAK4QF+877xZMN283Pz/f1w8uQpuPB5BcnvKw7DyNv/BIcXcoxRAcIhRwEC8CdKEAWoAQY4Rf5bBcBcxAGxABNM/sYAx8IR/wwAlQHKRsQ8wcDAYAQAEgEf3AQA8gE0/7MDBSgHNMAFAQDDQ8KABgAUDEb+AcEtwQEbD0bAFcUwHS8xNf5YSkU6WxPCKSfwVP7+/sBYhv5c/woAau6AjgLBx20DAHLrCfrGAfUxIMH/0gAY8PbBVSn9/wfAOpdZwAcAajK4wsUAZw0ARkzx8DM9nwUAiU8MMsAAhJKHhAMAIVOlwQLCQVNpcf/CywCMlxJaNsBgwQQIBZtY+ilDCQCXXXECxFLD/QYA6mRnA/6YGQANcCdbMDzBMv42VViPDAWhcHDAwv/CBMFwAAUAbnVxatUAqbSOWcDEwcEEw/oDwG8LALR330/GjkAQAHZ4/e3/Uz1C/kYUAG6+bXdWdsH+wcPBOsTGPBUAnoePwl5xxgLBgFDBwwXF6Y/iwzYGADuMooPFxAE/kGLAwrYUBQ2SmsL/wmY6w5aywsBZEgBYW+v6PCtHMlJSE8WSpkTDk8TBcHC8/8DTAc2kl8DBBk2TAf7FQwgA1WMcQYkLAC2pWsKjwIfFAdOsIlhWyABje1/CwIJmwUUDBc3KTMAMAHYRV8VUwJSQCwBmGFPHuIZ/DwB34h/+/jv+/v/AwMA6/8YDDACd5YbKB8dwA8DBxv0LALXpVQGBfsPBDwCz6kxOisJsmQwAVOwG3P7Awf/BrcIAiTZHxMHBnwXFKPD4QwkAkPYwssJG1AFM+MxAwDj9+Tz+/cD+/sE6wvoDwcEZAC77BfvHPf7AI8D9/IHALZRsCACe/iKo/nvYET0ExsD+OsD7PP3A/v3A/QX9+j3A/8DAwcE6/w3SOAxGiYgH1T4J/2jCwQkQo8kiYQLBpAYQlBDswcY8wRMQzhGiOInGAcifwsGEeM0QBtE7w2f/wwXV1RLmwJgFECQt4v3EBCARBy2iwjr+xQLA/8HCgcUGxfpSkZDC/8XEswUVwDcr/8T9BNQRPZFAAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:04', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('118', '45', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:45:04', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('119', '45', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:45:05', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('120', '46', 'TcVTUzIxAAAEhocECAUHCc7QAAAch2kBAAAAhKsfUoYPAIcPmQDTAKWJsQAZAKAPmAAjhoQPiAA1AFwPSYY5AAsPdACDAJaJjABLABEOfQBIhpgPZgBQAEIPmoZRAJEO2QCcABiLiABgAJIOKgBxhqMN1gCBAF0PMoalAHUPdABvABCJrgCsAJIP2gCrhvQP4AC3AFAPhYa8AJAPbgAPABWJRgDLAHcPFgDphpcP2wANAe8PVYYPAQwPNwDQAVCJ0wAaAaYPbQA1h6YPRwA+Af4PeYZWAbIPMQeHfxN15AI2CSuSoAJPjhoJWX6xA+f2JQxMCw4JVYpThYL8VAz5gtH7uIG9Byh6YQv6fa+L5XKbfQ72fYEs+1GF94WKfaqGcIHRhZcATQ+Gie4P0X2vfiMGeYL7AxfllIa2BNeepgT/e87/eYKngF7nc4Om/jcCmX6cgueGWII6/PKez2q+gaaEImwu83ICtQIPlL+H6bt60DcRIEteG/ffcHyalUYAxwA/9gZ/8m0OMFuLsw6me38tGCaCUCBCxAL0r3wLAEoAEDpGZkf+DgBpACS7WFFGVQwAeQAkQMH7RsHAcwsAjsUiasP+aAMAlwDl/w2GowAgUlLBwgCphiFbWwMAIc0GxoIBIRAJlAXFWhWVPgUAzBEiBVINhiUc+sDA/Tn/aIABGiMDwsE7/QKGYCkX/8F4wwBdrILAdhEAD/36xMzB+kX/wVMEAwTXOQb9DQCM/BZWeUfBexgAC4b3QkYqwP7+w1EFU8ToCQBjS4zDO8T7RsMDAGpRDzoHBORThsHAdgzFoleQRDdwwAQAKV4jDRkABl8AwgQ1T9L+wFlBw8AFFwSPaPrAwjHABTb6RkhEYhAAaq4QxHlSUsA/bQjFZ2sKisJKBADzvRrEeRIAA4LwSwT++djD/sD+wcCeGQSHje0/OP43g/9/0cEwDwABkjHAxMY9WEQOAAFZ8EB7w/7//v7BmRgEgqXt/zVPPgTBMtH+RAQAMKWygxSGdqwTZVjAO/9B0hEAI673wev/+fJDRxoAAq8uMEO0REJL/0UwzAC3KRbB/0c8C8V+uRWFwnvCwhHFBs5vNEFD//5iBBAE9csWwf/B/gcz+fVnBgBDzHpFwhyGCdLp//81O/7He/7/wML//zr+xEb+wMETAAEm4PrG/P////7AncDEeP4HANfxIpBPHYYC9t7//v+F/fu5/sDA///+BP5ORhkQAQLc/+7/Knn/wUMzU0TMEFKLByFPwRgQxg7SeDLA/v8o/zrB+nk5RMEGEN3UK8V5XgUQNBhWRgYU0SET+/5ZBtVPIs+SwQUQWCaVpByWAyfM/yo4ODNIvUQ6BhBaJ+L++/EEEFksN2/VEK2rrJCAwsLCBJLFkREKLsP9/TouxHv+/cD///87//pGwP/+DxCj9anFAozCwsHCl8AQr7MxVBMQG0UD/vt5/cD8//39OMD7ecH+wP4NELpTs0TBwsTGxsYG/pqVETBgt/7+Ov/7ff/9+/04/ztvFZY4YLcp//w//Ph7///+wMXGAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:45:05', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('121', '46', 'TfdTUzIxAAAEtLkECAUHCc7QAAActWkBAAAAhFknubQWAIgPmADnAHa7wQAvAIYPsgAxtPAP0ABDANkPVrRIAF0PYACsAFW7QgBuAFMPQwB5tFgPCQGSAG8P0rSSAC8PbwBTAN27vgCXAI0OaACitDcOvgCqAPEPqLSwAEQP5AB2ADO7MAC2AEwPEwDBtLUPMQDwAIQPeLT9AMAPeQDRAbK6QAAtAaQPlgA4tZMN1gA8ARENjbRAAe4PbwCBAYm6+wBEAWAOcABBtdoPxwBIASUOpLRIAe0PQwCOARa5XABRAX8NiwBRtYsN3ABYAT0PfrRYAXkOogCbAf27vwBeAfwPpwBbtfgNNQZuGu5sfjYH7h7vtQLkb46je4L+l+OizJsTIPqvVg12Dtdvrbfj9Ub7KQc7+kvLh4G+C0sm/nVTyTr7zaay/Ef5gjVeiEeLNVkoYl3ujfdVBC2qEAAVHbzxABMtEdO4oTL7CdYGdw/mdwdPqH5ygWNwxvdzK0aDBQ771843lU7+yBco+RbflBarUIIdFo3y1PXhayP5oQINYyx3XaYgFvGjimlvjZs1rP0d8dnj7AWBufDm0fWNFeQCiTxQgnmXNYi89O1ClHjtDAmS4BtFkwP8te59ghiPQbmI/2IgVR78IwGzOHwdcn2Cb+QuMXIgOgECveOlALRMAGfEwAnFhwTAw2nAWQQApQF0JwkAbgFpwARrxrIBvwEMQMDAANG1DkANAJ8KwzDFgVX+DwC5FkzC+nDAlMB0WQbFlBvDw8NaDACc5wAvSsE2QwYAveuJxiQHAHM5Z4QEFgW9QaBZhY3ABcNw6G0JANNEFzv/QPIHAE1KYMEFZQy0U01cwGRt0gEU0aZqwYGLwQfCg3X+wV4hAF6qVsbia8H/g8PCVaekN8FqwAcAP7RXb8cIAEVyUFKAwgy0vnKWxMTBBo8ItMd0IEvARvsOBDB+XHfD/8AH/4dwGwEUia1wt8TENnOSwMDE/5cTBGeOp8LDwsQBw4AzdXAdAQiPbGJ8dcV1wojAhARSb3UPALyUl8cAoHbvwRAAsZUWOP42gj///v0PAB+VL+EzT8D9SgzFqpLEx8KA/8DABf0JtNeXNMH9ZPvAMZkBqaVXxGKtJvhO/f3AwP3COMDES8D+/v7//Tv9+HT+/v7B//8F/sVJ/g4AsaYpOP878P8sDQC7plvKtXVj/ykiARFusYNLw/+IwcPBBozFcP7Aa8B+hEsOBHasLf1U//+K/yKlAb2uNDhEjiT7Sf4uAKiyRq//S0n8+v77/P46//tLwf/A/sDBO8D5S/z//f3+/zvA+kvA/8D+wMDLAKkBQcDAwEP+OP7/lwoA5bY3wIHAMUoIADO6Sf+ogCW1EL6wwMJWrMGVKZNqwf98wAdxFbTUwreEwsUDw8d3wMHBwML+xgAkaULABgAu9IONwb0BNPU9/8QGwcY8BwEE/EM4OycUzRG9wv7+wjhX+kv//Pz7/v06//tKwP/A/8D/Ov7ESvz8///A/wUEFb0YTEAFEQ3nSfuDAhAwLw/BwBA3jhHDOwUQ3INp+eIFEQdJVv48BBStRidgAxD5gl75sBHvSGkuBdWeWzRzAAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:05', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('122', '46', 'TEVTUzIxAAAFBgkECAUHCc7QAAAdB2kBAAAAhCsl1AYhAPwPgwDkAOEJWwAjAOAPkAA6BuYPbgBRACwP2wZdAHQP7gC5AAII0gB/AHQPQACFBvEPBQGAAEIOrgaIAPIPdQBKAGMJ0wCaAAEPxQGeBgwO9QCmAEEPlQaxAPQPIAAEAGUJmADDAGUP8ADBBlYPgwDFAKQPhwbWAOYPKwAmANIJ1ADoAB4OegDrBhsONADxAJYPDgcFATIPTADJAUkJrAAUAU8ODQAQB0cO5AAlAYIPhAY7Ac8PlACFAUgJNgBLAcYPkwBVB8kPnABUAQ4N2gZWAd0OvgCaAfQLvosHG8eL2wbq+wb+6fui/hb5ZA23AIMGMgSOCcL/O21aAS/tRILwkSuVTXcJbx8B9IibAsv8gYKEf08AGwaGgqLzOHpHcRZ2QY+OfZv+0I48ix4J3XhPhcv4vJHllt4S4AlTj1INyXGZBruAtP93gGoHYX3Y/vBoXIV+gGr2FIRzhl952Qav2AbTWPif1rrP1XyXCev5su3jF8fvH/nec4KLNQsGN04FuP1TAPIu0gC6bRoTvIXSBR8IBIFggAoBwgCLf3b7RwKm+K9/ZYIH3VP7G+1rmScXQxUbLyqlJUwO5NIgTwcCJyzkBQCUAGHHVgcAXQBgoUwBBnYAYFwFAEcAW8cuDgCPAGIHQH5TWggAnABkvv9OAwG3AG1xEsXGBWvA/8JCwv2xwMXGwcIKAGoBp21PURUA0wFtcwXAd/nBXW1cFgApBoakWcDBwf9brmTFCwADFpOfcAXAZwMB0xzx/DbWAMgkcXti/2LBBWRgAgHVIv0wCMVXI2bA/sDBQxjEDzyRkMGQWVXABGRhxhgBEUSTwAeNa1dawWpbbBrEE0uVdMLCaWXAr8BxUo0XANpadwRkxHT+wcFq/sMFYscfABdbl3fDB8HFdWv/wXTBSwYEBeRd/ScaARGbkIPGwmrAZlJ7BP/H+XAHANtgdKFXCAcScJPCwcMH/8RtSxsBEnmWB8PHbMBbwXZ+wJjBxGwCAM9/ccDMAKqC8TjB/fzA3gELj4jA/8XCwIB0x2DBgP/Ac8HXAKKMcWdqwcDBBcH7xVsGAHCPZ6/ADAZ1lGl7fsHWARaSkXfEU8FyB1lqAwHWmfr8N9YBEp2Nwf/CxFacwvuFbAgA8aGGB8DHYhcA8aiGwqzAxcbDwMNpdGQHAwX/qRPABwDHcP36+P41BADEukWHAgbHuwAvLAzFh8f2Q//AMTUPxZXGa5XCwID/wL4HBXnEZ4t7CAD1x1nHwWrBCAA1DVfFx1TCDgCByaVpeWLBXRYBE+BfdW/El8HAwsGEpwoF3usWIyskBsXD6BD//f3ACACE8lVjwloJAEjylcDFxnbBBgAz9ZJ4xREQFgCwiMQ6g4hqwXfAWwcQBASFz8DBwcAYEdQFrsbDw8HCfMIBwI3Gw2XBegMRyQc0+wcQuApTwztsABZJEExZBxCLEEnHW8IFEKwZlnUAFsYcQCsEECQoTMb/BBDmKD3vExV5N8/BQP/8OP//+Cs1/RAQhfLTbcb9/Pr8/P84/vvGBRB/PklC3xEMOMeLwcKgwQXExMfFhMJZ/3XGEJVESP4EEJVDhv34FBG/VNaLxATDwsHHwcDBwMCTBhWoWc9kwgcQfhNMRFgeEMJh+jr/wsXCwsHBwsEExMfFwcLDw8HDBMHFxf7/wcAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:05', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('123', '47', 'SoFTUzIxAAADwsMECAUHCc7QAAAbw2kBAAAAg28aecIcAIMPtwDaAInNIgBFAHMPawBSwoIPYQBUALwPosJhAAUPegCuAHnN2wBuAIcP7gCawu4PWgCfAKkPmsKoAAUPoQAHAH/NKADcAF4PCgDiwhEPkADnALUPusL/AH4PpwDSAWrNwQAZAXgPCQAmw3cPTwAxAZcPl8IyAU8PtwD/AUzMJgBDAc4PfwBJwzkO2QBWAWYOv8JhATQOUw/G+xzBPgl7C0eH3v9IRR77XYHH+dL9JcPa+5MLWYU3joRBpwH+dvf7VgWERar/m4TXk4p/mL7u9x9rsYsGlwBZuHtWDh9uInP8NVIPzpULlnqb4TQm9D8JOQubFN2zHPLy7HId7ASO0Lz/rQBuKF8OnUUyByfrCun/AUnZaBgS2P7ZZ390sa6DAeiFBp+UUbJvbHpXCf6HkAkkfP+bACBAxAJr40IKAG0BDJNHdcYBqAUM/cTAAGHJe0MGAGoLycH8nAkAGRQGewVTCcJ/HQnB/206ewrCdx+AaHvB1gAT7fzAwMDAYJBb/ANGEwAVOv0FaFuH/sDAYMQRxSdGNUVUU//AwZQOA2hPicFywMAHwMICdAcAXVF9u08EwrNSBlFRBsVlVzj8bQgAXViya8JECQClXAD+iV4Owpxgg8DBep10BsKlYwnAwMDPAHWlfH5qewsAu2oD/2Y3CgB3brLAwqjDSxIBAYtMZV+ggnPBEQECU4lZmW5vwHEDAOKcaAMJAFaecGsEhg3CX5/wOED/BMBG1wAKoozB/wTA/LmBwGrAdAjFWaCl/mJoCQCdYwD8gcFaCgCVqL/AwQLDVsEJAJ1pBleZwRUBA7OMp1aGS3LAbQ4AnXqDwbXDZnjBCQBgwgWGWf8NAJ3Fv8B0AMHBccADAODbZwAZARPblnYEW30Aim/AwXgFxdPczsE/AwAp4JnAEsLK4Ix5Z4sEaXbPAYzkd8PBBcLDusHDwgYA0iATwwL+wQwAlOY/wP89wUP+OAwASetztXb/wKEZAcrxlbZdwYR8d1lNxQ7CtPqDwpDDBcLCAnQIAL3/CfA7D9K0AX3CwYwH/4TLEaMWcJDDBD0L0qcbZ3rCV80Qx9kN/v7+/v0+BBN+HXSJCBDH4HrBBsPEaxQQUejXSD3/wP3A/P8FPkM/BBBKMleQwRBT91J+BBCPNZaEB9KUN0xvBBBxPVBVEhEBRLeiVcHHu4rCwMAGEH9F1TT7FwQQwkXxlADSyEknwQwQKGO5AsPFwsfBxAHDwcIAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:06', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('124', '47', 'TG1TUzIxAAAFLjEECAUHCc7QAAAdL2kBAAAAhdM1Ei4UAHkODQHeAMwg9AAkALMOLwAoLpgNIwAvALQPvi5AAI0PpwCMAIYhkwBWAAcPpABfLnMP2wBvAOYN6C5xADULeQC+AHchJwCKAGgO0gCLLugP9ACRAHML7C6WADULMABbAFsgqQCjAIkPcAChLpsPWACmAJ8PHy61AN0O9gB5ALsglgC9AGcO9wDdLk8PhwDdAOgO4S7iAE8OqAAjALMh7gDmAMENxgHiLs0OtQDsAAMPrC7wAMQP3QA0AMogZgDyADkPcADxLmkPBgH3AJcNji4EAQcO2QDOAdMjvAANAV0PcQASL98NAgEdAaAMDi8eAdoOPQDlAUIg1QAoAe4NlQApLzwLHAAxAQEOZS43ASALwgD4AXciBAFCAWUOoQBGL5kLsgBEATANgS5EAYoOPgCXAeIlrwBVAXIO8AsiJUITKRsmMuI/NDLA7z8rzegT0l4jvPsrA08LoA5mpub17fppft5jYKjTl2d8NgLKbALdYPGGb5LzCBWDr5MCtgLqb64aiK5EDmaPjYB3jNMgNYOCgXKX/YMXLH960fq6dEOA+d1TJJcbaBOPNtpIs/4D6r/2Q4Bn2M+TdooK/9Nz985vPf7O3nM280I5X3kqyb72+ZOArjuECPfd8ChRTVnA9Sn17Xz8DT9S/WIsB00QvRPNca0DhYCdETz7NyBfNtvv2KZhp7yb6IjJk3bup0Uz8A/ScQspezTrha3Y9yGLgIOjeb/fJY5aAeIW9XbrW2OKUQ6mhZcq9FFYGzaRWR0Y+mOKq33f3LuJUIj8y3OafXzth6sA56PbAbN6nXhLXOs+fITVhHILv/SPQAcbilJur7vL3FLvAJ7r4TegT/NwESBCAQKN5JEALsgAEP//wMwAgi98/8NQVwjFngQowTslAwELw0zBPAEMI/drwPJU+xPD/BIADSwx/2hoYUBUDwC5+JOF73DAwmXDD8W3Rqf/lMJpwMI6wccpAb9DE/9LBRUFIEXpXlgyPJLA+xYPAKNGicIEbmvudAYAq0oGOzIILqJLgMBqwE5vAy6XUgP/MwTFjlCudAgAXVd0vcFsOAEKWNb8/gRGNe0mUz3/DwBTWQPRLzD+aP3DwgBYcHHAfsAGAB5zLO7+JQwAdXyxecRMw24WACqGJ//6EP87wf4qMAQpAy8GkED9bwjF/dlt/vwwwQMA4I5l7wIA/5VGwNIANrThOP4vMSc6//vR/sAqFQC3ZaTGucXAwXrBwTuMdikBMKJeeJjVAKaMkcOfwYnAuYcULrCjmpuXg0CBDC5UqFzBwYVABgWXqTAz/g4AVrlx6sLCwp3DxAbExioBm74c+v7MAJbuaMTCn6EpxQrJ/sHA/v1o//A7+u79/jDB/cA4wvjR/v3/Lvz+OSQCLjHdT8H/xTr8GC4d4dD+wf4ENTvSMSE+/v/9hP0DLoThQMTGxgMEBaXgMMXHAwBTzTLtBwAb5FB2BwQFPOdMXgMA5iNJ+jIBtufJkcYHw8Hsw8LDwv/BBMLE7cDFwcHEwQfBAS7u6kYgHABo8MygxKrCw5D/W8PHscJxwAMBEz9M+yoBtvtg//nBEPwoViQEEC4R//v7JRAUG1zA/f3+xwMHEP4fZzs7BhQtIF4p/gQQ/yNJeQUQOE3M/gEEFDsvTjYJERDvVvkbwWEGEAsr9XjGLRFjORrEBNW+PlpaBBAHPTAG/wM+jUt9R8IG1fhOXv9sChCqU0XC++39wf9tAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:06', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('125', '47', 'TR9TUzIxAAAEXGMECAUHCc7QAAAcXWkBAAAAhIEliFwXAGQOrADfAPVTNQAdAGAPAQAkXG4PWgAhACcPfFwoAOMOwQDxAPFTkABHAO0PhQBPXOUPVABOAKEPZFxWAOUPfgCYAGFTZACIAOYPlgCkXF4PoAChADcPfFykAF4PMwBpAOZSIwC/AGMORwDMXOcPngDQADMP71zcABAPjQArAOhTLwDxAFQPEAD4XBkPBwEGAfUPilwIAewPwgDOAR1TBAERAbAPDAAeXSkPmwAbAT4OAV0aAUQOugDrAT1SLgAvAdUOvQBGXTAOmQBCASIOwFxTAVQOhACeAahRfIMidFt4XIYS0Lf8JoJXfI7/XSGcgpsOqgDjhuLfgIMqAML6lIk2WP4J8Ys6DpaIod2vAVOEOYBggSpfNICmgCoBPHui3KsD9ojGiZIA+iSXfSoBDpYW/O9Qz3laeaoBOIKW2Yb//YJXEc4Hoa9TidL+FRMnDUtYy/qb4Z9jEANupUsK5/FvgzZ3yV678EIKmINQ7f99vPJVA5fVUPBJXrPhEG+Yg6aZDUy08ioQLRJbxc5K/ZcBFdcu5BIWfd9Bb4O3pwYredtTTC859jzfuILu4x2/bPMuRH+2mNJbLuz/8M0gQV0DfR/KCQCgAGMiwTgKAKAArMH7ncP9wzYGAHcAdMj+CwByAWSxSvsKEwC/A23CBf9YnMHCRFn+D8WMADXAV8NaPnzAAORYe4sFAOcLssFfXwF2CmTABMUkHj7BwggAqB2swV6d/gMALx5kBAkEnB50hGLACMXrJCbAwmTBAwDxIV6iEwDCJG3AsVfGPllHBADrKr/Ax1ABdSxkYP8GRWJWAfE1g4fCBcFqTQHqPn3CZrTAxZxlSgwA6km4wcUuf1sHAFJQp1pCUQHpVHpnbJRlDVxcW2BYW8HOAH0BZmrBUVcXxfFb3HnBwXhSwQVtxaNXCAB9YWIFYk5IAfRshsLBqsFgKHprCwD2eUzCgCRuFgD2g4MFi4cywP9wZGwIxfeQz5bBwcAHADKdiN9/BwBPoGIEZvtbAVOkXmRb1QCY+GrCwMP/wL1bxaf+CwBzpWCxwMWjwF4LAHepn1JYnG0LAP+skwZ8xSTCCgD9tY9GfpRKAfvBk5NvBmdzAcD/wPgIAD3JiCvAhQwAfsufZ2Cc/iYIAKLSMkHECg0AmtNpgwfB+yz8CADn3IYFfJNfAe/hFsELxZHrsTH9wv3+O80Aja1fw3JkAwDv816fAgAw9VbBwwDUpoH/waIFAB36CKE+BhDYABo6/yRaEccNFin80BEGUqjDwZnAxAfAwTDA/cXEsgTVnROsHQUQzRoe4gkUwxz9//n9/jv++FoRyR4n/v84/QBMlh9XpgQRxh85fgQRCR86/DjBB0wHITDCBBBzK5SWwgMQvi8tOBgU5TM3/fv8+z7+/aL8//39/f84//qg/v3+/gMQdjdmnAUQsz1P+z8EFAtRbRwAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:45:06', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('126', '48', 'TeNTUzIxAAAEoKUECAUHCc7QAAAcoWkBAAAAhE0ipaAfAJEPdADlAIOvxwAtAJUPTwA1oIgPQAA6ALAPZ6BGAHgPhQCJAIWvIgBYAGgPHQBjoJUOuwBpAN0PjqB1AH0PpQBAAIGvfQCeAG4PUAChoHUPCAGlAOcOs6CmAIwPZAByAF6v1gDSAC8PZADeoCoPmADdAJQPm6DiADgPhwA2ADiv9QD1AK8PjgD5oEUP/wAFAfMPaaAJATsPEgDRAUyvNgAXAUEPeAAgoboP/QA1AfoPnqA7AbQP0QD+AVavrgBEAa4PhABeobIPVggC/qsPEaNLE/r7fgauDyejQAuRB9743/1qr/rzEvmaBR/zzVuHCT4G+vfK8wdDaH9bE6MDoIfCNeKdHvjC/pcTkqjbbVIRHf+3FeZTmAsS6eLxBvcDM96behmiCtpeAk0a6UMLdoM+psumnfbI3rbxiRogiogXEA7k6nT/JU8sB6oA+XmzgwvTmwRKCTcLNImLWPILKgDS+Xr+OqkqB2OXGvwD+TOq62gWDTIKe+8DqP6T4Qq2+gpm1jinpSoXZf5j9c79ind3b6N7ysKAwwEgPwEC5e76AaDBABrAQgrFpAa2wVo3wgQAcQMS5ggAlQQQQARbA6BTBQxgWwTFcQym/P8GAI0J1sDEXsAPAF0QDI/BQGD+/8E/BACBGASdAgClHxP/ygB8gQ3+wsD+UwVDQqcBIiL9wMD4CgQoLYnBclzBwQDOkBZECwCGMkxwbvwGAI4yD1uBBQSaOnfBbAMANkEeXxkAB0LwQzhbxF9Kwv1lRkrMAGTndsDCgWwMxYFII8CDwMJywd0ACvH1wMHAM1SW/sRfRVPDEQAPn/BeXyjB/cL/NzsEBIBba8HCEQByZpdhgniLeHIIxb9stkb/WQsAvqgcxevBRf4OAIexgI8jwXt2EgChQImPYsJffsFawt0AAi7hwExA//4Fwv/q/sH9/8BZ1AB8Pmxvw/+LZAR1H6AGo95U/08FK8RdLlRKTBUAdqOXYobEwcHChATAxNDBwQoAkaa/oGhgwBYAr6iPSMHGJn3Awf/AkAfECKC6qx7/TEzzHASjt9rAQzb+Bf3EXv4wwP/AwDjC+mDB/xAAY7qljG5gho/GHwABAtZI7DTA/v/9OIH/OupLCwDY1S2OwfuY/j0Andd6AsSIYmjBxcnDxQZqcWLCxcWpjMGrmMM7wlzD/8HBAajBLMIHAKXZJDv+++sKAKLeKSsFwSJVCACb30mWO8JiqAGU4FPG/wb+xmAGACnjUMC9wQygnuY0TGghxQPtcE1M//9A/gX/+V5CNf/AVFsFHARU87B0wMLBOsOMYY13wlvBa8MAg1pBg8AIEEfFRnzZBhBNAEN0qh8UXgG0dMBvfAFmxmLAwMNxW4UEBBRdCTp4BBEDzTFIqBFqDEDCXFUIFM8NN8BqiQXVNhjjfwQQ+jlAOvoBsNBBUP4nItVhXRBBwFQ1Mf7h//lfKsDA/lP/6x8U1Vqt/z5E/QX9+1/9/fv+/v0F/sVewf//wf78OyEUz2Cr/sA+wDo1NYT8/f/9wD4F//vv/AAAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:06', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('127', '48', 'TWVTUzIxAAAEJiQECAUHCc7QAAAcJ2kBAAAAhMsksyYfAIwPfQDgAGsp5QAxAJ0PAgA9Jo0P7wBOANoPaCZRAOwPoQCiAH0ovQBoAIgPKQBsJpwPkABqAD8OuCZvABcPTwC5AGEoqwCOAHQPtQCXJuYPfACpAJ8PyCatAIwPSQBoAFIpCwG2ACYOZADDJvoOlADUAIoPaCbhANIPswAnADEo/ADkAC0PBgDhJjQOYQD9AIgPdSYAAUQPAwHHATEpigAHATsPewAWJ7wO2wAeAYEPxSYnAVwOfADuATkpywAuAVMPqwA8J0oO5QA4AYMPryZLAW8OIgDC8Hc5YoQP50t3nxASpnYQ6vCiAM9voaEXhPaXrveifOuvgIAJ8xFn/XJ9NU8XqYNnFKaIhaaHd4rnKJIwo8aDN4JjEPd5J13C2OPvxY4yhsaQ1VBCYFMMkhuakTt9FnDz8Cv9YvjnuZ7z5a2uyGPLFXNHHaZ//oQvkKKhVAD2PN7pS/gnLtb71QCSey8/OS4DfD4XyfiAC/JSBwi38KPzFPuSJNPz/WH2bBN4mdSw620DQAskoR09pPUWBvr7CfsVNDwPGRH7CsoS6SHI987u9h8vF68QBKxjogYg+AEGdRzcBQC6Cd/ARiABqRAG/P+OBwTyFRxFSQQANCQYcw4Afh8D/4D9O2RVCQC7IBc6wMTmUgMAeSZwBgUEzjQcwEoLAAE3iE/+xsHCXAvFcE/NKCv9SgQAN1AmTBUATGTiwAQ0+Of/wP47VWjIAL1BiMCnwHRZzQC7SxEuwVQLAHJuguX+nmXACwB4chLmKmBgFABHsORcFTAvS1sTAJZ4404v/v81wP86wF0qAW+P4P/9OMH52v7/Ow0ApEp3jaDBbcASAHRX6cTYJv7+QWDAsggESpdief/Aw9MAOrnfwEfA//46/DFmS2AHAOyn7FhSLAHKqJfExATCxuRsCgB6q14Eg/pBBQC3rBP/OAwExtU0wME2W5ULFMpjxm/AwGc6DgT2xqDDxcWJVXcVJsmtkMSbiwR4xGEKAN7EK/4EQcbZTgMASrFTOgkElLB9pMLBgMAAoeL1+x4HANcmMERCEgCS2VB4B4HP4cL/wsTCwgbBEib64LBrg8IHwcflw8DBwcHDBP7GLwGu4WDFxATC1J4FALPmQ3XJAMDBMTEz/8AmwQEFwSxcBgD86PVz+SIBrexMogTVYARqbQcQbgVGkVUANnUFQFEEEcYFNGgFEIsLOmTBEN88wXAMAMzbZ8PC5cl1lAYQ2OdD+xYHEN4iQC84HhRrJsAowcHBOP/75iv++/7+QDrB+uf/ZAgQwCmS/vvb/Pj5AxB460DEIBHKMVD//v4WFLg018lP/MA++f3Y/P3A/v7BOv762QUQ4jxJPMEQ4xpBUQUQqE2u/v/jAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:06', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('128', '48', 'TD1TUzIxAAAFfoEECAUHCc7QAAAdf2kBAAAAhaM0cn4eANgP5QDmAO9xagApAGAPagAvfuAPegAwAB8PN344AHQPRwD7AOBx0QBAAO4PXQBGft8PSwBGAKsP/35HAPQNewCPANlxogBLAF8PbQBUfuAPbwBXAKYPtX5vAOoOPgC8AONxvwB5AGYOWAB/fuUOUQCDAKMPW36HAOQPrABNAOBw2ACIAPwPewCPfuoOgwCeAKAPyn6lAPwPkABoAOJxkQDJAOsPGQDOfgYOvQDOAD0PVX7VAOIPkQATAOtxWADbAFwP7QDqfmgP7gDwAMgNpH7yAPEPBwE9AIhy4wD6AA8OkQD6ft0P+wAAAd0MTn4CAVkPwADCAfhx+AAIAZQN5AAMf10PCwEKAdwNLX4MAd8P3ADXAR9wxgArAVwPMQAyfzsP6wBCAYMPUn5LAVkPwQCSAVRwDHjhAOb/N/3HhBIKBYgxiIuF+3vvheoCOXykBOB9FJIhCwMXDXogDIeHbgUuDl//uP7A/RoEwIpg/yNwOw4SC+P7wHlgeZ8ARIK9gDeBQfg8Bdb4/Yl39u/0sIUBCt0HaIGve2Z5XXy1fbiCuH+E/p6AJIdogfJ7JYMuAbaDZP08f4CCARPWAN+YUPoYCZXzQYFzg/P9VwAuELr2+IXcgdv61P9VB4+L824vDqr+hvDHDwtxuYveC+eIlQe7glMKwH9qgbcHZHFbjC4S2QBc9YT9PwSq9UILmHQoC1D5VQS99rj7EflrgWL/tIaUjIR/GX+efb7yU+Rzj7+huH7xfQwJPQDw9yIH7YXkjfh/OYZieJaJ9A7zYluIAkTeYfsboIrzI9PgGQwX766K4gPnf89/M/cachobERMDuoU0DV5MAQLpJw3DAGJ+ZsJACQB3xVzEvv///1oHALsAU748/wMAhwCfwQZ+kQBcwQUAYwBnBQwAsgBng5TA+BoJALwAZ4sFVRZ+xgBnwX5UOsP7QFXBBgDiAKjCxb/ACwEQAG2xwvscwAUAmQFeqAcFrABpd10JACgBbBTBYgkA/gGowmC/wcEEAFAEmTEAfxUIbWoHAKMKW74u/RoBERSowUAFwcHAwv3BgXj7v0MHARcZZ4FgDH51I1D+/zb+GgRqKHFzWXHABEDFBv5bRgMAaehexXcBdzRX/kSRCwRwN3DC//7BB/7Gv/4DAEdEcQQOBepGYMDBRF0F/sSABQBKSmk4wgCaNGHAZcAGActLf75/EACjT1qJRscbR8UZARRTslrHgcL9w1/9wAZaxYHALwUAbFql/1B5ABRefWqD0gEIFnzAwnzC/QdmxTv/iz0HARO2g8S/wIkLALp4rnbEvv7BVAsBErmAdL1DdQcATYahwPu+wMUFAN6HP/86ZAAUk4ZnwAHAdhTBeMDBP8KlEgRqmolwwn/BBXvEGAwAf59kZL5SOngB0qD3/kHDAM7YcWrBBgDTY/ozgAoBFLWMgQTDxQoKARS+kMFGw2e+CgEUw4nAvMBzvgQA4MgGS8IAxbT1O0EGAIwIYle8EAC5z21SBv+Bvmn/wcEOAEjZYhd0Pv+EBgCT3lkpwRcBFeCTR2WWCsNpwSvACcWl9I7BNv07FAHX55a9b4SEwIvBrxMEcfmXm//CwAR5ew7ACBBSA1CB/se+BhBJBlf/ocENbsIG/f8oK9YREXiWf8X+w8EFkXERDxD1CJPBAcKB6GoDEB8NXgQDFVgQWsAFEODWFvuB/AYQxCxiBsFCfRHNNk/BBNXSMj43AxD1Ojc6ERRyO7TDw8DDBsLFuo2LwQMQ6oBD+nEQAEy6nZ9ajMVxEfBgw8HCBMXGusPFwsNqDdWZZqjDwP7+/Ps+/P9MChDWZsD9BMbNs8PBLwAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:07', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('129', '49', 'TXNTUzIxAAAEMDMECAUHCc7QAAAcMWkBAAAAhN0m1DAbAAcOvADiAA4+YgAvABEPlABEMJMPjQBBAFQPRTBIABEP/wCYAA493ABiAA0POABoMI0NlgBtAFQPFzB3AIYPjAC9AIo/RACCAIoPEQCLMIwPMwCYAM0PjDCfAA0PzwBmABQ/UgCwAAgP4AC2MIEPbwCzAEIP0TC5AI8PrwB5AA4+kgDAAI4PAADFMIkOXADHAE0PtjDYABIP7AAaABQ/pQDyAI0P9ADxMG4P4AASAUoPADEkAZMPoADxAQ8/5gA0AY4PsAA+MXwP6gA+AcsPUTBeAf0PoACaAYU/xQBfAYcPJP63z+Z7YQbjemb/1bLXA4OAWYEUgvczKwODgN+KmIFSM66KvYDy/RJ/hrFvBb+AuYRHgV8yTASqAz+F2oADzTIL0fw6gnL+UbcuhIMFPX3zAruwVIPOiJYCH4iusTuCPYWlgnuIrbJ8gxYC1njGeN/LWAN9g958mAmhsm+GgYbxf3T76bengYIK5flEglJIqILZA/f+AIctO0uMHoMPiH6BzU+mAb+G8+sO8+NbKwEG/iqDnwRKtYMGto/yk16GLLPj/KoB/nemgCfOKYNWfSqDpoCDT273Av3Ce1oGfjneedf6/88yvj8QRQECRR2ozQBqMA5cZRIAPsQTXc/AU8FbwMGRCARqBBDBWmURxTcNI1PBVf/BwZBtAzCzCQNZVQXFMBYjSwQA0xgAlxQEHRwQPnhWWAVZWjUB0h4TlATFJiM/QAUAFy0XATUAMGctDEMFABovDV0FAGUzE8AHBATuNBOJEQBVhxNs8cFkU3vBB8WRRyNqZAcAREjJVVY6AR5JCTbBk8ADMENNFsHCPs8AEn8Sc2JKFgDOXAIOWsJlWMFXBV0VMAdjEMFgcjrBUs/AwAsAmm/VwU9OWgQAF3cJigYEoHsJVcALAMeCAvBlS2QKADdQA/t7wEIEAAGXNfv7NgGMmwb+wJ4IBAedD3v+YAbFCaQwN8AGAIui1sJhNgHSogb+wIIGBOCmFsFrAwDEq/nOCgApsgb/gMH7ZwQAVbQQw/0DBBG0fcEGANl+EMXPwP4HAJfCynQ7NwHJwwz/wKgIBGjHjIXDwMLTAA7h9S9R/1U1BFvEdggAtdgG/YLBZDkBs90awsAF/m8zAfDdCf4Dxe7nJ8AOAAHq3j7/+mFN/0oMAAwq8PsbUlMEAC3yv50BMKn0E8BcDsU18cpBwFv/wFrBACrIbJADEOQV0sITIA0k4MD//jg1WXtxOjkSEOT1k3xqa8D/lWQI1aM2M/5DMgsQm/aMdPH+wp8DEOvwCcQ3EXE2g8L+WxIU0zeG/lxWcwTBmvIGEKI4EMCtwA4geDsD//7Ak0IDIHA8d8DB/74MFAFb9FjAMVHDEJlqh3jAAxBZpwPGMAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:07', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('130', '49', 'TXFTUzIxAAAEMjIECAUHCc7QAAAcM2kBAAAAhN8i5TIuAJIPpQCBAIo9wwBOABYPjQBZMnMPpgByAFUPODJ0APcPSABUAG89tACiAJYPBwCjMiAP9gC2AOUPbTK4AAcPfwADAIQ9QQDJAOwPkADaMvUPwADmAGUPTTIDAfoN4wDBAaY9VgAGAXkN9QANM+IPyQAMAVwPZTITAW4N4gDRASY8vQAVAZUPiQAdM/MOdAAeAbIOjjIfAREPiADgAY89UAAmAfQOaQAtM5AP1gA1AVUPkjI+AYYPawCBAQc9SQBMAfcPVQBcM4APUn9jB4oHBkoyAOf/+oiLh8O6YH9TCQfnCny3Nib9XYe6jHbzwkY6Zdf5+XRaCVMp8IxvAg+TKgLrvcaDkYvOFy8fkUlujIOXtvhD51+wLwja/s5+3wr7MiYMkYDBCjgbJbJQC04PlYDoDFm4lOu28J5ulATxSdz7tfSFfuz6JbLsi66V1fyMB+pEwABleoGG3O0NWKAKvIrxnmeNxEyEFSIEPQSsi1JOzP9SDH6BB3GSzKf7RQem/Bv08j9LjiISgvWTBks3yP+Wg7v5iel/BgAgPwECd+UYCzIoABPHQP4E/sfPwcBOCACuxA/Ezf5bAwDLAdLBDTKbBQz//8AE/mUgAS0T9Dgvj0pmzxIALB/wMDpAWfJT/jgSADLj9EXN/8BT/8HAOsA5PgExL/fAO4H/UTUBUDEGwv47VwcySTR0wBUA4EztGS4//zhdwJ8GBPdME8DAMwbFw1YuwME1FQAkkfBAG0Y+W8D+b9MAHWoIxcBE/jsE/0DyRWQEAERbso8QMk1c9//+OOpXV0T8AwBFYXAEDASRcZDAwsCJQsERMkF098DB/To2+s3+wMDAPsIF/RMyHY3rPf7ABP76CVRKwFEFAIGPdfBWCQBMkPQ6OzE0AUaVZ8D/VRAEjKKgwcDEwAXEZvONwAkAxqfZ/0HNVgkAwqsincD7RQkAb7gG/joyxjYB+Lggwf/PAHjwiMSLwsCG3AAf9uH/RfzB/jooP2rB/sPAPQzFRcPVOv79M1UKxYPMIf7//8FFwMwAf/uHnsFnCwCT2u0T/P9SwAoAnN/wzPz9N8DAG8UT5eg8wP8wwPw6/sTM/v//wMDBBcH7GAcAUeFnfDoVBCrm4MBY/zHvMMTMdQQAxOoiBMAPMlf89/38QqjADjJL/eT9/f04/sTwwQ0QNQXg/fz7zvxZwAcQW8D9+M7Dwv8EEOfCICE2EVYKa10D1WULPv0FEM0QIK4DFNQVF/sFEGHTaft2BxDAFxdFOwQVMCdGwfsGEEEoiPfA/8EIEIztFnJJAhCwLAzAyRBVCvvC/v0vbwUGFKM+iZb+BBDTQyPzwAwQcUQAOsAyucPGChBMTsXCL3nDBhA/WPo7wE02EZVfdz8E1cllz0UAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:07', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('131', '49', 'SoNTUzIxAAADwMcECAUHCc7QAAAbwWkBAAAAg20fTcBEAOoP2ACPAO/PWgBYAGsPfQB8wO8PfwCZAKwOb8CkAOoO1QBwAPLPvwC2AOoPdQC7wGsOmADGAC8OBMHSAAgOjgAQAGbPvwDpAPEPNwAHwXgPaQAGAScPD8ANAeUOKQDVAV3PFgAUAWYOxAEfwRQOoAAfASoP48AgAQcPKgDiAd7PgQAqAeUPbwA1wfIPWAA9AZkPh8BBAfgPlACGAXbPwwBSAQUPdQBcwf4P0QBfAUQPisBhAeoPvYIGg8jD7gPX/98HeIJAx06Dzwbbhwb/gkJGgTMDgYJ2ArxHDAoOieMC1ICWOgcCEYCBg9N58kWAg4YCy5HWG7w39H0C/y91golQyS4JMWdedR5xyT/ui7P3tYBki7nKmPlhgql7cIASyTyLFZ/mEPYPwj4HDeJ+dvSXkdDGYIJFe0L6EO7BsI/5PQb5g3fxKacXe7uBkYSEFsHQlHz1h1qMXIXiyiMVaf6CgMcWnr2DhKOSZnSX9JUueve5dyA3xAIp3egMANQCafjCUZgEAMMEbVHDAIDWcMJdDwDD02tWAcBF/MLCVsMAh99qwcD/wRfF9Cexdf/AXP9wBf9hAVsTANolcK7Aw6rBwMDA/8KQEgN9J21be3NYBcHBPxYA9yln/wVewD53c2XBwf5ABQLHK2lYBQEL92f8hhsBDz5rRARaaYrAwGTAYlvGAEmIbMIVANRMqMD8vltldP50wskBAI1m/cHASXA6BwLDVmc2cwcAk1poAf7BZAcBBKZxVaAYARdmcFqXWWiSwcDAXDQWxBF3t8DBwP9wZJjBw7RLFwEOgHq7asI+esDAwv9+OsDB0QG0gm2FSgfA/bvDQAkBEoxFiGECCQEVm4nCBn7DxgAWpYPAwVwKA6ioZMFDcP7AARdyh3kLANG3scNWA/7AwcEPAda6gwB/wcNCwHvSARAIh4vBwmRkB//CAU7CwvwLAFHJbgCGwkXABgHH0oNLwA0Aiddkr2v9AMFTCgC667VwfZoJAMLr9ME7MPnUABX2msXBQXHDAcBceP4HECsBfgF2wQ0REwFVwcIEwcHAfm0D1fYGzP4HEO4HdAXB/LAIEGcJXMAFQ8I4BRAqFFplwRDn3QH9/QwRDd2G/APDwWLAbQjVnCGpwXh/BRDc53rBAMMEEOQkBvQIE245914pBRCWPmEDKQUQWUFX8QQTQENeYAQQkYJnXssQB0yQ/8EGwsE/woQEEMhRxisJ0P5Uif6PbgUAAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:45:07', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('132', '50', 'Ta9TUzIxAAAE7PAECAUHCc7QAAAc7WkBAAAAhBExrewZAIkPXwCbAH/jzwBqAIUPIwB07A4P9gB+AFUPQOyBAAEPUQBcAP7iTgCgAHsO9ACg7H0PNgCuAD4O9uyzAAwPIAB9AHfirAC9AIgPegC57AwPNwC+ALYNhuzBAAkPHgADAPDiXADHAP8OrwDD7IEO4wDNAEgP2OzUABAPvQATAIzjWADbAHkP2wDl7HAOkADoAMkP7ezoABEN+QApAIjh3ADyABUNfAD87IsPiAD7AEYP8uwBAZQNLQDWAWDjgAAbAQsPZQAl7Y0PggAnAdUPJ+wrAeoPAAH1AZnirAA1AZEPNABD7ZoPqwBMAVINKexMAV0PQACVAUPjdwBZAYQPQQBd7YoO6gBZAUwPkOxbAZAOtACfAY7h2ABbAZMPAABb7Y0OJwdbE+Z/ZpNSg1MDBXrX9y+XkIH9jqsHSIGC4zaFrQuyiROG1G40+/qB0IK0g4bsMYNhCz0L8YPBZPSKyoDO/v59UWwYAv16+X3nAHJv9IW5hpL+CHid7oCD7YryDm//VWyAg82HgIMMiX4WgYP1el0LlX8pk8uATIeZAnT/uZKjAPp40X0g+6Ln0H/SAuoDAIku64eH1fx5hNwCeZA8+W17UQSgi4VvvwXydYaDCHlClEd3tQmZh0SDaZLS9V8LsP+7gDpkHP5ufH6A6QduaDePaYrOjXqkOes6FJ8INf5cBi7mNBW9A0oI1Ayp5lQLKRnadSL7xQHiXEPG/fg79MOZdAj5/Or2sPjNHXP9dQTZ+7cMpRgAAXr86QygCdYUgAXt+Y70R+zztvMCASBLAcd7G5AIAHMACWAFcwDssQQAJwUAjAtwElgHAFENAJFbF+wWIfT+U1GAwFUtNwQADDLwOMIH7DUo/f8NAJMoByxY/v9qRxXFAzjvw1tMwUzAp1XE+gEHRwDAaAT/xa9VbWX/CADPUA1rVA0AaFIGrWRRmgcAW1uAcwUIBI9fAENWBwCeYnOpZgMA7HEQBxIE/XQAdF7AVbf+QusBCH4AwMC7DgSEdwBDXUXCO/4U7EmBAFTAZAQ3V/gBFIoAwv84bfue/sBW/2cHxVuWbMFdwQwAY1MDVbTA/koGAEtZfcSKEQBToAPBO2JHo2UGAEyjeqjAAOwtpHpnCAClqge5wTgFACS4Mf1T6gFoswbAwf0GBC66Bv5DBwBAvgKMTwQAVL396gMELcAQwQUAhQEMbOoBQsZ6wsCrBwSCyQb//8HBOgUE0810wUQFABrTAsQFAMHYDEDBAFE1gX8GAN/Z1f/60Q4AXdsA/zvBxKv+/sFKDwDn3+kTwSjAQlv9zQBRM3uL/8HBA8Uu4JzBAwCT6gwEBAQH7BAqDACEP4Nvb3XEDwC1+klXxS95wcFzBwB4+h4v/0EEEPoE2zQD/AgP6f9H/8sAWBz8M20+RgnVjhXgP1j+AxAq0WfF5BGDFYbBersIFEglFsD/wjrTEA3J4f8tNUz/BPzGEcH/wFsDEEwpFBMMEKsxk3gFwcZviAsQFDXaOjMxE8AJEJALBjv/QKoEELE5Gl3NEBfRKtP/MP0D1Wwi5f8GECJM5wTAJegRaC8GMQfVQ0gO+v79/f0G1X9Te8DFw8YFELVYiCitBhCeWZyiwwH8Vjd3ngQQKmB5vggQwWKDczpcAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:45:07', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('133', '50', 'TxFTUzIxAAAGUlEECAUHCc7QAAAeU2kBAAAAhv9JoFISAI8PZwDZAAFccgAeAIcOVgAtUgwPsAAtAE8PilI0ABUPQQD+AHddZQBFAHoPFgBBUiAPqQBIAFMOnFJLABsONwCXAGhdWQBWAAUP/ABeUvMPtABfAFwPglJmAI0PnwCiABpd6QCBAJ8PRQCFUooPjQCGAFwP0FKLACIOAQFRACNc9gCbACwN0QCZUksP6gChAGYNh1KoAIoO/wBsAKxfYwCrABAPrgC1UioPpQC0AGcO7VK5AKMPYgB8ADpdmQC8ACYOiQDHUjoPPADMAP8PcVLgABsPdQAqABldlADzAKIONADzUqAPpgD7AGQOPlL9ACwP5ADGAZ1dDwAMAS8PDAAWU54PpgATAVoPKVIXAa8PBAHYAYdc5gAhAYYPZAAkU5gPvAAnAUsPJFIrASIPUgDvAaNdBgEtAXcOSAApU5UPagAyAVoPy1IzAYQP9wDzAWhcCAE2AV8PUQA8U4gP7ABCAb8OQVJHAQ8PggCPAY5dqgBKAX8N4ABNUyYPNABMAdYPu1JMAX4NZgCKAYtd3wBPAWkOhABWU5gO8ABQAaYOX1JZAZEP1QCfAe5cpwBcAfgO4AdI1k9/gIO+jlf3htEbdQp9zPuwh1TSqP9B93l/gQuTrAuRYQZegPNtZyeTCcp2xoonj/zJZHwZ/rUPpIQLWKADRH7l/t9oU9/7FAKYQIafgIi+WH6VBoaAMHM/VSv0VYblk9gDVy8PdP58APd4AzBQcROeDL59iIWE0nP5xPuhfQyHOlnEiIGEWxOKEzltzHjt+h0CoGIQNnd8gYCZhaAKirWw1G6IvPMxH0PwSHxuGo8JWALDqK94LBMFLHACQ9b7nOf8rQH8AiB+LAE2A4sQaPx4KxPjKQRqfKqB91NnhHaJPQnLIyxNcAEhBiYKZH/ArRr0xf1W/OcUWNN7DUYHORMXBBhPMAihAgIQ7I6n1V+BOQw5JpAXJ0n0B7rstfyUBjtBCA3J83n38HaYrgv16QoumLf6RkjA+HUJFA8Q/jtdcP4pFwIZUPngUlMIcfQVETj53rig8dnioPecAsuhPBjlDGkRDXvjr5CC3QJx/wz3D1NMiZn7XRSkkxBWeHzx7GEFTAEfyWyLXfztB3zzc9IYCfnxvI+wiPNY0Oih/en3HAR7qJCGdYAtb0yHUytwfzZyx2Kx98SWPklmACBFxAK4dncIALMAEwU+XVkBmQEMNsCHNwNSzAEWwDYDxYgFQsEDAE8GhgEEBiQIAzoWACnKBsVswT/B/FjBO1RmXgGqFhNLwQX/PpAEAGMbiYnAAHFNCF4NAJYr1U8xrV3/FQAjLDU1NJD///7/wMA7wfmSbQwAGTYDACv4rcD9VQQAPfx0flgBRTr6K/86/YdXAT4/cMCEwgBmEILEwf6HCsVoQFT//0NEBAClSXyQwAgA10oioVEBUqxMHFj/wMAANAFswf7FEwCYVwas/Db/ZMD/BzaGVwE1Wmv/wwURBm9b9MDA/SeHwMatwWAHALhj2cBfrw0AaWSDwkbBxJLCwMQMAH+gkMUow/+SwgkAZmkYCcFREAB9a9X9RK1kW8GOEgC5f5XNjcKQhHQaxYmEzsOgwoTCwwf/x9l4wv7BkRvFfILempaSeMCAQ4PG0Q0AhIca/4HAxpNUDgBilf0+K8YH/nUQAFqXoaCFrcLDwMF9FMWNkczCoMLDkncFdcSSAgEBmCnA1gCOyZ3DxMPCwgHCxJLDwMLBwcIFwRdSEqVMwXrARsLHDYYGAH+lmgPDwJYHAO6lKcAFbApSZ6oG+/7+tsDG3gkAe6qTxg3ExS4PAIWtJFEE/mmRdgMBAa0nOgcGPbMiQ8T9BcVrsX//pwwAqLfhU3aRfwoAYLxDB8HCkT7DCQBlvPH+xJTA/lQFAO55J2FeAZm+J2RnAcFoWQFJxD1zxQRcxV0BT8Q9wmGhiY1eAT3PQIOLBMGbWAF84xz/wIzCgVUBePAgWJTCAGejH0WLIADwNKLGrcFrYk7DwQaQjZCKw8DAjQPF9f5CwwQAOf8xQgYG+/4kwcR2FNUMCWbBxP7C/8ACw8aSwcDAwMDBO8EDQgMROsRMBtXAL1TBwz0GECbuIMaS/sUEECIu7H4OQpAxEInAYAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:08', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('134', '50', 'TEFTUzIxAAAFAgEECAUHCc7QAAAdA2kBAAAAhC8xqgIeAHEP2QDkAPcNdgAvAPIPhwA9AusP7AA6ADYPsgJZAG8PTQCnAGYNuwBrAPAPvwBrAvEPKQBxAKcPhAJ+AGkPqQBFAPINLACHAN8PngCaAuQOZgCyAJoO5QKyAPkPHAB8AGQNlAC/APAPkgDHAt4O8ADGADsOXgLRAOEOkAAcAPQNzgDhAAAPxAHkAgUOmgDnAKMPnwLxAGQPQAA0AF8NgwAEAeMOxwEDAwkOkQAIAaQODQMRAYwO1gDUAQINHgAfAV8OegAlA/4PJwAnARwOmAIqAWMP8wDuAY8NKwA1Ad4OBQA9AwEOVAA8AacN3AI+AXQOtACEAWcM5wBHAU0OHQBPA2EOjABSASYOowJSAeMNOQCfAfAMqQBaAfAOgABZA+8OEoNLB0KDswITg+eHCwpCg8oFz4uT+uuL8wD+hSKHTYFiewoDiwDXeyt0SYEo+wKJwIkfjKP5nIYXAPJ7yXkadrqFYAkPklqLWX5GfLL/xIriCd8ERILIfHOArf7X+Gr26ocmh0sL2QMLjhqS1ACBgmb94Aar/usDVQRuhDuLsI7AjlkDZgd6+FYKJwi+/bt4mQbEdmcF3ALNdqgHA3n6fYP+qYRHgH98pX86BcqCbIDo/ev9oIdSBXaI5AmbftILQIuUgvoEwAJp+9KdjX/k/rp5PgASZRcFTz5fGNIBWQSUgtPo5KBBAo2Pt3V7bKeHUBclKFx3AGZ4gnF3rewM2APG5e8ZFL5gZAOs9W+D0PZ5guQDlQk/GmqWRA6gkxgNGftmjTsQFOm7SGQyACBHAceRJjMIAKUAZD8FYgYCeAFwwBEAGwF/wUeFwzZ0wMMA8gNxwMBcCwBKAnVqgl0QAQINRZczUcDAwW4DAJESdcECAP8VesLSAQUbbMBQW8H+snLEPGkFAKsddwf/xBoACiF0bcGPwMXCccB2wMBUywCrIWg//4P/wK4EBBAoeocDAQ32d8QIAeg8dMJVOmkeAxQ9d1bC/wfB+8JKxMDCwGSc//rBBgEDTHp+BMADAwVUd8JSCcQVXHXAa/9VBQB2WnVUBgBIYWmQ9wQFTmdeSgkBEKJ3xXT8aAgAtm20XGgOAXZwbYtlr8ALAwxxd8FoUQb/dBIAD3dwWES2w2vCBQB9f2dk1QETfXVkSmbCXwURBaeDdMJcZ1uvPhIDEIt3XFXAB1nEwlzCXcILAdCTf8PAUkXBBwHKnX9yPAoAV6JgmGRQBgAUpn2EBMQVq392BAC/s3SZEgXetHrAw1GHBMDFdkoLARW1ephfZwEBGLxewQzFkcRrwGLAdGQKxVPDXFnBwMBaCMXswoLBf2gDAPQNBscXAfrRg2/AtsLEwFPBQzAKAJ3TZ8LAZv/+wwrEFdJ//l3E/oULxYzZZXLAwsD/wAUEBdHgAFkNAJctaYBwUSoPARLuQ8B2gsLAwMB3BMU98F5pDQET+omuwYXAw2EQERQARsH4gsOBbWoPEKJT58NNS8D+////BhV8CWBkwQ8RwAyVw4iLfmQFEB8SBkIGEMQf+v06/lAHEXkiacLABwkV7SqQw8HCxLcPFBMtl3fBoMC9KQESmC1gVAYQBzTy//wmBxDEOT/8+P8fBBBKPGDgBBXRP3rFwAQQlT9bwvwLEQY/nlzCp3kEEOJFgMMA/QsS1UtX/vlEmGXFAgAAAAAAAA==', '2', '1', '0', '3356901120048', '2017-08-05 21:45:08', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('135', '51', 'TDlTUzIxAAAFenkECAUHCc7QAAAde2kBAAAAhac2cXoWAIQPuADcAIh1SgAnAHoP4gAzevkP0gA7AE4PgnphAIQPHgCmAGl1QABnAPoPAAB0eokPQACHAKkPnXqIAH8PGABPAG91GgCcAOoPugClenQOVwCiAKsPaHqkAPYO1ABsABd1WwCvAGkOBgC6eoMPigDBAKsPsHrVAHkP6AASABh1eQDaAO4PigDmeloPcgDnAJ0PtXrpAGcO3gA3AIt1vwD0AF4OuAD5ekIPCQH+APEPj3oAAUYObADBAUd15wAHAVoPZgANezsM8wAJAYEOtXoMATEMTgDKAUB1iQAPAcYNHAAXe5oOVQAYAfgPlXoYASgNzADaAaF0sgAhAbgMNwAge2IOGQApAQwOt3orAaANaADrASh0JwA2AbIO3wA9eyMOWgBCAe8MKnpGARYNhwCXAZ10GQBXAZ8N4wBZey8Nbg//+/YDH312C08LeoY/+0r5e4LTjLcCWwNGfGYLLgcL/4YTHw9fBt90ypDLke7oZgnD/i97E3Q/e5MGZg2y/yr5VPvfAhYCUYFHg174gIHu+UIJjQccALcFgYH5jdSKzOme9cuZzP/AdQ+MWArZcxZnq4DDg7N6URXh+vsctOn/n6fE5ZirgMvXKwUeb0obPGxQbHMYOQnl8a8tIEzAcxZMwfm8LyeqTPytAWl+fPLHp9uryQSBgLQiKHsL7E58LBtMwNy0VAipFtH3Ae8saLCr4fiJeeDXZXEvBGIa4KNEgGD8yEBF+dlbLftsaSf8/GcR5vjyuHNY7k0HDBpAicBs4CO6yM4IMKjcY9+1pOrR/1hzqHz48/rqSJO06fjnWXMdWHkP9P4XldMXGWW96sD3ihZ6cLNz8XAMi6MG4JAlGgYOu/fugD7wKiBMAcfNIU8IAFEADF0FwMW6BAB7AQzAnAoF4wAQwf/Ac5wIBcgAEIX/PQPF3QR5/BMAKAgDBcD6uP1rZcBSVMMAIGgBVMIIALzeD8Q/WBAADyT0+P7EHzdoBgBHJEXCxBcKAE8mA8H7Ul95AUgqd8ATxSs9h8NAVP9iwAX+dnwB1j0MUv7TAA8r6jDBOEdVBcDEhGUVABBa8Zb9x0z/wMDA/8EF/scrCgCDXImLB3B2bgEiYfDBMQT+RiL/wsD/VQXFi2R8VAUAg2KDtQcFs3MMSmgQAARzhit5YMPDwFHBADn/cX4RAESFMlROHv5FRg0Ak0CDexXAbsALAJxPBsUuYcDAAwA+TmvFdAGUjIOHcAf/xh0WARWVjEk7wX4dZcCIwG0HxYOahz9KBwBTobGDfWoBW6Ht//46/sSEwP/B/v/ABf4MelSmbcHAwgXAe3wB16gJNv/DANPXF2v/DABVa217D8HD/cULAJ2zYhCFwH4GAIZ6d8a7wMEEAI7AMisIeofFbcLAhAXCerkFEEc7vTfCALWufMLCwZcJxeTR7ZdswgYA7BITNIcbAQ/ZnHYFhmIPwHjAwsCEOhcFBtrtOzIo/jv/+4f8/f4nwATF6d5mOQUAdN5pVggFMOJgjP/BxcEAqZx1pggAT+efwMe+/mQEALTnxSocexPqoHzB/7nCxQ2IZnfACwCr7FK6w8TC/cbBbwwF1+1nw8PDxgSjnH4BwvMGHwzFgP2m//79wP39Ov36hwoAef9JmweWxLsJEH8AQ5EGkQxrBwI0wCH+OvoBamkGT8b/B9VuDTzFjMMEEMHNK8OyBhDpC0P3OP/yhg4Q9ww3/Tn++VAw/SADEPHIQP5+EVATRogD1TIQM8ADEFUbPToKFeofK6DClcHBEORdcP/9BRAJ7itnfhFsMS3Cw8ERFEJRNQMQHTvh/wpq7mB9VWT/rv9YegAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:08', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('136', '51', 'TYFTUzIxAAAEwsMECAUHCc7QAAAcw2kBAAAAhG8rpsINALwOCQHdADfM6AAaAC8OXQAYwq0OQAAdAHgMqMIcAKUMgADaAL/P8gAlALUO1QEuwrUNFgArAHgO08IqAKUNXAD0AL/J6wAxALEOjAA4wroJYQA+AFwMVsJIAIYLNACPALnPBAFOAKIOBgBZwpAPSgBjADoMZsJlAH0OMACsAPTPIwB1ANANzwFxwpYPjQB5AEcPH8J9AE0MPQBEAPPNGACxAOQPWwC1woUPEwDJAJsNi8LLAAwPDAAlAEHPDwDrAMwPagDrwowP3wDxAFkPHML7AN0PcADEAQXM/QAIAakLwAEcw8EM9wAjAY8M6cIyAa8OhQDxARDMSABJAesP2BH12zMCfYG5gwsEcb6QgrWOrfEcCVUw+wTeBToDQOlZO1vvwRKyAvMCaUokBLWHfYGQAx7U5wO6A9MGLPW5uNTz+SQxAtA3rT5cDY2G7TR0As3kmOBNFW3iZMzlL8zPrQbCOM/MqjAbDoLyw+4K41vRhIb5E017QIKqOsfm9SGJ83j7FEWU4cLYpva+C58pkgQ3A+/z0X8RnTtZNQseKJ/47UjqoF+ZVXt2Bzc5cBrtfmqViIufQsoPdHsJ6qxraEnc8X5x9/BegK/JA/VnEAfeiBFVWWKAs+5X97J3ASsgY3YNJXmoGRrTHI2Nnf2jbGW2M6IIHxbjK4KLjxlq70MTSi6qxTfFIUUBApohxwYE5wA0/nMDAIIBRD0CAJYBN8fGAILANsEDANEEhcEHwtgEQ8MGAPEGTQc9BQBNBj0E/8HGAVUGQ3YFxaYD78KVBAA7CIPF+8cAAApD/6/GAF7JNv4FAOod6IEIwp0fDP/AwDr/VD3BBgALIjcF/VPMAYQiDMD/k/37qTwEAAEmMOwGBN0rOv/+w/7IAHDoB0T+wv3AkMEAwtouFzUGANIvOYf+EABeNQwBM8X3wcDAwVYExSk9/8H/CgBMQsZzRPkKADxT+sLuTDLTAU5f+v1oBUbEAvxt/ggAx6UXxALBTxQAMWQoQfo9wzJLU8E2wwCNtIjChQMAIbw9/84BkXoMR1WUwADCE3tJwPwGxYl4QsHCZRQAKLjrMY1FPkX/cgXFG4SO/noVACmVNf/6qkb+/1VC/pgEBNuhU8L6FQDertg+/kBX//5TOkZ0yAGZsIPAdATBhNcBIMDg/UCOPMb5wP3BbAcAVsgCPTP/CwCLykbCbr7DwxgABM4hwcU/McD/wP8vOkf7iP4KAJLOCTv/QAMwCQEP6DoF+scD/DkXABHpFf0uA///U8Ar/zv/xD08DgCs65NFg2gCaQ4Aq/KPRcF+AorDBwCz8t/A+j1YCwB0/fo7/vrx/lMJEHQDxjv5AvzCGBD3BGfA+lHAwIlpZ8AGlsXHEVQKbcGF0hAVyds+McH+wDj/+zzBwP///sE6+QDTAxtALQYQwiE1AoUDEPokSTgUFOAsw/n/OP+FK/k9/1QFEIExQ8SRwRECOCnAA9WHPNj+ERAqQcw+PDjl/v7AwMEO1TNHFDD///suQ8gQQYmR68H+//44/fo5cQcQTUv3Af3+8wUQXk/x/T4DFPlWBsIPEO6lffufwcDAWVEAAAAAAAAA', '1', '1', '0', '3356901120048', '2017-08-05 21:45:08', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('137', '51', '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', '2', '1', '0', '3356901120048', '2017-08-05 21:45:08', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('138', '52', 'SrVTUzIxAAAD9vkECAUHCc7QAAAb92kBAAAAgxsjy/Y6AJkPhgCGAIf5dgBGAAcPvABf9osPrABkAFQPdPZmABEPyACtAJX5qQBwABsPDgBx9hwPUQB2AEEO8vaGAJsPvQBNAJ/5aACmAIcPVQCu9hgPggCxAEoPPva3AHkP1QAMAKL5uwDbAKAPogDe9oQPBAHzAOkPU/b1AGcPLQA6AFj51wD/AC4PoQAN92sOXQATAYAOBfcWAa8P9gD3Abr5NAA0AT4OFwA+90MPUQBEAfwNMPZPAb8NUwCXAb/6YgBWAS4OFABZ98sP4wBcARwNKfFCCSd+dXyU/02AcIS1frr4+Xu2cMgLPHv1/8d1O30zDEKOIHu0B2GKNY+KgF6E3Yu+dfeN7nbn/O7+eXWCBWcBvYNPgLH/CPsCcm8QGIzxYE5/5XiBC44N+AIm9j8XSgDmdvyBywAHdIOLmyA86tL5kn3LADaP+RJD/EolGvXyGWDo+pBLBGeCuSa98trkIN7u4UINKQ6ThWeCngz7ehgWhINaBGaHRHtpnzeKgXxpDnt8hnW3iMoEgYQUkEkK3HT19ttwePF6fZYSLRFWmb4gvJluUQQgPAHHLx/jBwCHDRNVOggDRRMX/8BW/sMAi+EXwMBUBABuGRC2AgDQNBzAwQD1riXC/wgAheQTwwlb/wYA2yHf/8HBEABpJAk4gMD9Nmr+bA4AYe4MVwnBwFRlAwCaNQ82BgBZRQxCnAYDfEcQRP8FALxKDLwFAElS+ijAAECu/P5GBAB9mAxN8gHpYxY1BMVEXPU8BgB7ZQzz/xL2e2sTwD7CO1hFnhAAW20DKzpVQc5cCwCsbxA7/cKSVAQAz3EeuQ0Do3cD/v9GwAU+wv8BzHYiav86wfz4AT18EMX9/cBECFoZAEGJAAX9wwj+wv84SkSR+ccLwAkAwIsenD7D8gH1iyJUCMUxkAw6/0AHADVb8P8J/z8FAC+kOMEl8QExqgDB/QcxDfaSqxM1wFUFPvjgAS+xAEov8ME2CGFeBQCRsd9UBvaHtBrAPRTFHsQdMP5MNUv/+8AE9tjNJEdWFcUa0B8oK0HANf74Phf2HtntM/44/f/+sP9gBgBj2knCwDfABgBj34MFxHf7AWvfD8D9/v8zmwIAvt8i/8IATgBxxMLBfwbEA/TbwfswEAAwOef91Pz9wCg7wc0Q2fYm/cH/wCrDENf1McBKFBAXydYqCsH8Qf7//vZTCuZgDXq1xP8EwAvmYBIc/f7+kgcTrxRQnysHEJoXRX+EBhBjHTEF/oP5ET05wP/8Ovv6Cvz//v/A/QUDE8pANMATEC+Ouv4J/v7+/vv85v79sP4AAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:45:09', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('139', '52', 'TF1TUzIxAAAFHh4ECAUHCc7QAAAdH2kBAAAAhcMyuR4fABYPsgDjAJARUAAoAAcPRwArHosPTQAzAL4Phh5ZABIPuwCcAJ0RoQBjAJMPtABuHoIPVQCBALcPZx6EAA0PJgBLAFkRTACPAG8P/wCUHvMPhACRAFUPvh6QACIPcABdAH4RbACrAGwPEACqHqUPtwCyAOwPjx69AJMPRgAVANgRcQDVAC4ONwDnHjIPVwDnAIUP1x7sAC0PbQA5ADYQZwD+AD0OvAD7HiwPZwALAXgOmB4RAbEPJQDkASsRBAEiAVUOhQAmH7gPhgAkAWgPnR4mAakP+gDtAboQ5AAsAb8NCAAxH6MOqwA7AVkPah5CAaAPywCGAZURkgBGAZYPbgBMH48P0gBPAUcPSB5QAaAMQACdAaATrwBZAQEPXwBfH4gPYgBbAUsN1Z2ug+OP0IOiDCLjyY+DfJv383v26n6E1HcD8dpryI1/gC6LWQdmBS5k4P9+gGsQGHNTZmMRHWRlBL+ABILgopmWLW3j7h7y6PyNfQFmTIUQh3uAZRVOJbuFo+aDgguRTRE87ahs3PEq2fLdn3yHmApzVoQeCBaYgzdPZaoHyZ9vs4Jsu/A2nZb+Bwn+jYLjaQfpZ6cMQ+MWi79/wPqRC5hmOQ6Ag0URHf/Q77hygIOVjGySHBQzBGaGVXdGi3KNmZuimaO3iI+24v4Y2QW2/MMZWOOg+vkPrG/8AT4CuAE1HrZt4BTU+BgjJRBVC0D3MAnnDVIBHRBw8G8aHA3xCtn/cPQoklQGqfS547OBSOL0FtIByQQnGc4bOHT9eT5kMIms69j+hfLJ87Pp0tO1Fq89ACCMAQe/HsoDAKMB0sEGHmQDCf4DAFwJCuACADILA8HCAGcVCP9HwQQATwsWVBAAKhX6/gXC+d4/U/9HEgDrHvhLMGjA/1U4xgC4PB3CBABVJcY3Bh5MKIbCBgBzKh/fPgkAVCsMBMDF4P5SBABJMEaVDB5QNAlXR//BAEwofJUUABdVLMD7LU01wUZTC8UbWfX+QP43/wbFv1gE/sA4CACkoBpW3v7/CQBuZ0N5x97+whYAEm0iwC4v/0rA/sFBBEMNHmxtg4R3DsV1aA3BPkJEwMLKAApn5sD///3AO//43v7AVQgAUkd3x9rBwmsDAGVGBvsdAV2Gd8ASxSmJ+f79/cH+/jv/O11lCQBKkG1ThMQdAb+RHv8ExSaXQML/DQCHlNlL+3xEwAMAu5XhwRIeDpba/EYz6v1PSWb+EgBrlrjDk9zAw/7CfokFBQV1rXTDoAMAHLMi3gYAubUpwAV7DB6LuKChxMIHwgMeh7yXw8ahzgCI3iY4UsJ5DMVuyHrFxsB6w8BGCwVuzxwowIWCwgBAyk2EwcAYAPXVyi7//f77/TuCUsd3yQcAPNVMTsHHGQFy2Cv/wAVwCh4z3UmAhIwFw3cbAfbiK/1c3wAb+MdBM8H6/jnALuD+wMD+wv8HwMcaAff4PcL9zwBS9UHAwojChcEA0/ElKgQA0PH1aQAeH/tGfwQQ5zAscAkAa/86krIEBW/+NIgEAH06LcXcAhB5ATTCzBEPHDH+/P/9wOgTFYIMsMD/gsUCxcbhxcHBwsLBBAUVOSUxwm4gEcQkVuD8/vf+wP87//vewcDBwsLEAcbGlsPBho0GEcIlTOL///0IEELiKYaXAhCKJyDCwREKJ1E2AxAjQPXDDQ5yRhB4wzvGEKpXAsEDENdYv/4AAAAAAAA=', '1', '1', '0', '3356901120048', '2017-08-05 21:45:09', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('140', '52', 'TRNTUzIxAAAEUFUECAUHCc7QAAAcUWkBAAAAhP0mZ1AXAGMOWADaAOBejQAnAO0PZgA9UPEP4QBDALMO/lBOAAgOrACXAPdfoQBeAHkOSwBbUPcOEABhACAPqFBrAPUPgQCpAG9ebQB4AOoOLwCDUH4PBwGOANUO41CVAAoPmABTAPdfBAGbAIkODADBUAUPFwDHAKUPTlDKAOAP6wAfAApf6wDjAIcPLwDrUBAPYgAEARoPB1EEARwOwwDNAQNfogALAfAPsAAJUeMP+wASAeUO0VAWARcOQQDkAVRf5gAiAZgODwAgUR0OWwArAYMPDFEsAScOWwCKAcxf0ABUAUMPRIAqKzJ3gYCn+W73ta8njxsJxf/oB9IpHHODhpOLyJfD27L77XzNAoQH7dgohIWFiX0ojZ5Qpv9/A9uH6HxJVhsA9XWBgsP1hdJ/97P5THfLcBqpuYv6kOoIhY+G0HP8O4hjAOIJuCuDgJINlvpbf6elJoE/g1MT4oHXU8oDuIq1/c8OuCo5eyJvMI/0BYqktP3qmgaTePwGXMeGlfKx7zMYirgSEKvUMQU7npukOATFi474APyF0QQSQQ8Wc5qJhdHMe2V/QQTYF2XXyPt+gQJqzwjuwRcOeoVneU7r/3gOrgMvf+fK5BlwOwECZSEpywCbUmzAwv5+wJA9C1ChDGvBUsE6wUauhQUAvxBpOlcHUKkTbcIEAA4ZcD0PAJsvcH4FwMQJwU8EAMwitWkHURImfcMNAE0qb5DDWMBYVwTF0C49SxgBDzmGvovFCnFiwcH/wIYQBM86cMHBwMCuwGmQVwQAND9pvQQEjUF6dwQA5Yb9QFQB3kd0bBjF9kvTwlZ7wMNOBcFOkv7/gAwAiqRwxJRTZDsIARCniWiQfBMAqGxwBcHFK2pzZHEIAHVs85EwUxwBE3pJgfvTw2bCwMBiqP9tEgYA5oSGg7MSBUOHjHLBwcFOccWvcAYA5ouAvcETUOOUfXPBwQdqxJDDZXvAwMXVAJDIasJSwP/CoWv7SQAPqozBcQf9xpN1c3jAa2DcARDpknd7kcBqr//HA2gVARbAiZfAxizCWcBqwsAEBgSdwANLwAoAAMV+0MDAagYAzQIJxq4/GQEUy5MH/4eSgML/cId+kwQEv9oPVBYBFCeQxNXAiHfAwXG5wQ5Q5+OJhMTABH0HUOzvE8ASAdHzl5DA/8GTw28FwcUpEgEV/57DBcT7r8XBwXfBwATEY0MQCAOQ/4YHiMQlw3PDBhDHwQP6eAYQpwjwOzn/D0C+CHTAw8EEw4SQCRDHCgkuOv3EUxH/Ehz/C9XREdnFwsKIw3zGEPhGIcATERUfZWnFlMGNa8TAwVcFFG0iU1wGEELgSfqRhQYQziUXOyMAQOomIioFEJ0vSCcMEPdSt8IHw8WTxcOdwgsQWUvTr/77+f3+++kJFM5Z7cf++/c++/pZEYtj+v/CD/7yoP8AAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:45:09', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('141', '53', 'TBFTUzIxAAAFUlEECAUHCc7QAAAdU2kBAAAAhf8w2VIRAD0NxADTAKRcdAAdAIgPygEbUsMP9AAmAAUN1FImAKkMGAD1AIRd3QAyAKkOQgA8UocP3ABJAFIO81JLAJ4NBgGIALZflwBUAA0PMQBTUrYNBwFaAPwLBVNaALALjwCmAI1dxgBqAI8PywFqUrkL/QCFAGMKPlKcAPYP2QBuABNdkQC4AIYP8QC4UmYPbQDKAMMPSVLZAGoPAgEjAJ9cLwDnAOsPVgDqUowPRwD6ACsP6VIBARsPoQDAAZRdyAAFARwPJQAAU5sPkQAPAU0PdVIcAWEPEwHtATNdlgAvAYUPzwE/U6kPUgA9ARkPglI+AV4PFQCEAcpdRwBCAVkPNABCU6cPvQBSAV8PylJSAZAO3wCfAYpc8gBbAXkOfJ6QxGN8BfnVZsP5J1YmfysDNQfCEBJ3LBu1A2KEPAB4W6hu+/sH//KPfFIYFsXrJnhjADNRqPLt+/3j7evsvgzxDH8dBJAUwNYjiIeCkBsdC9TTwYoEi9GFCXplqaD8yXyyBzr6z6ji2IeGfYK0CiBFtPOe+6ZvE5DG3arzS3Eji1Z/b9A6+vdz4nD7/Wct651qgpt5Q4FbLwdlRoFLAJaDt66HgV6HHf/zBJLbLwRahbOOEYNH0+MBWQmZBzd2YNRjAeaO2IOsgs5S4Pm+/DIE19lPVDPfnZGvkCoeWHi3/I4nrXWABzdgFYeGf6eBwNrPrO7Ys3iz90rjHS2qjAv6GS38G8xR6A3yDYcVxABwq+ftgQD1GRTrjL/E1ZLpLoHy1r5oIUwBAu4mXQgFNgAMZMA/BcWLBFT/PQMA8gHx/AFTCgNMkgUBzzAyrf3IBgBMBkbCYEIBVAgGPsL7R/mQMgcA7QpASWYDUwAKRv/DwzoGBbEKOsDAxP/MAAJF9sA+NwkAvB4JG/zAPAkABeX9xK3ANcAFAN7mN8WX/hQABykAtsD6rUbA/sI+wfMLBdY0jHaHwH/OAIZpgllxcgoATjsKOksvBACaU8pKEVIAXOc1Pf8EwPgw//9ECwCMmonFJsJqwAwAk6AMxazC/GjC///OAI40gv6AwMNi1QAHO+P8W/5M//NgAFLKbBfASg7FoI3b/n6I/8LBoAYF9IkPWP8YAMSR5xL+T//9wkYE/sWtV0kSAD2ZNDBDb1L/wMDAFMUCmLBBwMAr/kwH/kaSBAA3n23AqhEFbaH3wDtHRDrAXVYB8qUQPhLF1a3FcXDAwYDBBP9zVAHdqRA/wMEA9fsbVgYA3K/fW8RZAY24hv/DvZTFVgEwv2dbCsVwz1H+/WQ/FgDHzttnwf3C/MH+Bf7Frf7B/sH/WcgAVYT1/yj+W8A6wBxSA9vcQP3BhTv6k0fB/mtKCMVL2TvBwXjCDgBX65aRkMLC/3iDwwCKoo2RwwsAlzQWxW/BZPoWAOg5nMWSf8DBgv/CsMHErYQFAPD/FzrA+0sRAwHWO8AF//qvwf9A/0T/p1kLQqEBl4mZwwRsxEARxQKXwMAE/8fExWliwgQQKAQbksAGEM0FF4HBCEKcBpCGw8JDZw1CpAcTQMBZwBDhWh/ARxwQycwgb63+9P389jYFwXzUxMP/wW4L1Y4L3pTDwMDBbMEQaUlolAkQdBw//Pt9cAMQbSFgBAoVxCqTxMXEbOsHFcEwicWf/gTVmzdIRQQRETpT+wQVVDowdgMQg/pex1YRTkFM//vGEBIXJsADEERFlf0QQidKz/5M/zv++a0zQFvFChBETuem/P/Gw/9xwRCAAQj6wwoQuZCQ+d3Fx1QDEHakAPpSAAAAAAAA', '0', '1', '0', '3356901120048', '2017-08-05 21:45:10', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('142', '53', 'Tb9TUzIxAAAE/AMECAUHCc7QAAAc/WkBAAAAhCEvYvwSAH4PeQDlAAjzfQAuAIQP6wAr/PgPhgA6AMsP5Pw6AB0OTQD4APrzcwBTAH8PCwBR/JkOQgBjAKsPu/xlAJ8OeQCjABXzIwBvAO0P/QB4/PEPsgCAAF8PdvyHAHUPHgBdAFHzWQCYAPsPHwCd/CcPkgCvAFkPcfy4AHYPDQAcANzzJQDiANgP/wDi/FcPXgDuAI8NNvzyANcP8QA9ALTyvwACAaUOkwAH/fMOPQAIAR4PPfwYAe4PfgDeAZ7zxwAhAZ0OJQAt/aAOqwAsAVgP8/wwAcEOgwCBAYnztQBHAY0PCwBM/ZAP6wBRAR4OMvxVAQEPvwCRAYLzoQBVAYgPkwBd/YIOYwBZAcYOdfxbAYIO1gCfAfLzHHYq/VuAaIgJbqADtXgheGcJngG6jnd/FYzkB8psv4TDgb+H0wXKbpuDNXHecAv+TQXDfEMBYYNDgdqOwAk2BL+F5JW+YD4Eqf+GgR+aIftgh/Keuvw6dLv5d3zWZM/5z2b2li5fbogmD2+H93AKixeTWihOKbv6/9yuf8sBfALG/7aEzQKxhvwChXywgmp9hVoH9ZqPgIBNAtX+2hFP8Q7yEggvCDoFWVYIGvYF8eyUBpkWXBR6/U4a5w57VPb88f9VA1/46R5sBzYRGRMQAyrrTCIO6S8wlA8O+V+OGQhdBjD/UfEgnXEHFeb3THLhh4CGA0MXWPjlCQSS4f76BEv9+H8AA4aE/INEgGKGgICBA933/GV94hRy933ococHJLkAAqQhqwvFfQX1/sL9R8BVzQCn/Qj+RMD/BcXFBu8/DQBNBgYFwvoDRcD+/8EExWIUf4UNAGoSBgQrQLnBBQBhF32ZDQSBHAYrwMA3BTAN/HQfg36BwsYAedgN/wYAeSlDi/v7AYAuCf/COUkO/Hkwg4XAwUIEBK44+jcGAIn8CTw8BwBJPoCTBAwEdD8QU/9E/pMKBK1B/f/+wD47/w78b0+AwIvCB2EL/HdUBv7//pE4fgAGAG5WfXNSBgQuWRr/SxcAyWTgzMH+/zhBWDhzPPkBfGUMMAXFdGKBwIsHAMNn2f/7PDgJAHtqEDpG+8QCAB5yZMHUALaAn4TCkIPAsMMW/D198cD//jj/McplwfwHADS7Z8V8wQgAtoQgOv77bAoAboZ6w7l+xQIHAFuY9P7eAwThnVfAAwDdWSfE8AGOrpzBpwHCcDwKAJWzJ1UFwMQ9jQYAcbh9AcN65gEL1dZYwDv9xAP/JMAvQlO1HAT+18/9wHv9OP/FAvz+/v/+/zr/xTz+wv3Bwf3DAGgqaMXAMA0Aq9ggA8Bawf/DwQX3Fvwp4N7CS/06+v89/P/A/3QExSDioFQMAGXnPQNoxzzCVQgAa+fiXcWLGwAJ7+DBtTs/A/v9//7B/zrC+wPAwcEFADAzXvuQEhA+A9pzO/n8AVnBccLB+9AQt/mjPmzAxMYGiU6+BxDrF0DFPx0A7FsHCSgFEP8LYDwxBBC7DSBDDRTDGun9+j7/BML7gQUQNRxpR8ARAOFNwCwEEQnbQyvpEREf53SLO//4APj+P3jADtUVPA3Awf7//CunwQDtDzxWwP4O1Rg7CMP/wPz+/ztihvQRgUKJZsJNChTdTfdH/ljAxhD+sGX9CBA6T8VVV/oR7GB9Uv/CEEue/FTB/gAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:10', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('143', '53', 'Tc1TUzIxAAAEjo0ECAUHCc7QAAAcj2kBAAAAhLMnY44dAPEPqAD1AASBVABDAO0PuQBUjvkPagBsADcPx45wAIcPKQC+AGGBeQCoAPAOJgCtjhQPuwCqAMMOyY6rAIQOugB3AISALQC2AFoPagDMjgcP2ADRAEkPdo7ZAO4PqAAcAHyBkQDeAPcO4ADvjtoPhQDwAKEP4o72AJIP9QDGARuBmwAIAfkPqAAJj+MPMwASAZ8Ppo4dAQoPIwDkAd6BdgAjAeoPMwAvjygPVQAwASQOnI4wAQsPIgD2AdOBwQA8ATAPlQBLj/UNkQBZATsNTI5bAe4NOQCeAeiAegBbAfQOpgBkj+cN4gfD+lrz74QOE7N7ovaj/8dy4wgWDnP6o/w7isYHQ4M3B+J3X4ESd/t71wQG+0+N6JLuErqKBYp5C8sAfYFtBThywPDw/VV+b4Ei9yfhzJFNikoA4/6uhMN6nvi6jJ4A3fuAgnIX4ZVEghaG24JvgesCMG3G9kNsCXWiCuZq+QOj+g+XufLvlM58zPp+gvoDTIJ+C9uCKRLJAjcj7YuIgrP5RQpv4Q6HGw4Pms/6I+yWd3sDSQIGIXsOaXN/fdfs3iY3K7+45AipEvkLxA5OeP4YbfwRBFgLlY6A+5oLifrAEh6NkPY59iX7r/1ANEEgQwECl+cTDo6OBHTBe2QFBQTgCG1iBACTyXdygAGuDndrwavAxHFlDwCwF3es/4XVZQoAyCGDQnt/iwGsLPr+LssAoL57e8NRdP4EBQQiMgBACgCAifQ/Tj/BEgD2UVLCdE99d8DB/3jJAHzcbHRnwFULxYRWef4vRkINAKtr6aEpVTgSAL+ojIZOwIHBZMBq0gD8/Jd+wMCQwQZzxU/+wcH/cQbFx3eewUoNAL90TIuH8FgDACR7bQcFBKd+YmQOAGde7cVw/v7A/jvChRsFh5+Xc3fBwjqWxU9bwljBwMAECATvo2RqwVsJxXyhf8H+//7/PtEAzSiHb8JnwsAEwftxw8DC/8IExeejnUoGANGsEDtWFo62rYDAicEEwWD+wYkEAOWt320Djr+yDD1ZD8W2sPPAwYTBwf+9WRKPDLSXanGEVP7EDf7B/wYAKHJgf08GAC66WsAE/4WKAbLEAzYFxavM9IoGANzTFqDACo511OnAK/7rwGGEAW7aZMB4vv4BjiPvV8DAwcIAhXxowsL+wMDOAOZ4lsHDjMLCpRgVgQGXwFKHwgfDxOnDZ0/CCRBeBPVw+sD9/1ID1fcBkv4LEJ4K9Dj8NHH+OwMQlguowhOfDg6ee2zBAVvHTsJkwv9XA9UyEdTBCRCmGAA5/vqw/ggQnh1wtcMthhGlHwb9/YT/Cp56JO3BLvw4/8Rw/jQGEHMmp1nFnRFVLNw+wfb+Lb7+RwUQRy6SwCiKEfYvK8D71xBdvuVk/k/8/zsv+8UHEJwwA/w+/fuLEVE0XMH/OAMUTD4t/wQQpZeMzXMOEFla58EHK/ly/f7A/IEL1WZfbMHA/v37/Tz/+4oRX2F9RATVoGUNcQkQZ2LrB//FdPv6/QAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:10', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('144', '54', 'SsFTUzIxAAADgoIECAUHCc7QAAAbg2kBAAAAg68ZvYI+AIkPhgCPAIuNRwBgAHsPVwBtgn8PYQB3ALMP5IKFAIgPgwB+AHaNsQC7AH0PwAG+ghEOkwDOAMUPs4LVAIEPNAAQAGON6gD3ACAPcQD9gnkPUgD/AJAPgoIaAVMPnQDnAUmN2gAlATUPmAAzg9MPMwA2AYAPl4JGATIPxwCXAZ6PsABZAY8ODABYg9kO1wBhARcOcIBWDyMDLg42AlSVIwX79w//c/p8i+L3qv0H+S7zJPlaD6cDMXbL+yB3RP5ufYYLBvMcCfKXJY6KgK+FwoSLgD4LSw3S7xzhruzfqjMTA/thsSpGZ4XT9YYGOombg18gwftHGg1VGhSfmO++X4MpDWZ9NncT8+r3ZScb6v/gHMbEzlqQ5Pb1uopdpT66iixKQfxNNv9GwmUqASA4AQLxHq+LAWQPDGn9BP/CjAFOEhPDTAY2w9YLAEIdDMGWZPyJATMmCV3ABf51kAEeO/pgPzvAweb+/sP9BAAHQQrPCAAXSPT+j/5elgERU/1oWDpc/X3AQjsVAAuYAHh/wMFU/8FUkU8HgkFgemQLAEhuftaI/3cHAFuydMPewRcAC3vt+8H+QlL+aML+TAQmEILjhInAWcABQ8HZw2YWAROiX8J/4sPAwcHBbpdsFIMTqpDAwHAFXHX8esB3FgEQcYxG8cPAwXLCZgVzDoJ+uH3DasMEUo2GAay4g8LA0wEDOZJ4wHHAwQV+c0P+gAgAtLzD/0S/DAB/vnBuBMB9QokRAKy/egXBc0BoasF4CwBSyv6/TTUOAI/OscHC+sDBwcFpCcW014Q8wP8zGAHW1Zn6cf/D/8LAtH5l8QkArNZ9dbkGA7PZYnPBDAB1+n5Aw4uJlQYAKvofscELALj+DDsuw3nBKQUQTgCZwsNABBCwAXrDTggT1gJXhHgHELkcWQ9wGREWHbRScIBCiIDDcn4G1YIc0sHCiwYQodrp+X8fDRDYIKIGwsdGw8LEwMLCBAYTGyJWk8QEEGkk9JQEEJ4mRsFaBhNdJif7LAUQHyg3fCgEELcpHjn8F5JfK9D+MC72//18/in7BRCn6UPALQIQtS8wwMEREbtbwf4EEDX/Q3aBEdU6Pf0Y1Ac5P8PDwMLAwwSJgw7DwcP//8PBEBvGKML9AxCUjjTBhhGlYANcAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:10', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('145', '54', 'TGNTUzIxAAAFICcECAUHCc7QAAAdIWkBAAAAhc00aCAeAIgPuwDhAIkvNwBCAAMPEABCIJEPpQBIAMoPeiBIAIkPXgCfAIQv3ABxAJQP2QCDIGgPvgCHAEoPXSCKAHcPgQBfAIQvxACmAB4P7ADFIF8PxwDCAO8PKCDZAFUPsgAdAKUv9wDqADUP1AD2IFkPVQD1AP0PNiD5AEgPfwA+ABgsTQD/ADkPVwAEIaINuQACAY8PHiAIAU8PmgDOAZwt3gAPAUMPtAAXIRoNggAgAV4NlyAjAYoNOADmASQvIwAkAS0PsgAhIaUORAAlAX0P6yAqAU8PsADrAWIvxQAyAWcPngAwIaMPqAA6ARsOPCA9AakPiwCDAXwufABLAfYO7QBKIRAPsgBPATEN6CBOAd8OVACVAYsvyABQAd0OewBWIX8N1wBZASMOxSBbAe4NTAClAYMvKgBHC2OHi38b314Hl4RnfwqfL9+bB3OA8oqPh3agZwn6fqsAK/mSoEYMVgamB/p7Vi8e9+drKnAf/ipHG/vT+I8TSw/y1wpnofcakHaBWCp2Cl8aFQ9zjBa/5PpmDI7+B3gfez79ovfrD1brXCozEQoGqAMD8W8+RBOh+/L0tH28J3uEJAPV81eCBS9oiR4YrrB/qkMq4PppJxkLSfswMn98avTO+tMTnFmAgj0DWPsoEISifPDF8nXroWvY1px6UQ4J47OEySuQidkfUJvYEuQ73wx2ca7rtIgkIavcoQGNi5OMLDd478oAfXgU7pxblIqp8jWavIT/vNPxfXxGVudWSEqDjirnmHtsCYg6EPpmkSIFgAm4z4/lGGMA83j4PbL5o5CPMQjc+owqSXJwEy39CPmLVqveec0Iy141DABAAQKLH/HPAHEkCEI4WgMAXAcD3QcAcQsTwztgCyBTDwAt/8C2/cXh/wMARR0GBAkFUSAJUcH//QQNBRYo+i9EZEHPACwU/ME1QsAIxSI5I8M8VAYAO4cA+t6FCQCpRwY7PEMoAYNKBv/8B1sGINhKF/4JAGJMFd/A/zLAFADQUOjdM1L/RljBO/76JgFaV4ZvwcgAZ3oHwEZUwjLCAF9+gcDAiRYAznXxb1w4/0T/WwUzCiAEgvBMwD77wEkzASCE8Dg4jsHF4Dc3CABUibiQezMBXIsAMMM4wPvdwMD//sD8BzMNIFSPdGnBe84AeLaHwot8eAbFhZ4p/v81CwB9WYDE4cPAwsBwGMUCosT+wf7//j6G/cff/sD+wP//Ov0MIMmpHsE1PswAzuMjM1H/BQDjxFvgcwYAxsYtBcAwNgEw1Nb+/jhBNt7//Uz+/yzUALX0pcKRiJLEOv2YJgEp2FfAw/oEBQ/dUGYEAHQtAPzcBwBu70DDAcLAJQH37zfC+wASBXXx0P38/P04+/rd/fr3+vz+yA0Fcvk9kcXCxLykACBZ+DfBwsPbAAHb28BFwvz+Ov7F3zD+//3+wTvA+9/+/v8mBgD3+0moxAQAPv1DXRIFmPy6kpLCwlKZdysRSwI6wcIGxMbiwcPBCxCZwL3B4sTHxMXGwQcEFZwEQP3/AxDYDUzeBxDcEkbAOzEDMOASOv/8K9AQkwHsxcOnwcNaw8TkxP7CwZ8E1foiGv37CRA8JOXAweHDwf/DBhDbJkPoxGQHEDYm7JtxJRHrLkz+I8EQ9A5CHQYQwTWb/fh/BRASOilxzxA4Hxd5/8JcC9UiQzDBwH90wAPVK1czwgsQUGADokJXIAAAAAAAAA==', '1', '1', '0', '3356901120048', '2017-08-05 21:45:10', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('146', '54', 'TQ9TUzIxAAAETFAECAUHCc7QAAAcTWkBAAAAhPEn8UwnAPcPkQDuAO5DswA/APEPiABVTOcPggBWAKkObUxhAO4OlgCjAPZDzwBxAPkPrwCTTOkPEQCsABcOREy4AFoPLwB/AOBDVwC/AGAPYQC7TPAPOwDJAB4Pn0zKAGcPygAeAPxDVADuAN0PQgDxTOYP0wD3AMYP7kz8ABEP4wDJARpCxQAWAQwO+QAlTVQOnwAjAYYPkkwlAUYP1gDvAVZAHwArAc8OgAAoTVIOMwAwARINWkwxAU0PoAD4AcFBxAA9AdkMYwA7TTcN0wBJAbQLtExRAa8KhACcAVtCvABZAY0NDgBlTegM/wvfA84PqrbmgNf7JgouAPvJs/iffc8D9H+Bz+KEhYcqCF//LccXB2sAEwryChPD74v/klv+B/C/NMr5dYClePT+ncDACS4UrQpUh6Iy6Iyr+OcPtIBNtZh/9XhvgO5xubuq6CMITgeifK+1boDPoCMNTPahqzAPwfT5Eh8HMUAIH9YUmb+v8E5FUASBgKKIff55z3QPNAZtg6MQiTbQS3LgvfpjfLIy0AClfTUKRISlyTQKuf7G+XN7zN7gGnmHxWlAig1j2XJ1iQH3aJlZxnTn6SR9ebDuBtILKxqzjeDMpN1TLFxlejI8XJjlum0gPAECVeVMCUyRAGfAa8AFSmRHAb8Ea8H/QFL6RgGuBW14WYYFBB8IZMFVDwBRCGONWWTA//9twgBnR2jBa/8DAIYMZLMLAHANaXAF//rNBQC/D2vABRMEnxJ0wv97YgRQXSkVAOAWbWUEVvuNw0NcwMIKxe0bNsJZwFkGADQlb7LA/8EYAP/3fcYoZ8LAwf1+BWTFjP7EFAEEPUbCxw5wZMDBwP+ZCQVJRXdZwMFf0QEPAnzC/3tbwULCxLJSBwBJVWSdegpMg1ppWsFkBcH62g8BEFyGiQVWbSAEAQ9kfcChDQSGc3TAb/9cBGYCTNN09///wTkQBV56hnh0cGu+GQVchol2w8DBBMBvMnVYwf/GGsQXk9/CwIOFwcCswcSNXf/BTREB1puHAWjAwcB4cdEBC+qIwm7CYlwEwcWyhgkBDrCGt4nERgAPu4lvfgT+A0w8vF5glQXFK7oswG4JAFK+p2WEjAoAVsNcWK7Bq14AD8SJfHcFwnWNbMIKAJfJroRYPw0BE86JwEbCdS0PAJnPYsA6w2COWzgHAM3WMkH6sAwAxtx0wzrAxNF9wAYAzt0/wDVeABPwk4vEo8HFjcODfgYA2DMDOLEFAO/9EC7UARCyn8SAf8PAB8HHNAkQ3wqGwgCPxkoR5woQIfvCEOJcHf3++8D9zxDMXQH7/vr+/zj+/EkRwBhgwbDNEMxUCPz5//z8OAwU1CHaLir//u0FFJsnk8myBRBUKE0jBBCXKEZ2wRBFYlbAwgQQR+pQYU8RWjJTwgbVgmXMV8ADEMdhRcAAAAAAAAA=', '2', '1', '0', '3356901120048', '2017-08-05 21:45:11', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('147', '55', 'TX9TUzIxAAAEPEEECAUHCc7QAAAcPWkBAAAAhOElVTwnAIwPcgDvAIkzSQBRAIUPDABiPBQNwgCRAFQPkjynAI0PrwBtABczDQCtAIgPjgC0PHoPcgCxAM4PIzy6AHIPuQAUAJUzLwDfAGQPngDmPHgPjADtAE0PajzwAHkPOQA3AGczIwD/AOcPZwANPYkNdwAQAaoPmTwUAXsNOQDfAUszkQAbAQQNbgAYPYgNbAApAYwPxDwqARsM1ADrARkwrwA8ARUNeAA5PR0LpABFAdMOwjxJAZoN2ACJAZMyYABOATYNsQBKPSsOvgBWAVANSDxWATkNpgCZAQoz+wA+Cwt7vwBTNg57xvvf+v4Ptru+B8uLToBzf1s4+H5qhuP8NIpOuKeHDhgjJzoPfjYLcjsFaoI/ks+qo+xKEQb6Y4NfNZYGSQJufRP1IT53GooXdhDbAVYmpAIC8D4MDAKNQw/uhYdqhXuZTDMoAVmGIW+kK8LE1fd1eBn0E2n20j4JbYhdfrh/iSykARFzCd+3IoIqrAFtAckKLAXJP7uEzANt+Ij+jbjoCC0BTANsClnDjIA9BPEFtP1ZO6d8TQ25/tPu3ckP4s7ywfykiq1GOAZCEiPy9PptRj/4J4ojUdggPz0DXSDOBACHEwhyBAB6FRPBkgMEERYG/gwAa9wT+/88wDfBBADsHBezEgAGJBDDBP1//P7+aMBz/8AAchASwcH+FADDMQ3+TVY2Uv//BVwRPAA/AMDAOARE+2ZKwmYGALaPE0H8BwADS/1PBRAEcFAJ/1Nb/5f/xsIHAERUg8EFwvsoAQph+sE1jsBsaGvAEAADbzQ1OP7+VUIUAAO88SvDOVn+WsH+pQgFLn5DSVoVAMSG7cE3////wFg6ZMTDfRQAAYv3g09Sf8D/wFEMAMaX9AlAwsA2DADBnvP9MsD/wf9P0AAAm/to//7BUYH/XsNhCQCaqAn3c8U7AbKqE8DBOngJPHevBj5Ewvr+DTxvsIlrwoPDAEKNe8D/lwYAs7UNw0sPALXSjJ9Sxv/+wXYIAL0XFlP9wfYVAAndITXEwTxVUT5NBcUr5FvDfAUAWOK/wZw7AYnsiYR3yABu04HCm3FpwtMAB83bKS/9V/8E/sUKwWENAHLxxTs5/ULADABq9b/Cxf/AwcLBwIvOADzKY3d6/q0X1QIE6v////xGRoFLV2AHECACWsKrDhShCYb/w4bDB5SlOxF0EnfDwwelDyyZFX3/xMABw8D/bREQPRbcOyfGwC7+ZcHAB9U1H2rDcMMGEDrbUMbDlwcQnSEJOFD6JBEDJcz9wQX9+8L8//7AwP47wvvDRcBbBxBv4uv/wP9cAxBnKpLFDSx8Kgb8/1z4BRRQLEnEjQYQsDFH+cOGBhCEN9X9aC4R2DmgdI6axIv8lQUQfjo0AcDHPxGIQh7AA9WpXjXBAAAAAAAAAA==', '0', '1', '0', '3356901120048', '2017-08-05 21:45:11', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('148', '55', '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', '1', '1', '0', '3356901120048', '2017-08-05 21:45:11', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('149', '55', 'TZlTUzIxAAAE2tgECAUHCc7QAAAc22kBAAAAhAcrwNoyAAoPSwCEAObVvABGAHkP7wBD2l8PgQBLADQPitplAPMPowC9AAXUwAB4AAsNewB62oANIgCCABgPutqFABENugBMAHvXrQCKAP0NTQCP2vUPVQCXACMPkdqdAAIPpQBlAArXJQCkAFkPdQCr2iAOVQCyACwP79qyAB8PwQB4ACzVqwDJAC8PmgDT2ukPTQDZABsPedrcAF4PiAAnAFbVpADkAEoPUADj2k8PuADoAI0O1NroAKUNwQAuAC/UtwDzAMYOrQDw2lYPrAAAAZQO0NoFAVsN6wDBAZvUsgAVAdEObwAh21UPVwAnARMPfdpGAdgPNQCUAWDUfwBXAVMOAJG/2eobGoWn8nbz0atGcXOKHn2ugyO1vAMbErfy/AepLdcCrQWJg1yHzFTB/8WNQHIRekjd44W3+muD9ZLITDkL3HLQA0SEhVp47TH9sfWz9KIz3P8TjZP1TPQhy2QH/QyZ7YQS4qcedTdxBRW4+q0tWAfOAuIOH/vj2bZ/9QrF+z8eOdEcE5nnFQ0LkKZWnPnGim728Q8xya94wPc9BPQLtSZABVWGwfzoBMEpRR6Ah8EBkHxZhBRP5Oa9ZJSIhFmgnBV03nDP+BLfCIxlggUL4L7lYc8wYUaC/r50AadkgnYNAYU3BfNLygB7ggd2GIRP3pKH+5Ibj+YT5abSfw8De1n9YAfbIUUBArIkmQQE9gVidgsAXsFkxBrCOMDBwAfFNAyN/8HC/PsHxWcMhP+E/ggAQclcxBr+wGQRAJ/TbfsbwlHAZ1tsyABjzmFkwMDB/wT/edwBhxZreMHAAHHCaMGDCwCL4mlugnUUAM8siTrFaxjBwMDAwWI7fhfawTKGlsJkmcDFJcHCUQgA2oSG+xqWwAkAR0WnwcQaacITALlGv291uGtcTAUAJoJibt8BKktcwFTNAIGW8UD8XQQAfEwH4hUAt013wAdzfBvBXF1cDgC4Tm2xwGr/YsEExcBeoHkEAMJbBoQIBD1cj4PCwcHUAI68asCBwMHAr1Zd1AHzb4xngwTBxK4GAKd1+v4E/T/eAcR4CUANxe9yVsGEwsJkddYAm6Bxwv7BwXGsU8UlXQYAwn4M+8EA2ruAgIcFAACFFxpQBwESh0avTQzaqYp3wf+DBQYEZIsQ/cFWC8VSn7pwW8FMCgBfmwQa/DH/OQkAbKANJP8vWgQAI21egNYB5q+awMEExIglgwwAUrVcvf7GnlIEAOy3JAX8CdrEvyLA/MIG/PkY+/5KBADBBCvFJBAAYtTkLj77+Br6/v/AwP+PDgSV1Nz/MP7+OSdS3QGG3WLEUQUNBFznUD1TwGQ4CAR+6ElBWxcADeqjl5mIdsNC/5b/CNqV60z/RMA6/1/eAcPxBiUJxWPxhsNUSgoAtTJJRYF8CwBo+FahwPkY/FAFAMv8xfoexwH3/rfFwDiDxqXEwsDChHal/8WOCxDGAVZnOv/EiQgQ0QRawZjBXtARrAVTwEo6VQ3K3QZgxFXB8AkUOwlJ/cFVWc0Q4MpHNkUHEOnlTEH1BxCpKlbAkxoU+kDgwWtT/wX8+S75/0vBRGDBEHGRW8D8HxACleTEX8Bi///+wDv+/iP9/D7A/sEF/8TqAAAAAAAA', '2', '1', '0', '3356901120048', '2017-08-05 21:45:11', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('150', '56', 'TXdTUzIxAAAENDsECAUHCc7QAAAcNWkBAAAAhNkdrTQzABcPrwCJAIg7tgBuAI8P+wBzNPEP7wCIAGgPMTSRAOwPmwBSAJQ7egCwACMPsQDGNC8LVwDGAMELjDTMADoMPwAVAO89bADWADgLyAHcNNEG8gDmAHMJDTXoAEcIQQArAFg1SADuAE8BUADrNEAG7AD+AHILLTQNAdwInQDVATA8ogAaAbUMuAAZNUQNwwArAeMHLDQ7AdgIEQD+AdExGgBWAccETABSNUMMoY+ji3aLqUMv/UP/qgWOAa9P4AfH77PPoiNLKwbfZf+/6woDUlrKAT9arfVL6KraIA2h+Wn2KBuR+3jb3Q65BzMYgd/XkMqcFQ0kNzk3+IgeHA8ZFHIRNrvoBXjBkmeRIDrjcIKCsPYjZAZ7dw3yCXaPUAK2RarpgoKGjyIEfLcH9b7xdIMnkU5GLxE6khMFN3HzwDpzKQb6EK78rcrcE4P5bfdL8Ifb9v8Tjycf1UAGPCFBAQK2JFUGBKgSCcL7Rw3FiBI3Pis1QhEAmirwYP3AL//9/wXAUSYBXDL3Vys4wPrL/8H//1kJxaswIsAqUw8AWf/0T8r+/MHA/f86VBE0T0Xw/lT+OEE5y8D/R/0IAG5KlLeGFABFWPCO/0TLKTbA/1cUxUJkxEo4/yr//qXBQz8BtG6XiYtFFgQCbus9/zv/Ov37yv7/wMDA/5gTBGpx+jz+/yo6RftfwQ4AoHAQ4v/69VtYBABVc7WBETRAdu04/zI7/frLNMHB/2QSxV9yzsH+/v7+KYV0xMsEAF13dMFIEQRYe/3//if+Ov5S9HkEAFx9cbYQBEt+Bv3+KP/7fnwzAWuFdMFxBRAEtIQM/v3//Tr/V1tuBABNiW22BwRfinHAeMEExfGIGf7BCgB+kEXCg0PFDwCHkxM6/Df0U3XCBQESUEM5JQFpmPr9/Tv9+htbwXIGAGZccMT2axEAY6D3OP36yfw1wVrBe8AAXpdseBAAY6Y/JPnK/MH//8HABYMDNGCnccHCc8kAZ5j8//v9/f46/8RQCABhrXDCscBwPAFksgD7/Tv9+fQRAH6yHCOJ/8SzwLUIAGGzrGdvOwFrugz8+jvC/0z+Vv8EAGN5ccX2DgBdxPr4Pv4xfsH/w/wNALLEI8n8SsFMSRDFRtbZ/Pv8+v7/Ov/E9EX/BwBE06yHijgBb9k3//46wEj0OQMBEdxDBwsEbuQxJ0z/XMYAO8VfwAgARvGS/nb0wwkAS/FMBirEawgAlfJASaLBDjRQ80bBMf8EgQ40VvNAMERkzACUyEH/e8JsA9QJFAnBBxBBA1ycSREkGRLQ/v9BOvzwyv79/8E2wIQFFAMZV/92BRBbGTP1wcEDED0aksACJH0jQ/9gBtWKIAlM/xcQCD8M/cTLwzHA/vf4OcD6y/7AwEwAAAAAAAA=', '0', '1', '0', '3356901120048', '2017-08-05 21:45:11', null, null, null, null, null, null, null);
INSERT INTO `template` VALUES ('151', '56', 'SqBTUzIxAAAD4+AECAUHCc7QAAAb4mkBAAAAgw4emuMaAJUOYQDaAHnsjAAjAJAOoAA64wsPbgBOAEUPS+NUAPwPqwCcAJ/srQBxACsP5QB74+4PjgB+AF0PWeOEAAwPewBJAI7sigCNADIPoQCX4yIPbgCuAFMPZeO3ADYNfwAJAD3ssADUALIPWADj4zAPbgDhAIcPS+MDAVIPEQDNAdfsgQAKAUAPswAO4sMPbwAPAYkPIeM0AdoGMQD6AdjvggBBAcQHngBP4tcOaABUARwOVudqHlePQXPP7zwf2Px2G1+IYI4ycNsSsXp6hnIIfZ1n9rfxJXKGBDyMFJLGlLr7svWcBKLPMWhRDh9sngp/gaN49Vwc9maNGJzRpMoSwBlSeZCPTGOdd9NZL0Br+AoVnf8nCO1KOIJXdUtz/ILpFtLwGQf6D7+DPek6kBMR3/xuhtgYtYO19fID8Xq3ZHuDKI4pDQf+wuJaCLcHPQF3B7TkJ+wy8ncGBPyh9Tv/PQSSFPIDQXcjICA6AQKcII7qAYIEEP79B0bD5wGaCRpKDMVzDfP+TP9LXQXFUhHjKgMAXR2DBw0DhiEJT//+wINHBuNcI3rAbwbFaDnl/jETAB5AIf012/z/L8D/PsIAaqWCwn7BDgCuRxAhKStSWQ0A3Ezq2MD/LsD9/8IAaq+Bi3AUABuW6zsj/T7+PkZE1QBTt/suLj7AWQUIA01dJMD+V8DSABOX5kE+//z/O/78oP5cVgkAJrHww8j/JwcArnTswEAcCQBWhX3DBcN99wEKh9z+wTkv/Bz9Lv9FUg3Fh4p9moDBwsFwzgCMczHAUHtgDsV3ksP8MsBnZsLJAIlyMURpwMBsyABkdRv9/f7C/p90F+MDndf+M8A6MSse///AeAwAqKqdJ8XDw4ZYC8VisXPHm3BbGQDBttUcQTH//vz9ODdXnXEMAGq4MO5W/dYOAGW6NP/3wf6l/v//wAgAkb5zIpZVDgBZwvUqwtb+NsAKAFUJNP4dVv1JFwAGCNpYHPwswfz7/jr/wyPBwcDBwQjFQM6/wMHARwoAg89Zl0v/xBAAewq9wSPEwcbDwcRBwPwgCQB/0D3ABYH87wFQ0Tf9TPTCNeYBe9RAVgXFtNvTwzcIAEvZhStD6wFB31PBRJAIA6XhTP9PaQfFnufTwXP9DABuLUNMqDzBFBACARNdVx7B+/z8/f07/8MjwRkQEATWmDTCFPj8/v/AwTj//Bz+/8DAwQfVRwWsNEkGEHoMhsL9xAcQfw49QTgJE40TRis8wQfVdhylKEMDEIQg8v0G84hBYsI2BdWURI7F//4AAAAAAAA=', '1', '1', '0', '3356901120048', '2017-08-05 21:45:12', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `pass` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_usergroup` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'addmin', '0cc175b9c0f1b6a831c399e269772661', '', '1');
INSERT INTO `user` VALUES ('4', 'wakel', '0cc175b9c0f1b6a831c399e269772661', 'email', '2');
INSERT INTO `user` VALUES ('5', 'wamur', '0cc175b9c0f1b6a831c399e269772661', 'email walixx', '3');

-- ----------------------------
-- Table structure for `usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `id_usergroup` int(11) NOT NULL AUTO_INCREMENT,
  `nama_usergroup` varchar(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`id_usergroup`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usergroup
-- ----------------------------
INSERT INTO `usergroup` VALUES ('1', 'Admin Sistem', '0');
INSERT INTO `usergroup` VALUES ('2', 'Wali Kelas', '0');
INSERT INTO `usergroup` VALUES ('3', 'Wali Murid', '0');
INSERT INTO `usergroup` VALUES ('4', 'Siswa', '0');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `badgenumber` varchar(20) NOT NULL,
  `defaultdeptid` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Card` varchar(20) DEFAULT NULL,
  `Privilege` int(11) DEFAULT NULL,
  `AccGroup` int(11) DEFAULT NULL,
  `TimeZones` varchar(20) DEFAULT NULL,
  `Gender` varchar(2) DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `ophone` varchar(20) DEFAULT NULL,
  `FPHONE` varchar(20) DEFAULT NULL,
  `pager` varchar(20) DEFAULT NULL,
  `minzu` varchar(8) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `SN` varchar(20) DEFAULT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  `UTime` datetime DEFAULT NULL,
  `Hiredday` datetime DEFAULT NULL,
  `VERIFICATIONMETHOD` smallint(6) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `City` varchar(2) DEFAULT NULL,
  `SECURITYFLAGS` smallint(6) DEFAULT NULL,
  `ATT` smallint(6) DEFAULT NULL,
  `INLATE` smallint(6) DEFAULT NULL,
  `OutEarly` smallint(6) DEFAULT NULL,
  `OverTime` smallint(6) DEFAULT NULL,
  `Holiday` smallint(6) DEFAULT NULL,
  `Lunchduration` smallint(6) DEFAULT NULL,
  `MVerifyPass` varchar(2) DEFAULT NULL,
  `SEP` smallint(6) DEFAULT NULL,
  `OffDuty` smallint(6) NOT NULL,
  `DelTag` smallint(6) NOT NULL,
  `Image_id` int(11) DEFAULT NULL,
  `AutoSchPlan` int(11) DEFAULT NULL,
  `MinAutoSchInterval` int(11) DEFAULT NULL,
  `RegisterOT` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `userinfo_defaultdeptid` (`defaultdeptid`),
  KEY `userinfo_SN` (`SN`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('4', '000000001', '1', ' ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:42:26', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('5', '000000002', '1', ' ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:42:27', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('6', '000000003', '1', '6', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:42:27', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('7', '000000004', '1', ' ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:42:31', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('8', '000005353', '1', 'Titiek Dharyatmi, Ak., S', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('9', '000000600', '1', ' ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('10', '000007171', '1', 'Yanuar Fajari, SH', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('11', '000008682', '1', 'Abid Wahid Sasmito', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('12', '000009795', '1', 'Rizwan Aryadi Ramdhan', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('13', '000009796', '1', 'Reza Mawasthama', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('14', '000009797', '1', 'R. Leidy Novanda', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:38', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('15', '000009798', '1', 'Tedy Bharata', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('16', '000009223', '1', 'Eka Sulistiawati', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('17', '000001702', '1', 'Shifa Nurul Fauzia', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('18', '000001703', '1', 'Dian Mustika Pratiwi', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('19', '000001704', '1', 'Agustina', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('20', '000001705', '1', 'Riska Nurida Putri', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('21', '000001706', '1', 'Rivo Marzudin', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('22', '000001707', '1', 'Meidina Megan Andriani', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('23', '000001708', '1', 'Juniati', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('24', '000001709', '1', 'Febrian Dneuilly', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('25', '000001710', '1', 'Andika Yunarti Minarto', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('26', '000001711', '1', 'Suhaila Marisa', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('27', '000001712', '1', 'Johannes Maruli Tua', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('28', '000001713', '1', 'Rizka Zakiyah', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('29', '000001714', '1', 'Kusuma Dewi Arum Sari', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('30', '000001715', '1', 'Iya Yaumil Hakim', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('31', '000001716', '1', 'Puspita Arum Paramitha', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('32', '000001717', '1', 'Elmo Wiratama', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('33', '000001718', '1', 'Ayu Widya Murti', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('34', '000001719', '1', 'Evasari Megawati Pangari', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('35', '000001720', '1', 'Dwianta Hadi Pramana', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('36', '000001721', '1', 'Theodora Cahyani Melona ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('37', '000001722', '1', 'Aldy Mi\'rozul', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('38', '000001723', '1', 'Anindito Baskoro Satrian', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('39', '000001724', '1', 'A. Rahman Hakim', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('40', '000001725', '1', 'Nurman Hidayat', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('41', '000001726', '1', 'Lingga Rahadianto Achmad', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('42', '000001727', '1', 'Angga Nugraha Hafiiz', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('43', '000001728', '1', 'Bhasmara Pramudita', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('44', '000001729', '1', 'Randi Rivadianza', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('45', '000001730', '1', 'Tinton Galih Yudhianto, ', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('46', '000001731', '1', 'Kosumo, S.Kom.', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('47', '000001732', '1', 'Muchammad Lukman, S.Kom.', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('48', '000001733', '1', 'Fany Aditya Rahman, S.Ko', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('49', '000001734', '1', 'Evry Dicky', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('50', '000001735', '1', 'Andik Prasetyo Utomo', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('51', '000001736', '1', 'Asep Rahmat Sugiri', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('52', '000001737', '1', 'Bantas', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('53', '000001738', '1', 'Mahanri Tua Manulang', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('54', '000001739', '1', 'Heldy Satrya Putera, S.E', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('55', '000001740', '1', 'Ir. Hari Baktio, M.UR.P.', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');
INSERT INTO `userinfo` VALUES ('56', '000987890', '1', 'M.Ali Arrahman', null, '0', '0', '1', '0000000000000000', null, null, null, null, null, null, null, null, null, '3356901120048', null, '2017-08-05 21:44:39', null, null, null, null, null, '1', '0', '0', '0', '0', '1', null, '1', '0', '0', null, '1', '24', '1');

-- ----------------------------
-- Table structure for `useruusedsclasses`
-- ----------------------------
DROP TABLE IF EXISTS `useruusedsclasses`;
CREATE TABLE `useruusedsclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `SchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserId` (`UserId`,`SchId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useruusedsclasses
-- ----------------------------

-- ----------------------------
-- Table structure for `user_of_run`
-- ----------------------------
DROP TABLE IF EXISTS `user_of_run`;
CREATE TABLE `user_of_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `NUM_OF_RUN_ID` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `ISNOTOF_RUN` int(11) DEFAULT NULL,
  `ORDER_RUN` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_of_run
-- ----------------------------

-- ----------------------------
-- Table structure for `user_speday`
-- ----------------------------
DROP TABLE IF EXISTS `user_speday`;
CREATE TABLE `user_speday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `StartSpecDay` datetime NOT NULL,
  `EndSpecDay` datetime DEFAULT NULL,
  `DateID` smallint(6) NOT NULL,
  `YUANYING` varchar(200) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `State` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_speday_UserID` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_speday
-- ----------------------------

-- ----------------------------
-- Table structure for `user_temp_sch`
-- ----------------------------
DROP TABLE IF EXISTS `user_temp_sch`;
CREATE TABLE `user_temp_sch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ComeTime` datetime NOT NULL,
  `LeaveTime` datetime NOT NULL,
  `OverTime` int(11) NOT NULL,
  `Type` smallint(6) DEFAULT NULL,
  `Flag` smallint(6) DEFAULT NULL,
  `SchclassID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_temp_sch
-- ----------------------------

-- ----------------------------
-- Table structure for `wali_kelas`
-- ----------------------------
DROP TABLE IF EXISTS `wali_kelas`;
CREATE TABLE `wali_kelas` (
  `idw` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(3) NOT NULL,
  `alamat` text NOT NULL,
  `email` text,
  `idk` int(10) NOT NULL,
  `idu` int(11) DEFAULT NULL,
  `pass` text NOT NULL,
  PRIMARY KEY (`idw`),
  KEY `idk` (`idk`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wali_kelas
-- ----------------------------
INSERT INTO `wali_kelas` VALUES ('9', '196105061986032009', 'RETNO UTAMI, M. Pd.', 'P', 'Alamat tets', 'Email', '11', null, 'ce8ae9da5b7cd6c3df2929543a9af92d');
INSERT INTO `wali_kelas` VALUES ('12', '195703041979031008', 'TJAHJADI HERWANTO, S.Pd', 'L', '-', 'wwww', '11', '4', 'ac67ede5a84eb5a1add7ff4440e9a485');
INSERT INTO `wali_kelas` VALUES ('13', '196610251998021001		', 'BAMBANG SUPRIYADI, S.Pd', 'L', '-', null, '12', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('14', '5634742645300002', 'M. Rusydi, S.Ag', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('15', '9758760661200012', 'Moh. Basyar, S.Ag', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('16', '9247761662300053', 'Siti Nur Hidayati, M.Ag', 'P', '-', null, '0', null, 'd41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `wali_kelas` VALUES ('17', '3454756658300033', 'Dani Wahyudi, S.Pd', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('19', '7242747649300083', 'Drs. Syarifuddin', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('20', '6546746649200033', 'ENDANG PRISTIAWATY, S.Psi', 'P', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('21', '4435735637200023', 'IRMA SURYANI, S.Pd', 'P', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('22', '2733762663210162', 'Fathurrofiq, S.Pd', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('23', '1736762663200092', 'Fathurrohman, ST.', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('24', '7054747649300033', 'Drs. Ahmad Wahyudin Effendi', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('25', '7437758661300003', 'Syaifuddin, Msi', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('26', '4061758660300033', 'Yusuf Effendi, S.Ag', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('27', '0655735636200012', 'Moh. Nur Khasan, M.Ag', 'L', '-', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('28', '1736762663200098', 'Abdul Fattah, M.Pd', 'L', 'PERUM MSI (Muara Sarana Indah) No 14. Dau Malang', null, '0', null, '77e69c137812518e359196bb2f5e9bb9');
INSERT INTO `wali_kelas` VALUES ('29', '23456', 'Test', 'P', 'asdhbvc', null, '0', null, '0cbf40a9c77c984b03df9fba4a7a148a');
INSERT INTO `wali_kelas` VALUES ('30', '234r', 'TEsss', 'P', 'ALmata', null, '11', null, '81dc9bdb52d04dc20036dbd8313ed055');
DROP TRIGGER IF EXISTS `insert_absen`;
DELIMITER ;;
CREATE TRIGGER `insert_absen` AFTER INSERT ON `checkinout` FOR EACH ROW INSERT INTO absen(ida, nis, tgl, ket,jam_masuk, jam_pulang )
SELECT '',  NEW.userid,  CURRENT_DATE(), 'H',
CASE WHEN CURRENT_TIME() < CAST('11:00:00' AS time) THEN
NEW.checktime ELSE '' END AS ids,
CASE WHEN CURRENT_TIME() > CAST('11:00:00' AS time) THEN
NEW.checktime ELSE '' END AS ids
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `inbox_timestamp`;
DELIMITER ;;
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
;;
DELIMITER ;
