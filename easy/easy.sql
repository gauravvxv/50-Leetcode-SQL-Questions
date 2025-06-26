-- SELECT

-- 1. Recyclable and Low Fat Products
   SELECT product_id FROM Products WHERE low_fats = 'Y' AND recyclable = 'Y';

-- 2. Find Customer Referee
   SELECT name FROM Customer WHERE referee_id !=2 OR referee_id IS null;

-- 3. Big Countries
  SELECT name, population, area FROM World WHERE area >= 3000000 OR population >= 25000000;

-- 4. Article Views 1
  SELECT DISTINCT  author_id AS id FROM Views WHERE author_id = viewer_id ORDER BY author_id;

-- 5. Invalid Tweets
  SELECT tweet_id FROM Tweets WHERE LENGTH(content) > 15;


--   BASIC JOINS

--  1. Replace Employee ID with The Unique Identifer
  SELECT EmployeeUNI.unique_id, Employees.name FROM Employees LEFT JOIN EmployeeUNI ON EmployeeUNI.id = Employees.id;

--  2. Product Sales Analysis 1
  SELECT p.product_name, s.year, s.price FROM Product p INNER JOIN Sales s ON s.product_id = p.product_id;