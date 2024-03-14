INSERT INTO users (username)
     VALUES ('guy');

INSERT INTO books (
  user_id,
  author,
  page_count,
  theme,
  source,
  title,
  description,
  created_at,
  updated_at
)
    VALUES(
      1,
      'Martin Kleppmann',
      545,
      'System Design',
      'Launch School Capstone Program',
      'Designing Data-Intensive Applications',
      'The Big Ideas Behind Reliable, Scalable, and Maintainable Systems',
      now(),
      now()
    );

INSERT INTO categories (book_id, name, created_at, updated_at)
     VALUES (1, 'Tech', now(), now());

INSERT INTO notes (book_id, title, body, created_at, updated_at)
     VALUES (
      1,
      'Preface: open source',
      'Free and open source software has become very successful and is now preferred to commercial or bespoke in-house software in many environments.',
      now(),
      now()
    );

INSERT INTO tags (book_id, title, created_at, updated_at)
     VALUES (
      1,
      'Scaling',
      now(),
      now()
    );

INSERT INTO tags (book_id, title, created_at, updated_at)
     VALUES (
      1,
      'Maintenance',
      now(),
      now()
    );

INSERT INTO tags (book_id, title, created_at, updated_at)
     VALUES (
      1,
      'Computer Science',
      now(),
      now()
    );

INSERT INTO goals (user_id, title, term_date, description, created_at, updated_at)
     VALUES (
       1,
       'Yearly reading goal',
       '2024-12-31 23:59:59',
       'Read 17 books this year',
       now(),
       now()
     );

INSERT INTO events (user_id, book_id, type, value, created_at, updated_at)
     VALUES (
       1,
       1,
       'READ',
       2,
       now(),
       now()
     ), (
       1,
       1,
       'READ',
       5,
       now(),
       now()
     );
