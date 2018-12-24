clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-4*x+y-2*z)
eqn2=diff(y,t)-(-y+z)
eqn3=diff(z,t)-(-6*x+2*y+2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% (C3*exp(-t))/3 - C4*exp(t*(23^(1/2) - 1))*((7*23^(1/2))/46 - 1/2) + C5*exp(-t*(23^(1/2) + 1))*((7*23^(1/2))/46 + 1/2)
%ySol =
% C3*exp(-t) + (23^(1/2)*C4*exp(t*(23^(1/2) - 1)))/23 - (23^(1/2)*C5*exp(-t*(23^(1/2) + 1)))/23
%zSol =
% C4*exp(t*(23^(1/2) - 1)) + C5*exp(-t*(23^(1/2) + 1))

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0