% Calculate the moment of inertia from Ox
% y=4-x^2, y=0

syms x y;
y1=4-x^2

ezplot(y1)
grid on

Ix=int(int(y^2,y,0,y1),x,-2,2)
% 4096/105