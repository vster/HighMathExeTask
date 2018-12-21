clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x+y+exp(2*t)/cos(t))
eqn2=diff(y,t)-(-2*x+3*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% ((exp(2*t)*cos(t))/2 - (exp(2*t)*sin(t))/2)*(C8 + 2*t) + (C7 - 2*log(cos(t)))*((exp(2*t)*cos(t))/2 + (exp(2*t)*sin(t))/2)
%ySol =
% exp(2*t)*cos(t)*(C7 - 2*log(cos(t))) - exp(2*t)*sin(t)*(C8 + 2*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0