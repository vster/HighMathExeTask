clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x+y)
eqn2=diff(y,t)-(x-y)
eqns=[eqn1,eqn2]
cond=[x(0)==2,y(0)==0]
[xSol ySol]=dsolve(eqns,cond)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% (2^(1/2)*exp(2^(1/2)*t)*(2^(1/2) + 1))/2 + (2^(1/2)*exp(-2^(1/2)*t)*(2^(1/2) - 1))/2
%ySol =
% 2^(1/2)*sinh(2^(1/2)*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0