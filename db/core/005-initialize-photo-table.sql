CREATE TABLE photo (
    url VARCHAR, 
    description VARCHAR,
    home_id UUID REFERENCES home(id)
) INHERITS (base_table);

ALTER TABLE photo ADD PRIMARY KEY (id);

ALTER TABLE home 
  ADD COLUMN "cover" UUID REFERENCES photo(id);