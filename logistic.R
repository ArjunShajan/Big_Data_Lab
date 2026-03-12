data<-iris
data$Result<-ifelse(data$Species=="setosa",1,0)
model<-glm(Result~Petal.Length,data=data,family=binomial)
summary(model)
data$Predicted_Probability<-predict(model,type="response")
data$Predicted_Result<-ifelse(data$Predicted_Probability>0.5,1,0)
head(data)
plot(data$Petal.Length,data$Result,
     xlab="Petal Length",
     ylab="Result",
     main="Logistic Regression",
     pch=16)
curve(predict(model,
              data.frame(Petal.Length=x),
              type="response")
      ,add=TRUE,col="red")