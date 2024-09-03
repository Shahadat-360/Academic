clc;
close all;
clear all;

fprintf('(A)\n');
Tn=150;
N=70;
delT=Tn/N;
fprintf('delT=%f us\n',delT);

fprintf('(B)\n');
Tn=4;
MBW=2/delT;
fprintf("The maximum Bandwidth that the SMRCIM model can accurately represent=%f MHz\n",MBW);
Tn=4;
delT=(Tn/N)*1000;
fprintf("delT for SMRCIM urban microcell model is %f ns\n",delT);
RFBW=(2/delT)*1000;
fprintf("The maximum RF bandwidth that can be represent is %f ns\n",RFBW);

fprintf('(C)\n');
Exdel=500;
delT=(Exdel/N);
fprintf("For indoor channel %f ns\n",delT);
RFBW=(2/delT)*1000;
fprintf("The maximum RF bandwidth for the indoor channel model is %2f MHz\n",RFBW);




