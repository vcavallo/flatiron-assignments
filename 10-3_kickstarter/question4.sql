-- 4. Select user names and amounts of all pledges. Order them by the amount.

SELECT amount, users.name
  FROM pledges 
  JOIN users 
  ON pledges.user_id = users.id
  ORDER BY amount DESC
;