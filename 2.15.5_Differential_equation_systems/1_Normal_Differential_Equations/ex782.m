clear
syms t x(t) y(t)
eqn1=diff(x,t)-(y+t)
eqn2=diff(y,t)-(x+exp(t))
eqns=[eqn1,eqn2]
cond=[x(0)==1,y(0)==0]
[xSol ySol]=dsolve(eqns,cond)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% (5*exp(-t))/4 + (3*exp(t))/4 + (t*exp(t))/2 - 1
%ySol =
% (5*exp(t))/4 - (5*exp(-t))/4 - t + (t*exp(t))/2

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0