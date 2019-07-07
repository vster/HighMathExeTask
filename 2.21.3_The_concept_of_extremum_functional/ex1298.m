clear
% J(y)=int(4:8)(x-4*y)^2*dx
% y(4)=1
% y(8)=2

syms x y
F=(x-4*y)^2
dFy=diff(F,y)
% 32*y - 8*x=0
y(x)=x/4

y(4)
% 1
y(8)
% 2