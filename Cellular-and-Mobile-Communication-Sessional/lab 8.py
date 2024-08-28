import math

# Given values
fc = 1.8  # Frequency (GHz)
hb = 20  # Height of the base station antenna (meters)
d = math.sqrt(20 ** 2 + 30 ** 2) / 1000  # Distance between the base station and mobile station (kilometers)

print('Distance: %.4f Km' % d)

# Calculate path loss
PathLoss = 135.41 + (12.49 * math.log10(fc)) - (4.99 * math.log10(hb)) + ((46.82 - 2.34 * math.log10(hb)) * math.log10(d))

print('PathLoss: %.4f dB' % PathLoss)
