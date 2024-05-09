setwd("C:/Users/OK/Downloads")
a<-read.csv("Prostate_cancer.csv")
View(a)

# 1.find number of rows
nrow(a)
# 2.find number of columns
ncol(a)
# 3.find total observations
str(a)
# 4.find dimension of given dataset
dim(a)
# 5.find minimum radius
min(a$radius)
# 6.find the average value of area.
mean(a$area)
# 7.Find symmetry,fractional_dimension of id 18,22,56,45.
y<-a[a$id %n% c(18,22,56,45) , c('id','symmetry','fractional_dimension')]
y
# 8.find area less than 600.
a1<-subset(a,area<600)
a1
# 9.find total number of ids who' diagnosis_result is M
a2<-subset(a,diagnosis_result == 'M')
a2
# 10.find the range value of smoothness
range(a$smoothness)
# 11.find compactness and symmetry less than 0.158
a1<-subset(a,compactness < 0.158 & symmetry < 0.158)
a1
# 12.add area and radius and make column new_dim.
d<-a$area + a$radius
cbind(a,new_dim=d)
# 13.find the position of column texture and symmetry.
grep('texture',colnames(a))
grep('symmetry',colnames(a))
# 14.retrive last 20 ids.
tail(a,20)