CREATE TABLE review_and_rating (
    review VARCHAR, 
    rating INT,
    home_id UUID REFERENCES home(id)
) INHERITS (base_table);

ALTER TABLE review_and_rating ADD PRIMARY KEY (id);