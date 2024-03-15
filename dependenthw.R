data<-read.csv(file.choose(),sep = ',',header = TRUE)
View(data)
print("H is independent variable")
reg<-lm(W~H)
reg
print("H is hependent variable")
reg<-lm(H~W)
reg 