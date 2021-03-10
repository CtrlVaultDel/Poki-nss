﻿-- 1) What grades are stored in the database?
-- SELECT grade.Name FROM Grade;

-- 2) What emotions may be associated with a poem?
-- SELECT Emotion.name FROM Emotion;

-- 3) How many poems are in the database?
-- SELECT COUNT(Poem.id) FROM Poem;

-- 4) Sort authors alphabetically by name. What are the names of the top 76 authors?
-- SELECT TOP 76 Author.Name FROM Author ORDER BY Author.Name;

-- 5) Starting with the above query, add the grade of each of the authors.
-- SELECT TOP 76 Author.Name, Grade.Name FROM Author LEFT JOIN Grade ON Author.GradeId = Grade.Id ORDER BY Author.Name;

-- 6) Starting with the above query, add the recorded gender of each of the authors.
-- SELECT TOP 76 Author.Name, Grade.Name, Gender.Name FROM Author LEFT JOIN Grade ON Author.GradeId = Grade.Id LEFT JOIN Gender ON Author.GenderId = Gender.Id ORDER BY Author.Name;

-- 7) What is the total number of words in all poems in the database?
-- SELECT SUM(Poem.WordCount) AS TotalWords FROM Poem;

-- 8) Which poem has the fewest characters?
-- SELECT TOP 1 Poem.Title, Poem.CharCount FROM Poem ORDER BY Poem.CharCount;

-- 9) How many authors are in the third grade?
-- SELECT COUNT(Author.Id) as ThirdGradePoems FROM Author WHERE Author.GradeId = 3;

-- 10) How many authors are in the first, second or third grades?
-- SELECT COUNT(Author.Id) as PoemsFromFirstThruThirdGrade FROM Author WHERE Author.GradeId = 1 OR Author.GradeId = 2 OR Author.GradeId = 3;

-- 11) What is the total number of poems written by fourth graders?
-- SELECT COUNT(Poem.Id) AS FourthGradePoems FROM Poem JOIN Author ON Poem.AuthorId = Author.Id WHERE GradeId = 4;

-- 12) How many poems are there per grade?
-- SELECT COUNT(Poem.Id) as PoemsByGrade FROM Poem JOIN Author ON Poem.AuthorId = Author.Id GROUP BY GradeId;

-- 13) How many authors are in each grade? (Order your results by grade starting with 1st Grade)
-- SELECT Grade.Name as Grade ,COUNT(Author.Id) as NumOfAuthors FROM Author JOIN Grade ON Author.GradeId = Grade.Id GROUP BY Grade.Name

-- 14) What is the title of the poem that has the most words?
-- SELECT TOP 1 Poem.Title, Poem.WordCount FROM Poem ORDER BY Poem.WordCount DESC

-- 15) Which author(s) have the most poems? (Remember authors can have the same name.)
SELECT Author.Id AS AuthorID, Author.Name as AuthorName, COUNT(Poem.Id) as NumOfPoems FROM Author JOIN Poem ON Author.Id = Poem.AuthorId GROUP BY Poem.AuthorId, Author.Name, Author.Id ORDER BY NumOfPoems DESC

-- 16) How many poems have an emotion of sadness?


-- 17) How many poems are not associated with any emotion?


-- 18) Which emotion is associated with the least number of poems?


-- 19) Which grade has the largest number of poems with an emotion of joy?


-- 20) Which gender has the least number of poems with an emotion of fear?