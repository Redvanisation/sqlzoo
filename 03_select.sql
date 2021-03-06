--Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner FROM nobel
WHERE yr = 1950

--Show who won the 1962 prize for Literature.
SELECT winner FROM nobel
WHERE yr = 1962 AND subject = 'Literature'

--Show the year and subject that won 'Albert Einstein' his prize.
select yr, subject from nobel
where winner = 'Albert Einstein' 

--Give the name of the 'Peace' winners since the year 2000, including 2000.
select winner from nobel 
where subject = 'Peace' and yr >= 2000

--Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
select * from nobel 
where subject = 'Literature' and yr between 1980 and 1989 

--SELECT * FROM nobel 
WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter', 'Barack Obama')

--Show the winners with first name John
select winner from nobel
where winner like 'John%'

--Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
select * from nobel
where subject = 'Physics' and yr = 1980 or subject = 'Chemistry' and yr = 1984

--Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
select * from nobel
where yr = 1980 and subject != 'Chemistry' and yr = 1980 and subject != 'Medicine'

/*Show year, subject, and name of people who won a 'Medicine' 
prize in an early year (before 1910, not including 1910) 
together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
*/
select * from nobel 
where subject = 'Medicine'  and yr < 1910 or subject = 'Literature'  and yr >= 2004

--Find all details of the prize won by PETER GRÜNBERG
select * from nobel
where winner like '%PETER GR%'

--You can't put a single quote in a quote string directly. You can use two single quotes within a quoted string.
select * from nobel
where winner like 'EUGENE O''NEILL'

--List the winners, year and subject where the winner starts with Sir. 
--Show the the most recent first, then by name order
select winner, yr, subject from nobel
where winner like 'Sir%' order by yr desc

--Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject FROM nobel
WHERE yr=1984 
ORDER BY subject IN('Chemistry','Physics'), subject, winner


