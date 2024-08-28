clc;
clear all;
close all;
fc=1.8;
hb=20;
d=sqrt((20)^2+(30)^2)/1000;
disp(d);
PathLoss=135.41+(12.49*log10(fc))-(4.99*log10(hb))+((46.82-2.34*log10(hb))*log10(d));
disp(['PathLoss ',num2str(PathLoss)]);