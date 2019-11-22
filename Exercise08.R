#Exercise 8 

#part 1
#create a line graph showing the cumulative score of a game\
#for each team as a function of time in the game. 

setwd("/Users/madeleinegirgis/Desktop/Biocomputing/IBC_Exercise_08/")


game=read.table("UWvMSU_1-22-13.txt", sep='\t', header=T, stringsAsFactors = F)
head(game)
scorematrix <- matrix(data=NA, nrow=51, ncol=3)
scorematrix[1,]=0

for(i in 1:nrow(game)){
  scorematrix[i+1,3]=game$time[i]
  if(game$team[i]=="UW"){
    scorematrix[i+1,2]=scorematrix[i,2]+game$score[i]
    scorematrix[i+1,1]=scorematrix[i,1]
  }else{
    scorematrix[i+1,1]=scorematrix[i,1]+game$score[i]
    scorematrix[i+1,2]=scorematrix[i,2]
  }
}
scorematrix
plot(x=scorematrix[,3], y=scorematrix[,2], type="l", xlab="Time", ylab="Score", col="blue")
lines(x=scorematrix[,3], y=scorematrix[,1], col="red")
legend("topleft", legend=c("UW", "MSU"), col=c("blue", "red"), lwd=1)






#part 2 
#tip: use cat instead of print 

#Guess the Number Game! 

#Generate a randon number, 1-100 
x <- sample(1:100, 1)

#user types in a number and gets ten guesses 
for(i in 1:10){
  a <- readline(prompt="Enter a guess!")
  #computer replies "lower" or "higher" or"correct"
  if(a>x){
    print("Lower...")
  }else if(a<x){
    print("Higher...")
  }else if(a==x){
    print("Correct!")
    break
  }
}


