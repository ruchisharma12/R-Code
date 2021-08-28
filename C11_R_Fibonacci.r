# Example of fibonacci series
a=0
b=1

n=5
print("Fibonacci Series")
print(a)
print(b)

i=0
while(i<=n)
{
  c=a+b
  print(c)
  a=b
  b=c
  i=i+1
}