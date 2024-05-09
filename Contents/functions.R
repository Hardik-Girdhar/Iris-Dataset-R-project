# FUNCTIONS IN R
# A set of statements whicha re organized together to perform a specific task
# function types: user defined function, in built function
# syntax: fun_name<-fucntion(arg1,arg2,....,argn)

# function - without arguments   ------------
f1<-function(){
  cat('R programming')
}
f1()

# function with arguments        -------------
add<-function(x,y){
  res<-x+y
  cat('addition of 2 number is: ' , res)
}
add(2,5)   # positional arguments

add<-function(x,y,z){
  res<-x+y+z
  cat('addition of 2 number is: ' , res)
}
add(x=2,y=5,z=5)  # keyword arguments

# default arguments          -----------------
f2<-function(x=10,y,z=10){
  res<-x*y*z
  cat('product is: ',res)
}
#f2(2,5)
f2(,2,2)

# find exponent of first 5 number
f4<-function(){
  for(i in 1:5){
    cat(i^2,' ')
  }
}
f4()

# find the squareroot of 1 to 10 by function
f5<-function(){
  for(i in 1:10){
    cat(i**0.5,' ')
  }
}
f5()

# find the volume of cube by taking input from user.
{
  a<-as.integer(readline("Enter the number: "))
  f6<-function(a){
    vol <- a**3
    cat('volume of cube is: ',vol)
  }
  f6(a)
}

# in built functions  ---------------
abs(-10)
sqrt(16)
ceiling(-10.9)   # round up to next integer either bigger or equal
ceiling(10.9)
floor(119.8)  # round up to the next integer either samll or equal
floor(-10.9)
trunc(10.1)  # truncate integer part
trunc(19.999999)
log(2)
sin(45)
tan(45)

sqrt(78)
