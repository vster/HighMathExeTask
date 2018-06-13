syms x;
y=2*cosh(x/2)

dy=diff(y)
y2=y*sqrt(1+dy^2)
% 2*cosh(x/2)*(sinh(x/2)^2 + 1)^(1/2)
S=2*pi*int(y2,0,2)
% 2*pi*(sinh(2) + 2)