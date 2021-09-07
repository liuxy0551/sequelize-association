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
  `id` int NOT NULL AUTO_INCREMENT COMMENT '演员表 id',
  `name` varchar(100) NULL COMMENT '演员名',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT = '演员表';

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
  `id` int NOT NULL AUTO_INCREMENT COMMENT '电影表 id',
  `name` varchar(100) NULL COMMENT '电影名',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT = '电影表';

INSERT INTO Movie (name) VALUES ('一个人的武林');
INSERT INTO Movie (name) VALUES ('叶问');
INSERT INTO Movie (name) VALUES ('测试电影');

-- ----------------------------
-- Table structure for MovieActor
-- ----------------------------
DROP TABLE IF EXISTS `MovieActor`;
CREATE TABLE `MovieActor` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '电影演员表 id',
  `movieId` int NOT NULL COMMENT '电影表 id',
  `actorId` int NOT NULL COMMENT '演员表 id',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 0 未删除，1 已删除',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT = '电影演员表';

INSERT INTO MovieActor (movieId, actorId) VALUES (21, 41);
INSERT INTO MovieActor (movieId, actorId) VALUES (21, 42);
INSERT INTO MovieActor (movieId, actorId) VALUES (22, 41);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 43);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 44);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 45);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 46);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 47);
INSERT INTO MovieActor (movieId, actorId) VALUES (23, 48);

SET FOREIGN_KEY_CHECKS = 1;
