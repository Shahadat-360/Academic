clc;
clear all;
close all;
trans_data=270.833;
each_time_slot_bit=156.25;
Num_time_slot=8;
disp('(a)');
time_duration_of_a_bit_Tb=(1/trans_data);
disp("The time duration of a bit = ");
disp(time_duration_of_a_bit_Tb);
disp('(b)');
time_duration_of_a_slot_Ts=(each_time_slot_bit*time_duration_of_a_bit_Tb);
disp("The time duration of a slot =");
disp(time_duration_of_a_slot_Ts);
disp('(c)');
time_duration_of_a_frame_Tf=(time_duration_of_a_slot_Ts*Num_time_slot);
disp("The time duration of a frame =");
disp(time_duration_of_a_frame_Tf);