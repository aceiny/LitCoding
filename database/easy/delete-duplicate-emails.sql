delete from Person
where id not in (
    select id from (
        select MIN(id) as id 
        from Person 
        Group by email
    ) as temp
)