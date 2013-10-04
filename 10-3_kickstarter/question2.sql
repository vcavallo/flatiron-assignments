-- 2. Select the user name, age, and pledge amount for all pledges.

SELECT name, age, pledges.amount 
  FROM users 
  JOIN pledges 
  ON pledges.user_id = users.id 
  ORDER BY name
;