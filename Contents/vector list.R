# data structure list
#list is hetrogeneous ds
# indexing of list start from 1
# list is created by list()
# list can be list of numeric, charater, logical, integer, complete
# list can be lsit of vectors, matrices , arrays

# numeric list
a<-list(2,3,5,6)   # list
a  
a<- c(2,3,5,6)     # vector
a
b<-list('lpu' , 'chitkara' , 'thappar')
b
a<-list(2,3,5,6)
a  
a<- c(2,3,5,6)
a
d<-list(c(2,3,4), c('lpu' , 'darwin' , 'oxford') , c(24L , 45L , 26L))
d
class(d)
class(d[1][2])
class(d[2][2])
class(d[3][3])
e<- list(c(45L ,45 , 23,9) ,c('sun' , 'earth' , 23) , c(34-7i , TRUE , 65L))
class(e[[1]][3])
class(e[[3]][2])
f<-list(c(45L,45,23.9), list('sun','earth',23))
f
class(f[[2]][[3]])

# EXTRACTION

f<-list(c(45L,45,23.9), list('sun','earth',23))
f[[1]][3]    # 23.9 is present in vector so[] fro index
class(f[[1]][3])
f[[2]][[3]]   # 23 is present in list so [[]] for list in list to find

f<-list(c(45L,45,23.9), list('sun','earth',23))
# access first 3 element of list f
f[[1]][1:3]
# access 4th and 6th element of list f
f[[2]][c(1,3)]

#UPDATE

f[[1]][1]<-34  #update 45L to 34
f
#update 1 and 3 element by 100
f[[1]][c(1,3)]<-100  
f[[1]]

#DELETE

a<-f[[1]][-1]
a  # only update delete in a
f[[1]]  # no change
#delete 4 to 6 element
b<-f[[2]][c(-1:-3)]
b
f[[2]]

# CREATING NAMING LIST

l1<-list(c(1,2,3),c('ram' ,'sham' ,'jack'),c('chd' ,'delhi' ,'noida'))
names(l1)<-c('roll no' , 'name' , 'address')
l1
#accessing elements by naming
l1['roll no']
l1['name']
l1['address']
l1 $name[2]   # access naming at specific index by $
'hardik' %in% l1
2 %in% l
l3<-list('ram','sham')
l2<-list('red','black','green','blue')
l2
# present or not
'red'%in%l2

# APPEND
append(l2,'orange')
b<-append(l2,'pink',after = 2)
b

#TASK
emp<-list(c(11,13,14,16) ,c('ram','mohan','jack','john') ,c(1300,1400,2000,2500,5633))
names(emp)<-c('emp_id' ,'name' ,'salary')
emp

# find salary of emp_id 1
emp[[3]][[1]]

#update salary 5000 od emp_id 2
emp[[3]][[2]]<-5000
emp[[3]]

#add new emplpoyee id=2
emp_new<-append(emp[[1]],2)
emp_new