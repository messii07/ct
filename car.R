dist<-c(25,25,25)
speed<-c(25,50,75)
data<-rep(speed,dist)
data
mean_speed<-mean(data)
mean_speed
#library(psych)
harmonic_speed<-harmonic.mean(data)
harmonic_speed
print("since speed have fraction unit measure therefore harmonic mean is correct mean")
