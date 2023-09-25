1148. Article Views I

select distinct author_id as id
#distinct 取唯一值;as 別名,可以是表格別名或欄位別名
from Views
where author_id = viewer_id
order by id ASC

1378. Replace Employee ID With The Unique Identifier

Table: Employees

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.

Table: EmployeeUNI

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.

elect EmployeeUNI.unique_id, Employees.name
from Employees
left join EmployeeUNI on EmployeeUNI.id=Employees.id
#寫對,但是要怎麼選擇Left or Right??
#而且我用from EmployeeUNI,會顯示Runtime Error Not unique table/alias: 'EmployeeUNI'

Output: 
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+
