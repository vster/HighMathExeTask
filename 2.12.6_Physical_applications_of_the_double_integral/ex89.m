% Calculate the polar moment of inertia
% x+y=2, x=0, y=0

syms x y;
y1=2-x

I0=int(int(x^2+y^2,y,0,y1),x,0,2)
% 8/3