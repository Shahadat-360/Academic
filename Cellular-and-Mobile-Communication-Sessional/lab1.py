bw = 30e3
single_channel_bw = 25

# duplex channel bandwidth
duplex_channel_bw = 2 * single_channel_bw
print('Channel bw =', duplex_channel_bw)

# total channel
total_channel = bw // duplex_channel_bw
print('Total available channel =', total_channel)

# control channel bandwidth
controlChannel_bw = 1000

# total control channel
total_controlChannel = controlChannel_bw // duplex_channel_bw
print('Total Control Channel =', total_controlChannel)

# Array of different value for N(number of cells)
print('------------------------------------------------')
print('For various cluster size')
print('------------------------------------------------')
N = [4, 7, 12]
for cluster_size in N:
    # cluster size
    print('Cluster Size=', cluster_size)

    # channel per cells
    channel_per_cell = total_channel // cluster_size
    print('Channel per cell =', channel_per_cell)

    # control channels per cell
    controlChannel_per_cell = total_controlChannel // cluster_size
    print('Control channel =', controlChannel_per_cell)

    # voice channel per cell
    voiceChannel = (total_channel - total_controlChannel) // cluster_size
    print('Voice channel =', voiceChannel)
    print('------------------------------------------------')
