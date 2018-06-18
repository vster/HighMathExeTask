% Compute the integral
% int(C)(dx-dy)/(x+y)
% using Green's formula.
% The integration contour C is a square with vertices at the points 
% A(1,0), B(0,1), D(-1,0), E(0,-1)

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy
P=1/(x+y)
Q=-1/(x+y)

f=diff(Q,x)-diff(P,y)
% 2/(x + y)^2

% AB: y=-x+1 => y+x=1  => u=1
% BD: y=x+1  => y-x=1  => v=1
% DE: y=-x-1 => y+x=-1 => u=-1
% EA: y=x-1  => y-x=-1 => v=-1
% where u=y+x, v=y-x

u=y+x
v=y-x

J=det([diff(u,x),diff(u,y);diff(v,x),diff(v,y)])
% 2
J1=1/J
% 1/2

syms u v;
f=2/u^2
f2=f*J1

I1=int(f2,u)
% -1/u
I1=-2
I=int(I1,v,-1,1)
% -4

