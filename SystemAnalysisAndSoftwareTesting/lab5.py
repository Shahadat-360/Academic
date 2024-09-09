n=int(input("Please Enter a number: "))
fact=1
for i in range(1,n+1):
   prev=fact
   fact = i*fact
   # To verify the factorial  
   print(f"In {i} iteration factorial is {prev} X {i} = {fact}")
print(f"Factorial Of {n} is {fact}")