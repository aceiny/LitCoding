SELECT 
    score ,
    (
        select count(distinct score)
        from Scores s2 
        where s1.score < s2.score 
    ) + 1 as "rank"
FROM Scores s1 
ORDER BY score DESC;