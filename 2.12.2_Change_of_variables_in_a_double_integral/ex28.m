% f=(x+y)^3*(x-y)^2
% ID=int(int(f),D)
% x+y=1
% x-y=1
% x+y=3
% x-y=-1

% x+y=u
% x-y=v
syms u v;
x=1/2*(u+v)
y=1/2*(u-v)

% Jacobian
J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
J=abs(J)

f=J*(x+y)^3*(x-y)^2
% f=(u^3*v^2)/2
ID=int(int(f,v,-1,1),u,1,3)
% 20/3