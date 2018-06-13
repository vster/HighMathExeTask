syms x;
y=sin(2*x)

dy=diff(y)
y2=y*sqrt(1+dy^2)
% sin(2*x)*(4*cos(2*x)^2 + 1)^(1/2)
S=2*pi*int(y2,0,pi/2)
% 2*pi*(log(5^(1/2) + 2)/4 + 5^(1/2)/2)