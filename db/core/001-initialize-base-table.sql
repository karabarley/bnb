-- use uuid instead of serial id
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE base_table (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
    deleted_at TIMESTAMP WITH TIME ZONE DEFAULT NULL
);

-- Cannot add created_by, update_by just yet (need to create user table )
--base table first
--user inherits base table
