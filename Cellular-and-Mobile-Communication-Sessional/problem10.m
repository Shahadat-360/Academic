clc;
clear all;
close all;
radius = 1.387;
cluster = 4;
total_channel = 60;
channel_per_cell = total_channel/cluster
each_cell_covers = 2.5981*radius^2
traffic_per_user = 0.029;
t = 10;
blocking_probability = 5/100;


disp('(a)')
traffic_intensity = 9;
no_of_user = floor(traffic_intensity/(traffic_per_user*each_cell_covers))

disp('(b)')
lembda=1; %Au = lembda/H_holding time
holding_time = (traffic_per_user/lembda)*60*60
probability_to_wait = exp(-(channel_per_cell - traffic_intensity)*t/holding_time)*100

disp('(c)')
probability_of_delay = blocking_probability * probability_to_wait
