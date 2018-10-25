clear
syms t x(t) y(t)
eqn1=diff(x,t)+2*x/t-1
eqn2=diff(y,t)-(x+y+2*x/t-1)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% t/3 + C21/t^2
%ySol =
% -(3*C21 + t^3 - 3*C22*t^2*exp(t))/(3*t^2)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0