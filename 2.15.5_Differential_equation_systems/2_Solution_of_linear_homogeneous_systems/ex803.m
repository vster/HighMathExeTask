clear
syms t x(t) y(t) a
eqn1=diff(x,t)-((a+1)*x-y)
eqn2=diff(y,t)-(x+(a-1)*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
% C26*(exp(a*t) + t*exp(a*t)) + C27*exp(a*t)
% C27*exp(a*t) + C26*t*exp(a*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0