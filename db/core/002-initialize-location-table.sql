-- single row is a location
CREATE TABLE location (
  country VARCHAR NOT NULL,
  state VARCHAR NOT NULL, 
  city VARCHAR NOT NULL, 
  address VARCHAR NOT NULL,
  currency VARCHAR(3) NOT NULL
) INHERITS (base_table);

ALTER TABLE location ADD PRIMARY KEY (id);

-- inheriting is a one time 
-- doesn't inherit id (primary key)
-- primary key - is unique identifier for lookup