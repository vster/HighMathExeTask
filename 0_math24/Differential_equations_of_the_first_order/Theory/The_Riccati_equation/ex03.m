% Find the general solution of the differential equation
% x^3*y'+x^2*y-y^2=2*x^4

% 1)
clear
% y'=y^2/x^3-y/x+2*x
syms x y(x)
eqn=diff(y(x))==y^2/x^3-y/x+2*x
ySol=dsolve(eqn)
%                x^2
% x/(C9 + 1/x) + x^2

% Checking
ySol2=ySol(2)
eqn10=diff(y)-y^2/x^3+y/x-2*x
eqn11=simplify(subs(eqn10,y(x),ySol2))
% 0

syms C
% Answer from site
ySol3=(C*x^3+2*x^2)/(C*x+1)
eqn11=simplify(subs(eqn10,y(x),ySol3))
% 0