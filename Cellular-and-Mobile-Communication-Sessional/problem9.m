clc;
clear all;
close all;
T_R_distance = 5;
E_field = 10^(-3);
f = 900;
do=1000;
lamda=(3*10^8)/(900*10^6);

ht=50;
hr=1.5;
d=5*10^3;

%a

length_of_antenna = lamda/4;
gain = (10^(2.55/10));
effective_aperture=(gain*(lamda)^2)/(4*3.1416);
disp(['Effective apperture is ',num2str(effective_aperture)]);

%b
Er_d = (2*E_field*do*2*3.1416*ht*hr)/(lamda*d^2);
disp(['Electric Field ',num2str(Er_d)]);

pr_d=((Er_d^2)/(120*3.1416))*effective_aperture;
received_power_at_5km_distance = 10*log10(pr_d);
disp(['Received power at distance in dBW ',num2str(received_power_at_5km_distance)]);

received_power2=10*log10(pr_d*1000);
disp(['Received power at distance in dBm ',num2str(received_power2)]);
