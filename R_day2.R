library(gapminder)
library(ggplot2)
colnames(gapminder)
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
ggplot(gapminder, aes(x = year, y = lifeExp)) +
  geom_point()
ggplot(gapminder, aes(x = year, y = lifeExp, col = continent)) +
  geom_point()
ggplot(gapminder, aes(x = year, y = lifeExp, col = continent, by = country)) +
  geom_line() +
  geom_point()
ggplot(gapminder, aes(x = year, y = lifeExp, by = country)) +
  geom_line(aes(col = continent)) +
  geom_point()
ggplot(gapminder, aes(x = year, y = lifeExp, by = country)) +
  geom_point() +
  geom_line(aes(col = continent))
ggplot(gapminder, aes(x = year, y = lifeExp, by = country)) +
  geom_point() +
  geom_line(aes(color = "blue"))

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5)

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(alpha = 0.5, shape = continent) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5, by = continent)

ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) +
  geom_point(aes(alpha = 0.5, shape =continent)) +
  scale_x_log10() +
  geom_smooth(method = "lm", size =1.5)

p <- ggplot(gapminder, aes(lifeExp))
p + geom_histogram(bins = 60)
p + geom_density()
p + geom_histogram(aes(color = continent))
p + geom_histogram(aes(fill = continent))
p + geom_histogram(aes(fill = continent),
                   position = "identity",
                   alpha = 1/3)

p + geom_density(aes(fill = continent), alpha = 1/4) +
theme_bw()