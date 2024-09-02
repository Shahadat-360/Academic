# Define parameters for part (a)
Tn = 150  # Time in microseconds
N = 70

# Calculate delT
delT = Tn / N
print('(a)')
print(f'delT = {delT:.2f} microseconds')

# Define parameters for part (b)
Tn = 4  # Time in microseconds
delT = Tn / N

# Calculate maximum bandwidth (MBW)
MBW = 2 / delT  # Bandwidth in MHz
print('(b)')
print(f'The maximum bandwidth that the SMRCIM model can accurately represent = {MBW:.2f} MHz')

# Update delT for SMRCIM urban microcell model
delT = (Tn / N) * 1000  # Convert to nanoseconds

# Calculate maximum RF bandwidth (RFBW)
RFBW = (2 / delT) * 1000  # Bandwidth in MHz
print(f'delT for SMRCIM urban microcell model is {delT:.2f} ns')
print(f'The maximum RF bandwidth that can be represented is {RFBW:.2f} MHz')

# Define parameters for part (c)
Exdel = 500  # Excess delay in nanoseconds
delT = Exdel / N

# Calculate maximum RF bandwidth for indoor channel
print('(c)')
print(f'For indoor channel, delT = {delT:.2f} ns')

# Calculate maximum RF bandwidth (RFBW) for indoor channel
RFBW = (2 / delT) * 1000  # Bandwidth in MHz
print(f'The maximum RF bandwidth for the indoor channel model is {RFBW:.2f} MHz')
