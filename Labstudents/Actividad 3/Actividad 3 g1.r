#Coudet Lucia
rm(list=ls())
library(tidyverse)

#####################
#### Ejercicio 1 ####
#####################

mpg %>% ggplot(aes(x=hwy, y=cty)) + 
  geom_point(color="magenta") + 
  xlab("Highway miles per gallon") +
  ylab("City miles per gallon") +
  theme(plot.title = element_text(hjust = 0.5)) +
  ggtitle("Scatter plot of  \n Highway miles per gallon vs. City miles per gallon ")
  ggthemes::theme_economist()

#####################
#### Ejercicio 2 ####
#####################

mpg %>% ggplot(aes(x=hwy, y=cty)) + 
  geom_point(color="magenta", alpha=1/3) + 
  xlab("Highway miles per gallon") +
  ylab("City miles per gallon") +
  ggthemes::theme_economist()

mpg %>% ggplot(aes(x=hwy, y=cty)) + 
  geom_jitter(color="magenta") + 
  xlab("Highway miles per gallon") +
  ylab("City miles per gallon") +
  ggthemes::theme_economist()

#####################
#### Ejercicio 3 ####
#####################

mpg %>% ggplot(aes(x=hwy, y=cty, color=class)) + 
  geom_jitter() + 
  xlab("Highway miles per gallon") +
  ylab("City miles per gallon") +
  ggthemes::theme_economist()

mpg %>% ggplot(aes(x=hwy, y=cty, color=class)) + 
  geom_jitter() + 
  xlab("Highway miles per gallon") +
  ylab("City miles per gallon") +
  scale_colour_brewer("Dark2")
  ggthemes::theme_economist()

mpg %>% ggplot() +
  geom_jitter(mapping=aes(x=hwy, y=cty, color=class)) +
  facet_wrap(~class, ncol = 2) +
  theme(legend.position="none")

