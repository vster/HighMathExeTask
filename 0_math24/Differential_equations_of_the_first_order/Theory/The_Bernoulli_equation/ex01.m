% Find the general solution of equation
% y'-y=y^2*exp(x)

% 1)
clear
% y'=y+y^2*exp(x)
syms x y(x)
eqn=diff(y(x))==y+y^2*exp(x)
ySol=dsolve(eqn)
%                        0
% exp(x)/(C7 - exp(2*x)/2)

% Checking
ySol2=ySol(2)
eqn10=diff(y(x))-y(x)-y^2*exp(x)
eqn11=subs(eqn10,y(x),ySol2)
% 0

% 2)
clear
% y'-y=y^2*exp(x)
syms x y dy
% We have the Bernoulli equation with m=2
% z=y^(1-m)=1/y
z=1/y
dz=diff(z,y)
% dz=-1/y^2*dy
% dy/y^2-1/y=exp(x)
% -dz-z=exp(x)
% dz+z=-exp(x)
% We have the linear equation
a(x)=sym(1)
f(x)=-exp(x)
u(x)=exp(int(a(x),x))
% exp(x)

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% exp(-x)*(C - exp(2*x)/2)
y(x)=1/z(x)
% exp(x)/(C - exp(2*x)/2)