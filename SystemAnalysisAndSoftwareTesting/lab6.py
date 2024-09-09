def sum(array):
    n=len(array)
    summation=0
    for i in range(n):
        summation+=array[i]
    return summation


def average(array):
    n=len(array)
    summation=sum(array)
    return summation/n


array=[1,2,3,4,5]
print("Summation:",sum(array))
print(f"Average: {average(array):.2f}")