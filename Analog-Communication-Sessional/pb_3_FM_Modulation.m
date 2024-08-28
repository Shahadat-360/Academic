clc;
clear all;
close all;
t=0:0.0001:0.25;
B=10;

fm=25;
mt=cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,mt);
xlabel("Time(sec)");
ylabel("Amplitude");
title("Message Signal");
grid on;

fc=400;
ct=sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,ct);
xlabel("Time(sec)");
ylabel("Amplitude");
title("Carrier Signal");
grid on;

FM=sin(2*pi*fc*t+(B.*sin(2*pi*fm*t)));  %B=(kf*vm/wm)
subplot(3,1,3);
plot(t,FM);
xlabel("Time(sec)");
ylabel("Amplitude");
title("FM Signal")
grid on;
