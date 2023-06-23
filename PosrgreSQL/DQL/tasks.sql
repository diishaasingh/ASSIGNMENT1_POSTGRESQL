-- Task 2(Update the members phone with manager’s phone number if the member’s phone number is NULL. )

update member set phone = (
        select phone from member 
        WHERE manager.memberid = m.coachid
    )
WHERE phone is NULL
-- task 3(Find all the members with their membership types and coach name, query should return 
--member_first_name, member_last_name, membership_type, coach_name and results should be sorted 
--by member_first_name in descending order.)
select m.firstname as member_first_name, m.lastname as member_last_name,
       mt.type as membership_type, mc.firstname as coach_name
from member as m
join membertype as mt on m.membertypeid = mt.id
left join member as mc on m.coachid = mc.memberid
order by member_first_name DESC;

-- Task 4
select * from tournament where is_open=true;

-- task 5  (Find the Golfers that entered tournaments in 2022 year. Result should contain 
-- first_name, last_name and tournament type)
select m.firstname as first_name,m.lastname as last_name,t.tour_type as tournament_type
from member as m 
join tournament_entry as te on m.memberid=te.memberid
join tournament as t on te.tourid=t.tourid
where t.tour_type='Gold' AND te.year=2022;

-- task 6(Find the membership wise count of members, result should return membership_name and member_count )
select mt.type as membership_name,
count(m.memberid)as member_count from member as m
join membertype as mt on m.membertypeid=mt.id
group by mt.type;

-- Task 7(Return team wise members count only if the member count is greater than 5.)

select t.teamname, count(*) as member_count from team as t join member as m
on t.teamid = m.teamid group by t.teamname having count(*)>5;