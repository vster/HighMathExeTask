clear
syms t x(t) y(t)
eqn1=diff(x,t)-x/(2*x+3*y)
eqn2=diff(y,t)-y/(2*x+3*y)
eqns=[eqn1,eqn2]
cond=[x(0)==1,y(0)==2]
[xSol ySol]=dsolve(eqns,cond)
%xSol =
%??
%ySol =
%??

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0