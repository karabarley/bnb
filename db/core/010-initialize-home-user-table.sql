CREATE TABLE home_user (
  home_id UUID REFERENCES home(id),
  user_id UUID REFERENCES "user"(id)
) INHERITS (base_table)

ALTER TABLE home_user ADD PRIMARY KEY (home_id, user_id)

-- compound primary key (based ont the 2 ids )
-- PK has to be unique and index (easy it look up)
-- joins in the future will use reference/ table table (that's why its called join table )


-- HMW: Run and create reference tables 