CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE quizzes(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE questions(
  id INTEGER PRIMARY KEY,
  content TEXT,
  quiz_id INTEGER
);

CREATE TABLE choices(
  id INTEGER PRIMARY KEY,
  content TEXT,
  correct INTEGER,
  question_id INTEGER
);

CREATE TABLE answers(
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  question_id INTEGER,
  choice_id INTEGER
);

