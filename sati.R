n<- as.integer(readline("enter the number:"))
print("enter the number:")
x<-scan(n=n)

sum_x=0
for(i in x){
  sum_x<-sum_x+i
}
mean_value<-sum_x/n

m<-length(x)
for(j in 1:(m-1)){
  for(k in 1:(m-j)){
    if(x[k]>x[k+1]){
      temp<-x[k]
      x[k]<-x[k+1]
      x[k+1]<-temp
    }
  }
}
sorted_x<-x
print(x)
if(n%%2==0){
  median_value<-(sorted_x[n/2]+sorted_x[(n/2)+1])/2
}else{
  median_value<-sorted_x[(n+1)/2]
}
freq<-table(x)
mode_value<-as.numeric(names(freq)[freq==max(freq)])
cat("Mean=",mean_value,"\n")
cat("Median=",median_value,"\n")
cat("Mode=",mode_value,"\n")