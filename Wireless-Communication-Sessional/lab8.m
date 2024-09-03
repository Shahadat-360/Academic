clc;
clear all;
close aLL;
Am_signal_power=400;
modulation_depth=0.75;
carrier_power=Am_signal_power/(1+(((0.75)^2)/2))
disp('(a)');
total_power=(carrier_power/Am_signal_power)*100;
disp("The total power is ");
disp(total_power);
disp('(b)');
power_in_each_sideband=0.5*(Am_signal_power-carrier_power);
disp("Power in each sideband is ");
disp(power_in_each_sideband);
disp('(c)');
percentage_power=(1-(power_in_each_sideband/Am_signal_power))*100;
disp("The percentage power is ");
disp(percentage_power);