d1<-read.csv(file.choose())
View(d1)

# total obseravtion
str(d1)

# first 10 row
sample_n(d1,10)

# 20 percent of data - how many rows
r<-sample_frac(d1,.20)
nrow(r)

# display distinct functions
nrow(distinct(d1))

#display few variable 
View(d1)
View(select(d1,Age,Occupation,Gender))


# display data except latttude, longitude
View(select(d1,-longitude,-latitude))

# contains 'occ'
head(select(d1,contains('occ')),10)
sample_n(select(d1,contains('occ')),10)

# range of columns display
View(sample_n(select(d1,Age:latitude),15))

# conditional selction
View(tail(filter(d1,Age>20),10))

#multiple condition
View(filter(d1,Age>30,Family.size>4))

#find employees educational qualifications is post graduate and family size is 2
View(d1)
View(filter(d1,Educational.Qualifications =='Post Graduate', Family.size==2))

# arrange function
d1%>% arrange(Age) %>% head        # head = first 6 row
# pipe symbol - %>% 

#display age, occupation, latitude , and order by latitude and show 10 record
d1%>% 
  select(Age,Occupation, latitude) %>%
  arrange(latitude) %>% head(10)

# display age, educatuonal qualification, monthly income and select student with 
# no income
d1%>%select(Age,Educational.Qualifications,Monthly.Income)%>%