USE covid;


SELECT * FROM info;


SELECT location, date, infected, dead
FROM info;


SELECT location, SUM(infected) AS total_infected, SUM(dead) AS total_dead
FROM info
GROUP BY location
ORDER BY location;

SELECT location, SUM(dead) AS total_dead, SUM(infected) AS total_infected, (SUM(dead)/SUM(infected) * 100) AS dead_infected_likehood
FROM info
GROUP BY location
ORDER BY location;


SELECT location, SUM(dead) AS total_dead, SUM(vaccinated) AS total_vaccinated, (SUM(dead)/SUM(vaccinated) * 100) AS dead_vaccinated_likehood
FROM info
GROUP BY location
ORDER BY location;

SELECT location, SUM(dead) AS total_dead, SUM(vaccinated) AS total_vaccinated, (SUM(dead)/SUM(vaccinated) * 100) AS dead_vaccinated_likehood
FROM info
GROUP BY location
ORDER BY dead_vaccinated_likehood;


SELECT location, SUM(infected) AS total_infected, SUM(vaccinated) AS total_vaccinated, (SUM(infected)/SUM(vaccinated) * 100) AS infected_vaccinated_likehood
FROM info
GROUP BY location
ORDER BY location;

SELECT location, SUM(infected) AS total_infected, SUM(vaccinated) AS total_vaccinated, (SUM(infected)/SUM(vaccinated) * 100) AS infected_vaccinated_likehood
FROM info
GROUP BY location
ORDER BY infected_vaccinated_likehood;


SELECT location, population, SUM(dead) AS total_dead, (SUM(dead)/population * 100) AS HeighestRate
FROM info
GROUP BY location, population
ORDER BY HeighestRate;