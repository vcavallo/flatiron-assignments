INSERT INTO users (name, age) VALUES 
  ("Vinney", 28),
  ("Jai-Lee", 27),
  ("Erica", 34),
  ("Jessica", 37),
  ("Mike", 36),
  ("Sandro", 34),
  ("Anthony", 62),
  ("Helen", 59),
  ("Mooskers", 5),
  ("Dante", 2),
  ("Andrew", 1),
  ("Ian", 29),
  ("Nicholas", 16),
  ("David", 42),
  ("Maggie", 11),
  ("Chuck", 38),
  ("Bob", 50),
  ("Jill", 81),
  ("Walt", 52),
  ("Heisenberg", 52)
;
-- music, charity, books
INSERT INTO projects (title, category, funding_goal, start_date, end_date) VALUES
  ("First Book", "books", 200, "2013-10-03", "2013-11-03"),
  ("First Album", "music", 400, "2013-09-01", "2013-12-30"),
  ("Give to the Whoever", "charity", 1000, "2012-01-01", "2014-01-01"),
  ("Lenny Kravitz Goes to Hell", "music", 9000, "2012-02-17", "2020-05-22"),
  ("How to Not Die", "books", 2000, "2013-10-03", "2014-01-01"),
  ("Steal From the Rich", "charity", 10000, "2012-11-01", "2015-11-01"),
  ("Book Choy: The Bok Choy CookBok", "books", 200, "1776-07-04", "2050-12-25"),
  ("Songs to Make You Poop", "music", 1200, "2012-04-29", "2014-04-29"),
  ("Days of Coolness", "music", 800, "2013-03-27", "2014-02-15"),
  ("Sexaholic Salamanders", "charity", 5000, "2013-10-03", "2015-08-23")
;

INSERT INTO pledges (amount, user_id, project_id) VALUES
  (20, 1, 2),  
  (10, 2, 1),  
  (100, 3, 6),  
  (25, 9, 3),  
  (25, 10, 6),  
  (25, 8, 7),  
  (40, 7, 7),  
  (30, 6, 7),  
  (2, 4, 7),  
  (10, 5, 8),  
  (100, 20, 5),  
  (250, 20, 5), 
  (20, 20, 4), 
  (25, 16, 8),  
  (28, 17, 8),  
  (30, 18, 4),  
  (65, 19, 4),  
  (265, 20, 6),  
  (55, 11, 4),  
  (25, 15, 4),  
  (25, 13, 4),  
  (5, 12, 4),  
  (2, 14, 4),  
  (5, 13, 1),  
  (25, 1, 1),  
  (25, 1, 2),  
  (10, 10, 3),  
  (100, 20, 5),  
  (300, 20, 5),
  (75, 17, 6),
  (4, 3, 6)
;