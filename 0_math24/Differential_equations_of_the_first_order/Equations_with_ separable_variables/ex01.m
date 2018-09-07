% Solve the differential equation
% dy/dx=y*(y+2)

% 1)
% dy/(y*(y+2))-dx=0
syms x y;
eq1=int(1/(y*(y+2)),y)-int(1,x)
% - x - log(2/y + 1)/2
% log(2/y+1)=-2*x+C
% 2/y=exp(C-2*x)-1
% y=2/(exp(C-2*x)-1)
% y=2*exp(C2+2*x)/(exp(C2+2*x)-1)
% or
% log(y/(2+y))=2*x+C


% 2)
% y'=y*(y+2)
syms x y(x);
eqn=diff(y(x),x)==y*(y+2)
ySol=dsolve(eqn)
%                                           0
%                                          -2
%  -(2*exp(2*C2 + 2*x))/(exp(2*C2 + 2*x) - 1)
pretty(ySol)