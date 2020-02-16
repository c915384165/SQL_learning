-- 如果 test 数据库不存在，就创建 test 数据库：
CREATE DATABASE IF NOT EXISTS test;

-- 切换到person数据库
USE test;

-- 删除classes表和students表（如果存在）：
DROP TABLE IF EXISTS person;

-- 创建 person 表：
CREATE TABLE person (
    id BIGINT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 插入 person 记录：

INSERT INTO person(id, LastName, FirstName, Address, City)
VALUES
  (1, "Adams", "John", "Oxford Street", "London"),
  (2, "Bush", "George", "Fifth Avenue", "New York"),
  (3, "Carter", "Thomas", "Changan Street", "Beijing");

-- OK:
SELECT 'ok' as 'result:';

