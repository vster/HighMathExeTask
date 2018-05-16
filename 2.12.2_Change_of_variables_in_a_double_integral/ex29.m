% f=x^2*sin(x*y/2)/y
% x^2=pi*y/3
% x^2=2*pi*y/3
% y^2=2*x
% y^2=4*x

% x*y=u
% x^2/y=v
syms u v;
syms x y;
slv=solve(x*y==u*v,x^2/y==v)
x1=slv.x(1)
% (u^2*v)^(2/3)/u
y1=slv.y(1)
% (u^2*v)^(1/3)

% Jacobian
J=det([diff(x1,u),diff(x1,v);diff(y1,u),diff(y1,v)])
J=abs(J)
% 1/3

f=x^2*sin(x*y/2)/y
f=subs(f,[x y],[x1 y1])
% v*sin((u*v)/2)
ID=int(int(J*f,u,2,4),v,pi/3,2*pi/3)
% 3^(1/2)/3
digits(4)
vpa(ID)