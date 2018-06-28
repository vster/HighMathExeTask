% Determine whether the vector field F (x, y) = (x + y, x-y) is potential?
% If so, find its potential.

syms x y dx dy;
F=[x+y,x-y]
P=x+y
Q=x-y

DPy=diff(P,y)
% 1
DQx=diff(Q,x)
% 1
% DPy=DQx

syms C(y);
u(x,y)=int(P,x)+C(y)
% C(y) + (x*(x + 2*y))/2

Duy=diff(u,y)
% D(C)(y) + x = Q = x - y => D(C)(y) = -y
DCy=-y
C(y)=int(DCy,y)
% -y^2/2
syms C1;
u(x,y)=(x*(x + 2*y))/2+(-y^2/2)+C1
% C1 + (x*(x + 2*y))/2 - y^2/2
u(x,y)=expand(u(x,y))
% x^2/2 + x*y - y^2/2 + C1


