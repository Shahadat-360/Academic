clc;
clear all;
close all;
GOS=0.5/100;
Au=0.1;
c=[1 5 10 20 100];
A=[0.005 1.13 3.96 11.1 80.9];

for i=1:5
    user=floor(A(i)/Au);
    if user<1
        user=ceil(A(i)/Au);
    end
    disp(['For channel ',num2str(c(i))]);
    disp(['User = ',num2str(user)]);
end
