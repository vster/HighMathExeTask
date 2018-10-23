clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-2*y
eqn2=diff(y,t)-2*z
eqn3=diff(z,t)-2*x
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
% C27*((exp(-t)*sin(3^(1/2)*t))/2 - (3^(1/2)*exp(-t)*cos(3^(1/2)*t))/2) - C26*((exp(-t)*cos(3^(1/2)*t))/2 + (3^(1/2)*exp(-t)*sin(3^(1/2)*t))/2) + C25*exp(2*t)
% C27*((exp(-t)*sin(3^(1/2)*t))/2 + (3^(1/2)*exp(-t)*cos(3^(1/2)*t))/2) - C26*((exp(-t)*cos(3^(1/2)*t))/2 - (3^(1/2)*exp(-t)*sin(3^(1/2)*t))/2) + C25*exp(2*t)
% C25*exp(2*t) + C26*exp(-t)*cos(3^(1/2)*t) - C27*exp(-t)*sin(3^(1/2)*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))