syms x;
y=cos(x)
% x=0..pi/2

S=int(y,0,pi/2)
xa=1/S*int(x*cos(x),0,pi/2)
ya=1/(2*S)*int(y^2,0,pi/2)
% pi/2-1  pi/8