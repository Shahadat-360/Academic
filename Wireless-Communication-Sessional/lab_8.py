# Define parameters
Am_signal_power = 400  # Signal power in KW
modulation_depth = 0.75

# Calculate carrier power Pc
carrier_power_pc = Am_signal_power / (1 + (modulation_depth**2) / 2)
print(f'Carrier power Pc: {carrier_power_pc:.2f} KW')

# Part (a)
total_power = (carrier_power_pc / Am_signal_power) * 100
print('(a)')
print(f'Total power in the carrier is: {total_power:.2f}%')
print()

# Part (b)
power_in_each_sideband = (Am_signal_power - carrier_power_pc) * 0.5
print('(b)')
print(f'Power in each sideband: {power_in_each_sideband:.2f} KW')
print()

# Part (c)
percentage_power_saving = (1 - (power_in_each_sideband / Am_signal_power)) * 100
print('(c)')
print(f'Percentage power saving: {percentage_power_saving:.2f}%')