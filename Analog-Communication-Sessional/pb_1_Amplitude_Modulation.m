clc;
close all;
clear all;
Ac=10;
Am=7;
fc=60;
fm=7; % fm<fc
t=1;
t1 = (0:.001:t);
mt=Am*sin(2*pi*fm*t1); % message signal
ct=Ac*sin(2*pi*fc*t1); % carrier signal
m=Am/Ac;
eq=(1+m.*sin(2*pi*fm*t1)).*ct;  %Modulated Signal
subplot(3,1,1);
plot(t1,mt);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Message signal');
subplot(3,1,2);
plot(t1,ct);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Carrier signal');
subplot(3,1,3);
plot(t1,eq);
xlabel('Time(sec)');
ylabel('Amplitude(V)');
title('Modulated signal');
