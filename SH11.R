# create the data from .csv file
#read data from .csv file
newdata <- read.csv("C:/Users/rruchi/Desktop/R Code/week6/SHfile.csv")
print(newdata)

X= newdata$X;
Y=newdata$Y;
print(x)
print(y)
#compute the correlation
#correlation = cor(x, y, method = "pearson")
# result


 #compute Karl Pearson's correlation
CalCorr <- function(){
  Exy=Ex=Ey=Ex2=Ey2=i=0
  while(i<10){
    Ex = Ex + X[i]
    Ey = Ey + Y[i]
    Ex2 = Ex2 + (X[i]*X[i])
    Ey2 = Ey2 + (Y[i]*Y[i])
    Exy = Exy + (X[i]*Y[i])
    i=i+1
    }
    nExy= Exy*10
    nEx2= Ex2*10
    ExEy= Ex*Ey
    nEy2 = Ey2*10
    Ex2 = Ex*Ex
    Ey2 = Ey*Ey
    result=(nExy-ExEy)/((sqrt(nEx2-Ex2 ))*(sqrt(nEy2-Ey2)))
    #output.set("Pearson's Coorelation Coefficient: %.5f"%(result))
    cat("Karl Pearson's Correlation = ",result)
}
#compute Rank Spearsman's correlation
rankSpear <- function(){
  rank = cor(x, y, method = "pearson")
  print("Rank Spearsman'a Correlation = ",(rank))
}

graph <- function(){
  pie(X,Y,  col=rainbow(10))
  
}

print("Enter your choice")
print("1. Karl Pearson's Correlation")
print("2. Rank Spearsman's")
print("3. Graph")

a <- readline()
s = strtoi(a, base=0L)

r = switch(  
  s,  
  "1"=CalCorr(),  
  "2"=rankSpear(),  
  "3"=graph()  
  
)  

#print (r)  
#print("result=", switch)
#write data from .csv file
write.csv(result,"C:/Users/rruchi/Desktop/R Code/week6/SH.csv")



