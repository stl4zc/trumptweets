library(shiny)
install.packages("ECharts2Shiny")
library(ECharts2Shiny)
install.packages("wordcloud2")
library(wordcloud2)
install.packages("tm")
trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet7")  
  
  text <- trumptweets$content
  # Create a corpus  
  docs <- Corpus(VectorSource(text))
  docs <- docs %>%
    tm_map(removeNumbers) %>%
    tm_map(removePunctuation) %>%
    tm_map(remove("....")) %>%
    tm_map(stripWhitespace)
  docs <- tm_map(docs, content_transformer(tolower))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  dtm <- TermDocumentMatrix(docs) 
  matrix <- as.matrix(dtm) 
  words <- sort(rowSums(matrix),decreasing=TRUE) 
  df1 <- data.frame(word = names(words),freq=words)
    write.csv(df1, file = "trump2015.csv")
  
  trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet8")  
  
  text <- trumptweets$content
  # Create a corpus  
  docs <- Corpus(VectorSource(text))
  docs <- docs %>%
    tm_map(removeNumbers) %>%
    tm_map(removePunctuation) %>%
    tm_map(remove("....")) %>%
    tm_map(stripWhitespace)
  docs <- tm_map(docs, content_transformer(tolower))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  dtm <- TermDocumentMatrix(docs) 
  matrix <- as.matrix(dtm) 
  words <- sort(rowSums(matrix),decreasing=TRUE) 
  df4 <- data.frame(word = names(words),freq=words)
  write.csv(df4, file = "trump2016.csv")
  
  trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet9")  
  
  text <- trumptweets$content
  # Create a corpus  
  docs <- Corpus(VectorSource(text))
  docs <- docs %>%
    tm_map(removeNumbers) %>%
    tm_map(removePunctuation) %>%
    tm_map(remove("....")) %>%
    tm_map(stripWhitespace)
  docs <- tm_map(docs, content_transformer(tolower))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  dtm <- TermDocumentMatrix(docs) 
  matrix <- as.matrix(dtm) 
  words <- sort(rowSums(matrix),decreasing=TRUE) 
  df5 <- data.frame(word = names(words),freq=words)
  write.csv(df5, file = "trump2017.csv")
  
  trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet10")  
  
  text <- trumptweets$content
  # Create a corpus  
  docs <- Corpus(VectorSource(text))
  docs <- docs %>%
    tm_map(removeNumbers) %>%
    tm_map(removePunctuation) %>%
    tm_map(remove("....")) %>%
    tm_map(stripWhitespace)
  docs <- tm_map(docs, content_transformer(tolower))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  dtm <- TermDocumentMatrix(docs) 
  matrix <- as.matrix(dtm) 
  words <- sort(rowSums(matrix),decreasing=TRUE) 
  df6 <- data.frame(word = names(words),freq=words)
  write.csv(df6, file = "trump2018.csv")
  
  trumptweets <- read_excel("C:/Users/student/Desktop/trumptweets.xlsx", sheet = "Sheet11")  
  
  text <- trumptweets$content
  # Create a corpus  
  docs <- Corpus(VectorSource(text))
  docs <- docs %>%
    tm_map(removeNumbers) %>%
    tm_map(removePunctuation) %>%
    tm_map(remove("....")) %>%
    tm_map(stripWhitespace)
  docs <- tm_map(docs, content_transformer(tolower))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  dtm <- TermDocumentMatrix(docs) 
  matrix <- as.matrix(dtm) 
  words <- sort(rowSums(matrix),decreasing=TRUE) 
  df7 <- data.frame(word = names(words),freq=words)
  write.csv(df7, file = "trump2019.csv")
  
  
  
  wordcloud2(data=df, size=1.6, color='random-dark') 
  