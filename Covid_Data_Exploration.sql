-- Select Data we are going to be using
SELECT location, date, total_cases, new_cases, total_deaths, population
FROM covid_deaths
ORDER BY 1,2;

-- Looking at Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in your country
SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS death_percentage
FROM covid_deaths
WHERE location LIKE '%United Kingdom'
ORDER BY 1,2;

-- Looking at Total Cases vs Population
-- Shows the percentage of population that got Covid
SELECT location, date, population, total_cases, (total_cases/population)*100 AS infected_percentage
FROM covid_deaths
WHERE location LIKE '%United Kingdom'
ORDER BY 1,2;

-- Countries with highest infection rate (vs population)
SELECT location, population, MAX(total_cases) AS highest_infection_count, MAX((total_cases/population))*100 AS infection_rate
FROM covid_deaths
--WHERE location LIKE '%United Kingdom'
GROUP BY location, population
ORDER BY infection_rate desc;

-- Countries with highest death count per population
SELECT location, MAX(total_deaths) AS total_death_count
FROM covid_deaths
-- some location entries correspond to either continents or even the 'World'/European Union etc
WHERE continent is not NULL
GROUP BY location
ORDER BY total_death_count desc;


-- break down by continent
SELECT location, MAX(total_deaths) AS total_death_count
FROM covid_deaths
-- some location entries correspond to either continents or even the 'World'/European Union etc
WHERE continent is NULL
GROUP BY location
ORDER BY total_death_count desc;

-- break down by continent
SELECT continent, MAX(total_deaths) AS total_death_count
FROM covid_deaths
-- some location entries correspond to either continents or even the 'World'/European Union etc
WHERE continent is not NULL
GROUP BY continent
ORDER BY total_death_count desc;


-- global numbers 
SELECT date, SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 AS death_percentage
FROM covid_deaths
--WHERE location LIKE '%United Kingdom'
WHERE continent is not null
GROUP BY date
ORDER BY 1,2;

SELECT SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 AS death_percentage
FROM covid_deaths
--WHERE location LIKE '%United Kingdom'
WHERE continent is not null
ORDER BY 1,2;


-- join the two datasets
-- Looking at total population vs vaccinations
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated,
(rolling_people_vaccinated/dea.population)*100
-- everytime a new location comes in doesnt keep going
FROM covid_deaths dea
JOIN covid_vaccinations vac
ON dea.location = vac.location AND dea.date = vac.date
WHERE dea.continent IS NOT NULL --AND dea.location LIKE '%Canada'
ORDER BY 2,3;

-- USE CTE
WITH population_vaccination (Continenet, Location, Date, Population, New_vaccinations, rolling_people_vaccinated)
AS
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
	-- everytime a new location comes in doesnt keep going
FROM covid_deaths dea
JOIN covid_vaccinations vac
ON dea.location = vac.location AND dea.date = vac.date
WHERE dea.continent IS NOT NULL --AND dea.location LIKE '%Canada'
--ORDER BY 2,3
)
SELECT *, (rolling_people_vaccinated/Population)*100 as percentage_vaccinated_population
FROM population_vaccination


-- creating view to store data for later visualization
CREATE VIEW population_vaccination AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
	-- everytime a new location comes in doesnt keep going
FROM covid_deaths dea
JOIN covid_vaccinations vac
ON dea.location = vac.location AND dea.date = vac.date
WHERE dea.continent IS NOT NULL --AND dea.location LIKE '%Canada'
--ORDER BY 2,3

