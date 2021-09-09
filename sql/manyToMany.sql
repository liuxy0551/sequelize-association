/**
 * 多对多
 */

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Actor
-- ----------------------------
DROP TABLE IF EXISTS `Actor`;
CREATE TABLE `Actor` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '演员表 id',
  `name` varchar(100) DEFAULT NULL COMMENT '演员名',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='演员表';

INSERT INTO Actor (name) VALUES ('甄子丹');
INSERT INTO Actor (name) VALUES ('王宝强');
INSERT INTO Actor (name) VALUES ('测试演员1');
INSERT INTO Actor (name) VALUES ('测试演员2');
INSERT INTO Actor (name) VALUES ('测试演员3');
INSERT INTO Actor (name) VALUES ('测试演员4');
INSERT INTO Actor (name) VALUES ('测试演员5');
INSERT INTO Actor (name) VALUES ('测试演员6');

-- ----------------------------
-- Table structure for Movie
-- ----------------------------
DROP TABLE IF EXISTS `Movie`;
CREATE TABLE `Movie` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '电影表 id',
  `name` varchar(100) DEFAULT NULL COMMENT '电影名',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='电影表';

INSERT INTO Movie (name) VALUES ('一个人的武林');
INSERT INTO Movie (name) VALUES ('叶问');
INSERT INTO Movie (name) VALUES ('测试电影');

-- ----------------------------
-- Table structure for MovieActor
-- ----------------------------
DROP TABLE IF EXISTS `MovieActor`;
CREATE TABLE `MovieActor` (
  `id` int PRIMARY KEY AUTO_INCREMENT COMMENT '电影演员表 id',
  `movieId` int NOT NULL COMMENT '电影表 id',
  `actorId` int NOT NULL COMMENT '演员表 id',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB COMMENT='电影演员表';

INSERT INTO MovieActor (movieId, actorId) VALUES (1, 1);
INSERT INTO MovieActor (movieId, actorId) VALUES (1, 2);
INSERT INTO MovieActor (movieId, actorId) VALUES (2, 1);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 3);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 4);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 5);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 6);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 7);
INSERT INTO MovieActor (movieId, actorId) VALUES (3, 8);

SET FOREIGN_KEY_CHECKS = 1;
