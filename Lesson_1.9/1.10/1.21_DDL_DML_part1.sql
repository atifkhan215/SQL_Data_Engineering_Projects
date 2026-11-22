CREATE DATABASE If NOT EXISTS jobs_mart;
SHOW Databases;
--DROP DATABASE jobs_mart;
SELECT *
FROM information_schema.schemata;

USE jobs_mart;
CREATE schema IF NOT EXISTS staging;
-- DROP SCEHMA staging 

CREATE TABLE IF NOT EXISTS staging.preferred_roles(
   role_id INTEGER PRIMARY KEY,
   role_name VARCHAR
);

-- DROP TABLE IF EXISTS staging.preferred_roles;

SELECT *
FROM information_schema.tables
WHERE table_catalog = 'jobs_mart';

INSERT INTO staging.preferred_roles (role_id, role_name)
VALUES
    (1, 'Data Engineer'),
    (2, 'Senior Data Engineer'),
    (3, 'Software Engineer');

    SELECT *
FROM staging.preferred_roles;

SELECT *
FROM staging.preferred_roles;

ALTER TABLE staging.preferred_roles
ADD COLUMN preferred_role BOOLEAN;