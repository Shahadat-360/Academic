def selection_sort(arr):
    n=len(arr)
    for i in range(n-1):
        minimum=i
        for j in range(i+1,n):
            if arr[minimum]>arr[j]:
                minimum=j
        arr[i],arr[minimum]=arr[minimum],arr[i]
    return arr

arr = list(map(int,input("Enter an Array: ").split()))
print("Entered Array: ",arr)
print("Sorted Array: ",selection_sort(arr))
