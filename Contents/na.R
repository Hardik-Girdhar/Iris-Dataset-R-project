# handling missing values
# NA and NAN are reserved words indicate missing values
v1<-c(2,3,4)
v2<-c(8,9,2)
v1+v2         # must be same argument -- v1=3 , v2=3 arguments otherwise error

v1<-c(2,6,NA,45,NA)
is.na(v1)     # to check about missing values
v2<-c(2,3,5,0/0,6.0,0/0,NA)
is.nan(v2)   # not for na 
is.na(v2)

# Extract na and nan value by !
x<-c(1,2,NA,9,NA,4)
d<-is.na(x)
d
x[!d]       # not include MISSING VALUES

# DATAFRAME
# missing data filter fucntion
d1<-data.frame(c1=c(1:5),c2=c('a','b','c','d','e'))
d1
d1[2,2]<-NA
d1
d1[5,]<-NA
d1
# 1 column value 3
d1[3,1]<-NA
d1
is.na(d1)
sum((is.na(d1)))
colSums((is.na(d1)))

# ----------------------------------------------------------------------------------------------

library(visdat)
vis_miss(d1)
