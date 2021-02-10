CREATE TABLE saved_list (
    name VARCHAR, 
    user_id UUID REFERENCES "user"(id)
) INHERITS (base_table);

ALTER TABLE saved_list ADD PRIMARY KEY (id);