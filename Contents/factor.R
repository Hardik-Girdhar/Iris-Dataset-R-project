# DATA STRUCTURE: factor
# factors are the data objects which used to categorized the data and store it as levels.

# data can be integer, numeric and character
# Labels are defined in character
# take vector as input
# created by factor()
# two types of data : ordinal and nominal

f1<-factor(c('B','D','D','A','E','D','C','C','D'))
f1

f2<-factor(c('north' , 'south' ,'west' , 'south','north'))
f2

#Accessing element
f1[2]
f1[2:7]

#UPDATE ELEMENTS
f1[2]<-'C'
f1[2]<-'f'

f3<-factor(c('B','D','D','A','E','D','C','C','D'),levels=c('A','B','C','D','E','F'))
f3[2]<-'F'
f3

f3[3]<-'G' #error because G is not present in current level
levels(f3) <- c(levels(f3) , 'G')
f3[3]<-'G'
f3

#LABELS
f2<-factor(c('north' , 'south' ,'west' , 'south','north') , labels = c('N','W','S'))
f2

#gl() ordered repition of data
f4<-gl(4,3 , labels = c('Btech' , 'BCA' ,'BBA' , 'MBA'))
f4
# 1st argument <- no of level
# 2nd argument <- repitition
# 3rd argument <- labels
f4[3]<-'MBA'
f4

#access 1st,4th,5th element of f4
elements <- f4[c(1, 4, 5)]
elements

#delete 3rd and 5th element of f4
delete <- f4[-c(3, 5)]
delete