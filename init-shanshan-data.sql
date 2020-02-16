-- 如果 test 数据库不存在，就创建 test 数据库：
CREATE DATABASE IF NOT EXISTS shanshan;

-- 切换到person数据库
USE shanshan;

-- 删除classes表和students表（如果存在）：
DROP TABLE IF EXISTS shanshan;

-- 创建 person 表：
CREATE TABLE shanshan (
    `编号` BIGINT NOT NULL AUTO_INCREMENT,
	`发现单位` VARCHAR(100) NOT NULL DEFAULT '',
	`日期` DATE,
	`孕妇名字` VARCHAR(100) NOT NULL,
	`丈夫名字` VARCHAR(100) DEFAULT '',
	`地址` VARCHAR(200) DEFAULT '',
	`电话` VARCHAR(50) DEFAULT '',
	`高危因素` VARCHAR(100) DEFAULT '',
	`风险等级` VARCHAR(10) DEFAULT '',
	`分娩日期` DATE,
	`分娩方式` VARCHAR(100) DEFAULT '',
	`分娩地点` VARCHAR(100) DEFAULT '',
	`分娩孕周` INT(100) DEFAULT 0,
	`风险颜色2` VARCHAR(100) DEFAULT '',
	PRIMARY KEY (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 插入 person 记录：

-- INSERT INTO `采购` (id, LastName, FirstName, Address, City)
-- VALUES
--   (1, "Adams", "John", "Oxford Street", "London"),
--   (2, "Bush", "George", "Fifth Avenue", "New York"),
--   (3, "Carter", "Thomas", "Changan Street", "Beijing");

-- OK:
SELECT 'ok' as 'result:';
