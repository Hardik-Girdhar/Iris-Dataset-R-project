install.packages("ggplot2")
# grammar of graphics
library(ggplot2)
# layer1: data layer where data set is added
iris
# layer2: aesthetics layer
# maps variables in data onto acales such as x and y cordinates.
p<-ggplot(iris,aes(x=Sepal.Length , y=Sepal.Width))
p
# layer3: geometries layer
# which types of graph you want to plot
p+geom_point()
# layer4: facet layer/optional
# make subplots by facet layer
p+geom_point() + facet_wrap(~Species)
# layer5: statistical layer allows to plot statistical layer
p+geom_point() + facet_wrap(~Species) + geom_smooth(method = 'lm')
# layer6: coordinate layer adjust the coordinates
p+geom_point() + facet_wrap(~Species) + geom_smooth(method = 'lm') + coord_cartesian(xlim=c(4,8),ylim=c(2,5))
# layer7: theme
p+geom_point() + facet_wrap(~Species) + geom_smooth(method = 'lm') + coord_cartesian(xlim=c(4,8),ylim=c(2,5)) + theme(axis.text = element_text(color = 'green'))




# -----------------------------------------------------------------------
# heatmap
# created by heatmap()
# accept input as matrix
mtcars
d<-as.matrix(mtcars)
d
# normalizing the matrix by scaling fucntion
heatmap(d,scale = 'column')
# remove dendogram
heatmap(d,Rowv = NA , Colv = NA,scale = 'column')

#coloring by color pallete
heatmap(d,Rowv = NA , Colv = NA,scale = 'column', col=cm.colors(356),xlab = 'Variables', ylab = 'Cars',main = 'Heatmap')

# ----------
trees
d<-as.matrix(trees)
d
heatmap(d,scale = 'column')
heatmap(d,Rowv = NA , Colv = NA,scale = 'column')
heatmap(d,Rowv = NA , Colv = NA,scale = 'column', col=cm.colors(356),xlab = 'Variables', ylab = 'Cars',main = 'Heatmap')

