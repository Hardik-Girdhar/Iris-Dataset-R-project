install.packages("tm")   # text mining 
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("rcolorbrewer")

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

w<-readLines(file.choose())
w
View(w)

# step1: creating corpus file for making  data structured format in
w1<-Corpus(VectorSource(w))
w1

# step2: text cleaing
# remove casesenstivity, whitespaces, punctuations, numbers, stopwords, 
stopwords("english")
w1<-tm_map(w1,tolower)
w1<-tm_map(w1,stripWhitespace)
w1<-tm_map(w1,removePunctuation)
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removeWords,stopwords("english"))
w1

# step3: text transformation transform special character by space
tospace<-content_transformer(function(x,pattern)gsub(pattern," ",x))
w1<-tm_map(w1,tospace,'?')
w1<-tm_map(w1,tospace,',')
w1<-tm_map(w1,tospace,'@')
w1<-tm_map(w1,tospace,'.')
w1<-tm_map(w1,tospace,'_')
w1<-tm_map(w1,tospace,'/')
# text stemming: stremming words like mvoving, moved
w1<-tm_map(w1,stemDocument)

# step4: find frequncy
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1) # output in table
w1
m1<-as.matrix(w1)
View(m1)
m1<-sort(rowSums(m1),decreasing= TRUE)
View(m1)

# visualize by using wordmap
# input as dataframe
d<-data.frame(word=names(m1),freq=m1)
d

library(wordcloud)
wordcloud(words=d$word,freq = d$freq, rot.per=0.35,colors = brewer.pal(8,"Dark2"))
