% 1 box: 2 w, 10 b = 12
% 2 box: 8 w, 4 b = 12
clear
syms P
P_A=sym(1/6,'r')
P_B=sym(2/3,'r')
% P_C=P_NA
P_C=1-P_A
% P_D=P_NB
P_D=1-P_B

P_AD=P_A*P_D

P_BC=P_B*P_C

P=P_AD+P_BC
% 11/18