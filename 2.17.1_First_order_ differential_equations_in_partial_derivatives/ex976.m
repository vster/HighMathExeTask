% d2z/(dx*dy)=1
syms x y
syms z(x,y)

eqn1=diff(z,x,y)-1
eqn2=int(eqn1,x)
% diff(z(x, y), y) - x
syms f(y)
eqn2=diff(z(x, y), y) - x - f(y)
eqn3=expand(int(eqn2,y))
% z(x, y) - x*y - int(f(y), y)
% psi(y)=int(f(y), y)
syms phi(x) psi(y)
% z(x,y)=x*y+psi(y)+phi(x)