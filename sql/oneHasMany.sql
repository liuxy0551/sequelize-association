/**
 * 一对多
 * 一个省份 (Province) 有多个市 (City) 
 */

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Province
-- ----------------------------
DROP TABLE IF EXISTS `Province`;
CREATE TABLE `Province` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '省份表 id',
  `name` varchar(100) COMMENT '名字',
  `isDeleted` tinyint(1) DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createdTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='省份表';

INSERT INTO Province (name) VALUES ('江苏');
INSERT INTO Province (name) VALUES ('浙江');
INSERT INTO Province (name) VALUES ('安徽');

-- ----------------------------
-- Table structure for City
-- ----------------------------
DROP TABLE IF EXISTS `City`;
CREATE TABLE `City` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '城市表 id',
  `provinceId` int COMMENT '省份表 id',
  `name` varchar(100) COMMENT '名字',
  `isDeleted` tinyint(1) DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createdTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='城市表';

INSERT INTO City (provinceId, name) VALUES (1, '南京');
INSERT INTO City (provinceId, name) VALUES (1, '苏州');
INSERT INTO City (provinceId, name) VALUES (2, '杭州');
INSERT INTO City (provinceId, name) VALUES (2, '宁波');
INSERT INTO City (provinceId, name) VALUES (2, '温州');
INSERT INTO City (provinceId, name) VALUES (3, '合肥');
INSERT INTO City (provinceId, name) VALUES (3, '芜湖');
INSERT INTO City (provinceId, name) VALUES (3, '阜阳');


SET FOREIGN_KEY_CHECKS = 1;
