clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x-4*y)
eqn2=diff(y,t)-(x+y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
% - 2*C29*cos(2*t)*exp(t) - 2*C28*sin(2*t)*exp(t)
% C28*cos(2*t)*exp(t) - C29*sin(2*t)*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0