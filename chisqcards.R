data<-read.csv(file.choose(),sep= ",", header=TRUE )
view(data)
result<-chisq.test(data)
result
if(resultSp.value>0.05){
  print("the disparencies are not significant")
}
else{
  print("the disparencies are significant")
}

#frame
Me<-data.frame(
  Spades=402, Diamonds=358,Clubs=273, Hearts=467
)
attach(Me)
result<-chisq.test(Me)
print(result)
if(result$p.value>=0.05){
  print("Null Hypothesis is Accepted")
}else{
  print("Null Hypothesis is Rejected")
}
