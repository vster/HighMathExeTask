clear
syms t x(t) y(t)
eqn1=diff(x,t)-(y+1/cos(t))
eqn2=diff(y,t)-(-x+1/sin(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C12*cos(t) + sin(t)*(C11 - atanh(cos(2*t)))
%ySol =
% cos(t)*(C11 - atanh(cos(2*t))) - C12*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0