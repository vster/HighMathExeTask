% Find the real solutions of equation
% diff(y,x,4)+3*diff(y,x,2)+diff(y)-5*y=10*exp(x)-5*x

clear
syms x y(x)
eqn=diff(y,x,4)+3*diff(y,x,2)+diff(y)-5*y==10*exp(x)-5*x
ySol=simplify(dsolve(eqn))
[???]