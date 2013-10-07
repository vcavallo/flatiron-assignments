INSERT INTO users (name) VALUES 
  ("Vinney"), 
  ("Mooskers"),
  ("Jai-Lee")
;

INSERT INTO quizzes (name) VALUES
  ("gittin_it"),
  ("ruby_awakening")
;

INSERT INTO questions (content, quiz_id) VALUES
-- (id, content, quiz_id)
  ("What is the approximate age of the Earth (in years)?", 1),
  ("How many continents are there?", 1),
  ("What time is it?", 1),
  ("Who are you?", 1),
  ("How many other questions are on this quiz, aside from this one?", 1),
  ("What time is blue?", 2),
  ("Why am quiz?", 2),
  ("Who wrote this quiz?", 2),
  ("How many words are in this sentence?", 2),
  ("How many other questions are on this quiz, aside from this one?", 2)
;

INSERT INTO choices (content, correct, question_id) VALUES
  ("4,500,000,000", 1, 1),
  ("0", 0, 1),
  ("10,000", 0, 1),
  ("-20", 0, 1),
  -- begin question 2, quiz 1
  ("1", 0, 2),
  ("100", 0, 2),
  ("7", 1, 2),
  ("12", 0, 2),
  -- begin question 3, quiz 1
  ("soon", 0, 3),
  ("later", 0, 3),
  ("now", 1, 3),
  ("then", 0, 3),
  -- begin question 4, quiz 1
  ("Me , silly!", 1, 4),
  ("Nobody.", 0, 4),
  ("You.", 0, 4),
  ("Them.", 0, 4),
  -- begin question 5, quiz 1
  ("1", 0, 5),
  ("2", 0, 5),
  ("3", 0, 5),
  ("4", 1, 5),
  -- begin question 1, quiz 2
  ("blue", 0, 6),
  ("eleven", 0, 6),
  ("elephant", 0, 6),
  ("wtf?", 1, 6),
  -- begin question 2, quiz 2
  ("wtf?", 1, 7),
  ("twelve", 0, 7),
  ("hippo", 0, 7),
  ("twelve hours in a half a day", 0, 7),
  -- begin question 3, quiz 2
  ("kitchen", 0, 8),
  ("a maniac", 1, 8),
  ("abe lincoln", 0, 8),
  ("a different hippo", 0, 8),
  -- begin question 4, quiz 2
  ("7", 1, 9),
  ("8", 0, 9),
  ("0", 0, 9),
  ("-5", 0, 9),
  -- begin question 5, quiz 2
  ("1", 0, 10),
  ("2", 0, 10),
  ("3", 0, 10),
  ("4", 1, 10)
;







