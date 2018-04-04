% y=x
% y=2*x
% x=0
% x=1

syms x y;
syms u v;
slv=solve(u*(1-v)==x,u*v==y,u,v)
u1=slv.u
% u = x + y
v1=slv.v
% v = y/(x + y)

% якобиан
x=u*(1-v)
y=u*v
J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
J=abs(J)