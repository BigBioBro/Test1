#Data Carpentry dplyr
library(dplyr)
x <- gapminder[gapminder$continent == "Africa", "gdpPercap"]
mean(x$gdpPercap)

year_country_gdp <- select(gapminder, year, country, gdpPercap)

year_country_gdp <- gapminder %>% select(year, country, gdpPercap)

year_country_gdp_euro <- gapminder %>% 
  filter(continent == "Europe") %>%
  select(year, country, gdpPercap)

head(year_country_gdp_euro)

str(gapminder %>% group_by (continent))

gdp_by_continents <- gapminder %>%
    group_by(continent) >%>
    summarize(mean_gdpPercap = mean(gdpPercap))

gapminder %>%
  filter(year == 2002) %>%
  count(continent, sort = TRUE)