-- task 3(Find all the members with their membership types and coach name, query should return 
--member_first_name, member_last_name, membership_type, coach_name and results should be sorted 
--by member_first_name in descending order.)
select m.firstname as member_first_name, m.lastname as member_last_name,
       mt.type as membership_type, mc.firstname as coach_name
from member as m
join membertype as mt on m.membertypeid = mt.id
left join member as mc on m.coachid = mc.memberid
order by member_first_name DESC;
