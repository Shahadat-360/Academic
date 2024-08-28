Gos = 0.5 / 100
Au = 0.1
# from table
A = [0.005, 1.13, 3.96, 11.1, 80.9]
c = [1, 5, 10, 20, 100]

# Display information
print('Blocking probability')
print(Gos)
print('Traffic intensity per user ')
print(Au)
print('Traffic intensity')
print(A)
print('Channel')
print(c)

# Calculate number of users
U = [a / Au for a in A]
u = [round(u_val) for u_val in U]

# Display number of users
print('Number of users')
print(u)
