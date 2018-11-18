syms x y z(x,y)
eqn=diff(z(x,y),x)==1
% zsol=dsolve(eqn)
syms phi(y)
z1=x+phi(y)
diff(z1,x)