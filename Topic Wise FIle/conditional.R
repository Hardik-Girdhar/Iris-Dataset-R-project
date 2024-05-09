# unit - conditional statements
# if, else, elseif ladder, nested if

age = 14
{
age = as.numeric(readline("enter your age: "))
if(age >= 18)
{
  print("eligible for voting")
}else                    # mandatory to take else at en dof braces
{
  print("not eligible for voting")
}
}

# SEARCHING IN CONDITIONAL STATEMENT --- %in%
y=c('R' ,'is','statistical','programming','language')
y
if('Programming' %in% y)
{
  print("found")
}else
{
  print("not found")
}

# check number along with number ---- paste
{
num = as.numeric(readline("Enter the number: "))
if(num >= 0)
{
  paste(num, "is positive number")
  #print(paste(num, "is positive number"))
}else
{
  cat(num, "is negative number")
}
}


{
n = as.numeric(readline("Enter the number: "))
if(n<0)
{
  if(n%%2==0)
  {
    cat(n, " is smaller and even")
  }else
  {
    cat(n, " is smaller and odd")
  }
}else if(n>0)
{
  if(n%%2==0)
  {
    cat(n, " is greater and even")
  }else
  {
    cat(n, " is greater and odd")
  }
}else
{
  cat(n," is zero and even")
}
}


# r switch statement 
# it provides multi-way branch statement
# provide easy way to dispatch execution for different part of code 
# This code based on the value of expression
# if expression type is character string.
# the string is matched to the listed cases
# if there is more than one match
# the first match element is used
# no default case is available
# if no case is matched, an unname case is used.
# two types: based on index , based on matching values

# TYPE-1 : based on index
z<-switch(2,56,58,36,23,11)   # 2 is index -- 58  --- 1=56 , 2=58
print(z)
z<-switch(8,56,58,36,23,11) 
z

a<-1
b<-2
z<-switch(a+b,56,58,36,23,11)
print(z)

x<-switch(2,'cse','me','civil','ece')
x


# TYPE-2 : based on matching values
z1<-'4'
z<-switch(z1,'4'='Ram','6'='sham','12'='arun')
print(z)

#Program on Calculator by using matching values switch
{
  a<-as.integer(readline("Enter the frist number: "))
  b<-as.integer(readline("Enter the second number: "))
  c<- readline("Enter the operation: ")
  d<-switch(c,'+'=a+b , '-'=a-b , '*'=a*b, '/'=a/b)
  if(c=='+')
  {
    cat("sum of 2 number will be: " , d)
  }else if(c == '-')
  {
    cat("diff of 2 number is: " , d)
  }else if(c == '*')
  {
    cat("product of 2 number: ", d)
  }else
  {
    cat("division: " , d)
  }
}

# Program to find square root , cube root
{
  a<-as.integer(readline("Enter the number: "))
  b<-readline("2 for square root, 3 for cube root: ")
  c<-switch(b, '2'=a**1/2, '3'=a**1/3)
  if(b == '2')
  {
    cat("sqaure root of ", a ," is: ", c)
  }else
  {
    cat("cube root of ", a, " is: ", c)
  }
}

#FIND ODD AND EVEN NUMBER BY SWITCH
{
  a<-as.integer(readline("Enter the number: "))
  b<- switch(a%%2,0,cat("Even"),1,cat("Odd"))
  b
}

{
  a<-as.integer(readline("Enter the number: "))
  b<-readline("o for odd, e for even: ")
  c<-switch(b , 'e' = a%%2==0 , 'o' =a%%2!=0)
  c
}
