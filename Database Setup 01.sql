-- Database Setup
-- Yodhvir Hyare
-- March 2026

CREATE DATABASE IF NOT EXISTS ai_index_db;
USE ai_index_db;

CREATE TABLE IF NOT EXISTS ai_index (
    country VARCHAR(100),
    year INT,
    ai_adoption_consumer FLOAT,
    ai_adoption_enterprise FLOAT,
    internet_penetration FLOAT,
    gdp_per_capita FLOAT,
    education_index FLOAT,
    tech_workforce_pct FLOAT,
    cloud_infrastructure FLOAT,
    data_availability FLOAT,
    ai_policy_score FLOAT,
    ai_startups_count INT,
    ai_investment_billion_usd FLOAT,
    rd_spending_gdp_pct FLOAT,
    ai_research_papers INT,
    stem_graduates_pct FLOAT,
    ai_talent_rank INT,
    coverage_5g_pct FLOAT,
    data_center_count INT,
    gpu_availability_index FLOAT,
    ai_regulation_score FLOAT,
    government_ai_spending FLOAT,
    adoption_gap FLOAT,
    ai_readiness_score FLOAT,
    ai_index_score FLOAT,
    ai_growth_rate FLOAT,
    ai_global_rank FLOAT
);

USE ai_index_db;
SELECT * FROM ai_index LIMIT 10;