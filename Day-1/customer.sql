CREATE TABLE customer (
   customer_id serial PRIMARY KEY,
   first_name character varying(100) NOT NULL,
   last_name character varying(100) NOT NULL,
   email character varying(255) UNIQUE NOT NULL,
   created_date timestamp with time zone NOT NULL DEFAULT now(),
   updated_date timestamp with time zone
);

-- Drop Table
DROP TABLE IF EXISTS customer;

-- Add New Column
ALTER TABLE customer ADD COLUMN active boolean;

-- Drop New Column
ALTER TABLE customer DROP COLUMN active;

-- After Delete Column - Select Statement
SELECT * from customer

-- Rename Existing Column
ALTER TABLE customer RENAME COLUMN email TO email_address;

-- After Rename Column - Select Statement
SELECT * from customer

ALTER TABLE customer RENAME COLUMN email_address TO email;

-- Rename table name
ALTER TABLE customer RENAME TO users;

ALTER TABLE users RENAME TO customer;
