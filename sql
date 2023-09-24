1148. Article Views I

select distinct author_id as id
#distinct 取唯一值;as 別名,可以是表格別名或欄位別名
from Views
where author_id = viewer_id
order by id ASC
