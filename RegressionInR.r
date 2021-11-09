#
# Title:Project 1- Part 2 : Regression in R.
# 
# Description: In this project, it extracts the data from an csv file 
#              and compute the regression  and also represent the data in the form of graph
# Copyright: Ruchi Sharma 
# 
# Author: Ruchi Sharma
# 
# Version: 1.00	2021-09-09 Baseline computes regression and shows graphical 
#                          representation of data in two ways
#          1.01 2021-16-09 Data read and write features added
# create the data from .csv file
#read data from .csv file
newdata <- read.csv("C:/Users/MOHAMMAD ASHFAK/Downloads/190011_Stat_II_W13_Project2_Linear Regression In R/data.csv")
print(newdata)

X= newdata$X;
Y=newdata$Y;
print(X)
print(Y)

#computes linear regression coefficient
regressionCoefficient <-function(){
  i=1
  Exy=Ex2=Ey2=0
  Ex =sum(X)
  Ey= sum(Y)
  
  while(i<11)
  {
    Ex =Ex+ X[i]
    Ey = Ey+Y[i]
    Ex2 = Ex2+(X[i]*X[i])
    Ey2  = Ey2+(Y[i]*Y[i])
    Exy = Exy+(X[i]*Y[i])
    i=i+1
  }
  nExy= Exy*10
  nEx2= Ex2*10
  ExEy= Ex*Ey
  nEy2 = Ey2*10
  Ex2 = Ex*Ex
  Ey2 = Ey*Ey
  bxy=(nExy-Ex*Ey)/(nEy2-Ey2)
  
  byx=(nExy-Ex*Ey)/(nEx2-Ex2)
  str1<- paste("Regression coefficient for X on Y: ",toString(bxy),sep="")
  str2<- paste("Regression coefficient for Y on X: ",toString(byx),sep="")
  print(str1)
  print(str2)
  result<-paste(str1,str2, sep="   ")
  #writing the result into a .csv file
  write.csv(result,"C:/Users/MOHAMMAD ASHFAK/Downloads/190011_Stat_II_W13_Project2_Linear Regression In R/RegressionCoefficient.csv")
}
#compute linear regression Equation
regressionEquation <- function(){
  i=1
  Exy=Ex2=Ey2=0
  Ex =sum(X)
  Ey= sum(Y)
  while(i<11)
  {
    Ex =Ex+ X[i]
    Ey = Ey+Y[i]
    Ex2 = Ex2+(X[i]*X[i])
    Ey2  = Ey2+(Y[i]*Y[i])
    Exy = Exy+(X[i]*Y[i])
    i=i+1
  }
  nExy= Exy*10
  nEx2= Ex2*10
  ExEy= Ex*Ey
  nEy2 = Ey2*10
  Ex2 = Ex*Ex
  Ey2 = Ey*Ey
  bxy=(nExy-Ex*Ey)/(nEy2-Ey2)
  
  byx=(nExy-Ex*Ey)/(nEx2-Ex2)
  str1<- paste("Y-",toString(byx),"X=",toString(Ey-byx*Ex),sep="")
  str2<- paste("X-",toString(bxy),"Y=",toString(Ex-bxy*Ey),sep="")
  result<-paste(str1,str2,sep="   ")
  print(str1)
  print(str2)
  #writing the result into a .csv file
  write.csv(result,"C:/Users/MOHAMMAD ASHFAK/Downloads/190011_Stat_II_W13_Project2_Linear Regression In R/RegressionEquation.csv")
  }
#plot the graph
graph <- function(){
  pie(X,Y,  col=rainbow(10))
  
}



#the  main function starts here

k=0
ext<-function(){
  print("Exiting ......")
  k=1
  stopifnot(k==0)
}
while(k==0)
{
  print("Enter Your Choice:")
  print("1.Linear Regression Coefficient ")
  print("2.Linear Regression coefficient ")
  print("3. Graph")
  print("0.Exit")
  print("Enter your choice:")
  f <- readline()
  s = strtoi(f, base=0L)
  result =switch(s,
                 "1"= regressionCoefficient(),
                 "2"= regressionEquation(),
                 "3"= graph(),
                 "0"= ext())

}





