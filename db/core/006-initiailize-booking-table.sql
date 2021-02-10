
CREATE TYPE "BOOKING_STATUS" AS ENUM ('approved', 'pending', 'cancelled');
-- default to lower permission set

CREATE TABLE booking (
    start_date TIMESTAMP WITH TIME ZONE NOT NULL,
    end_date TIMESTAMP WITH TIME ZONE NOT NULL,
    status "BOOKING_STATUS" NOT NULL DEFAULT 'pending',
    user_id UUID REFERENCES "user"(id) NOT NULL,
    home_id UUID REFERENCES home(id) NOT NULL
) INHERITS (base_table);

ALTER TABLE booking ADD PRIMARY KEY (id);
