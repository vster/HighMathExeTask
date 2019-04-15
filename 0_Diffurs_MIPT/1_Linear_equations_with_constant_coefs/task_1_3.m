% Find the real solutions of equation
% diff(y,x,4)+4*diff(y,x,2)+diff(y)+4*y==34*sin(x)+(34*x+13/4)*exp(4*x)

clear
syms x y(x)
eqn=diff(y,x,4)+4*diff(y,x,2)+diff(y)+4*y-(34*sin(x)+(34*x+13/4)*exp(4*x))
% ySol=simplify(dsolve(eqn))
% [???]

syms C1 C2 C3 C4
cond=[C1,C2,C3,C4]
ySol2=opercalc2(eqn,cond)