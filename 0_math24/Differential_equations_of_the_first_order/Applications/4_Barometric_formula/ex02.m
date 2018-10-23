% Find the air pressure in the mine at a depth of 1km at a 
% temperature of 40 degrees Celsius.

% Barometric formula
syms h P0 M g R T
P=P0*exp(-M*g/(R*T)*h)

% h=-1000 m
% T=40+273=313.14 K
% M=0.02896 kg/mol
% R=8.3143 H*m/(mol*K)
% g=9.807 m/s^2

P1=subs(P,[M g R T h],[0.02896 9.807 8.3143 313.14 -1000])
digits(4)
P1=vpa(P1)
% 1.115*P0
P1=1.115*760
% 848 mm rt.st.