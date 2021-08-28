#Multiplication of two matrixes

firstM <-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)

secondM <-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,ncol=3)

result <-matrix(,nrow=3,ncol=3)

print("First matrix")
print(firstM)
print("Second matrix")
print(secondM)
print("Multiplication of two matrixes using'*'")
print(firstM*secondM)
print("Multiplication of two matrixes using proper mathmatical rules")
print(firstM%*%secondM)