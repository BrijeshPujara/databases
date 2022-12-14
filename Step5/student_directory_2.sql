-- Create the table without the foreign key first.
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name text,
  start_date timestamp
);

-- Then the table with the foreign key first.
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort int,
-- The foreign key name is always {other_table_singular}_id
  constraint fk_cohort foreign key(cohort_id)
    references cohorts(id)
    on delete cascade
);