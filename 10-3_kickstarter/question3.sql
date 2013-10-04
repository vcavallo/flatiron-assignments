-- 3. Select the titles of all projects that have met their funding goal.

SELECT projects.title
  FROM pledges 
  JOIN projects 
  ON pledges.project_id = projects.id 
;