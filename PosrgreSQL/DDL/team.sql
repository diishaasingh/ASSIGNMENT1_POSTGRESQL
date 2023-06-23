create table team (
  teamid INT primary key,
  teamname VARCHAR(255),
  manager INT,
  foreign key (manager) references member (memberid)
);