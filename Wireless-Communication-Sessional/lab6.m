clc;
close all;
clear all;
c=3*10^8;
f=900*10^6;
lamda=c/f;
vehicle_speed=70*(1000/60*60);

disp('(A)');
disp("The Vehicle is moving directly toward the transmitter");
The_received_frequency_of_A_is =floor(f+(vehicle_speed/lamda))

disp('(B)');
disp("The Vehicle is moving directly away from the transmitter");
The_received_frequency_of_B_is =floor(f-(vehicle_speed/lamda))

disp('(c)');
disp("The Vehicle is moving perpendicular to the angle of arrival of the transmitted signal");
disp("The received signal frequency is the same of the transmitted frequency 900MHz")