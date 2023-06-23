--insertion in tournament table
insert into tournament(tourid,name,tour_type,country,is_open)
values
(1,'tour1','A','India',true),
(2,'tour2','B','Britain',false),
(3,'tour3','C','Japan',true),
(4,'tour4','D','Australia',false),
(5,'tour5','E','Canada',true)
update tournament set tour_type='Gold' where country='India'
update tournament set tour_type='Silver' where country='Britain'
update tournament set tour_type='Gold' where country='Japan'
update tournament set tour_type='Bronze' where country='Australia'
update tournament set tour_type='Gold' where country='Canada'

--insertio in membertype table
insert into membertype 
values (1, 'Basic', 500),
       (2, 'Premium',1000),
       (3, 'Basic', 800),
	   (4, 'Premium',5000);
insert into membertype values(5,'Premium',1500)

--insertion in member table
insert into member (memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone)
VALUES (101, 'Disha', 'Singh', 1, '2022-08-14', NULL, 1, 'Female',637696),
       (102, 'Avisha', 'Jam', 2, '2022-11-05', NULL, 2, 'Female',223678),
       (103, 'Mike', 'Johnson', 1, '2022-03-01', 101, 1, 'Male',4236723),
       (104, 'Emily', 'Brown', 3, '2022-04-01', NULL, 3, 'Female',9582267),
       (105, 'Myke', 'Tyson', 2, '2022-05-01', 102, 2, 'Male',8905644)

insert into member (memberid, firstname, lastname, membertypeid, joindate, coachid, teamid, gender,phone)
VALUES (106, 'Michael', 'Jackson', 1, '2022-06-14', NULL, 1, 'Male',637696),
(107, 'Mil', 'Jackson', 1, '2022-06-14', NULL, 1, 'Male',6376543),
(108, 'Mil', 'Wafer', 1, '2022-06-14', NULL, 1, 'Male',6367543)
alter table member add coachname varchar(255)
update member as m set coachname=(
select firstname from member n where m.coachid=n.memberid
)
where m.coachid is not null
--insertion in team table
insert into team (teamid, teamname, manager)
VALUES (1, 'A', 101),
       (2, 'B', 102),
       (3, 'C', 103),
	   (4, 'D', 105),
	   (5, 'E', 104);

--insertion in tournament_entry table
INSERT INTO tournament_entry (memberid, tourid, year)
VALUES (101, 1, 2022), 
       (102, 1, 2022),
       (103, 2, 2022),
       (104, 2, 2022),
       (105, 3, 2023)
update tournament_entry set year=2021 where tourid=2;