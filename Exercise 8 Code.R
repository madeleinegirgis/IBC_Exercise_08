#Exercise 8 
#create a line graph showing the cumulative score of a game\
#for each team as a function of time in the game. 

setwd("/Users/madeleinegirgis/Desktop/Biocomputing/IBC_Exercise_08/")
library(ggplot2)
data.frame()
cumsum()

game=read.table("UWvMSU_1-22-13.txt", sep='\t', header=T, stringsAsFactors = F)
head(game)
a <- ggplot(data=game,aes(x=time, y=))
