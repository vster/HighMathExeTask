clear
syms x y(x) z(x)
eqn1=diff(y,x)-(exp(x)-z)
eqn2=diff(z,x)-(exp(-x)+y)
eqns=[eqn1,eqn2]
[ySol zSol]=dsolve(eqns)
ySol=simplify(ySol)
zSol=simplify(zSol)
%ySol =
% exp(x)/2 - exp(-x)/2 - C2*cos(x) - C1*sin(x)
%zSol =
% exp(x)/2 - exp(-x)/2 + C1*cos(x) - C2*sin(x)

% Checking
chk1=simplify(subs(eqn1,[y z],[ySol zSol])) 
chk2=simplify(subs(eqn2,[y z],[ySol zSol]))     
% 0 0