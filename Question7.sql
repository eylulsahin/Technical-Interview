SELECT country AS mycountry
COALESCE(daily_vaccination, SELECT MIN(daily_vaccination)
							FROM database
							WHERE country=mycountry)
FROM database