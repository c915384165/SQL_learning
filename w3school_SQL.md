# select

## 语法
SELECT 语句用于从表中选取数据。
结果被存储在一个结果表中（称为结果集）。
```SQL
SELECT 列名称 FROM 表名称;
SELECT * FROM 表名称;
```
## 实例
```
SELECT LastName,FirstName FROM Persons;
SELECT * FROM Persons;
```

# SELECT DISTINCT
在表中，可能会包含重复值。
这并不成问题，不过，有时您也许希望仅仅列出不同（distinct）的值。
关键词 DISTINCT 用于返回唯一不同的值。
## 语法
```
SELECT DISTINCT 列名称 FROM 表名称;
```
## 实例
```
SELECT DISTINCT Company FROM Orders;
```

# WHERE
如需有条件地从表中选取数据，可将 WHERE 子句添加到 SELECT 语句。

## 语法
```
SELECT 列名称 FROM 表名称 WHERE 列 运算符 值
```
## 实例
```sql
SELECT * FROM Persons WHERE City='Beijing'
-- 注意引号
SELECT * FROM Persons WHERE FirstName='Bush'
SELECT * FROM Persons WHERE Year>1965
```


# AND & OR
AND 和 OR 运算符用于基于一个以上的条件对记录进行过滤。

AND 和 OR 可在 WHERE 子语句中把两个或多个条件结合起来。

* 如果第一个条件和第二个条件都成立，则 AND 运算符显示一条记录。
* 如果第一个条件和第二个条件中只要有一个成立，则 OR 运算符显示一条记录。

## 语法
```

```
## 实例
```
SELECT * FROM Persons WHERE FirstName='Thomas' AND LastName='Carter'
SELECT * FROM Persons WHERE firstname='Thomas' OR lastname='Carter'
SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William')
AND LastName='Carter'
```


# ORDER BY

## ORDER BY 语句
ORDER BY 语句用于根据指定的列对结果集进行排序。

ORDER BY 语句默认按照升序对记录进行排序。

如果您希望按照降序对记录进行排序，可以使用 `DESC` 关键字。
## 语法
```

```
## 实例
```
SELECT Company, OrderNumber FROM Orders ORDER BY Company
SELECT Company, OrderNumber FROM Orders ORDER BY Company, OrderNumber
SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC
SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC
```


# INSERT INTO
INSERT INTO 语句用于向表格中插入新的行。

## 语法
```
INSERT INTO 表名称 VALUES (值1, 值2,....)
INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)
```
## 实例
```
INSERT INTO Persons VALUES ('Gates', 'Bill', 'Xuanwumen 10', 'Beijing')
INSERT INTO Persons (LastName, Address) VALUES ('Wilson', 'Champs-Elysees')
```


# UPDATE

Update 语句用于修改表中的数据。
## 语法
```
UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
```
## 实例
```
UPDATE Person SET FirstName = 'Fred' WHERE LastName = 'Wilson' 
UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing'
WHERE LastName = 'Wilson'
```


# DELETE

DELETE 语句用于删除表中的行。
## 语法
```
DELETE FROM 表名称 WHERE 列名称 = 值
```
## 实例
```
-- 删除某行
DELETE FROM Person WHERE LastName = 'Wilson' 
-- 删除所有行
DELETE FROM table_name
DELETE * FROM table_name
```


# LIMIT
TOP 子句用于规定要返回的记录的数目。

对于拥有数千条记录的大型表来说，TOP 子句是非常有用的。

注释：并非所有的数据库系统都支持 TOP 子句。

## 语法
```
SELECT column_name(s)
FROM table_name
LIMIT number
```
## 实例
```
SELECT *
FROM Persons
LIMIT 5

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
```


# LIKE
LIKE 操作符用于在 WHERE 子句中搜索列中的指定模式。

## 语法
```
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern
```
## 实例
```
SELECT * FROM Persons
WHERE City LIKE 'N%'
SELECT * FROM Persons
WHERE City LIKE '%g'
SELECT * FROM Persons
WHERE City LIKE '%lon%'
```


# 通配符
* %=替代一个或多个字符
* _=仅替代一个字符
* [charlist]=字符列中的任何单一字符
* [^charlist]或者[!charlist]=不在字符列中的任何单一字符

## 语法
```

```
## 实例
```
SELECT * FROM Persons
WHERE City LIKE 'Ne%'
SELECT * FROM Persons
WHERE City LIKE '%lond%'
SELECT * FROM Persons
WHERE FirstName LIKE '_eorge'
SELECT * FROM Persons
WHERE LastName LIKE 'C_r_er'

SELECT * FROM Persons
WHERE City LIKE '[ALN]%'
SELECT * FROM Persons
WHERE City LIKE '[!ALN]%'
```


# IN

IN 操作符允许我们在 WHERE 子句中规定多个值。
## 语法
```
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1,value2,...)
```
## 实例
```
SELECT * FROM Persons
WHERE LastName IN ('Adams','Carter')
```


# BETWEEN 

操作符 BETWEEN ... AND 会选取介于两个值之间的数据范围。这些值可以是数值、文本或者日期。
## 语法
```
SELECT column_name(s)
FROM table_name
WHERE column_name
BETWEEN value1 AND value2
```
## 实例
```
SELECT * FROM Persons
WHERE LastName
BETWEEN 'Adams' AND 'Carter'

SELECT * FROM Persons
WHERE LastName
NOT BETWEEN 'Adams' AND 'Carter'
```


# Alias

通过使用 SQL，可以为列名称和表名称指定别名（Alias）。
## 语法
```
SELECT column_name(s)
FROM table_name
AS alias_name

SELECT column_name AS alias_name
FROM table_name
```
## 实例
```

```


# JOIN
JOIN用于根据两个或多个表中的列之间的关系，从这些表中查询数据。
## Join 和 Key
有时为了得到完整的结果，我们需要从两个或更多的表中获取结果。我们就需要执行 join。

数据库中的表可通过键将彼此联系起来。主键（Primary Key）是一个列，在这个列中的每一行的值都是唯一的。在表中，每个主键的值都是唯一的。
这样做的目的是在不重复每个表中的所有数据的情况下，把表间的数据交叉捆绑在一起。
## 语法
```

```
## 实例
```
SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons, Orders
WHERE Persons.Id_P = Orders.Id_P 

SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
FROM Persons
INNER JOIN Orders
ON Persons.Id_P = Orders.Id_P
ORDER BY Persons.LastName
```


# SQL UNION
UNION 操作符用于合并两个或多个 SELECT 语句的结果集。

请注意，UNION 内部的 SELECT 语句必须拥有相同数量的列。列也必须拥有相似的数据类型。同时，每条 SELECT 语句中的列的顺序必须相同。

## 语法
```
SELECT column_name(s) FROM table_name1
UNION
SELECT column_name(s) FROM table_name2

SELECT column_name(s) FROM table_name1
UNION ALL
SELECT column_name(s) FROM table_name2
```
> 注释：默认地，UNION 操作符选取不同的值。如果允许重复的值，请使用 UNION ALL。

UNION ALL 命令和 UNION 命令几乎是等效的，不过 UNION ALL 命令会列出所有的值。
## 实例
```
SELECT E_Name FROM Employees_China
UNION
SELECT E_Name FROM Employees_USA

SELECT E_Name FROM Employees_China
UNION ALL
SELECT E_Name FROM Employees_USA
```


# 


## 语法
```

```
## 实例
```

```


# 


## 语法
```

```
## 实例
```

```


# 


## 语法
```

```
## 实例
```

```


# 


## 语法
```

```
## 实例
```

```

