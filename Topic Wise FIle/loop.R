# iteration
#------------------------- FOR LOOP ---------------------
for(i in seq(1,10))
{
  print(i)
}

for(a in seq(11,50,by=2)){      # if i want gap of 2 -- by 2 -- is used
  print(a)
}

# displaying range two times
v<-c(11:20)
for(a in rep(v,each=2))
{
  print(a)
}

v<-c('cse','civil','aerospace','it','ece','eee')
v
for(x in v){
  cat(x," ")
}

# all the elements should be doubled using for loop
b=c(2:15)
for(d in b){
  cat(2*d," ")
}

#find even number---- by using unlist
l1<-list(2:20)
class(l1)
l2<-unlist(l1)
class(l2)
for(a in l2)
{
  if(a%%2==0){
    cat(a," ")
  }
}

# USING BREAK STATEMENTS
for(a in seq(21,30)){
  if(a==28){
    break;
  }
  print(a)
}
# USING NEXT STATEMENT   --- continue
for(a in seq(61,70)){
  if(a==67){
    next;
  }
  print(a)
}

# PRINT ODD NUMBER IN v1=c(23,45,78,99,100)
v1<-c(23,45,78,99,100)
for(i in v1){
  if(i%%2==0){
    next;
  }
  print(i)
}




#----------------- WHILE LOOP ---------------------
#print(1 to 10)
i=1
while(i<11){
  print(i)
  i=i+1
}

#number entered by user print up to it
{
  a<-as.integer(readline("Enter your input: "))
  i=1
  while(i<=a){
    print(i)
    i=i+1
  }
}

#display cube of number upto n integer
{
  a<-as.integer(readline("Enter the input: "))
  i=1
  while(i<=a){
    print(i**3)
    i=i+1
  }
}

#display the n terms of odd number and their sum
{
  a<-as.integer(readline("Enter the input: "))
  i=1
  sum=0
  while(i<=a){
    if(i%%2==1){
      sum=sum+i
    }
    i=i+1
  }
  print(sum)
}

# display the sum of square of first natural number and their sum
{
  a<-as.integer(readline("Enter the input: "))
  i=1
  sum=0
  while(i<=a){
    sum = sum + i**2
    i=i+1
  }
  print(sum)
}


# --------------- REPEAT LOOP - no condition - break -------------
i=1
repeat{
  if(i==10){
    break
  }
  print(i)
  i=i+1
}

# display cube
{
  a<-as.integer(readline("Enter the input"))
i=1
repeat{
  if(i==a){
    break
  }
  print(i**3)
  i=i+1
}
}

ceiling()
sqrt(78)
sqrt()
floor(56.9)
