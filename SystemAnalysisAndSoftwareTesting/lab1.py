def warning():
    print("Please Enter in this format (number1 operator number2) ")
    
def calculation(num1,op,num2):
    if op=="+":
        return num1+num2
    elif op=="-":
        return num1-num2
    elif op=="*":
        return num2*num1
    elif op=="/":
        return num1/num2
    elif op=="%":
        return num1%num2
    else:
        print("Please Enter Valid Operator(+,-,/,*,%)")
        
        
while True:        
    try:
        num1,op,num2=input().split(" ")
        num1,num2=int(num1),int(num2)
        print(f"{num1} {op} {num2} = {calculation(num1,op,num2)}")
    except:
        print()
        warning()
        continue;
    
