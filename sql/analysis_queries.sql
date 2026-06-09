-- Count observations

SELECT COUNT(*)
FROM grain_basis_raw;

-- Average basis by commodity

SELECT
    commodity,
    ROUND(AVG(basis)::numeric,3) AS avg_basis
FROM grain_basis_raw
GROUP BY commodity
ORDER BY avg_basis DESC;

-- Top markets by average corn basis

SELECT
    market_name,
    ROUND(AVG(basis)::numeric,3) AS avg_basis
FROM grain_basis_raw
WHERE commodity = 'Corn'
GROUP BY market_name
ORDER BY avg_basis DESC
LIMIT 10;

-- Corn basis vs Dollar Index correlation

SELECT
    CORR(b.basis, d.dollar_index)
FROM grain_basis_raw b
JOIN fred_dollar_index d
    ON b.date = d.observation_date
WHERE b.commodity = 'Corn';

-- Corn basis by year

SELECT
    year,
    ROUND(AVG(basis)::numeric,3) AS avg_corn_basis
FROM grain_basis_raw
WHERE commodity = 'Corn'
GROUP BY year
ORDER BY year;

-- Dollar index by year

SELECT
    EXTRACT(YEAR FROM observation_date) AS year,
    ROUND(AVG(dollar_index)::numeric,2) AS avg_dollar_index
FROM fred_dollar_index
GROUP BY year
ORDER BY year;

-- Corn basis and dollar index summary

SELECT
    b.year,
    ROUND(AVG(b.basis)::numeric,3) AS avg_corn_basis,
    ROUND(AVG(d.dollar_index)::numeric,2) AS avg_dollar_index
FROM grain_basis_raw b
JOIN fred_dollar_index d
    ON b.date = d.observation_date
WHERE b.commodity = 'Corn'
GROUP BY b.year
ORDER BY b.year;
