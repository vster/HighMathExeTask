clear
syms t x(t) y(t)
eqn1=diff(x,t)-(3*x+y)
eqn2=diff(y,t)-(-4*x-y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
% 2*C30*exp(t) + C31*(exp(t) + 2*t*exp(t))
% - 4*C30*exp(t) - 4*C31*t*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0