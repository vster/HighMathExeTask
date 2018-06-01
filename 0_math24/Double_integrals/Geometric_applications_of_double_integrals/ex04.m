% Describe a body whose volume is defined by the integral
% V = int (0:1) dx int (0:1-x) (x^2+y^2) dy

syms x y;
V=int(int(x^2+y^2,y,0,1-x),x,0,1)
% 1/6