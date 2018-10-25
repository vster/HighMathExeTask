clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x/(x+y))
eqn2=diff(y,t)-(y/(x+y))
eqns=[eqn1,eqn2]
cond=[x(0)==2,y(0)==4]
[xSol ySol]=dsolve(eqns,cond)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% 
%ySol =
% 

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0