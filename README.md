# Grain Basis vs U.S. Dollar Index Analysis

## Overview

This project analyzes USDA grain basis observations and Federal Reserve Economic Data (FRED) to explore whether movements in the U.S. Dollar Index are associated with changes in grain basis levels.

The analysis combines:

- 16,311 USDA grain basis observations
- Corn, Soybeans, Hard Red Winter Wheat, Soft Red Winter Wheat, and Hard Red Spring Wheat
- FRED U.S. Dollar Index data (DTWEXBGS)
- PostgreSQL for data storage and analysis

## Objective

Determine whether dollar strength influences grain basis behavior and identify commodity-specific relationships.

## Dataset

### USDA Grain Basis Data

Fields include:

- Date
- Commodity
- Market
- Basis
- Bid
- Futures Price
- Geographic Location

### FRED Macroeconomic Data

Series:

- DTWEXBGS (Nominal Broad U.S. Dollar Index)

Period analyzed:

- 2018–2026

## Database Structure

### grain_basis_raw

Stores USDA grain basis observations.

### fred_dollar_index

Stores daily U.S. Dollar Index observations downloaded from FRED.

## Analysis Performed

### Average Basis by Commodity

Calculated average basis values for all major grain commodities.

### Market-Level Corn Basis Analysis

Identified markets with the strongest average corn basis.

### Yearly Basis Trends

Tracked average corn basis from 2018–2026.

### Dollar Index Trends

Calculated annual average U.S. Dollar Index values.

### Correlation Analysis

Measured the relationship between daily corn basis values and the U.S. Dollar Index.

Result:

- Corn Basis vs Dollar Index Correlation = -0.133

## Key Findings

- Corn basis showed a weak negative correlation with the U.S. Dollar Index.
- Stronger dollar environments generally coincided with slightly weaker corn basis values.
- The relationship exists but is not strong enough to explain basis behavior independently.
- Local supply, transportation costs, regional demand, and export economics likely have larger impacts on basis than currency movements alone.

## Technologies Used

- PostgreSQL
- SQL
- USDA Open Ag Transport Data
- FRED Economic Data
- GitHub

## Repository Structure

```
sql/
├── create_tables.sql
└── analysis_queries.sql
```

## Author

Carsen Rieker

Agricultural & Applied Economics

Commodity Markets | Risk Management | Data Analytics
