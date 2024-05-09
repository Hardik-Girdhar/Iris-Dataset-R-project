# DATA VISUALIZATION
library(graphics)

# pie chart 
# create by pie
# pie(x,label,main,col)
sales<-c(12,35,56,75)
label<-c('India','Japan','Russia','China')
pie(sales,label,main = 'country sales',col = rainbow(length(sales)))
c1<-c('Red','blue','green','black')
pie(sales,label,main ='country sales',col = c1)

en<-data.frame(energy=c('Nuclear','Petrol','Coal','Diesel'), Utilized=c(35,52,15,20))
en
pie(en$Utilized,label = en$energy,main ='Energy consumption',col = c1)


# BAR GRAPH ---------------------------------------------------
# It is used to representing categorical data.
# barplot(x,names, arg, xlab, ylab, main, col)
# revenue earned in jan-may
revenue<-c(78,21,45,65,32)
l<-c('JAN','FEB','MARCH','APRIL','MAY')
barplot(revenue,names.arg=l,xlab='Months',ylab='Revenue',main='Revenue Bar Chart',col='blue',border='black')


# SQL  --- sort marks then visualization
stud<-data.frame(Rollno=c(1,2,3,4,5),Name=c('John','Jark','Rony','Rohan','MOhan'),Marks=c(55,82,65,20,25))
stud
View(stud)
library(sqldf)
studsort<-sqldf('select * from stud order by Marks DESC')
studsort
#PIE CHART
pie(studsort$Marks,label=stud$Name,main = 'Marks distibution',col = c1)   # name wise
pie(studsort$Marks,label=stud$Rollno,main = 'Marks distibution',col = c1)  # roll no wise

#BAR CHART
barplot(studsort$Marks,names.arg=stud$Name,xlab='Name',ylab='Marks',main='Student Bar Chart',col='blue',border='black')
barplot(studsort$Marks,names.arg=stud$Rollno,xlab='Rollno',ylab='Marks',main='Student Bar Chart',col='yellow',border='black')


# SCATTER PLOT ----------------------------------------
# plot(x,y,xlab,ylab,xlim,ylim,main)
data(mtcars)
View(mtcars)
plot(x=mtcars$wt,y=mtcars$mpg,xlab = 'weight',ylab = 'mileage',
     xlim = c(2.5,5),ylim=c(15,30),main = 'Weight vs Milleage')

# LINE GRAPH ------------------------------------------
# plot(x,types='p'/'l'/'o'.xlab,ylab,main,col)
temp<-c(35,23,51,16,18,20)
plot(temp,type = 'o',xlab = 'Month',ylab = 'temp',main ='temp jan-july',col='magenta')

#MULTILINE----------------------------------------------
temp2<-c(78,12,36,45,17,45)
lines(temp2,type='o',col='green')

# DASHBOARD --------------------------------------------------------------------------------
install.packages("flexdashboard")
