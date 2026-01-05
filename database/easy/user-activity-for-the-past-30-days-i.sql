select activity_date as day , count(DISTINCT user_id) as active_users
from Activity
where activity_date <= "2019-07-27"
and activity_date > "2019-07-27" - INTERVAL 30 DAY
group by activity_date
order by activity_date asc