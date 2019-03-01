clear
syms t x(t) y(t)
eqn1=diff(x,t)-(cos(t)*x+y+exp(2*sin(t)))
eqn2=diff(y,t)-(x+cos(t)*y+t*exp(2*sin(t)))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% 
%ySol =
% 

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0