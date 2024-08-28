clc;
clear all;
close all;
TotalBandwidth=33000000;
ChannelBandwidth=25000*2;
disp(['Channel Bandwidth = ',num2str(ChannelBandwidth)]);
TotalAvailableChannel=(TotalBandwidth/ChannelBandwidth);
disp(['Total Available Channel = ', num2str(TotalAvailableChannel)]);

AllocatedSpectrum=1000000;
TotalControlChannel=AllocatedSpectrum/ChannelBandwidth;
disp(['Total Control Channel = ',num2str(TotalControlChannel)]);

N=[4 7 12];
for i=1:3
    Channel_per_cell=round(TotalAvailableChannel/N(i));
    disp(['For n=',num2str(N(i))]);
    disp(['Available channels per cell = ',num2str(Channel_per_cell)]);
    
    controlChannel=round(TotalControlChannel/N(i));
    disp(['Total control channel = ',num2str(controlChannel)]);
    
    voiceChannel=Channel_per_cell-controlChannel;
    disp(['Total Voice Channel = ',num2str(voiceChannel)]);
end
