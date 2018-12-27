clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-6*x+5*y)
eqn2=diff(y,t)-(-2*x-y+5*z)
eqn3=diff(z,t)-(x-3*y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C47*(exp(-t) - 5*t*exp(-t) + (15*t^2*exp(-t))/2) - C46*(5*exp(-t) - 15*t*exp(-t)) + 15*C48*exp(-t)
%ySol =
% 15*C48*exp(-t) - C46*(2*exp(-t) - 15*t*exp(-t)) - C47*(2*t*exp(-t) - (15*t^2*exp(-t))/2)
%zSol =
% C46*(exp(-t) + 6*t*exp(-t)) + C47*(t*exp(-t) + 3*t^2*exp(-t)) + 6*C48*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0