/**
 * 一对一
 * 一个中国公民 (Chinese) 只有一个身份证号 (IDNumber) 
 */

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Chinese
-- ----------------------------
DROP TABLE IF EXISTS `Chinese`;
CREATE TABLE `Chinese` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '中国公民表 id',
  `IDNumberId` int COMMENT '身份证号码表 id',
  `name` varchar(100) COMMENT '名字',
  `isDeleted` tinyint(1) DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='中国公民表';

INSERT INTO Chinese (IDNumberId, name) VALUES (3, '张三');
INSERT INTO Chinese (IDNumberId, name) VALUES (1, '李四');
INSERT INTO Chinese (IDNumberId, name) VALUES (2, '王五');

-- ----------------------------
-- Table structure for IDNumber
-- ----------------------------
DROP TABLE IF EXISTS `IDNumber`;
CREATE TABLE `IDNumber` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '身份证号码表 id',
  `number` varchar(100) COMMENT '号码',
  `address` varchar(100) COMMENT '发证机关',
  `isDeleted` tinyint(1) DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='身份证号码表';

INSERT INTO IDNumber (number, address) VALUES ('211011198204071819', '杭州市公安局');
INSERT INTO IDNumber (number, address) VALUES ('211011198204071818', '杭州市公安局');
INSERT INTO IDNumber (number, address) VALUES ('211011198204071817', '杭州市公安局');


SET FOREIGN_KEY_CHECKS = 1;
