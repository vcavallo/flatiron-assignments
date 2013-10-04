-- 5. Select the category names, and pledge amounts of all pledges in the music category.

SELECT category, pledges.amount
  FROM projects 
  JOIN pledges
  ON projects.id = pledges.user_id
  WHERE category = "music"
;