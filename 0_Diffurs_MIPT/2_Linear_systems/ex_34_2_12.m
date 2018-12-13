clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(6*x+y+2*z)
eqn2=diff(y,t)-(2*x+2*y+z)
eqn3=diff(z,t)-(-8*x-2*y-2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C29*(4*exp(2*t) + 2*t*exp(2*t)) + C27*(exp(2*t) + 4*t*exp(2*t) + t^2*exp(2*t)) + 2*C28*exp(2*t)
%ySol =
% 2*C29*exp(2*t) + 2*C27*t*exp(2*t)
%zSol =
% - C27*(8*t*exp(2*t) + 2*t^2*exp(2*t)) - C29*(8*exp(2*t) + 4*t*exp(2*t)) - 4*C28*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0