clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(x+2*y-3*z)
eqn2=diff(y,t)-(-5*x+y-4*z)
eqn3=diff(z,t)-(-2*y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% - (4*C33*exp(t))/5 - C32*exp(2*t) - C34*exp(3*t)
%ySol =
% (3*C33*exp(t))/2 + C32*exp(2*t) + (C34*exp(3*t))/2
%zSol =
% C33*exp(t) + C32*exp(2*t) + C34*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0