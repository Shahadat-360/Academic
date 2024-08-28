def isSafe(mat,r,c):
    # Column check 
    for i in range(len(mat)):
        if mat[i][c]=='Q':
            return False
        
    # diagonal check '\'
    i,j=r,c
    while i>=0 and j>=0:
        if mat[i][j]=='Q':
            return False
        i-=1
        j-=1
    
    # diagonal Check '/'
    i,j=r,c
    while i>=0 and j<len(mat):
        if mat[i][j]=='Q':
            return False
        i-=1
        j+=1
    
    return True

def printSolve(mat):
    for r in mat:
        print(str(r).replace(","," ").replace("\'"," "))
    print()
    
def NQueen(mat,r=0):
    if r==len(mat):
        printSolve(mat)
        return 
    
    for i in range(len(mat)):
        if isSafe(mat,r,i):
            mat[r][i]='Q'
            NQueen(mat,r+1)
            mat[r][i]='-'    
            
N=int(input("Enter N: "))
mat=[['-']*N for x in range(N)]
NQueen(mat)
