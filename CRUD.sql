-- CRUD: Create, Retrieve, Update, Delete.

-- * INSERT: 插入新纪录
-- * UPDATE: 更新纪录
-- * DELETE: 删除记录

-- 添加一条新记录
INSERT INTO students (class_id, name, gender, score) 
VALUES (2, '大牛', 'M', 80);


-- 一次性添加多条新记录
INSERT INTO students (class_id, name, gender, score) 
VALUES
  (1, '大宝', 'M', 87),
  (2, '二宝', 'M', 81);

-- 更新id=1的记录
UPDATE students SET name='大牛', score=66 WHERE id=1;
-- 查询并观察结果:
SELECT * FROM students WHERE id=1;

-- 更新id=5,6,7的记录
UPDATE students SET name='小牛', score=77 WHERE id>=5 AND id<=7;
-- 查询并观察结果:
SELECT * FROM students;

-- 更新score<80的记录
UPDATE students SET score=score+10 WHERE score<80;
-- 查询并观察结果:
SELECT * FROM students;



-- 删除id=1的记录
DELETE FROM students WHERE id=1;
-- 查询并观察结果:
SELECT * FROM students;

-- 删除id=5,6,7的记录
DELETE FROM students WHERE id>=5 AND id<=7;
-- 查询并观察结果:
SELECT * FROM students;


-- 直接替换：
REPLACE INTO students (id, class_id, name, gender, score) 
VALUES (1, 1, '小明', 'F', 99);