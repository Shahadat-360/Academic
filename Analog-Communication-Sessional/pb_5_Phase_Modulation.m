clc;
clear all;
close all;

% vaiable value
Ac=1;
Am=1;
k=10;
fm=25;
fc=400;
fs=10000;
t=(0:.1*fs)/fs;

wm=2*pi*fm;
wc=2*pi*fc;

mt=Am*cos(wm*t);  %message Signal
ct=Ac*cos(wc*t);  %carrier signal
pt=Ac*cos(wc*t+k*mt); % phase Modulation

% message signal
subplot(3,1,1);
plot(t,mt);
title("Message Signal");

% Carrier Signal
subplot(3,1,2);
plot(t,ct);
title("Carrier Signal");

% Phase modulated signal
subplot(3,1,3)
plot(t,pt);
title("Phase Modulation");