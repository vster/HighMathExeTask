clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x+y+cos(t))
eqn2=diff(y,t)-(-x+2*sin(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% cos(t)/2 + C17*exp(t) + C18*exp(t) + C18*t*exp(t)
%ySol =
% - C17*exp(t) - (17^(1/2)*cos(t - atan(1/4)))/2 - C18*t*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0