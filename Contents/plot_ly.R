library(plotly)
df<-mtcars
View(df)
plot_ly(data = df,x=~cyl,y=~disp)
name<-row.names(mtcars)
plot_ly(data = df,x=~cyl,y=~disp,text=~name)
plot_ly(data = df,x=~cyl,y=~disp,text=~name, color=~factor(cyl))

plot_ly(x=c('beverage','vegetable','dairy'),y=c(20,14,30),type = 'bar')

parts<-c('beverage','vegetable','dairy')
sales_2019<-c(20,14,30)
sales_2023<-c(12,18,29)
df<-data.frame(parts,sales_2019,sales_2023)
fig<-plot_ly(data = df,x=~parts , y=sales_2019,type = 'bar',name = 'sales_2019')
fig
------
fig1<-fig%>%add_trace(y=~sales_2023 , name = 'sales 2019/2023')
fig1


 # -----------------------------------------------------------------------------------------

install.packages('quantmod')
library(quantmod)
getSymbols("AAPL")
head(AAPL,n=10)
chart_Series(AAPL,subset = '2007-05::2009-01')
