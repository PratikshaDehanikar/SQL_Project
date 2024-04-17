1.-----get the Olympic year, season, and country along with the total number of medals won in the Winter Olympics--------------

SELECT 
    od.Olympic_year,
    od.Olympic_season,
    cd.Country,
    SUM(od.total_medals) AS total_medals_won
FROM 
    olympicdata od
INNER JOIN 
    countrydata cd ON od.ISO_code_mapping = cd.ISO_code_mapping
WHERE 
    od.Olympic_season = 'winter'
GROUP BY 
    od.Olympic_year, od.Olympic_season, cd.Country;


2.-------get the Olympiad, Olympic city, Olympic year, continent, and the count of disciplines for each entry 
---where the count of disciplines is greater than 5

SELECT 
    od.Olympiad,
    od.Olympic_city,
    od.Olympic_year,
    cd.Continent,
    COUNT(od.number_disciplines) AS count_disciplines
FROM 
    olympicdata od
INNER JOIN 
    countrydata cd ON od.ISO_code_mapping = cd.ISO_code_mapping
GROUP BY 
    od.Olympiad, od.Olympic_city, od.Olympic_year, cd.Continent
HAVING 
    COUNT(od.number_disciplines) > 5;



3.---- query retrieves distinct countries that participated in the Olympics held in 2020 by referencing 
--the country data table and using a subquery to filter by ISO code mappings from the Olympic data table.

SELECT DISTINCT cd.Country
FROM 
    countrydata cd
WHERE 
    cd.ISO_code_mapping IN (
        SELECT 
            od.ISO_code_mapping
        FROM 
            olympicdata od
        WHERE 
            od.Olympic_year = 2020
    );


4.---Get the number of events hosted in each city and the continent they belong to.

SELECT 
    od.Olympic_city,
    cd.Continent,
    COUNT(od.number_events) AS num_events_hosted
FROM 
    olympicdata od
INNER JOIN 
    countrydata cd ON od.ISO_code_mapping = cd.ISO_code_mapping
GROUP BY 
    od.Olympic_city, cd.Continent;
