def printJobScheduling(arr, t):
	arr.sort(key=lambda a:a[-1],reverse=True)
	result = [False] * t
	job = ['-1'] * t
	for i in range(len(arr)):
		for j in range(min(t - 1, arr[i][1] - 1), -1, -1):
			if result[j] is False:
				result[j] = True
				job[j] = arr[i][0]
				break
	print(job)
 
 
arr = [['a', 1, 3],['b', 3, 25],['c', 2, 1],['d', 1, 6],['e', 2, 30]]
print("Following is maximum profit sequence of jobs")
printJobScheduling(arr, 3)
