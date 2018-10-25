clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x^2+x*y)
eqn2=diff(y,t)-(x*y+y^2)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% -x(0)/(t*x(0) + t*y(0) - 1)
%ySol =
% -y(0)/(t*x(0) + t*y(0) - 1)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0