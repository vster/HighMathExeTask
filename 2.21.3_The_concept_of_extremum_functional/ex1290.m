clear
% J(y)=int(0:1)(y*sin(x)-y^2*cosh(x))dx
% y(0)=1
% y(1)=1

syms x y
F=y*sin(x)-y^2*cosh(x)

% dF/dy=0
dFdy=diff(F,y)
% sin(x) - 2*y*cosh(x)=0
y(x)=sin(x)/(2*cosh(x))

y(0)
% 0
y(1)
% sin(1)/(2*cosh(1))
% There is no decision

