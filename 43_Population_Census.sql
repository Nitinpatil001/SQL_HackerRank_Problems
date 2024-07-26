'''
Population Census :
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
'''
SELECT SUM(City.population)
FROM Country
INNER JOIN City
    ON Country.Code = City.CountryCode
WHERE Country.Continent='Asia';