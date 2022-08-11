/*
 Navicat Premium Data Transfer

 Source Server         : qwe
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 09/08/2022 12:32:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay`  (
  `essay_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `essay_content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `essay_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `essay_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `essay_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`essay_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES (1, '<p>驱蚊器无厄齐尔无群额</p>', '2022-08-02 00:00:00', '独山大道', '情暖工程系统helloWord');
INSERT INTO `essay` VALUES (2, '<p>	“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班</p>', '2022-07-07 00:00:00', '林静奇', '互为人师 成就彼此 共创三赢——阳光学院院长研修班I期圆满落幕');
INSERT INTO `essay` VALUES (3, '<p>	“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\" width=\"500\"></p><p class=\"ql-align-center\">		全体学员作开班宣誓</p><p>	正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>	8月2日，	校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\" width=\"500\"></p><p>	8月3日，	副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\" width=\"500\"></p><p>	“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\" width=\"500\"></p><p>	本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>	学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\" width=\"500\"></p><p>	为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>	“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/9/62/7B/C82FFA6A7127CD8933E8497E761_23E70E92_148A2.jpg\" width=\"500\"></p><p>	学员纷纷表示，“SWOT工具似炎炎夏日中一场‘及时雨’，本次实操培训十分受用，对实际工作很有启发。”</p><p>	研修班还围绕“有效沟通”“团结协作”“携手共进”三个主题展开团建活动，精心设计的游戏环节不仅有利于缓解压力、放松心情，更进一步拉近了距离，强化了团队合作意识。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/0/29/D3/CE43D1DAC63F74F5244DAE485C5_ADA8FB69_16B3D.jpg\" width=\"500\"></p><p>	结业仪式上，各组组长汇报“团队目标”以及基于团队目标的“个人行动承诺”，其余学员逐一汇报“个人行动承诺”。</p><p>	张红霞副校长对学员们的研修成果表示肯定。同时，她对各学院目标制定及学员成长提出了建议与希望：一是各学院的目标制定需基于对行业和市场的充分调研，结合当前学院现状及教育发展大势，围绕“一号文件”，以终为始；二是区分目标与手段，业务工作合理叠加，真正将应用型人才培养落实；三是希望学员能将研修学习成果赋能工作实践，带领团队共创“三赢”。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/7/F2/79/4CD98D07AB01F2CDAD7978E91EC_D597A1D0_14CAC.jpg\" width=\"500\"></p><p>	研修班闭幕式上，张红霞副校长、马彦彬院长共同为院长研修班学员颁发学时认证证书以兹鼓励。</p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/C/AB/D3/4EAFC51EBBAFB38C9719979ED12_EBC89EB2_111BC.jpg\" width=\"500\"></p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/9/42/F0/C2F18922D290986048B50B5DDE9_8A0B4E2C_10A1C.jpg\" width=\"500\"></p><p class=\"ql-align-center\">	<img src=\"http://news.ygu.edu.cn/__local/3/58/15/40B8956E77AC03F6E9E00ECDAAF_E7CBBC1E_113BF.jpg\" width=\"500\"></p><p>	学员们信心满满，表示会将此次研修成果应用于学院业务开展及团队管理中，躬身践行，榜样传承。（教师发展学院供稿）</p>', '2022-08-02 00:00:00', '李欣泽', '长期待蜕');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'studio_naxin', '项目', NULL, NULL, 'StudioNaxin', 'crud', 'com.ruoyi.studio', 'studio', 'naxin', '项目纳新', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45', NULL);
INSERT INTO `gen_table` VALUES (2, 'essay', '发布文章', '', '', 'Essay', 'crud', 'com.ruoyi.essay', 'essay', 'essayFabu', '发布文章', 'ruoyi', '0', '/', '{\"parentMenuId\":2017}', 'admin', '2022-08-08 17:24:27', '', '2022-08-08 17:40:49', NULL);
INSERT INTO `gen_table` VALUES (3, 'essay_essay', '', NULL, NULL, 'EssayEssay', 'crud', 'com.ruoyi.studio', 'studio', 'essay', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2022-08-08 17:29:30', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'naxin_id', '项目编号', 'int(11)', 'Long', 'naxinId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (2, '1', 'naxin_date1', '开始时间', 'datetime', 'Date', 'naxinDate1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (3, '1', 'naxin_date2', '结束时间', 'datetime', 'Date', 'naxinDate2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (4, '1', 'naxin_raceType', '项目比赛类型', 'varchar(255)', 'String', 'naxinRacetype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (5, '1', 'naxin_projectIntroduction', '项目简介', 'varchar(255)', 'String', 'naxinProjectintroduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (6, '1', 'naxin_projectMembers', '项目组员', 'varchar(255)', 'String', 'naxinProjectmembers', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (7, '1', 'naxin_projectTeamLeader', '项目组长', 'varchar(255)', 'String', 'naxinProjectteamleader', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (8, '1', 'naxin_name', '项目名字', 'varchar(255)', 'String', 'naxinName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2022-07-28 18:17:21', '', '2022-07-28 18:18:45');
INSERT INTO `gen_table_column` VALUES (9, '2', 'essay_id', 'id', 'int(11)', 'Long', 'essayId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2022-08-08 17:24:27', NULL, '2022-08-08 18:05:12');
INSERT INTO `gen_table_column` VALUES (10, '2', 'essay_content', '内容', 'varchar(255)', 'String', 'essayContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2022-08-08 17:24:27', NULL, '2022-08-08 18:05:12');
INSERT INTO `gen_table_column` VALUES (11, '2', 'essay_time', '创建时间', 'datetime', 'Date', 'essayTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-08-08 17:24:27', NULL, '2022-08-08 18:05:12');
INSERT INTO `gen_table_column` VALUES (12, '2', 'essay_user', '创建者', 'varchar(255)', 'String', 'essayUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-08-08 17:24:27', NULL, '2022-08-08 18:05:12');
INSERT INTO `gen_table_column` VALUES (13, '2', 'essay_title', '标题', 'varchar(255)', 'String', 'essayTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-08-08 17:24:27', NULL, '2022-08-08 18:05:12');
INSERT INTO `gen_table_column` VALUES (14, '3', 'essay_id', 'id', 'int(12)', 'Long', 'essayId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-08-08 17:29:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, '3', 'essay_content', '内容', 'varchar(255)', 'String', 'essayContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2022-08-08 17:29:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, '3', 'essay_time', '创建时间', 'datetime', 'Date', 'essayTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2022-08-08 17:29:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, '3', 'essay_user', '创建者', 'varchar(255)', 'String', 'essayUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-08-08 17:29:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, '3', 'essay_title', '标题', 'varchar(255)', 'String', 'essayTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-08-08 17:29:30', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for studio_naxin
-- ----------------------------
DROP TABLE IF EXISTS `studio_naxin`;
CREATE TABLE `studio_naxin`  (
  `naxin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `naxin_date1` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `naxin_date2` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `naxin_raceType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目比赛类型',
  `naxin_projectIntroduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目简介',
  `naxin_projectMembers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目组员',
  `naxin_projectTeamLeader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目组长',
  `naxin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目名字',
  PRIMARY KEY (`naxin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studio_naxin
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-07-21 15:04:12', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-07-21 15:04:12', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-07-21 15:04:12', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'N', 'admin', '2022-07-21 15:04:12', 'admin', '2022-08-08 17:57:22', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-07-21 15:04:12', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '阳光学院', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:53:26');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '人工智能学院', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:53:38');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '法学院', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:53:48');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '名师工作室', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:54:02');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '小杨工作室', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:54:20');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '小李工作室', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:54:53');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '篮球工作室', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:54:48');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '琳琳工作室', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:01');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', 'uio工作室', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:16');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', 'jkl工作室', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:09');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-07-21 15:04:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 15:39:34');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 15:39:40');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 15:41:14');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 16:06:05');
INSERT INTO `sys_logininfor` VALUES (104, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 16:06:23');
INSERT INTO `sys_logininfor` VALUES (105, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 16:07:41');
INSERT INTO `sys_logininfor` VALUES (106, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 16:07:48');
INSERT INTO `sys_logininfor` VALUES (107, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 16:38:59');
INSERT INTO `sys_logininfor` VALUES (108, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 16:39:38');
INSERT INTO `sys_logininfor` VALUES (109, 'admin123', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：admin123 不存在', '2022-07-21 18:43:26');
INSERT INTO `sys_logininfor` VALUES (110, 'admi', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：admi 不存在', '2022-07-21 18:43:33');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 18:43:40');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 18:49:59');
INSERT INTO `sys_logininfor` VALUES (113, 'Student1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：Student1 不存在', '2022-07-21 18:50:09');
INSERT INTO `sys_logininfor` VALUES (114, 'Student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-21 18:50:13');
INSERT INTO `sys_logininfor` VALUES (115, 'Student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：Student 不存在', '2022-07-21 18:50:17');
INSERT INTO `sys_logininfor` VALUES (116, 'Student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 18:51:11');
INSERT INTO `sys_logininfor` VALUES (117, 'student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 18:51:21');
INSERT INTO `sys_logininfor` VALUES (118, 'student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 18:51:40');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 18:51:51');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 19:02:20');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 19:02:31');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-21 19:02:35');
INSERT INTO `sys_logininfor` VALUES (123, 'student', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '对不起，您的账号：student 已被删除', '2022-07-21 19:02:54');
INSERT INTO `sys_logininfor` VALUES (124, 'student1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-21 19:03:02');
INSERT INTO `sys_logininfor` VALUES (125, 'student1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 19:03:04');
INSERT INTO `sys_logininfor` VALUES (126, 'student1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-21 19:03:25');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-21 19:03:36');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-07-22 16:01:50');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-22 16:01:53');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-07-27 19:45:42');
INSERT INTO `sys_logininfor` VALUES (131, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 19:46:18');
INSERT INTO `sys_logininfor` VALUES (132, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-27 19:46:30');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 19:46:38');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-28 15:29:39');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-28 15:34:10');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-28 15:34:14');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-28 18:15:51');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-08-08 16:53:01');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-08 16:53:09');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-09 12:09:08');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2030 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-07-21 15:04:12', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-07-21 15:04:12', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-07-21 15:04:12', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-07-21 15:04:12', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-07-21 15:04:12', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-07-21 15:04:12', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-07-21 15:04:12', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-07-21 15:04:12', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-07-21 15:04:12', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-07-21 15:04:12', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-07-21 15:04:12', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-07-21 15:04:12', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-07-21 15:04:12', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-07-21 15:04:12', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-07-21 15:04:12', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-07-21 15:04:12', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-07-21 15:04:12', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-07-21 15:04:12', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2022-07-21 15:04:12', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-07-21 15:04:12', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-07-21 15:04:12', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-07-21 15:04:12', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-07-21 15:04:12', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-07-21 15:04:12', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-07-21 15:04:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '工作室', 0, 1, 'studio', NULL, NULL, 1, 0, 'M', '0', '0', '', 'list', 'admin', '2022-07-21 19:09:23', 'admin', '2022-07-28 15:39:21', '');
INSERT INTO `sys_menu` VALUES (2001, '工作室纳新', 2000, 1, 'studioNaxin', 'studio/studioNaxin/index', NULL, 1, 0, 'M', '0', '0', 'studio:studio:Naxin', 'people', 'admin', '2022-07-21 19:10:45', 'admin', '2022-07-28 15:41:17', '');
INSERT INTO `sys_menu` VALUES (2002, '项目管理', 2, 4, ' projectManagement', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-07-21 19:11:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '项目管理', 2000, 2, 'projectManagement', NULL, NULL, 1, 0, 'M', '0', '0', '', '#', 'admin', '2022-07-21 19:12:15', 'admin', '2022-07-21 19:13:57', '');
INSERT INTO `sys_menu` VALUES (2004, '成果认定', 2000, 3, 'achievementRecognition', NULL, NULL, 1, 0, 'M', '0', '0', '', '#', 'admin', '2022-07-21 19:12:46', 'admin', '2022-07-21 19:14:04', '');
INSERT INTO `sys_menu` VALUES (2005, '工作室成立废止', 2000, 4, 'EstablishedAndAbolished', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-07-21 19:15:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '对外信息发布', 2000, 5, 'InformationRelease', '', NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-07-21 19:16:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '学分置换', 0, 3, ' creditReplacement', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-07-21 19:17:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '工作室申请', 0, 2, ' StudentStudioApplication', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'form', 'admin', '2022-07-21 19:18:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '工作室列表', 0, 2, 'studioList', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-07-21 19:19:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '项目纳新', 2000, 1, 'naxin', 'studio/naxin/index', NULL, 1, 0, 'C', '0', '0', 'studio:naxin:list', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '项目纳新菜单');
INSERT INTO `sys_menu` VALUES (2011, '项目纳新查询', 2010, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'studio:naxin:query', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '项目纳新新增', 2010, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'studio:naxin:add', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '项目纳新修改', 2010, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'studio:naxin:edit', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '项目纳新删除', 2010, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'studio:naxin:remove', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '项目纳新导出', 2010, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'studio:naxin:export', '#', 'admin', '2022-07-28 18:19:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '发布文章', 0, 4, 'essay', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-08-08 17:32:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '发布文章', 2017, 1, 'essayFabu', 'essay/essayFabu/index', NULL, 1, 0, 'C', '0', '0', 'essay:essayFabu:list', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '发布文章菜单');
INSERT INTO `sys_menu` VALUES (2019, '发布文章查询', 2018, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'essay:essayFabu:query', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '发布文章新增', 2018, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'essay:essayFabu:add', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '发布文章修改', 2018, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'essay:essayFabu:edit', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '发布文章删除', 2018, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'essay:essayFabu:remove', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '发布文章导出', 2018, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'essay:essayFabu:export', '#', 'admin', '2022-08-08 17:44:34', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-07-21 15:04:12', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-07-21 15:04:12', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 16:18:44');
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 16:19:10');
INSERT INTO `sys_oper_log` VALUES (102, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 16:46:03');
INSERT INTO `sys_oper_log` VALUES (103, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 16:47:12');
INSERT INTO `sys_oper_log` VALUES (104, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 16:47:15');
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117,4],\"params\":{},\"remark\":\"学生\",\"roleId\":100,\"roleKey\":\"student\",\"roleName\":\"Student\",\"roleSort\":\"4\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:47:10');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117,4],\"params\":{},\"roleId\":101,\"roleKey\":\"Teacher\",\"roleName\":\"Teacher1\",\"roleSort\":\"3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:47:48');
INSERT INTO `sys_oper_log` VALUES (107, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 18:47:10\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"学生\",\"roleId\":100,\"roleKey\":\"student1\",\"roleName\":\"Student\",\"roleSort\":\"4\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:48:01');
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 18:47:10\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"学生\",\"roleId\":100,\"roleKey\":\"student\",\"roleName\":\"Student\",\"roleSort\":\"4\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:49:31');
INSERT INTO `sys_oper_log` VALUES (109, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 18:47:10\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"学生\",\"roleId\":100,\"roleKey\":\"student\",\"roleName\":\"Student1\",\"roleSort\":\"4\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:49:55');
INSERT INTO `sys_oper_log` VALUES (110, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/3', '127.0.0.1', '内网IP', '{userIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:52:05');
INSERT INTO `sys_oper_log` VALUES (111, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":104,\"email\":\"940180344@qq.com\",\"nickName\":\"张三\",\"params\":{},\"password\":\"$2a$10$t8lMdMWxf8cfr2fztPQoHeh57tgBZfoEL9piNvaMSLEnHB.hJDj6u\",\"phonenumber\":\"17759812931\",\"postIds\":[2],\"remark\":\"学生\",\"roleIds\":[100],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"student1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:52:56');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":100,\"deptName\":\"阳光学院\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:53:26');
INSERT INTO `sys_oper_log` VALUES (113, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":101,\"deptName\":\"人工智能学院\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:53:39');
INSERT INTO `sys_oper_log` VALUES (114, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":102,\"deptName\":\"法学院\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:53:48');
INSERT INTO `sys_oper_log` VALUES (115, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":103,\"deptName\":\"名师工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:54:02');
INSERT INTO `sys_oper_log` VALUES (116, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":104,\"deptName\":\"小杨工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:54:20');
INSERT INTO `sys_oper_log` VALUES (117, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":105,\"deptName\":\"小李\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:54:35');
INSERT INTO `sys_oper_log` VALUES (118, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":106,\"deptName\":\"篮球工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:54:48');
INSERT INTO `sys_oper_log` VALUES (119, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":105,\"deptName\":\"小李工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:54:53');
INSERT INTO `sys_oper_log` VALUES (120, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":107,\"deptName\":\"琳琳工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":5,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:01');
INSERT INTO `sys_oper_log` VALUES (121, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":109,\"deptName\":\"jkl工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:09');
INSERT INTO `sys_oper_log` VALUES (122, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"delFlag\":\"0\",\"deptId\":108,\"deptName\":\"uio工作室\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:16');
INSERT INTO `sys_oper_log` VALUES (123, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"flag\":false,\"params\":{},\"postCode\":\"ceo\",\"postId\":1,\"postName\":\"工作室所属\",\"postSort\":\"1\",\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:41');
INSERT INTO `sys_oper_log` VALUES (124, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"flag\":false,\"params\":{},\"postCode\":\"se\",\"postId\":2,\"postName\":\"小组长\",\"postSort\":\"2\",\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:47');
INSERT INTO `sys_oper_log` VALUES (125, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"flag\":false,\"params\":{},\"postCode\":\"hr\",\"postId\":3,\"postName\":\"普通学生\",\"postSort\":\"3\",\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:55');
INSERT INTO `sys_oper_log` VALUES (126, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/4', '127.0.0.1', '内网IP', '{postIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:55:57');
INSERT INTO `sys_oper_log` VALUES (127, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,4],\"params\":{},\"roleId\":102,\"roleKey\":\"Student-leader\",\"roleName\":\"学生组长\",\"roleSort\":\"3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:58:10');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 18:47:48\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,114,3,115,1054,1055,1057,1056,1058,1059,116,117,4],\"params\":{},\"roleId\":101,\"roleKey\":\"Teacher\",\"roleName\":\"老师\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:58:24');
INSERT INTO `sys_oper_log` VALUES (129, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 18:47:10\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"学生\",\"roleId\":100,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"4\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:58:30');
INSERT INTO `sys_oper_log` VALUES (130, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"nickName\":\"将永远\",\"params\":{},\"password\":\"$2a$10$zfrTNLcnfjZwjke4jDd3n.li5tom1VTeIT1OFZ/Uyj.mlQF4AAH2S\",\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":101,\"userName\":\"Mstudent\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:59:09');
INSERT INTO `sys_oper_log` VALUES (131, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:59:26');
INSERT INTO `sys_oper_log` VALUES (132, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-07-21 18:59:09\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"名师工作室\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"将永远\",\"params\":{},\"password\":\"\",\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"Teacher\",\"roleName\":\"老师\",\"roleSort\":\"3\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"Mstudent\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:59:36');
INSERT INTO `sys_oper_log` VALUES (133, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-07-21 18:59:09\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"名师工作室\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"将永远\",\"params\":{},\"password\":\"\",\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"Teacher\",\"roleName\":\"老师\",\"roleSort\":\"3\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"Mstudent\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 18:59:46');
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"nickName\":\"胡小林\",\"params\":{},\"password\":\"$2a$10$Om4RjJ5xWAYlY2ikFSmz.elQPreYAmJRp/jeSFAvqSZuUdLdInWFS\",\"postIds\":[],\"roleIds\":[102,100],\"status\":\"0\",\"userId\":102,\"userName\":\"leaderStudent\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:00:23');
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-07-21 19:00:23\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"名师工作室\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"胡小林\",\"params\":{},\"password\":\"\",\"phonenumber\":\"\",\"postIds\":[3,2],\"roleIds\":[100,102],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"4\",\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"Student-leader\",\"roleName\":\"学生组长\",\"roleSort\":\"3\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"leaderStudent\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:00:56');
INSERT INTO `sys_oper_log` VALUES (136, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"password\":\"$2a$10$ZBVGbBEMqGzjnNYRrMAoTuqid9Z5hIFVjJOnFEF.e6Qkg.aCI2g02\",\"updateBy\":\"admin\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:03:53');
INSERT INTO `sys_oper_log` VALUES (137, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"password\":\"$2a$10$OkSHBOkEsQ7hfuFniYobLuZSQ9Bj32upt5/qUKAzqVltgCYD3kLDe\",\"updateBy\":\"admin\",\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:03:59');
INSERT INTO `sys_oper_log` VALUES (138, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"password\":\"$2a$10$iqFyDtJAg8H5fb1ix9zXTOgDbgfFvPxvhImq8t0UwX3YFOlK7LAiq\",\"updateBy\":\"admin\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:04:06');
INSERT INTO `sys_oper_log` VALUES (139, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:05:19');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工作室\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"studio\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:09:23');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studioNaxin\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:10:45');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:09:23\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"工作室\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"studio\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:10:52');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"项目管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":2,\"path\":\" projectManagement\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:11:27');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"项目管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\" projectManagement\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:12:15');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"成果认定\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\" achievementRecognition\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:12:46');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:09:23\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"工作室\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"studio\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:13:33');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:12:15\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"项目管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"projectManagement\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:13:57');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:12:46\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2004,\"menuName\":\"成果认定\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"achievementRecognition\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:14:04');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工作室成立废止\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":2000,\"path\":\"EstablishedAndAbolished\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:15:45');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"对外信息发布\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"InformationRelease\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:16:25');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学分置换\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\" creditReplacement\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:17:05');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工作室申请\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\" StudentStudioApplication\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:18:48');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工作室列表\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"studioList\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-21 19:19:24');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:09:23\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"工作室\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"studio\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:39:21');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:10:45\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studioNaxin\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:39:37');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:10:45\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studioNaxin\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:39:47');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:10:45\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studio/studioNaxin\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:40:28');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:10:45\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studio/studioNaxin\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:40:59');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-07-21 19:10:45\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"工作室纳新\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"studioNaxin\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 15:41:17');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'studio_naxin', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 18:17:21');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"naxin\",\"className\":\"StudioNaxin\",\"columns\":[{\"capJavaField\":\"NaxinId\",\"columnComment\":\"项目编号\",\"columnId\":1,\"columnName\":\"naxin_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2022-07-28 18:17:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"naxinId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NaxinDate1\",\"columnComment\":\"开始时间\",\"columnId\":2,\"columnName\":\"naxin_date1\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-07-28 18:17:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"naxinDate1\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NaxinDate2\",\"columnComment\":\"结束时间\",\"columnId\":3,\"columnName\":\"naxin_date2\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-07-28 18:17:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"naxinDate2\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NaxinRacetype\",\"columnComment\":\"项目比赛类型\",\"columnId\":4,\"columnName\":\"naxin_raceType\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-07-28 18:17:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"naxinRacetype\",\"javaType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-07-28 18:18:45');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-07-28 18:18:53');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"发布文章\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"essay\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 16:54:21');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-08 16:57:45');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'essay', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:24:27');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-08 17:24:37');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'essay_essay', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:29:30');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{menuId=2016}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:32:02');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"发布文章\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"essay\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:32:31');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"essayFabu\",\"className\":\"Essay\",\"columns\":[{\"capJavaField\":\"EssayId\",\"columnComment\":\"id\",\"columnId\":9,\"columnName\":\"essay_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-08 17:24:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"essayId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EssayContent\",\"columnComment\":\"内容\",\"columnId\":10,\"columnName\":\"essay_content\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-08 17:24:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"essayContent\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EssayTime\",\"columnComment\":\"创建时间\",\"columnId\":11,\"columnName\":\"essay_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-08-08 17:24:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"essayTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EssayUser\",\"columnComment\":\"创建者\",\"columnId\":12,\"columnName\":\"essay_user\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-08 17:24:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"essayUser\",\"javaType\":\"String\",\"li', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:40:49');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-08 17:40:58');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-08-08 17:47:55');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2029', '127.0.0.1', '内网IP', '{menuId=2029}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:02');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2027', '127.0.0.1', '内网IP', '{menuId=2027}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:05');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{menuId=2026}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:07');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2028', '127.0.0.1', '内网IP', '{menuId=2028}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:10');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:12');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:48:14');
INSERT INTO `sys_oper_log` VALUES (179, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2000,2001,2010,2011,2012,2013,2014,2015,2003,2004,2005,2006,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,2002,113,114,2008,2009,3,115,1054,1055,1057,1056,1058,1059,116,117,2007,4,2017,2018,2019,2020,2021,2022,2023],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:56:23');
INSERT INTO `sys_oper_log` VALUES (180, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-07-21 15:04:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2000,2001,2010,2011,2012,2013,2014,2015,2003,2004,2005,2006,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,2002,113,114,2008,2009,3,115,1054,1055,1057,1056,1058,1059,116,117,2007,4,2017,2018,2019,2020,2021,2022,2023],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:56:28');
INSERT INTO `sys_oper_log` VALUES (181, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2022-07-21 15:04:12\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2022-07-21 19:05:19\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 17:57:22');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/essay', '127.0.0.1', '内网IP', '{tableName=essay}', NULL, 1, '同步数据失败，原表结构不存在', '2022-08-08 18:04:49');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/essay', '127.0.0.1', '内网IP', '{tableName=essay}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 18:05:12');
INSERT INTO `sys_oper_log` VALUES (184, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>驱蚊器无厄齐尔无群额</p>\",\"essayId\":1,\"essayTime\":\"2022-08-02 00:00:00\",\"essayTitle\":\"情暖工程系统helloWord\",\"essayUser\":\"独山大道\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-08 18:29:13');
INSERT INTO `sys_oper_log` VALUES (185, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\\\" width=\\\"500\\\"></p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\\\" width=\\\"500\\\"></p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\\\" width=\\\"500\\\"></p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\\\" width=\\\"500\\\"></p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\\\" width=\\\"500\\\"></p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:12:16');
INSERT INTO `sys_oper_log` VALUES (186, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\\\" width=\\\"500\\\"></p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\\\" width=\\\"500\\\"></p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\\\" width=\\\"500\\\"></p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\\\" width=\\\"500\\\"></p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\\\" width=\\\"500\\\"></p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:12:27');
INSERT INTO `sys_oper_log` VALUES (187, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\\\" width=\\\"500\\\"></p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\\\" width=\\\"500\\\"></p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\\\" width=\\\"500\\\"></p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\\\" width=\\\"500\\\"></p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\\\" width=\\\"500\\\"></p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:12:30');
INSERT INTO `sys_oper_log` VALUES (188, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\\\" width=\\\"500\\\"></p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\\\" width=\\\"500\\\"></p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\\\" width=\\\"500\\\"></p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\\\" width=\\\"500\\\"></p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\\\" width=\\\"500\\\"></p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:15:29');
INSERT INTO `sys_oper_log` VALUES (189, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t</p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\"><br></p><p>\\t学员纷纷表示，“SWOT工具似炎炎夏日中一场‘及时雨’，本次实操培训十分受用，对实际工作很有启发。”</p><p>\\t研修班还围绕“有效沟通”“团结协作”“携手共进”三个主题展开团建活动，精心设计的游戏环节不仅有利于缓解压力、放松心情，更进一步拉近了距离，强化了团队合作意识。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t结业仪式上，各组组长汇报“团队目标”以及基于团队目标的“个人行动承诺”，其余学员逐一汇报“个人行动承诺”。</p><p>\\t张红霞副校长对学员们的研修成果表示肯定。同时，她对各学院目标制定及学员成长提出了建议与希望：一是各学院的目标制定需基于对行业和市场的充分调研，结合当前学院现状及教育发展大势，围绕“一号文件”，以终为始；二是区分目标与手段，业务工作合理叠加，真正将应用型人才培养落实；三是希望学员能将研修学习成果赋能工作实践，带领团队共创“三赢”。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t研修班闭幕式上，张红霞副校长、马彦彬院长共同为院长研修班学员颁发学时认证证书以兹鼓励。</p><p>   学员们信心满满，表示会将此次研修成果应用于学院业务开展及团队管理中，躬身践行，榜样传承。（教师发展学院供稿）</p>\",\"essayTime\":\"2022-', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:15:59');
INSERT INTO `sys_oper_log` VALUES (190, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班</p>\",\"essayId\":2,\"essayTime\":\"2022-07-07 00:00:00\",\"essayTitle\":\"互为人师 成就彼此 共创三赢——阳光学院院长研修班I期圆满落幕\",\"essayUser\":\"林静奇\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-09 12:16:11');
INSERT INTO `sys_oper_log` VALUES (191, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t</p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t</p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多</p>\",\"essayTime\":\"2022-08-02 00:00:00\",\"essayTitle\":\"长期待蜕\",\"essayUser\":\"李欣泽\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\r\n### The error may exist in file [C:\\Users\\lin\\Desktop\\ger\\ruoyi\\ruoyi-admin\\target\\classes\\mapper\\essay\\EssayMapper.xml]\r\n### The error may involve com.ruoyi.essay.mapper.EssayMapper.insertEssay-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essay          ( essay_content,             essay_time,             essay_user,             essay_title )           values ( ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1\n; Data truncation: Data too long for column \'essay_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'essay_content\' at row 1', '2022-08-09 12:16:49');
INSERT INTO `sys_oper_log` VALUES (192, '发布文章', 1, 'com.ruoyi.essay.controller.EssayController.add()', 'POST', 1, 'admin', NULL, '/essay/essayFabu', '127.0.0.1', '内网IP', '{\"essayContent\":\"<p>\\t“希望院长研修班I期学员都能将研修所学赋能团队成长，期待蜕变、成就三赢。”8月4日，伴随学员行动承诺汇报，为期三天的院长研修班I期集中封闭式研修圆满落幕。全体校领导参加研修班。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/3/7D/EB/396B14D7ADD526BA09559CEE899_381F97ED_146BF.jpg\\\" width=\\\"500\\\"></p><p class=\\\"ql-align-center\\\">\\t\\t全体学员作开班宣誓</p><p>\\t正式开班前，我校教师发展学院先后组织了两场开题预备会和开题培训会，引导全体参训学员基于做长板的逻辑、从实战角度出发，对自身进行深度剖析与分类，据此挖掘出成就师生的“研究课题”。</p><p>\\t8月2日，\\t校长乔海曙作《打通任督二脉，成就将帅之才》主题报告。他强调，院长即学院，院长作为“首席教师”，必须以身作则，要求老师实战，自己必须先实战；要成人达己，成就学生，成就伙伴，成就企业，成就自己。同时，他围绕“技术为主型”“市场为主型”“管理为主型”三类型，提出“做长板”的思路，打通任督二脉，实现“多赢走遍天下”，以压强原则牵引一流团队一流标杆建设。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/F/5C/5E/1BD0EBE280E3D3084BD98C94A54_B342049B_14266.jpg\\\" width=\\\"500\\\"></p><p>\\t8月3日，\\t副校长张红霞从“守底线”“鼓士气”“抗压力”三方面展开《守住底线，追求无限》主题报告。她指出，学院领导班子要深究政策，把握大势，内化而后输出，并基于马斯洛需求层次及马斯克第一性原理等方法论，号召学员坚守“真心”尺子，鼓舞士气，悦纳自己，互相成就。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/1/11/9C/9D156BDA0AF5626C1FF00EDA438_5B170F47_15270.jpg\\\" width=\\\"500\\\"></p><p>\\t“做好学生的出口端，是学校和专业生存、发展的关键因素。”在《“成就学生”成就自己》主题报告中，校长助理杨海晋以2022届高起薪就业学生成长路径为案例，基于其共性特质，分析“首席教师”如何成就学生，引导学院班子打造可复制的应用型人才培养指导手册，成就学生的同时成就自己。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/E8/50/2385E1D1BC6027057A4418E144C_D220AEA6_11B02.jpg\\\" width=\\\"500\\\"></p><p>\\t本期院长研修班是一场思想碰撞、朋辈互助、赋能成长的蜕变之旅。学员针对“作为学院领导班子，我将如何成就学院老师”、“如何制定产业发展目标和人才培养目标”主题进行了两场主题讨论。</p><p>\\t学员畅所欲言，交流思路，共商对策，一次次掀起学习浪潮。训后学员表示，“以正能量带团队,以强团队做成事”，借研修契机，通过朋辈思想碰撞激发了团队管理新思路，以“思”促“干”，收获颇多。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu.cn/__local/C/89/21/A1611804FF68E4A99622D1AD450_A91292CE_120AF.jpg\\\" width=\\\"500\\\"></p><p>\\t为有效促进各学院战略目标制定，聚焦高质量团队组建，院长研修班I期特邀教师发展学院名誉院长马彦彬为学员作《组建高效团队的问题与解方》。同时，基于SWOT工具，指导学员进行“制定各学院战略目标及团队分工”实操训练。</p><p>\\t“战略清晰，战术灵活”，马彦彬院长指出，目标制定可采用“民主集中制”，这样会让团队成员更加认同并得以执行，可通过带领团队以小胜（quick win）建立对目标的信心。“管理是手段，而非目的”，对目标有利的管理才是好管理。在实操环节中，马彦彬院长针对各小组的疑问和困惑进行了耐心的解答，并提出了宝贵的建议。</p><p class=\\\"ql-align-center\\\">\\t<img src=\\\"http://news.ygu.edu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-09 12:17:41');
INSERT INTO `sys_oper_log` VALUES (193, '发布文章', 5, 'com.ruoyi.essay.controller.EssayController.export()', 'POST', 1, 'admin', NULL, '/essay/essayFabu/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-09 12:18:21');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '工作室所属', 1, '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:41', '');
INSERT INTO `sys_post` VALUES (2, 'se', '小组长', 2, '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:47', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '普通学生', 3, '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-07-21 18:55:55', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-07-21 15:04:12', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-07-21 15:04:12', 'admin', '2022-08-08 17:56:28', '普通角色');
INSERT INTO `sys_role` VALUES (100, '学生', 'student', 4, '1', 1, 1, '0', '0', 'admin', '2022-07-21 18:47:10', 'admin', '2022-07-21 18:58:30', '学生');
INSERT INTO `sys_role` VALUES (101, '老师', 'Teacher', 3, '1', 1, 1, '0', '0', 'admin', '2022-07-21 18:47:48', 'admin', '2022-07-21 18:58:24', NULL);
INSERT INTO `sys_role` VALUES (102, '学生组长', 'Student-leader', 3, '1', 1, 1, '0', '0', 'admin', '2022-07-21 18:58:10', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 4);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 2);
INSERT INTO `sys_role_menu` VALUES (101, 3);
INSERT INTO `sys_role_menu` VALUES (101, 4);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 101);
INSERT INTO `sys_role_menu` VALUES (101, 102);
INSERT INTO `sys_role_menu` VALUES (101, 103);
INSERT INTO `sys_role_menu` VALUES (101, 104);
INSERT INTO `sys_role_menu` VALUES (101, 105);
INSERT INTO `sys_role_menu` VALUES (101, 106);
INSERT INTO `sys_role_menu` VALUES (101, 107);
INSERT INTO `sys_role_menu` VALUES (101, 108);
INSERT INTO `sys_role_menu` VALUES (101, 109);
INSERT INTO `sys_role_menu` VALUES (101, 110);
INSERT INTO `sys_role_menu` VALUES (101, 111);
INSERT INTO `sys_role_menu` VALUES (101, 112);
INSERT INTO `sys_role_menu` VALUES (101, 113);
INSERT INTO `sys_role_menu` VALUES (101, 114);
INSERT INTO `sys_role_menu` VALUES (101, 115);
INSERT INTO `sys_role_menu` VALUES (101, 116);
INSERT INTO `sys_role_menu` VALUES (101, 117);
INSERT INTO `sys_role_menu` VALUES (101, 500);
INSERT INTO `sys_role_menu` VALUES (101, 501);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 1008);
INSERT INTO `sys_role_menu` VALUES (101, 1009);
INSERT INTO `sys_role_menu` VALUES (101, 1010);
INSERT INTO `sys_role_menu` VALUES (101, 1011);
INSERT INTO `sys_role_menu` VALUES (101, 1012);
INSERT INTO `sys_role_menu` VALUES (101, 1013);
INSERT INTO `sys_role_menu` VALUES (101, 1014);
INSERT INTO `sys_role_menu` VALUES (101, 1015);
INSERT INTO `sys_role_menu` VALUES (101, 1016);
INSERT INTO `sys_role_menu` VALUES (101, 1017);
INSERT INTO `sys_role_menu` VALUES (101, 1018);
INSERT INTO `sys_role_menu` VALUES (101, 1019);
INSERT INTO `sys_role_menu` VALUES (101, 1020);
INSERT INTO `sys_role_menu` VALUES (101, 1021);
INSERT INTO `sys_role_menu` VALUES (101, 1022);
INSERT INTO `sys_role_menu` VALUES (101, 1023);
INSERT INTO `sys_role_menu` VALUES (101, 1024);
INSERT INTO `sys_role_menu` VALUES (101, 1025);
INSERT INTO `sys_role_menu` VALUES (101, 1026);
INSERT INTO `sys_role_menu` VALUES (101, 1027);
INSERT INTO `sys_role_menu` VALUES (101, 1028);
INSERT INTO `sys_role_menu` VALUES (101, 1029);
INSERT INTO `sys_role_menu` VALUES (101, 1030);
INSERT INTO `sys_role_menu` VALUES (101, 1031);
INSERT INTO `sys_role_menu` VALUES (101, 1032);
INSERT INTO `sys_role_menu` VALUES (101, 1033);
INSERT INTO `sys_role_menu` VALUES (101, 1034);
INSERT INTO `sys_role_menu` VALUES (101, 1035);
INSERT INTO `sys_role_menu` VALUES (101, 1036);
INSERT INTO `sys_role_menu` VALUES (101, 1037);
INSERT INTO `sys_role_menu` VALUES (101, 1038);
INSERT INTO `sys_role_menu` VALUES (101, 1039);
INSERT INTO `sys_role_menu` VALUES (101, 1040);
INSERT INTO `sys_role_menu` VALUES (101, 1041);
INSERT INTO `sys_role_menu` VALUES (101, 1042);
INSERT INTO `sys_role_menu` VALUES (101, 1043);
INSERT INTO `sys_role_menu` VALUES (101, 1044);
INSERT INTO `sys_role_menu` VALUES (101, 1045);
INSERT INTO `sys_role_menu` VALUES (101, 1046);
INSERT INTO `sys_role_menu` VALUES (101, 1047);
INSERT INTO `sys_role_menu` VALUES (101, 1048);
INSERT INTO `sys_role_menu` VALUES (101, 1049);
INSERT INTO `sys_role_menu` VALUES (101, 1050);
INSERT INTO `sys_role_menu` VALUES (101, 1051);
INSERT INTO `sys_role_menu` VALUES (101, 1052);
INSERT INTO `sys_role_menu` VALUES (101, 1053);
INSERT INTO `sys_role_menu` VALUES (101, 1054);
INSERT INTO `sys_role_menu` VALUES (101, 1055);
INSERT INTO `sys_role_menu` VALUES (101, 1056);
INSERT INTO `sys_role_menu` VALUES (101, 1057);
INSERT INTO `sys_role_menu` VALUES (101, 1058);
INSERT INTO `sys_role_menu` VALUES (101, 1059);
INSERT INTO `sys_role_menu` VALUES (102, 1);
INSERT INTO `sys_role_menu` VALUES (102, 2);
INSERT INTO `sys_role_menu` VALUES (102, 4);
INSERT INTO `sys_role_menu` VALUES (102, 100);
INSERT INTO `sys_role_menu` VALUES (102, 101);
INSERT INTO `sys_role_menu` VALUES (102, 102);
INSERT INTO `sys_role_menu` VALUES (102, 103);
INSERT INTO `sys_role_menu` VALUES (102, 104);
INSERT INTO `sys_role_menu` VALUES (102, 105);
INSERT INTO `sys_role_menu` VALUES (102, 106);
INSERT INTO `sys_role_menu` VALUES (102, 107);
INSERT INTO `sys_role_menu` VALUES (102, 108);
INSERT INTO `sys_role_menu` VALUES (102, 109);
INSERT INTO `sys_role_menu` VALUES (102, 110);
INSERT INTO `sys_role_menu` VALUES (102, 111);
INSERT INTO `sys_role_menu` VALUES (102, 112);
INSERT INTO `sys_role_menu` VALUES (102, 113);
INSERT INTO `sys_role_menu` VALUES (102, 114);
INSERT INTO `sys_role_menu` VALUES (102, 500);
INSERT INTO `sys_role_menu` VALUES (102, 501);
INSERT INTO `sys_role_menu` VALUES (102, 1000);
INSERT INTO `sys_role_menu` VALUES (102, 1001);
INSERT INTO `sys_role_menu` VALUES (102, 1002);
INSERT INTO `sys_role_menu` VALUES (102, 1003);
INSERT INTO `sys_role_menu` VALUES (102, 1004);
INSERT INTO `sys_role_menu` VALUES (102, 1005);
INSERT INTO `sys_role_menu` VALUES (102, 1006);
INSERT INTO `sys_role_menu` VALUES (102, 1007);
INSERT INTO `sys_role_menu` VALUES (102, 1008);
INSERT INTO `sys_role_menu` VALUES (102, 1009);
INSERT INTO `sys_role_menu` VALUES (102, 1010);
INSERT INTO `sys_role_menu` VALUES (102, 1011);
INSERT INTO `sys_role_menu` VALUES (102, 1012);
INSERT INTO `sys_role_menu` VALUES (102, 1013);
INSERT INTO `sys_role_menu` VALUES (102, 1014);
INSERT INTO `sys_role_menu` VALUES (102, 1015);
INSERT INTO `sys_role_menu` VALUES (102, 1016);
INSERT INTO `sys_role_menu` VALUES (102, 1017);
INSERT INTO `sys_role_menu` VALUES (102, 1018);
INSERT INTO `sys_role_menu` VALUES (102, 1019);
INSERT INTO `sys_role_menu` VALUES (102, 1020);
INSERT INTO `sys_role_menu` VALUES (102, 1021);
INSERT INTO `sys_role_menu` VALUES (102, 1022);
INSERT INTO `sys_role_menu` VALUES (102, 1023);
INSERT INTO `sys_role_menu` VALUES (102, 1024);
INSERT INTO `sys_role_menu` VALUES (102, 1025);
INSERT INTO `sys_role_menu` VALUES (102, 1026);
INSERT INTO `sys_role_menu` VALUES (102, 1027);
INSERT INTO `sys_role_menu` VALUES (102, 1028);
INSERT INTO `sys_role_menu` VALUES (102, 1029);
INSERT INTO `sys_role_menu` VALUES (102, 1030);
INSERT INTO `sys_role_menu` VALUES (102, 1031);
INSERT INTO `sys_role_menu` VALUES (102, 1032);
INSERT INTO `sys_role_menu` VALUES (102, 1033);
INSERT INTO `sys_role_menu` VALUES (102, 1034);
INSERT INTO `sys_role_menu` VALUES (102, 1035);
INSERT INTO `sys_role_menu` VALUES (102, 1036);
INSERT INTO `sys_role_menu` VALUES (102, 1037);
INSERT INTO `sys_role_menu` VALUES (102, 1038);
INSERT INTO `sys_role_menu` VALUES (102, 1039);
INSERT INTO `sys_role_menu` VALUES (102, 1040);
INSERT INTO `sys_role_menu` VALUES (102, 1041);
INSERT INTO `sys_role_menu` VALUES (102, 1042);
INSERT INTO `sys_role_menu` VALUES (102, 1043);
INSERT INTO `sys_role_menu` VALUES (102, 1044);
INSERT INTO `sys_role_menu` VALUES (102, 1045);
INSERT INTO `sys_role_menu` VALUES (102, 1046);
INSERT INTO `sys_role_menu` VALUES (102, 1047);
INSERT INTO `sys_role_menu` VALUES (102, 1048);
INSERT INTO `sys_role_menu` VALUES (102, 1049);
INSERT INTO `sys_role_menu` VALUES (102, 1050);
INSERT INTO `sys_role_menu` VALUES (102, 1051);
INSERT INTO `sys_role_menu` VALUES (102, 1052);
INSERT INTO `sys_role_menu` VALUES (102, 1053);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-08-09 12:09:08', 'admin', '2022-07-21 15:04:12', '', '2022-08-09 12:09:08', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-07-27 19:46:18', 'admin', '2022-07-21 15:04:12', '', '2022-07-27 19:46:18', '测试员');
INSERT INTO `sys_user` VALUES (3, 105, 'student', '若依', '00', 'ry', '321', '0', '', '$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `sys_user` VALUES (100, 104, 'student1', '张三', '00', '940180344@qq.com', '17759812931', '0', '', '$2a$10$ZBVGbBEMqGzjnNYRrMAoTuqid9Z5hIFVjJOnFEF.e6Qkg.aCI2g02', '0', '0', '', NULL, 'admin', '2022-07-21 18:52:55', 'admin', '2022-07-21 19:03:53', '学生');
INSERT INTO `sys_user` VALUES (101, 103, 'Mstudent', '将永远', '00', '', '', '0', '', '$2a$10$OkSHBOkEsQ7hfuFniYobLuZSQ9Bj32upt5/qUKAzqVltgCYD3kLDe', '0', '0', '', NULL, 'admin', '2022-07-21 18:59:09', 'admin', '2022-07-21 19:03:59', NULL);
INSERT INTO `sys_user` VALUES (102, 103, 'leaderStudent', '胡小林', '00', '', '', '0', '', '$2a$10$iqFyDtJAg8H5fb1ix9zXTOgDbgfFvPxvhImq8t0UwX3YFOlK7LAiq', '0', '0', '', NULL, 'admin', '2022-07-21 19:00:23', 'admin', '2022-07-21 19:04:06', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 2);
INSERT INTO `sys_user_post` VALUES (102, 2);
INSERT INTO `sys_user_post` VALUES (102, 3);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (102, 100);
INSERT INTO `sys_user_role` VALUES (102, 102);

SET FOREIGN_KEY_CHECKS = 1;
