-- 查询数据

-- 基本查询

-- 查询students表中所有数据
SELECT * FROM students;

-- 查询classes表中所有数据
SELECT * FROM classes;

-- 计算100+200
SELECT 100+200;

-- 条件查询

-- 按条件查询students
SELECT * FROM students WHERE score >= 80;

-- 按AND条件查询students
SELECT * FROM students WHERE score >= 80 AND gender = "M";

-- 按 OR 条件查询studetns
SELECT * FROM students WHERE score >= 80 OR gender = "M";

-- 按 NOT 条件查询students
SELECT * FROM students WHERE NOT class_id = 2;
SELECT * FROM students WHERE class_id <> 2;

-- 按多个条件查询students
SELECT * FROM students WHERE (score < 80 OR score > 90) AND gender = "M";

-- 按多个条件查询LIKE判断 %表示任意字符
SELECT * FROM students WHERE name LIKE "%ab%";

-- 查询分数在60-90分之间的学生
SELECT * FROM students WHERE score >= 60 AND score <= 90;
SELECT * FROM students WHERE score BETWEEN 60 AND 90;

-- 投影查询
-- SELECT 列1, 列2, 列3 FROM ...
SELECT id, score, name FROM students;

-- SELECT 列1 别名1, 列2 别名2, 列3 别名3 FROM

-- 使用投影查询，并将列名重命名：
SELECT id, score points, name FROM students;

-- 使用投影查询+WHERE条件：
SELECT id, score points, name FROM students WHERE gender = 'M';

-- 排序

-- 按score从低到高
SELECT id, name, gender, score FROM students ORDER BY score;

-- 按score从高到低
SELECT id, name, gender, score FROM students ORDER BY score DESC;

-- 继续排序
SELECT id, name, gender, score FROM students ORDER BY score DESC, gender;

-- 默认排序是ASC
-- ORDER BY score ASC = ORDER BY score

-- 带 WHERE 条件的 ORDER BY
SELECT id, name, gender, score
FROM students
WHERE class_id = 1
ORDER BY score DESC;

-- 分页查询

-- 查询第一页
SELECT id, name, gender, score
FROM students
-- WHERE 
ORDER BY score DESC
LIMIT 3 OFFSET 0;

-- OFFSET 简写
SELECT id, name, gender, score
FROM students
ORDER BY score DESC
LIMIT 3;

-- OFFSET 简写2
SELECT id, name, gender, score
FROM students
ORDER BY score DESC
LIMIT 15 OFFSET 30;

SELECT id, name, gender, score
FROM students
ORDER BY score DESC
LIMIT 30, 15;

-- 聚合查询
SELECT COUNT(*) FROM students;

-- 使用聚合查询
SELECT COUNT(*) boys FROM students WHERE gender = "M";

-- 聚合函数
-- SUM() AVG() MIN() MAX()

-- 使用聚合查询计算男生平均成绩
SELECT AVG(score) average FROM students WHERE gender = "M";

-- 分组
SELECT COUNT(*) FROM students GROUP BY class_id;

-- 按class_id 分组
SELECT class_id, COUNT(*) num FROM students GROUP BY class_id, gender;


-- 多表查询
SELECT * FROM students, classes;

-- set alias
SELECT
	students.id sid,
	students.name,
	students.gender,
	students.score,
	classes.id cid,
	classes.name cname
FROM students, classes;

-- 子表别名
SELECT
	s.id sid,
	s.name,
	s.gender,
	s.score,
	c.id cid,
	c.name cname
FROM students s, classes c;

-- 连接查询
-- 选出所有学生
SELECT s.id, s.name, s.class_id, s.gender, s.score FROM students s;

-- 选出所有学生，同时返回班级名称
SELECT 
	s.id, 
	s.name, 
	s.class_id, 
	s.gender, 
	s.score 
FROM students s
INNER JOIN classes c
ON s.class_id = c.id;
