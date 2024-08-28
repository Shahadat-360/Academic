def pattern_matching(pat,txt):
    pl=len(pat)
    tl=len(txt)
    c=True
    
    for i in range(tl-pl+1):
        j=0
        while j<pl:
            if txt[i+j]!=pat[j]:
                break
            j+=1
        if j==pl:
            print("Pattern Found in: ",i," index")    
            c=False
    if c:
        print("Pattern Not Found")
    
    
str=input("Enter String: ")
pat=input("Enter Pattern: ")
pattern_matching(pat,str)  
            
