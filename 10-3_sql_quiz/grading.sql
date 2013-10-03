
-- IF choices-correct = 1 MATCH choices-1 WITH answers-choice_id. 

-- grade quiz 1 for user 1
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 1
  AND choices.question_id < 6
  GROUP BY user_id
;

-- grade quiz 2 for user 1
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 1
  AND choices.question_id > 5
  GROUP BY user_id
;

-- grade quiz 1 for user 2
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 2
  AND choices.question_id < 6
  GROUP BY user_id
;

-- grade quiz 2 for user 2
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 2
  AND choices.question_id > 5
  GROUP BY user_id
;

-- grade quiz 1 for user 3
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 3
  AND choices.question_id < 6
  GROUP BY user_id
;

-- grade quiz 2 for user 3
SELECT COUNT(*) FROM answers JOIN choices 
  ON answers.choice_id = choices.id 
  WHERE correct = 1
  AND user_id = 3
  AND choices.question_id > 5
  GROUP BY user_id
;