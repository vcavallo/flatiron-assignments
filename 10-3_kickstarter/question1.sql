-- 1. Select the titles of all projects and their pledge amounts.

SELECT title, pledges.amount 
  FROM projects 
  JOIN pledges 
  ON pledges.project_id = projects.id 
  ORDER BY projects.id
;