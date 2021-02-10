CREATE TABLE home (
    location_id UUID REFERENCES location(id),
    name VARCHAR, 
    description VARCHAR,
    price_per_night INT
) INHERITS (base_table);

ALTER TABLE home ADD PRIMARY KEY (id);

-- home/photo is circular dependancy handled the same way as user/basetable dependancy