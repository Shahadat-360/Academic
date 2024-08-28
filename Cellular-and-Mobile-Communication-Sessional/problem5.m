clc;
clear all;
close all;
area=1300;
radius=4;
allocated_spectrum=40000000;
channel_bandwidth=60000;
frequency_reuse_factor=7;
GOS=2/100;
Offered_traffic_intensity=84;
offered_traffic_per_user=0.03;

%a
Each_cell_covers=2.5981*(radius)^2;
Total_num_of_cell=round(area/Each_cell_covers);
disp(['The number of cells in the service area =  ',num2str(Total_num_of_cell)]);

%b
channels_per_cell=round(allocated_spectrum/(channel_bandwidth*frequency_reuse_factor));
disp(['The number of channels per cell = ',num2str(channels_per_cell)]);

%c
disp(['As total number of channel per cell is 95 and GOS is 0.02 then the offered traffic intensity will be ',num2str(Offered_traffic_intensity)]);

%d
maximum_carried_traffic = Total_num_of_cell*Offered_traffic_intensity;
disp(['Maximum carried traffic = ',num2str(maximum_carried_traffic)]);

%e
total_nb_of_user=maximum_carried_traffic/offered_traffic_per_user;
disp(['Total number of user = ',num2str(total_nb_of_user)]);

%f
Nb_of_channels=channels_per_cell*frequency_reuse_factor;
Nb_of_mobiles_per_channel=floor(total_nb_of_user/Nb_of_channels);
disp(['Number of mobiles per channels = ',num2str(Nb_of_mobiles_per_channel)]);

%g
theoretical_maximum_number_of_user=channels_per_cell*Total_num_of_cell;
disp(['Theoretical maximum numbers of users = ',num2str(theoretical_maximum_number_of_user)]);