mydata <- read.csv("C:/Users/rruchi/Desktop/R Code/week6/myfile.csv")
print(mydata)
print(subset(mydata,Dept=="CSE"))
print(subset(mydata,Dept=="MCA"))
print(subset(mydata,Marks >300))


write.csv(subset(mydata,Dept=="CSE"),"C:/Users/rruchi/Desktop/R Code/week6/f1.csv")


