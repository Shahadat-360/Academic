def merge(arr,start,mid,end):
    merged=[0]*(end-start+1)
    idx1=start
    idx2=mid+1
    x=0
    
    while idx1<=mid and idx2<=end:
        if arr[idx1]<=arr[idx2]:
            merged[x]=arr[idx1]
            x+=1
            idx1+=1
        else:
            merged[x]=arr[idx2]
            x+=1
            idx2+=1
            
    while idx1<=mid:
        merged[x]=arr[idx1]
        x+=1
        idx1+=1
    
    while idx2<=end:
        merged[x]=arr[idx2]
        x+=1
        idx2+=1
    
    j=start
    for i in range(len(merged)):
        arr[j]=merged[i]
        j+=1 
    
    
def merge_sort(arr,start,end):
    if start<end:
        mid = start+(end-start)//2
        merge_sort(arr,start,mid)
        merge_sort(arr,mid+1,end)
        merge(arr,start,mid,end)
        
            
arr=list(map(int,input("Enter the array: ").split()))
print("Entered Array: ",arr)
#function call
merge_sort(arr,0,len(arr)-1)
print("Sorted array: ",arr)
