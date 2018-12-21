clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x+y+t*sqrt(t)*exp(3*t))
eqn2=diff(y,t)-(-x+4*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% (exp(3*t) - t*exp(3*t))*(C9 + (2*t^(5/2))/5) - exp(3*t)*(C10 - (2*t^(7/2))/7)
%ySol =
% - exp(3*t)*(C10 - (2*t^(7/2))/7) - t*exp(3*t)*(C9 + (2*t^(5/2))/5)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0