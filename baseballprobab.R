print("What percentage play in fewer than 750 games?")
pa<-pnorm(750,mean = 1500,sd=350,lower.tail = T)
percenta<-pa*100
print(percenta)
print("What percentage play in more than 2000")
pb<-pnorm(2000,mean = 1500,sd=350,lower.tail = T)
percentb<-pb*100
print(percentb)
print("Find the 90th percentile for the number of games played during a career")
p5<-round(pnorm(0.05,mean = 1500,sd=350),0)
p95<-round(pnorm(0.05,mean = 1500,sd=350),0)
print("the 90th percentile for the number of games played during a career")
cat("range of 90 percentile is:" ,p5,"-",p95)
