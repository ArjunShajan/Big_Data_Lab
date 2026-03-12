n <- as.integer(readline("Enter the number:"))
fact <- 1

if(n<0){
  print("Factorial not exist for negative number")
}else{
  for(i in 1:n){
    fact <- fact*i
  }
  print(paste("Factorial is",fact))
}