clear
syms t x(t) y(t)
eqn1=diff(x,t)-(-x-y)
eqn2=diff(y,t)-(-x+y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C4*exp(-2^(1/2)*t)*(2^(1/2) + 1) - C3*exp(2^(1/2)*t)*(2^(1/2) - 1)
%ySol =
% C3*exp(2^(1/2)*t) + C4*exp(-2^(1/2)*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0

x(t)=xSol
y(t)=ySol

x0=x(0)
y0=y(0)

syms x0 y0 C3 C4
eq1=x0==(C4*(sym(2^(1/2)) + 1) - C3*(sym(2^(1/2)) - 1))
eq2=y0==(C3 + C4)

[C3,C4]=solve([eq1 eq2],[C3 C4])
