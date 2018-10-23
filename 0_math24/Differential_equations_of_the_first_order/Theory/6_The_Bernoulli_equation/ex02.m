% Solve the differential equation
% y'+y/x=y^2

% 1)
clear
% y'=-y/x+y^2
syms x y(x)
eqn=diff(y(x))==-y/x+y^2
ySol=dsolve(eqn)
%                   0
% 1/(x*(C8 - log(x)))

% Checking
ySol2=ySol(2)
eqn10=diff(y(x))+y(x)/x-y(x)^2
eqn11=subs(eqn10,y(x),ySol2)
% 0

% 2)
clear
syms x y dy
% dy+y/x=y^2
% We have the Bernoulli equation with m=2
% z=y^(1-m)=1/y
% dz=-dy/y^2
% dy/y^2+1/(y*x)=1
% -dz+z/x=1
% dz-z/x=-1
% We have the linear equation
a(x)=-1/x
f(x)=sym(-1)
u(x)=exp(int(a(x),x))
% 1/x

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% x*(C - log(x))
y(x)=1/z(x)
% y(x)=1/(x*(C - log(x)))
% y*(x*(C - log(x)))=1, y=0