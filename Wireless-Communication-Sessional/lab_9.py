# Define parameters
Fm = 4  # Frequency modulation in kHz
mt_max_value = 8  # Maximum value in V
womeca = 10  # Womeca in kHz/V

# (A) Calculate peak deviation
peak_deviation_delta_f = mt_max_value * womeca
print('(A)')
print(f'Peak deviation delta_f: {peak_deviation_delta_f} KHz')
print()

# (B) Calculate frequency modulation index
fre_modu_index_Bf = peak_deviation_delta_f / Fm
print('(B)')
print(f'Frequency modulation index Bf: {fre_modu_index_Bf}')
print()

# (C) Calculate phase modulation index
phase_modulation_index = womeca * mt_max_value
print('(C)')
print(f'Phase modulation index: {phase_modulation_index} radians')
