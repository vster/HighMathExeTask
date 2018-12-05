% d2y/dx2=0
% u(x=0)=u0
% u(x=L)=uL

syms x A B
syms u0 uL
u=A*x+B

u0=subs(u,x,0)
% u0=B
uL=subs(u,x,L)
% uL=B+A*L

% A=(uL-u0)/L
% B=u0
u=((uL-u0)/L)*x+u0