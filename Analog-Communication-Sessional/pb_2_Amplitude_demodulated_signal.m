fs = 1000;
t = 0 : 1/fs : 1;
fc = 100;
fm = 10;
am = 7;
ac = 10;

%% generating message signal
mt = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,mt);
title('message signal ');
xlabel('time');
ylabel('amplitude');
grid on;

%% generating carrier signal
ct = ac*sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,ct);
title('message signal ');
xlabel('time');
ylabel('amplitude');
grid on;

%% generating modulated signal 
k = 0.5;
yt = ac.*(1+k*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(4,1,3);
plot(t,yt);
title('modulated signal ');
xlabel('time');
ylabel('amplitude');
grid on;

%% generating demodulated signal 
r = abs(yt); %Rectified Signal
[b,a] = butter(10,2*fc/fs);
%[b,a] = butter(n,Wn) returns the transfer function coefficients of an nth-order lowpass digital Butterworth filter with normalized cutoff frequency Wn.
mr = filter(b,a,r);
subplot(4,1,4);
plot(t,mr,'r');
title('demodulated signal ');
xlabel('time');
ylabel('amplitude');
grid on;
