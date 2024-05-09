# tidyr - reshaping data, swapping rows columns 

library(tidyr)
install.packages("readxl")
library(readxl)

a<-read_excel(file.choose())
View(a)

str(a)
nrow(a)
ncol(a)


# -----------------
library(tidyr)

# gather(input,key,value) used for changing columns into rows, wide to long
b<-gather(a,key = features,value = data,mpg:disp)
View(b)

# spread() long to wide, rowa into columns
c<-spread(b,features,data)
View(c)

# separate()
d<-separate(a,col = production, into = c('production','year'))
View(d)

# unite() merge teo columns into one
e<-unite(d,col = 'cyl-mpg',c('cyl','mpg'),sep = '-')
View(e)

# nest() creates a list-column of data frame
f<-nest(a,key=c('mpg'))
View(f)


# -----------------------------------------------------------------------


# import built in dataset iris
# apply gather and unite() on any vairable
library(datasets)
data("iris")
View(iris)

