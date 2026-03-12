n <- (readline("Enter the string:"))
rev=""
for(ch in strsplit(n,"")[[1]]){
  rev<-paste0(ch,rev)
}
if(n==rev){
  print("Palindrome")
}else{
  print("Not Palindrome")
}