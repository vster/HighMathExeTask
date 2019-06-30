clear
syms x y real
% J(y(x))=int(0:1)(x*sin(y)+cos(y))dx
% y(0)=0
% y(1)=pi/4
F=x*sin(y)+cos(y)
dFy=diff(F,y)
% x*cos(y) - sin(y) = 0
% x=tan(y)
% y=atan(x)
y(x)=atan(x)
y(0)
% 0
y(1)
% pi/4