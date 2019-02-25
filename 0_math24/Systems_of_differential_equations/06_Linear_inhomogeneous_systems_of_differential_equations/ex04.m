clear
syms t x(t) y(t)
eqn1=diff(x,t)-(-y)
eqn2=diff(y,t)-(x+cos(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% - sin(t)*(C19 + t/2 + sin(2*t)/4) - cos(t)*(C20 + cos(t)^2/2)
%ySol =
% cos(t)*(C19 + t/2 + sin(2*t)/4) - sin(t)*(C20 + cos(t)^2/2)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0