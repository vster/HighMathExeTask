syms x y
syms z(x,y)

eqn1=diff(z,x,y)
eqn2=int(eqn1,x)
% diff(z(x, y), y)
syms f(y)
eqn2=diff(z(x, y), y)-f(y)
eqn3=int(eqn2,y)
% z(x, y) - int(f(y), y)
% psi(y)=int(f(y), y)
syms phi(x) psi(y)
Z=phi(x)+psi(y)