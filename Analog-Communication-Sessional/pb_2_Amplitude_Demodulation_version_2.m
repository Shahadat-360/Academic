clc;
close all;
clear all;
Ac=10;
Am=7;
fc=100;
fm=10;
Fs=1000;
t1 = (0:1/Fs:1);
mt=Am*sin(2*pi*fm*t1); % message signal
ct=Ac*sin(2*pi*fc*t1); % carrier signal
m=Am/Ac;

eq=(1+m.*sin(2*pi*fm*t1)).*ct; % Modulated Signal
subplot(4,1,1);
plot(t1,mt);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Message signal');

subplot(4,1,2);
plot(t1,ct);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier signal');

subplot(4,1,3);
plot(t1,eq,t1,Ac+mt,t1,-Ac-mt);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated signal');

dm = (1/pi)*(Ac+mt);
subplot(4,1,4);
plot(t1,dm);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('deModulated signal');
