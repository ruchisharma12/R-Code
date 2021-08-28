myVal <- c(10,20,30,40,50,60)
#For loop 
print("This is an example of 'for' loop")
for (i in 1:6){
  print(myVal[i])
}
# While loop 
print("This is an example of while loop")
j=0
while(j<5){
  j=j+1
  print(myVal[j])
}

# Control statement
a=5
b=10
print("This is an example of control statement")
if(a<b){
  print("a is smaller than b")
}else if(a==b){
  print("a is equal to b")
}else if(a>b){
  print("a is greater than b")
}else{
  print("Unexpected error")
}