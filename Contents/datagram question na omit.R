r1<-read.csv(file.choose())
View(r1)

is.na(r1)
#1 - create missing values for  rollno 1,4 with marks
r1[1,3]<-NA
r1[4,3]<-NA

#2 - create missing record for rollno 6
r1[6,]<-NA
View(r1)

#3 - find the location and count of missing values
is.na(r1)
sum(is.na(r1))

#4 - identify the missing value in name and marks
colSums(is.na(r1))

#5 - find nan values
is.nan(r1)

#6 - remove all missing values
m<-na.omit(r1)
m
#7 - visualize the dataset including missing values
vis_miss(r1)
