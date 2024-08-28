import math

# Given values
radius = 1.387
cluster = 4
total_channel = 60
channel_per_cell = total_channel / cluster
each_cell_covers = math.ceil(2.5981 * (radius ** 2))
traffic_per_user = 0.029
t = 10
blocking_probability = 5 / 100

# extra
print('Number of channel per cell: %d' % channel_per_cell)
print('Area Covered per cell is: %d sq km' % each_cell_covers)

traffic_intensity = 9
no_of_user = math.floor(traffic_intensity / (traffic_per_user * each_cell_covers))
print(f'(a) Number of users: {no_of_user}')

print('(b)')
lembda = 1  # Au = lembda/H_holding time
holding_time = (traffic_per_user / lembda) * 60 * 60
print('Holding time: %.2f seconds' % holding_time)
probability_to_wait = math.exp(-(channel_per_cell - traffic_intensity) * t / holding_time) * 100
print(f'Probability to wait: %.2f' % probability_to_wait, '%')

probability_of_delay = blocking_probability * probability_to_wait
print(f'(c) Probability of delay %.2f ' % probability_of_delay, '%')
