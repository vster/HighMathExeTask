% Solve equation
% y'+6*y^2=1/x^2

% 1)
clear
% y'=-6*y^2+1/x^2
syms x y(x)
eqn=diff(y(x))==-6*y^2+1/x^2
ySol=dsolve(eqn)
%                         1/(2*x)
% 5/(x*(5*C10*x^5 - 6)) + 1/(2*x)

% Checking
ySol2=ySol(2)
eqn10=diff(y)+6*y^2-1/x^2
eqn11=simplify(subs(eqn10,y(x),ySol2))
% 0