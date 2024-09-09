import re

def printingStatement(result):
    for x in result:
        print(x)

result=[]
while True:
    try:
        string=input().strip()
        if string=="=":
            printingStatement(result)
            result=[]
            continue
        
        # Extract the first number (num1)
        num1_match = re.search(r"(\d+)", string)
        num1 = int(num1_match.group(1)) if num1_match else None

        # Extract the operator
        operator_match = re.search(r"([+\-*/%])", string)
        operator = operator_match.group(1) if operator_match else None

        # Extract the second number (num2)
        num2_match = re.search(r"(\d+)", string[num1_match.end():])
        num2 = int(num2_match.group(1)) if num2_match else None

        # Extract the expression 
        exp=string[-1]
        
        if exp==";":
            try:
                res=eval(f"{num1} {operator} {num2}")
                result.append(f"{num1} {operator} {num2} = {res}")
            except Exception as err:
                print("Error: ",err) 
        elif exp=="=":
            res=eval(f"{num1} {operator} {num2}")
            result.append(f"{num1} {operator} {num2} = {res}") 
            printingStatement(result)
            result=[]
        else:
            continue
    except Exception as err:
        print("Your input should be x+y; x and y are number and ; is the syntax")
        print("Error:",err)