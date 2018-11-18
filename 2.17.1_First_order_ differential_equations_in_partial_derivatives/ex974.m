syms x y z(x,y)
eqn=diff(z,y,2)-6*y

eqn1=int(eqn,y)
% diff(z(x, y), y) - 3*y^2
syms phi(x)
eqn1=diff(z(x, y), y) - 3*y^2-phi(x)
eqn2=int(eqn1,y)
% z(x, y) - y*phi(x) - y^3
syms psi(x)
eqn3=z(x, y) - y*phi(x) - y^3 - psi(x)
z1=y*phi(x) + y^3 + psi(x)