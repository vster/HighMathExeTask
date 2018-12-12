clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(4*x+3*y)
eqn2=diff(y,t)-(4*y-3*z)
eqn3=diff(z,t)-(-x+3*y+5*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C21*cos(3*t)*exp(4*t) - 9*C20*exp(5*t) - C22*sin(3*t)*exp(4*t)
%ySol =
% - 3*C20*exp(5*t) - C22*cos(3*t)*exp(4*t) - C21*sin(3*t)*exp(4*t)
%zSol =
% C20*exp(5*t) + C21*cos(3*t)*exp(4*t) - C22*sin(3*t)*exp(4*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0