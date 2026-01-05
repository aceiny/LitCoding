select COALESCE(
    (
        select num 
        from MyNumbers
        group by num
        HAVING count(*) = 1
        order by num DESC
        limit 1
    )
    ,
    null
) as num