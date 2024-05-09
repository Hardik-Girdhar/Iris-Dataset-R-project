# dplyr package
d1=data.frame(name=c('a','b','c','d'),
              age=c(12,45,23,32),
              ht=c(5,6,NA,NA),
              school=c('yes','yes','no','no'))
d1

library(dplyr)

# function realted to variables(columns)
select(d1,starts_with('s'))
select(d1,starts_with('na'))

# -starts_with() except that column
select(d1,-starts_with('h'))
select(d1,2:4)   # display variable in range

# print data of column heading containing 'o'
select(d1,contains('o'))

# mutate(), transmute() -- add variable , mutate dataframe with new variable 
# but transmute is show only new variable
mutate(d1,new_age=age+3)
mutate(d1,new_age=c(1:4))
transmute(d1,new_age=c(21:24))
transmute(d1,new_age=age+3)

# summarise() for statistical analysis
summarise(d1,average_age = mean(age))
summarise(d1,max_age = max(age))

# functions on row -- first5 row, last  row
sample_n(d1,2) # first 2 row
sample_frac(d1,.50)  # 50% of data
with(d1,age*2) # output display row wise




#--------------------------------------------------------------

