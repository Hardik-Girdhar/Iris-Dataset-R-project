install.packages()

# -----------------------------------------------------------------------

library(sqldf)
a<-read.csv(file.choose())    # to choose data and import student data
View(a)

# sql queries
View(sqldf('Select count(*) from a'))
View(sqldf('select * from a where marks > 80'))
View(sqldf('select roll_no from a where marks<50'))

View(sqldf('select * from a where name like "v%"'))  # start with v
View(sqldf('select * from a where name like "v%s"')) # start with v and end with s

View(sqldf('select * from a order by marks DESC'))   # sort high to low marks

View(sqldf('select AVG(marks) as average from a'))   # average
View(sqldf('select MAX(marks) as average from a'))   # maximum

View(sqldf('Select roll_no, name from a LIMIT 3'))   # name roll no of only first 3

View(sqldf('select name, marks from a where roll_no=4'))
View(sqldf('Select sum(marks) as total_marks from a'))  # total marks

View(sqldf('select * from a order by name'))


# ---------------------------------------------------------------------


library(readxl)
s<-read_excel(file.choose())
View(s)

#1
View(sqldf('Select sum(Sales) from s'))
#2
View(sqldf('Select country,min(Sales) from s  '))
#3
View(sqldf('Select country,Sales from s where Region="North"'))
#4
View(sqldf('Select * from s order by Sales Desc'))
#5
View(sqldf('Select count(country) as Nation from s'))
#6
View(sqldf('Select Region,Sales from s where Region="East" and Sales>500'))
#7 *
View(sqldf('select country,Region,AVG(Sales) from s having Sales<800 order by Sales'))
#8
View(sqldf('Select country, Region as EW_Region from s where Region ="North" or Region="West"'))
#9
View(sqldf('Select country,Region from s where Region <>"North" or Region<>"West"'))
#10
d1<-sqldf('Select country from s where country LIKE "U%"')
View(d1)
d2<-sqldf('Select country from s where country LIKE "%K"')
View(d2)
#11
View(sqldf('Select country from d1 UNION select country from d2 '))
#12 
View(sqldf('SELECT *FROM d1 INNER JOIN d2 ON d1.country = d2.country '))
#13
View(sqldf('ELECT COUNT(*) as total_observations FROM d1'))