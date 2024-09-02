# Define parameters
trans_freq = 270.833  # Transmission frequency in kbps
num_of_bit_in_each_time_slot = 6 + 8.25 + 26 + (2 * 58)

# Print the number of bits in a time slot
print(f'A time slot has: {num_of_bit_in_each_time_slot:.2f} bits')

# (A) Calculate number of overhead bits (Boh)
Boh = (8 * 6) + (8 * 8.25) + (8 * 26)
print('(A)')
print(f'Number of overhead bits Boh: {Boh:.2f} bits')
print()

# (B) Calculate number of bits per frame
num_of_bit_per_frame = 8 * num_of_bit_in_each_time_slot
print('(B)')
print(f'Number of bits per frame: {num_of_bit_per_frame:.2f} bits/frame')
print()

# (C) Calculate frame rate
frame_rate = (trans_freq / num_of_bit_per_frame) * 1000
print('(C)')
print(f'Frame rate: {frame_rate:.2f} frame/sec')
print()

# (D) Calculate time duration of a slot
time_duration_of_a_slot = (num_of_bit_in_each_time_slot * (1 / trans_freq)) * 1000
print('(D)')
print(f'Time duration of a slot: {time_duration_of_a_slot:.2f} micro_second')
print()

# (E) Calculate frame efficiency
frame_efficiency = (1 - (Boh / num_of_bit_per_frame)) * 100
print('(E)')
print(f'Frame Efficiency: {frame_efficiency:.2f}%')
