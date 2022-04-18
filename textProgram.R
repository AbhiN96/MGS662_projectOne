library(tidyverse)
library(stringr)

myOutputList <- c()

base_dir <- "/Users/abhishek/Desktop/MSF/Machine_Learning/finalProject/Text_Renamed/"
wordList <- list('Krishna', 'Ravana', 'Lord', 'Flowers', 'Lakshmana', 'Ram', 'Sita', 'Forest', 'Deer', 'Tree', 'Monkeys', 'cows', 'rose')

myOutputList <- c()
for (j in 1:106) {
  imageName <- paste(j,'textFeatures','.csv')
  fileName <- paste(base_dir,j,'.txt', sep = '')
  singleString <- paste(readLines(fileName), collapse=" ")
  result <- grepl('rose', singleString)
  print(result)
  if (result == 'TRUE') {
    newElement <- '1'
    myOutputList <- c(myOutputList, newElement)
  } else {
    newElement <- '0'
    myOutputList <- c(myOutputList, newElement)
  }
  idf <- as.data.frame(myOutputList)
  write.csv(idf,imageName)
}