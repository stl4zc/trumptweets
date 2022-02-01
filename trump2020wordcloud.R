library(shiny)
install.packages("ECharts2Shiny")
library(ECharts2Shiny)
install.packages("wordcloud2")
library(wordcloud2)
install.packages("tm")
trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet12")

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
df <- data.frame(word = names(words),freq=words)

wordcloud2(data=df, size=1.6, color='random-dark') 
