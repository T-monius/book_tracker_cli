CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(50) NOT NULL,
  password varchar(50)
);

CREATE TABLE books (
  id serial PRIMARY KEY,
  user_id int REFERENCES users(id),
  author varchar(50),
  page_count int,
  progress int,
  bookmark int,
  read timestamp,
  theme varchar(255),
  source varchar(255),
  title varchar(100),
  description varchar(500),
  cost numeric(6,2),
  availability varchar(255),
  location varchar(255),
  provider varchar(255),
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE categories (
  id serial PRIMARY KEY,
  book_id int REFERENCES books(id),
  name varchar(50) NOT NULL,
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE notes (
  id serial PRIMARY KEY,
  book_id int REFERENCES books(id),
  title varchar(50),
  body varchar(500),
  location jsonb, -- { page: __EXAMPLE_, paragraph: __EXAMPLE__, sentence: __EXAMPLE__ } --
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE tags (
  id serial PRIMARY KEY,
  book_id int NOT NULL REFERENCES books(id),
  title varchar(50) NOT NULL,
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE events (
  id serial PRIMARY KEY,
  user_id int REFERENCES users(id),
  book_id int default NULL REFERENCES books(id),
  type varchar(50) NOT NULL,
  description varchar(50),
  value numeric(4,2),
  status varchar(50),
  metadata jsonb,
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE goals (
  id serial PRIMARY KEY,
  user_id int NOT NULL,
  title varchar(50),
  term_date timestamp,
  description varchar(255),
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);

CREATE TABLE goals_events (
  id serial PRIMARY KEY,
  goal_id int NOT NULL,
  event_id int NOT NULL,
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);
