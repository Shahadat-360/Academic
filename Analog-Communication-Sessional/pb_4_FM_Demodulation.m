fs=10000;
Ac=1;
Am=1;
fm=35;
fc=500;
B=10;
t=(0:.1*fs)/fs;
wc=2*pi*fc;
wm=2*pi*fm;

% message signal
mt=Am*cos(wm*t);
subplot(5,1,1);
plot(t,mt);
title("Message signal");

% carrier signal
ct=Ac*cos(wc*t);
subplot(5,1,2);
plot(t,ct);
title("Carrier Signal");

% modulated signal
st=Ac*cos((wc*t)+B*sin(wm*t));
subplot(5,1,3);
plot(t,st);
title("Modulated Signal");

% demodulated signal
dmod=demod(st,fc,fs,'fm');
subplot(5,1,4);
plot(t,dmod);
title("demodulated signal");
