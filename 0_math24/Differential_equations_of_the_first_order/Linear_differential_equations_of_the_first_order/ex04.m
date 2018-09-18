% Solve equation
% x^2*y'+x*y+2=0

% 1)
clear
% y'=-y/x-2/x^2
syms x y(x)
eqn=diff(y(x))==-y/x-2/x^2
ySol=dsolve(eqn)
% C11/x - (2*log(x))/x

% 2)
% Method of constant variation
% x^2*y'+x*y+2=0
% y'+y/x=-2/x^2
% y'+y/x=0 => dy/dx+y/x=0 => dy/y+dx/x=0
syms x y
eq1=int(1/y,y)+int(1/x,x)
% log(x) + log(y)=log(C1)
% y=C1/x
syms C(x)
y1=C(x)/x
dy1=diff(y1,x)
% diff(C(x), x)/x - C(x)/x^2 = -C(x)/x^2-2/x^2 =>
% dCx=-2/x
syms C2
C1(x)=int(-2/x,x)+C2
% C2 - 2*log(x)
y1=C1(x)/x
% (C2 - 2*log(x))/x
% C2/x - 2*log(x)/x