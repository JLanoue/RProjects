Teams <- c("Yankees", "Red Sox", "Blue Jays", "Rays", "Orioles")
Counter <- c(1:5)
Odds <- c(588, 573, 532, 482, 465)
n <- 100 #Number of Simulated Seasons
ALEastOdds <- data.frame(Counter,Teams,Odds)

Results<- Results[0,]
NYWResults <- NYWResults[0,]
BOSResults <- BOSResults[0,]
TORResults <- TORResults[0,]
TBResults <- TBResults[0,]
BALResults <- BALResults[0,]
NYWResults <- data.frame("Win" = integer())
BOSResults <- data.frame("Win" = integer())
TORResults <- data.frame("Win" = integer())
TBResults <- data.frame("Win" = integer())
BALResults <- data.frame("Win" = integer())


x<-1
while (x < (n +1))  {
RandomSeason <- sample(1:1000,162,replace = TRUE)
NYW <- sum(RandomSeason <= Odds[1]  )
NYWResults <- rbind(NYWResults, NYW)

RandomSeason <- sample(1:1000,162,replace = TRUE)
BOSW <- sum(RandomSeason <= Odds[2]  )
BOSResults <- rbind(BOSResults, BOSW)

RandomSeason <- sample(1:1000,162,replace = TRUE)
TORW <- sum(RandomSeason <= Odds[3]  )
TORResults <- rbind(TORResults, TORW)

RandomSeason <- sample(1:1000,162,replace = TRUE)
TBW <- sum(RandomSeason <= Odds[4]  )
TBResults <- rbind(TBResults, TBW)

RandomSeason <- sample(1:1000,162,replace = TRUE)
BALW <- sum(RandomSeason <= Odds[5]  )
BALResults <- rbind(BALResults, BALW)

x<-x+1
}

Results <- data.frame(NYWResults,BOSResults,TORResults,TBResults, BALResults)
colnames(Results) <- c(Teams)

max(Results[,100])

max

# x <- x-1
# while (x > 0) {
# HighestW <- Max(Results[,x])
# DivisionWinner <- rbind(DivisionWinner, HighestW)
# x <- x-1
# }
# Sum each occurance of the number
# Apply team names to each number
# show number of division winners