CREATE TABLE grain_basis_raw (
    date DATE,
    week INTEGER,
    month INTEGER,
    year INTEGER,
    market_name TEXT,
    market_type TEXT,
    commodity TEXT,
    source TEXT,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    location TEXT,
    bid DOUBLE PRECISION,
    nearby_futures_month TEXT,
    futures_price DOUBLE PRECISION,
    basis DOUBLE PRECISION
);

CREATE TABLE fred_dollar_index (
    observation_date DATE,
    dollar_index DOUBLE PRECISION
);
