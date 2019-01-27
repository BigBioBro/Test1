fahr_to_kelvin <- function(fahr) {
    kelvin <- ((fahr-32) * (5/9)) + 273.15
    return(kelvin)
}

fahr_to_kelvin(temp = 212)

kelvin_to_celsius <- function(kelvin) {
    celsius <- kelvin - 273.15
    return(celsius)
}

fahr_to_celsius <- function(fahr) {
  celsius <- kelvin_to_celsius(fahr_to_kelvin(fahr))
  return(celsius)
}

kelvin_to_celsius <- function(kelvin) {
  if(!is.numeric(kelvin)) {
    stop("temperature must be a numeric vector!")
  }
  celsius <- kelvin - 273.15
  return(celsius)
}

x <- 8

names(gapminder)

calcGDP <- function(dat) {
  gdp <- dat$pop *dat$gdpPercap
  return(gdp)
}

calcGDP(head(gapminder))

calcGDP <- function(dat, year =NULL, country = NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year,]
  }
  if(!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop *dat$gdpPercap
  new <- cbind(dat, gdp)
  return(new)
}
##using %in% rather than == so that multiple years can be specified

calcGDP(gapminder, year = c(1987, 1985, 2007), country = "Australia")

calcGDP(gapminder, year = c(1980:1989), country = "United States")
calcGDP(gapminder, year = c(1980:2000), country = c("Germany", "Netherlands"))
        
        