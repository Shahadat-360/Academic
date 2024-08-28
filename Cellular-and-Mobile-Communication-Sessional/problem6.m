clc;
clear all;
close all;
Transmitted_power=50;
Carrier_freq=900*10^6;
Transmitter_gain=1;
Receiver_gain=1;
distance=100;
do=10*10^3;

Transmitted_power_in_dBm= round(10*log10(Transmitted_power*10^3));
disp(['Transmitted power in dBm is  ',num2str(Transmitted_power_in_dBm)]);

Transmitted_power_in_dbW= round(10*log10(Transmitted_power));
disp(['Transmitted power in dBW is  ',num2str(Transmitted_power_in_dbW)]);

lamda=(3*10^8)/(Carrier_freq);
pr_mw=((Transmitted_power*Transmitter_gain*Receiver_gain*(lamda^2))/(((4*3.1416)^2)*(distance^2)*1))*1000;
received_power_in_dbm = 10*log10(pr_mw);
disp(['Received power in dBm is  ',num2str(received_power_in_dbm)]);

pr_10km = received_power_in_dbm+(20*log10(distance/do));
disp(['Received power at 10km is  ',num2str(pr_10km)]);




