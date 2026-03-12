data<-iris
model<-lm(Petal.Length~Sepal.Length, data=data)
summary(model)
data$Predicted_Petal_Length<-predict(model)
head(data)
plot(data$Sepal.Length,data$Petal.Length,
     xlab="Sepal Lenght",
     ylab="Petal Length",
     main="Linear Regression",
     pch=16)
abline(model,col="blue")