#Simple Linear Regression
setwd("D:/Study/Internsala/Spark Foudation Grip/Task 1")
mydata=read.csv("Task1Data_Study_Hours_score.csv",header=TRUE)
attach(mydata)
mydata
plot(Hours,Scores, col="Red",
     abline(lm(Scores~Hours),col="Blue"))
x = cor(Hours,Scores)
x
SLM=lm(Scores~Hours)
SLM
summary(SLM)
confint(SLM, "Hours")
confint(SLM, "Hours",level=0.99)
anova(SLM)
write.csv(anova(SLM),file="Task1_reg4_anova.csv") 
Prediction=predict(SLM)

Actual=Scores
BackTrack=data.frame(Actual,Prediction)
BackTrack
library(lattice)
plot(Actual,col="Red",xlab="Hours of Study",ylab = 'Scores')
lines(Actual,col="Red", xlab = 'Scores')
plot(Prediction,col="Blue",xlab='Hours of Study', ylab = 'Predicted Scores', title = 'Actual vs Predicted')
lines(Prediction,col="Blue")
newdata=data.frame(Hours=85)
predict(SLM,newdata,interval="confidence") 

library(ggplot2)

# this is the predicted line of multiple linear regression
Prediction_df=data.frame(predict(SLM))
Prediction_df
ggplot(data = mydata, aes(x = Hours, y = Scores)) + 
  geom_point(color='blue') +
  geom_line(color='red',data = Prediction_df, aes(x=Hours, y=predict.SLM.))


