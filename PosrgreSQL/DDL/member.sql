CREATE TABLE member (
  memberid INT PRIMARY KEY,
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  membertypeid INT,
  joindate DATE,
  coachid INT,
  teamid INT,
  gender VARCHAR(10),
  phone int,
  FOREIGN KEY (teamid) REFERENCES team (teamid),
  FOREIGN KEY (membertypeid) REFERENCES membertype (id),
  FOREIGN KEY (coachid) REFERENCES member (memberid)
);