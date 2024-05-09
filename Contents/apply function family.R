# apply family function
# apply(), lapply(), sapply(), tapply() 
# apply()<-implement on rows and columns
#input-matrix, array, dataframe
# output - vector
# syntax: apply(input, margin, function)
# margin can be 1 or 2, 1 for row, 2 for column

m1=matrix(c(1:12) , nrow = 3 , ncol = 4, byrow = TRUE)
m1
apply(m1,1,sum)  # sum row wise
apply(m1,2,sum)  # sum column wise
class(apply(m1,2,sum))

# dataframe find max marks
Marks<-data.frame(Roll_no = c(12,10,14,8) , marks =c(30,95,46,99))
Marks

# by apply
apply(Marks[2],2,max)

# by sql
library(sqldf)
a<-sqldf('Select MAX(marks) from Marks')
a


# -----------------------------------------------------------------

# lapply()
# inout-vector list
# output - list
# syntax: lapply(input,function)

v1<-c('cse' , 'civil', 'ece' ,'eee' ,'it')
v1
lapply(v1, toupper)
class(lapply(v1, toupper))

c1<-list(a=c(5,6,7,8),b=data.frame(x=1:5,y=c(6:10)))
c1
lapply(c1, sum)

# find the sqaure of 1 to 20 number
f1=function(x){
  x^2
}
d<-c(1:10)
lapply(d, f1)

# find the squareroot of 12 to 24 number arranged in 6*6 matrix

f2=function(x){
  x**(1/2)
}

m=matrix(c(12:24) , nrow = 6 , ncol = 6, byrow = TRUE)
m

apply(m, 1, f2)

#---------------------------------------------------------

# sapply() - simplified version
# input- vector,list
#output- by default as input
# syntax: sapply(input,function)
a1<-c(6,9,26,25)
a1
sapply(a1,min)
class(a1)
class(sapply(a1,min))

# ---------------------------------------------------------

# tapply() - used for compute statistical analysis
# create a subset of a vector and then apply function to each of subset
# syntax: tapply(input, index, function)
sal<-c(234,456,200,300,520,680)
emp<-c('f','m','m','f','m','f')
tapply(sal, emp, max)

# find the employees in all departments working in wipro.tcs
it-5
security - 3
management - 7
management - 9
security - 2
marketing - 5
it - 5
marketing - 2

dept<-c('it','security','management' , 'management','security' , 'marketing','it','marketing')
emp<-c(5,3,7,9,2,5,5,2)
company = c("Wipro", "TCS", "Wipro", "TCS", "Wipro", "Wipro", "TCS", "TCS")
a<-tapply(emp, list(company, dept), sum)
a
# find the total employee
apply(a, 1,sum)

emp<-list(c(5,3,7,9,2,5,5,2))
lapply(emp, sum)

# -------------------

emp<-c(5,3,7,9,2,5,5,2)
dept<-c('it','security','management' , 'management','security' , 'marketing','it','marketing')