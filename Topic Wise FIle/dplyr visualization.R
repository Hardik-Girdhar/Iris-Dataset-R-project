# Find sepal length and sepal width of setosa species from iris dataset by dplyr
# package and visualize information by scatter plot

library(dplyr)
data("iris")
View(iris)

main <- iris %>%
  filter(Species == "setosa") %>%
  select(Sepal.Length, Sepal.Width)
main

plot(x=iris$Sepal.Length,y=iris$Sepal.Width,xlab = 'Length',ylab = 'Width',
     pch=13, col = "brown",main = 'length vs width')

# find Height and volume of above 10 girth by dplyr package
# and plot by ggplot2

library(dplyr)
library(ggplot2)
trees
filter <- trees %>% filter(Girth > 10)
filter
vol<-filter %>% mutate(Volume = pi * (Girth/2)^2 * Height)
vol

trees_filtered <- trees %>%
  filter(Girth > 10)
trees_filtered <- trees_filtered %>%
  mutate(Volume = pi * (Girth/2)^2 * Height)
summary(trees_filtered)