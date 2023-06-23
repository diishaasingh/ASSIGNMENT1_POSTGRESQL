create table tournament_entry (
  memberid INT,
  tourid INT,
  year INT,
  FOREIGN KEY (memberid) REFERENCES member (memberid),
  FOREIGN KEY (tourid) REFERENCES tournament (tourid)
);