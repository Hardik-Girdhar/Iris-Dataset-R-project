#1
feedback_data <- data.frame(
  department = c("sales", "support", "billing", "sales", "support","Market","sales","support"),
  feedback_type = c("positive", "neutral", "negative", "positive", "positive", "neutral", "negative","positive")
)
feedback_data

#a
positive_proportion <- tapply(feedback_data$feedback_type == "positive", feedback_data$department, mean)
positive_proportion 

#b
total_feedbacks <- apply(feedback_data, 2, length)
total_feedbacks

#2

School <- function(num) {
  if (num >= 10 & num <= 50) {
    even_group <- seq(2,num,by=2)
    odd_group <- seq(1,num,by=2)
    return(list(even_group,odd_group))
  }else{
    print("Invalid")
    return(NULL)
  }
}
{
  students<-as.integer(readline("Enter the number: "))
  Groups<-School(students)
  print(Groups)
}


#3

data("trees")
View(trees)

#a
subset_trees <- trees[trees$Girth > 15 & trees$Height > 16, ]
subset_trees

#b
library(dplyr)
filter <- trees%>%
  filter(Girth >15 & Height>16)
filter

#c
library(sqldf)
filtered_trees_sql <- sqldf("SELECT * FROM trees WHERE Girth > 15 AND Height > 16")
filtered_trees_sql





