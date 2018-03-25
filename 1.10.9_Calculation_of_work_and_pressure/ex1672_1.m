syms y h r ro1 ro2;
% A=int(f(x),x,x0,x1)
% h = 3 Ï
% r = 1 Ï
% ro1 = 2500 Í„/Ï^3
% ro2 = 1000 Í„/Ï^3
P(y)=14700+9800/27*pi*y^3

A=int(P,y,0,3)
vpa(A)