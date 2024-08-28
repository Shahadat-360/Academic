def towerOfHanoi(n,source,helper,destination):
    if n==1:
        print("Move disk",n,"from source",source,"to destination",destination)
        return
    towerOfHanoi(n-1,source,destination,helper)
    print("Move disk",n,"from source",source,"to destination",destination)
    towerOfHanoi(n-1,helper,source,destination)
    

n=4
towerOfHanoi(n,'A','B','C')
