# program to check the given number is prime or not
x=19
a=0
for(j in 2:(x-1))
{
  if((x%%j) == 0)
  {
    a=1
  }
}  
print ("given number is 19")

if(a==0){
  print("It is a prime no")
}else{
  print("It is not a prime no")
}
