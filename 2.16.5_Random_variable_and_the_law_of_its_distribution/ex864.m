syms x
F(x)=piecewise(x<2,0,2<=x<=3,(x-2)^2,x>3,1)
P1=F(2.5)-F(1)
% 1/4
P2=F(3.5)-F(2.5)
% 3/4
