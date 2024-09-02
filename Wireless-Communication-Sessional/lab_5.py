import math

# Define parameters
c = 3 * 10**8  # Velocity of light in m/s
f = 900 * 10**6  # Frequency in Hz
D = 1  # Distance in meters

# Calculate wavelength (lambda)
lambda_ = c / f

# Calculate Fraunhofer distance (df)
df = 2 * (D**2) / lambda_

# Calculate Path Loss (PL)
pl = -10 * math.log10((lambda_**2) / (((4 * math.pi)**2) * (df**2)))

# Display results
print(f'Fraunhofer distance, df = {df:.2f} m')
print(f'Path Loss, PL(dB) = {pl:.2f} dB')
