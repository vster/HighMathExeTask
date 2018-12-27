clear
syms t x(t) y(t)
eqn1=diff(x,t)-(-2*x+5*y)
eqn2=diff(y,t)-(x+2*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C27*exp(3*t) - 5*C26*exp(-3*t)
%ySol =
% C26*exp(-3*t) + C27*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0