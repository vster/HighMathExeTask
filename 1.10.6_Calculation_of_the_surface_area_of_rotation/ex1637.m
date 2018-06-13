syms x;
y=x^3;

dy=diff(y)
y1=1+dy^2
y1=factor(y1)
y2=y*sqrt(y1)
% x^3*(9*x^4 + 1)^(1/2)
S=2*pi*int(y2,0,1/2)
% (61*pi)/1728