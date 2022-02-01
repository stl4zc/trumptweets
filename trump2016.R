library(shiny)
install.packages("ECharts2Shiny")
library(ECharts2Shiny)
install.packages("wordcloud2")
library(wordcloud2)
install.packages("tm")
trumptweets <- read_excel("C:/Users/student/Documents/trumptweets2017.xlsx")  

wordcloud2(data=trumptweets2017, size=1.6, color='random-dark') 
