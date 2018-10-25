clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-2*y
eqn2=diff(y,t)-2*z
eqn3=diff(z,t)-2*x
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
zSol=simplify(zSol)
% -(exp(-t)*(C11*cos(3^(1/2)*t) - C12*sin(3^(1/2)*t) - 2*C10*exp(3*t) + 3^(1/2)*C12*cos(3^(1/2)*t) + 3^(1/2)*C11*sin(3^(1/2)*t)))/2
% (exp(-t)*(C12*sin(3^(1/2)*t) - C11*cos(3^(1/2)*t) + 2*C10*exp(3*t) + 3^(1/2)*C12*cos(3^(1/2)*t) + 3^(1/2)*C11*sin(3^(1/2)*t)))/2
% exp(-t)*(C11*cos(3^(1/2)*t) - C12*sin(3^(1/2)*t) + C10*exp(3*t))

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))