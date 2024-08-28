clc;
clear all;
close all;
Given_SNI=15;        %signal to interference ratio 15dB
Cluster_size=7;                

n=[4,3];

for a=1:2
    disp(['For n = ',num2str(n(a))]);
    Freq_Reuse_Factor=sqrt(3*Cluster_size);
    disp(['Frequency Reuse Factor = ',num2str(Freq_Reuse_Factor)]);
    
    signal_to_noise_interference_ratio = 10*log10((Freq_Reuse_Factor^n(a))/6);
    
    if signal_to_noise_interference_ratio> Given_SNI
        disp(['SNI Ratio = ',num2str(signal_to_noise_interference_ratio)]);
        disp('Cluster size = 7 can be used.');
        
    else
        signal_to_noise_interference_ratio = 10*log10((Freq_Reuse_Factor^n(a))/6);
        disp(['SNI Ratio = ',num2str(signal_to_noise_interference_ratio)]);
        disp('Cluster size 7 can not be used.')
        
        i=2; j=2;
        N= (i^2)+(i*j)+(j^2);
        disp(['The possible cluster size = ',num2str(N)]);
        Freq_Reuse_Factor=sqrt(3*N);
        disp(['Frequency Reuse Factor = ',num2str(Freq_Reuse_Factor)]);
        signal_to_noise_interference_ratio = 10*log10((Freq_Reuse_Factor^n(a))/6);
        disp(['SNI Ratio = ',num2str(signal_to_noise_interference_ratio)]);
    end
end
