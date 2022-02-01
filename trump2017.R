library(wordcloud2)
library(wordcloud)
install.packages("tm")
trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet9")  

text <- trumptweets$content
# Create a corpus  
docs <- Corpus(VectorSource(text))
docs <- docs %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, removeWords, stopwords("english"))
dtm <- TermDocumentMatrix(docs) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df2 <- data.frame(word = names(words),freq=words)
write.xlsx(df2, file = "trumper.xlsx", sheet = "2017")

t17<-wordcloud2(data=df, size=1.6, color='random-dark') 
install.packages("webshot")
webshot::install_phantomjs()
saveWidget(t17,"17.html",selfcontained = F)
webshot::webshot("17.html","17.png",vwidth = 1992, vheight = 1744, delay =10)


