clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x+y)
eqn2=diff(y,t)-(x+2*y)
eqns=[eqn1,eqn2]
cond=[x(0)==1,y(0)==3]
[xSol ySol]=dsolve(eqns,cond)
%xSol =
% 2*exp(3*t) - exp(t)
%ySol =
% 2*exp(3*t) + exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0