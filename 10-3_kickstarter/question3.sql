-- 3. Select the titles of all projects that have met their funding goal.

SELECT title, SUM(pledges.amount) AS `total_amount_pledged`
  FROM projects 
  JOIN pledges
  ON projects.id = pledges.project_id
  WHERE pledges.amount >= projects.funding_goal
  GROUP BY projects.id
;

