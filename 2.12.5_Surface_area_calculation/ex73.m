syms x y;
% Find a part of the surface area
z=x^2
% cut planes 
% x+y=sqrt(2)
% x=0
% y=0

fs=sqrt(1+diff(z,x)^2+diff(z,y)^2)
% (4*x^2 + 1)^(1/2)

S=int(int(fs,y,0,sqrt(2)-x),x,0,sqrt(2))
% (2^(1/2)*log(2*2^(1/2) + 3))/4 + 5/6