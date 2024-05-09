getwd()   # get the directory or path
setwd("C:/Users/OK/Downloads")     #to set path
a<-read.csv('diabetes.csv')   # get the file
a
View(a)   # get data of file
nrow(a)   # count number of row
ncol(a)   # count number of columns
str(a)    # structure int num of all fields
summary(a)# statistics on all columns
names(a)  # check all the variables/column/fields names
dim(a)    # dimensions of data
grep("Age", colnames(a))   # check the location of specific column
grep("Insulin" , colnames(a))
grep("BloodPressure" , colnames(a))

# FUNCTION TO FIND TUPPLES
a1<-head(a)   # first 6 rows
View(a1)
a2<-head(a,2)  # specific tupples (2,a) -- 2 rows
View(a2)
a2<-head(a,8)
View(a2)
# INDEXING RETIREIVE
View(a[1:20,])

a1<-tail(a)   # last 6 rows
View(a1)
a2<-tail(a,20)  # last 20 rows
View(a2)
View(a[760:768,])  # by indexing

# FIND INSULIN AND BLOODPRESSURE OF 1 TO 20 PATIENTS
a1<-a[1:20, c("Insulin" , "BloodPressure")]
a1<-a[1:20, c(3,5)]
View(a1)

# Find Max, Average, Range
View(max(a$Insulin))  # max of insulin
View(mean(a$BloodPressure))  # average of blood pressure
View(range(a$Glucose))  # range of glucose

# Find the record of maximum age patient -- subset()
View(subset(a, Age==max(Age)))

# Find the record of Blood Pressure greater than 100 and age > 10
a1<-subset(a,(BloodPressure > 100 && Age > 10))
nrow(a1)
View(a1)