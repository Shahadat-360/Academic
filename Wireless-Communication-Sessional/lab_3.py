import math
Gos = 0.5 / 100
Au = 0.1
# from erlang table B
A = [0.005, 1.13, 3.96, 11.1, 80.9]
c = [1, 5, 10, 20, 100]

# Display information
print('Blocking probability:',Gos)
print('Traffic intensity per user:',Au)
print('Traffic intensity:',A)
print('Channel:',c)

# Calculate number of users
U = [a / Au for a in A]
u = [max(1,math.ceil(u_val)) for u_val in U]

# Display number of users
print('Number of users,',u)