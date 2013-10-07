-- 6. Select the category names and the sum total of the pledge amounts 
-- of all the pledges in the book category.

SELECT title, category, SUM(pledges.amount)
  FROM projects 
  JOIN pledges
  ON projects.id = pledges.user_id
  WHERE category = "books"
;

-- not sure why it's only showing one book title. 