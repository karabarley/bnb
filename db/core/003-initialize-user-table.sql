CREATE TYPE "ROLE" AS ENUM ('host', 'guest');

-- user is a reserved word for databases, e.g. "alter user kara with role "read_only""
-- tip: wrap tables/ column names in double quotes

CREATE TABLE "user" (
  email VARCHAR NOT NULL,
  first_name VARCHAR NOT NULL,
  -- *Last name has to be nullable (Some First Nations individuals may not have last name )
  last_name VARCHAR,
  role "ROLE" NOT NULL,
  password VARCHAR,
  -- reference (foreign key)
  location_id UUID REFERENCES location(id)
) INHERITS (base_table);

ALTER TABLE "user" ADD PRIMARY KEY (id);


-- Fix previously made tables and base tables to have the new fields
-- 
ALTER TABLE "user" 
  ADD COLUMN "created_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "updated_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "deleted_by" UUID REFERENCES "user"(id);

ALTER TABLE location
  ADD COLUMN "created_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "updated_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "deleted_by" UUID REFERENCES "user"(id);


-- all future tables will now be created with new columns 
ALTER TABLE base_table
  ADD COLUMN "created_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "updated_by" UUID REFERENCES "user"(id), 
  ADD COLUMN "deleted_by" UUID REFERENCES "user"(id);
