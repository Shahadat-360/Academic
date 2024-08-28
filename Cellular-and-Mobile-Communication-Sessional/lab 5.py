import math

# Given values
area = 1300
radius = 4
each_cell_covers = math.floor(2.5981 * radius ** 2)  # in square kilometers
print('(a)')
number_of_cells = math.floor(area / each_cell_covers)
print("Number of cells:", number_of_cells)

# (b)
allocated_spectrum = 40000
channel_width = 60
frequency_reuse_factor = 7
print('(b)')
number_of_channel_per_cell = math.floor(allocated_spectrum / (channel_width * frequency_reuse_factor))
print("Number of channels per cell:", number_of_channel_per_cell)

# (c)
print('(c)')
traffic_intensity_per_cell = 83.13  # from erlang chart B
print("Traffic intensity per cell:", traffic_intensity_per_cell)

# (d)
print('(d)')
maximum_carried_traffic = number_of_cells * traffic_intensity_per_cell
print("Maximum carried traffic:", maximum_carried_traffic)

# (e)
traffic_per_user = 0.03
print('(e)')
total_number_of_user = maximum_carried_traffic / traffic_per_user
print("Total number of users:", total_number_of_user)

# (f)
number_of_channels = number_of_channel_per_cell * frequency_reuse_factor
print('(f)')
number_of_mobile_per_channel = math.floor(total_number_of_user / number_of_channels)
print("Number of mobiles per channel:", number_of_mobile_per_channel)

# (g)
print('(g)')
theoretical_maximum_number_of_user_that_could_be_served = number_of_cells * number_of_channel_per_cell
print("Theoretical maximum number of users that could be served:",
      theoretical_maximum_number_of_user_that_could_be_served)
