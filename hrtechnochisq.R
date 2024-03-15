data2<-read.csv(file.choose(),sep = ",",header =TRUE)
view(data2)
result<-chisq.test(data2)
result
if(result$p.value>0.05){
  print("support buisness owners prediction")
}else{
  print("reject buisness owners prediction")
}


input<-data.frame(
  Finance = c(12,7),
  Sales = c(38,19),
  HR= c(5,3),
  Technology= c(8,1))
attach(input)
result<-chisq.test(input)
print(result)
if(result$p.value>=0.05){
  print("Null Hypothesis is Accepted")
}else{
  print("Null Hypothesis is Rejected")
}
