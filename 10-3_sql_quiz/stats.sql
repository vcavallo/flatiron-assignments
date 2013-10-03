
-- total correct for user 1
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 1
  GROUP BY user_id
;

-- total correct for user 2
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 2
  GROUP BY user_id
;

-- total correct for user 3
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 3
  GROUP BY user_id
;
