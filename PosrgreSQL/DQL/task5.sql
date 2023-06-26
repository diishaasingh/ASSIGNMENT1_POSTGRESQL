-- task 5  (Find the Golfers that entered tournaments in 2022 year. Result should contain 
-- first_name, last_name and tournament type)
select m.firstname as first_name,m.lastname as last_name,t.tour_type as tournament_type
from member as m 
join tournament_entry as te on m.memberid=te.memberid
join tournament as t on te.tourid=t.tourid
where t.tour_type='Gold' AND te.year=2022;