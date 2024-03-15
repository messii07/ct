salarydata<-data.frame(
  salaries_low=c(25000,26000,27000,28000,29000,30000,31000),
  salaries_high=c(25999,26999,27999,28999,29999,30999,32999),
  Numbers=c(8,10,16,14,10,5,2)
)
print(salarydata)
salarydata[ , prevNumbers := shift(Numbers,1)]
salarydata[ , nextNumbers := shift(Numbers,-1)]
salarydata
#identifying mode group
modegroup <- salarydata[Numbers == max(Numbers)]
modegroup
#creating the variables needed to calculate mode
l1 = modegroup[,salaries_low]
l2 = modegroup[,salaries_high]
f1 = modegroup[,Numbers]
f0 = modegroup[,prevNumbers]
f2 = modegroup[,nextNumbers]
#calculating mode
groupmode <- l1 + ((f1-f0)/(f1-f0+f1-f2)*(l2-l1))
groupmode



my_data<-read.csv(file.choose(),sep = ",",header = TRUE)
my_data
sd_A<-sd(my_data$A)
Var_A<-var(my_data$A)
cat("standard variation of A:",sd_A,"\n")
cat("variation of A:",Var_A,"\n")
sd_B<-sd(my_data$B)
Var_B<-var(my_data$B)
cat("s d of B:",sd_B,"\n")
cat("v of B:",Var_B,"\n")
View(my_data)
