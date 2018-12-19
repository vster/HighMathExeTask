clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(4*x-3*y+z)
eqn2=diff(y,t)-(x-2*y+3*z)
eqn3=diff(z,t)-(5*x-5*y+2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C11*exp(2*t) + C12*((3*cos(2*t)*exp(t))/5 + (sin(2*t)*exp(t))/5) + C13*((cos(2*t)*exp(t))/5 - (3*sin(2*t)*exp(t))/5)
%ySol =
% C11*exp(2*t) + C12*((4*cos(2*t)*exp(t))/5 + (3*sin(2*t)*exp(t))/5) + C13*((3*cos(2*t)*exp(t))/5 - (4*sin(2*t)*exp(t))/5)
%zSol =
% C11*exp(2*t) + C12*cos(2*t)*exp(t) - C13*sin(2*t)*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0