 CREATE TABLE IF NOT EXISTS covid_deaths
 (
     iso_code character varying COLLATE pg_catalog."default",
     continent character varying COLLATE pg_catalog."default",
     location character varying COLLATE pg_catalog."default",
     date date,
     population numeric,
     total_cases numeric,
     new_cases numeric,
     new_cases_smoothed numeric,
     total_deaths numeric,
     new_deaths numeric,
     new_deaths_smoothed numeric,
     total_cases_per_million numeric,
     new_cases_per_million numeric,
     new_cases_smoothed_per_million numeric,
     total_deaths_per_million numeric,
     new_deaths_per_million numeric,
     new_deaths_smoothed_per_million numeric,
     reproduction_rate numeric,
     icu_patients numeric,
     icu_patients_per_million numeric,
     hosp_patients numeric,
     hosp_patients_per_million numeric,
     weekly_icu_admissions numeric,
     weekly_icu_admissions_per_million numeric,
     weekly_hosp_admissions numeric,
     weekly_hosp_admissions_per_million numeric
)

SELECT * FROM covid_deaths
ORDER BY 3, 4;

UPDATE covid_deaths SET total_cases = NULL where total_cases = -7;
UPDATE covid_deaths SET new_cases = NULL where new_cases = -7;
UPDATE covid_deaths SET new_cases_smoothed = NULL where new_cases_smoothed = -7;
UPDATE covid_deaths SET total_deaths = NULL where total_deaths = -7;
UPDATE covid_deaths SET new_deaths = NULL where new_deaths = -7;
UPDATE covid_deaths SET new_deaths_smoothed = NULL where new_deaths_smoothed = -7;
UPDATE covid_deaths SET total_cases_per_million = NULL where total_cases_per_million = -7;
UPDATE covid_deaths SET new_cases_per_million = NULL where new_cases_per_million = -7;
UPDATE covid_deaths SET new_cases_smoothed_per_million = NULL where new_cases_smoothed_per_million = -7;
UPDATE covid_deaths SET total_deaths_per_million = NULL where total_deaths_per_million = -7;
UPDATE covid_deaths SET new_deaths_per_million = NULL where new_deaths_per_million = -7;
UPDATE covid_deaths SET new_deaths_smoothed_per_million = NULL where new_deaths_smoothed_per_million = -7;
UPDATE covid_deaths SET reproduction_rate = NULL where reproduction_rate = -7;
UPDATE covid_deaths SET icu_patients = NULL where icu_patients = -7;
UPDATE covid_deaths SET icu_patients_per_million = NULL where icu_patients_per_million = -7;
UPDATE covid_deaths SET hosp_patients = NULL where hosp_patients = -7;
UPDATE covid_deaths SET hosp_patients_per_million = NULL where hosp_patients_per_million = -7;
UPDATE covid_deaths SET weekly_icu_admissions = NULL where weekly_icu_admissions = -7;
UPDATE covid_deaths SET weekly_icu_admissions_per_million = NULL where weekly_icu_admissions_per_million = -7;
UPDATE covid_deaths SET weekly_hosp_admissions = NULL where weekly_hosp_admissions = -7;
UPDATE covid_deaths SET weekly_hosp_admissions_per_million = NULL where weekly_hosp_admissions_per_million = -7;

SELECT * FROM covid_deaths
ORDER BY 3, 4;	 

-- SELECT * FROM covid_deaths
-- ORDER BY 3, 4;

CREATE TABLE IF NOT EXISTS covid_vaccinations
 (
     iso_code character varying COLLATE pg_catalog."default",
     continent character varying COLLATE pg_catalog."default",
     location character varying COLLATE pg_catalog."default",
     date date,
     new_tests numeric,
     total_tests numeric,
     total_tests_per_thousand numeric,
     new_tests_per_thousand numeric,
     new_tests_smoothed numeric,
     new_tests_smoothed_per_thousand numeric,
     positive_rate numeric,
     tests_per_case numeric,
     tests_units VARCHAR,
     total_vaccinations numeric,
     people_vaccinated numeric,
     people_fully_vaccinated numeric,
     new_vaccinations numeric,
     new_vaccinations_smoothed numeric,
     total_vaccinations_per_hundred numeric,
     people_vaccinated_per_hundred numeric,
     people_fully_vaccinated_per_hundred numeric,
     new_vaccinations_smoothed_per_million numeric,
     stringency_index numeric,
     population_density numeric,
     median_age numeric,
     aged_65_older numeric,
     aged_70_older numeric,
     gdp_per_capita numeric,
     extreme_poverty numeric,
     cardiovasc_death_rate numeric,
     diabetes_prevalence numeric,
     female_smokers numeric,
     male_smokers numeric,
     handwashing_facilities numeric,
     hospital_beds_per_thousand numeric,
     life_expectancy numeric,
     human_development_index numeric
 )

