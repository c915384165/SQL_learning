-- 管理数据库
 

-- DATABASES

-- 列出数据库；
SHOW DATABASES;

-- 切换数据库
USE test;

-- 创建数据库
CREATE DATABASE database_name;

-- 删除一个数据库
DROP DATABASE database_name;


-- 表
 
-- 列出表；
SHOW TABLES;
 -- 查看表结构
DESC database_name;
-- 查看创建表的SQL语句
SHOW CREATE TABLE database_name;
-- 删除表
DROP TABLE database_name;


-- 修改表

-- students表新增一列birth
ALTER TABLE students 
ADD COLUMN birth VARCHAR(10) NOT NULL;

-- 修改students表
-- 列名 birth -> birthday，列数据类型 -> VARCHAR(20) NOT NULL
ALTER TABLE students 
CHANGE COLUMN birth birthday VARCHAR(20) NOT NULL;

-- 修改students表
-- 删除列 -> birthday
ALTER TABLE students 
DROP COLUMN birthday;

-- 插入或替换
-- todo
-- 如果我们希望插入一条新记录（INSERT），但如果记录已经存在，
-- 就先删除原记录，再插入新记录。
