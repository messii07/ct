salarydata<-data.frame(
  salaries_low=c(25000,26000,27000,28000,29000,30000,31000),
  salaries_high=c(25999,26999,27999,28999,29999,30999,32999),
  Numbers=c(8,10,16,14,10,5,2)
)
print(salarydata)
#salarydata<-salarydata[,cumNumbers:=cumsum(Numbers)]
salarydata
mediangroup<-salarydata
{
  ((cumNumbers-Numbers)<=(max(cumNumbers)/2 &
                            (cumNumbers)>=(max(cumNumbers)/2))
   {
     l1=mediangroup(,salaries_low)
     l2=mediangroup(,salaries_high)
     f=mediangroup(,Numbers)
     pcf=mediangroup(,cumNumbers-Numbers)
     n=salarydata(,sum(Numbers))
  }
}
median<-l1+(((n/2)-pcf)/f*(l2-l1))
median




data<-read.csv(file.choose(),sep = ",",header = T)
data2<-data
data2$cumm<-cummsum(data2$frequency)
View(data2)
data2$pcf<-data.table::shift(data2$cumm,1)
data2$low<-data2$low - 0.05
data2$high<-data2$high + 0.05
N<-max(data2$cumm)
median_data<-data2[(data2$pcf <= N/2 & data2$cumm>= N/2), ]
median_data
l1<-median_data$low
l2<-median_data$high
pcf<-median_data$pcf
f<-median_data$frequency
median<-l1+(