SELECT * FROM covid_vaccinations;

UPDATE covid_vaccinations SET new_tests = NULL where new_tests = -7;
UPDATE covid_vaccinations SET total_tests = NULL where total_tests = -7;
UPDATE covid_vaccinations SET total_tests_per_thousand = NULL where total_tests_per_thousand = -7;
UPDATE covid_vaccinations SET new_tests_per_thousand = NULL where new_tests_per_thousand = -7;
UPDATE covid_vaccinations SET new_tests_smoothed = NULL where new_tests_smoothed = -7;
UPDATE covid_vaccinations SET new_tests_smoothed_per_thousand = NULL where new_tests_smoothed_per_thousand = -7;
UPDATE covid_vaccinations SET positive_rate = NULL where positive_rate = -7;
UPDATE covid_vaccinations SET tests_per_case = NULL where tests_per_case = -7;
UPDATE covid_vaccinations SET tests_units = NULL where tests_units = '-7';
UPDATE covid_vaccinations SET total_vaccinations = NULL where total_vaccinations = -7;
UPDATE covid_vaccinations SET people_vaccinated = NULL where people_vaccinated = -7;
UPDATE covid_vaccinations SET people_fully_vaccinated = NULL where people_fully_vaccinated = -7;
UPDATE covid_vaccinations SET new_vaccinations = NULL where new_vaccinations = -7;
UPDATE covid_vaccinations SET new_vaccinations_smoothed = NULL where new_vaccinations_smoothed = -7;
UPDATE covid_vaccinations SET total_vaccinations_per_hundred = NULL where total_vaccinations_per_hundred = -7;
UPDATE covid_vaccinations SET people_vaccinated_per_hundred = NULL where people_vaccinated_per_hundred = -7;
UPDATE covid_vaccinations SET people_fully_vaccinated_per_hundred = NULL where people_fully_vaccinated_per_hundred = -7;
UPDATE covid_vaccinations SET new_vaccinations_smoothed_per_million = NULL where new_vaccinations_smoothed_per_million = -7;
UPDATE covid_vaccinations SET stringency_index = NULL where stringency_index = -7;
UPDATE covid_vaccinations SET population_density = NULL where population_density = -7;
UPDATE covid_vaccinations SET median_age = NULL where median_age = -7;
UPDATE covid_vaccinations SET aged_65_older = NULL where aged_65_older = -7;
UPDATE covid_vaccinations SET aged_70_older = NULL where aged_70_older = -7;
UPDATE covid_vaccinations SET gdp_per_capita = NULL where gdp_per_capita = -7;
UPDATE covid_vaccinations SET extreme_poverty = NULL where extreme_poverty = -7;
UPDATE covid_vaccinations SET cardiovasc_death_rate = NULL where cardiovasc_death_rate = -7;
UPDATE covid_vaccinations SET diabetes_prevalence = NULL where diabetes_prevalence = -7;
UPDATE covid_vaccinations SET female_smokers = NULL where female_smokers = -7;
UPDATE covid_vaccinations SET male_smokers = NULL where male_smokers = -7;
UPDATE covid_vaccinations SET handwashing_facilities = NULL where handwashing_facilities = -7;
UPDATE covid_vaccinations SET hospital_beds_per_thousand = NULL where hospital_beds_per_thousand = -7;
UPDATE covid_vaccinations SET life_expectancy = NULL where life_expectancy = -7;
UPDATE covid_vaccinations SET human_development_index = NULL where human_development_index = -7;

SELECT * FROM covid_vaccinations;









