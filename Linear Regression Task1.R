#Simple Linear Regression
setwd("G:/BACP/ADVSTAT")
mydata=read.csv("Hotel1.csv",header=TRUE)
attach(mydata)
mydata
plot(PercentOccupancy,Revenueindollar1000, col="Red",
     abline(lm(Revenueindollar1000~PercentOccupancy),col="Blue"))
cor(Revenueindollar1000,PercentOccupancy)
SLM=lm(Revenueindollar1000~PercentOccupancy)
SLM
summary(SLM)
confint(SLM, "PercentOccupancy")
confint(SLM, "PercentOccupancy",level=0.99)
anova(SLM)
write.csv(anova(SLM),file="G:/BACP/reg4.csv") 
Prediction=predict(SLM)
Actual=Revenueindollar1000
BackTrack=data.frame(Actual,Prediction)
BackTrack
library(lattice)
plot(Actual,col="Red",xlab="Data Point")
lines(Actual,col="Red")
plot(Prediction,col="Blue",xlab="Data Point")
lines(Prediction,col="Blue")
newdata=data.frame(PercentOccupancy=85)
predict(SLM,newdata,interval="confidence") 
 
