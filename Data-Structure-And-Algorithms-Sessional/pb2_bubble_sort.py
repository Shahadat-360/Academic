# Author: MD.Shahdat Hossain Bhuian
def bubble(arr):
    for i in range(len(arr)):
        for j in range(i+1,len(arr)):
            if arr[i]>arr[j]:
                arr[i],arr[j]=arr[j],arr[i]
    return arr


arr=list(map(int,input("Enter an array: ").split()))
print("After Bubble sort: ",bubble(arr))
