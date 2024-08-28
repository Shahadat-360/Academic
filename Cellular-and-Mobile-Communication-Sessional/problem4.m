clc;
clear all;
close all;

GOS=2/100;
Au=2*(3/60);    %generated traffic intensity
population=2000000;
c=[19 57 100];  %channel
A=[12 45 88];  %offered traffic intensity
cell=[394 98 49];  
user=['A' 'B' 'C'];

for i=1:3
    u=A(i)/Au;
    Users_support=u*cell(i);
    disp(['Number of users that support ',num2str(user(i)),' = ',num2str(Users_support)]);
    
    percentage_market_penetration = (Users_support/population)*100;
    disp(['Percentage market penetration = ',num2str(percentage_market_penetration)]);
end

