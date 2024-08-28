import math

# Given values
T_R_distance = 5  # Distance between transmitter and receiver in km
E_field = 1e-3  # Electric field in V/m
f = 900  # Frequency in MHz
d0 = 1000  # Distance for electric field measurement in meters
c = 3e8  # Speed of light in m/s

# Converting frequency to Hz
f *= 1e6

# Calculating wavelength
lamda = c / f

# Height of transmitting and receiving antennas
ht = 50  # in meters
hr = 1.5  # in meters

# Distance from transmitter to receiver
d = T_R_distance * 1000  # in meters

# a
length_of_antenna = lamda / 4
gain = 10 ** (2.55 / 10)
gain_rcv = 10 * math.log10(gain)
print('Gain of Receiving Gain: %.2f dB' % gain_rcv)
effective_aperture = (gain * (lamda ** 2)) / (4 * 3.1416)
# print('Effective aperture is', effective_aperture)

# b
Er_d = (2 * E_field * d0 * 2 * 3.1416 * ht * hr) / (lamda * d ** 2)
print('Electric Field {:e} V/m'.format(Er_d))

pr_d = ((Er_d ** 2) / (120 * 3.1416)) * effective_aperture
received_power_at_5km_distance = 10 * math.log10(pr_d)
print('Received power at distance in dBW', received_power_at_5km_distance)

received_power2 = 10 * math.log10(pr_d * 1000)
print('Received power at distance in dBm', received_power2)
