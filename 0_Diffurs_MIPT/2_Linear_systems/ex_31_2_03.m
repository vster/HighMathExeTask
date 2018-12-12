clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(3*x+2*y)
eqn2=diff(y,t)-(3*y+z)
eqn3=diff(z,t)-(2*x-4*y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 2*C26*exp(4*t) - (C27*cos(2*t)*exp(3*t))/2 + (C28*sin(2*t)*exp(3*t))/2
%ySol =
% C26*exp(4*t) + (C28*cos(2*t)*exp(3*t))/2 + (C27*sin(2*t)*exp(3*t))/2
%zSol =
% C26*exp(4*t) + C27*cos(2*t)*exp(3*t) - C28*sin(2*t)*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0