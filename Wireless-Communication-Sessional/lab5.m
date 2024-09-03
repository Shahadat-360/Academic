clc;
clear all;
close all;
c=3*10^8;
f=900*10^6;
D=1;
lamda=c/f;
df=2*(D)^2/lamda;
disp("Fraunhofer distance")
disp(df);
PL = -10*log10((lamda^2)/(((4*3.1416)^2)*(df^2)));
disp("Path Loss");
disp(PL);
