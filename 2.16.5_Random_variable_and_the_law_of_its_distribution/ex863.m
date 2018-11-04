clear
syms x
F(x)=piecewise(x<1,0,1<=x<=3,0.5*(x-1),x>3,1)
P1=F(2.5)-F(1.5)
% 1/2
P2=F(3.5)-F(2.5)
% 1/4