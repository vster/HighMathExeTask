clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(3*x+y-2*z)
eqn2=diff(y,t)-(5*y-3*z)
eqn3=diff(z,t)-(-x+3*y)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C24*exp(2*t) + C25*((3*exp(3*t)*cos(t))/5 - (4*exp(3*t)*sin(t))/5) - C26*((4*exp(3*t)*cos(t))/5 + (3*exp(3*t)*sin(t))/5)
%ySol =
% C24*exp(2*t) + C25*((6*exp(3*t)*cos(t))/5 - (3*exp(3*t)*sin(t))/5) - C26*((3*exp(3*t)*cos(t))/5 + (6*exp(3*t)*sin(t))/5)
%zSol =
% C24*exp(2*t) + C25*exp(3*t)*cos(t) - C26*exp(3*t)*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0