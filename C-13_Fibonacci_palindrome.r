#This function checks fibonacci
fibonacci <- function(x){
  flag=0
  a=0
  b=1
  i=0
  while(i<=x)
  {
    c=a+b
    if (c==x){
      flag = 1;
      break;
    }
    a=b
    b=c
    i=i+1
  }
  if(flag==1){
    print (paste("Number belongs to fibonacci series: ",x))
  }else{
    print (paste("It does not belongs to fibonacci series: ", x))
  }
  
}

# check the given number is palindrome or not

palindrome <- function(a){
  rev = 0
  num = a
  
  while (a > 0) {
    r = a %% 10
    rev = rev * 10 + r
    a = a %/% 10
  }
  print("")
  if (rev == num)
  {
    print(paste("Number is palindrome :", rev))
  }
  else{
    print(paste("Number is not palindrome :", rev))
  }
}

fibonacci(13)
palindrome(12321)