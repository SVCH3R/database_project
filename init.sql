-- DROP SCHEMA climblab cascade;

CREATE SCHEMA climblab;

CREATE TABLE climblab.Clients (
  client_id SERIAL PRIMARY KEY,
  client_fullname VARCHAR(255) NOT NULL,
  client_birthdate DATE NOT NULL,
  client_contacts VARCHAR(255) NOT NULL
);

CREATE TABLE climblab.Staff (
  staff_id SERIAL PRIMARY KEY,
  staff_job VARCHAR(255) NOT NULL,
  staff_frame VARCHAR(255) NOT NULL,
  staff_salary_per_frame INTEGER NOT NULL,
  staff_fullname VARCHAR(255) NOT NULL,
  staff_contacts VARCHAR(255) NOT NULL
);

CREATE TABLE climblab.Equipment (
  equip_id SERIAL PRIMARY KEY,
  equip_name VARCHAR(255) NOT NULL
);

CREATE TABLE climblab.Abonements (
  abon_id SERIAL PRIMARY KEY,
  client_id INTEGER REFERENCES climblab.Clients(client_id),
  abon_price INTEGER NOT NULL,
  abon_start_time TIMESTAMP NOT NULL,
  abon_end_time TIMESTAMP NOT NULL
);

CREATE TABLE climblab.Orders (
  order_id SERIAL PRIMARY KEY,
  staff_id INTEGER REFERENCES climblab.Staff(staff_id),
  order_time TIMESTAMP NOT NULL,
  order_price INTEGER NOT NULL
);

CREATE TABLE climblab.Sessions_ (
  session_id SERIAL PRIMARY KEY,
  abon_id SERIAL REFERENCES climblab.Abonements(abon_id),
  session_date DATE NOT NULL,
  session_start_time TIME NOT NULL,
  session_end_time TIME NOT NULL,
  staff_id SERIAL REFERENCES climblab.Staff(staff_id),
  session_cost INTEGER NOT NULL
);

CREATE TABLE climblab.Sessions_x_Equipment (
  session_id INTEGER REFERENCES climblab.Sessions_(session_id),
  equip_id INTEGER REFERENCES climblab.Equipment(equip_id)
);
