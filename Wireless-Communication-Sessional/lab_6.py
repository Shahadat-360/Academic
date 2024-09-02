# Define parameters
carrier_frequency = 900 * 10**6  # Carrier frequency in Hz
wavelength = 3 * 10**8 / carrier_frequency  # Wavelength in meters
vehicle_speed = 70 * (1000 / (60 * 60))  # Vehicle speed in meters per second

# Case (A): Vehicle moving directly toward the transmitter
print('(A)')
print('The vehicle is moving directly toward the transmitter: ')
The_received_frequency_of_A_is = (carrier_frequency + (vehicle_speed / wavelength)) / 1e6
print(f'The received frequency is: {The_received_frequency_of_A_is} MHz')
print()

# Case (B): Vehicle moving directly away from the transmitter
print('(B)')
print('The vehicle is moving directly away from the transmitter: ')
The_received_frequency_of_B_is = (carrier_frequency - (vehicle_speed / wavelength)) / 1e6
print(f'The received frequency is: {The_received_frequency_of_B_is} MHz')
print()

# Case (C): Vehicle moving perpendicular to the angle of arrival
print('(C)')
print('The vehicle is moving perpendicular to the angle of arrival of the transmitted signal: ')
print('The received signal frequency is the same as the transmitted frequency 900 MHz')
