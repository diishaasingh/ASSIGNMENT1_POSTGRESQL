create table tournament(
  tourid INT primary key,
  name varchar(255),
  tour_type varchar(255),
  country varchar(255),
  is_open BOOLEAN --here boolean can have values 0 and 1 also
);