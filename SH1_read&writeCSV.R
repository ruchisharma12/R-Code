# create the data from .csv file
#read data from .csv file
newdata <- read.csv("C:/Users/rruchi/Desktop/R Code/week6/SHfile.csv")
print(newdata)

x= newdata$X;
y=newdata$Y;
print(x)
print(y)
#compute the correlation
result = cor(x, y, method = "pearson")
 
 
print(result)
#write data from .csv file
write.csv(result,"C:/Users/rruchi/Desktop/R Code/week6/SH.csv")



