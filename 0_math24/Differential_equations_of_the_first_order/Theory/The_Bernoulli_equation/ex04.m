% Find all solutions of the differential equation
% y'+2*y/x=2*x*sqrt(y)

% 1)
clear
% y'=-2*y/x+2*x*sqrt(y)
syms x y(x)
eqn=diff(y(x))==-2*y/x+2*x*sqrt(y)
ySol=dsolve(eqn)
%                     0
% (x^3 + C11)^2/(9*x^2)

% Checking
ySol2=ySol(2)
eqn10=diff(y,x)+2*y/x-2*x*sqrt(y)
eqn11=simplify(subs(eqn10,y(x),ySol2))
% 0

% 2)
clear
syms x y dy
% y'+2*y/x=2*x*sqrt(y)
% We have the Bernoulli equation with m=1/2
% z=y^(1-m)=sqrt(y)
z=y^(1/2)
dz=diff(z,y)
% 1/(2*y^(1/2))
% y'/(2*y^(1/2))+(2*y)/(x*2*y^(1/2))=2*x*sqrt(y)/(2*y^(1/2)
% y'/(2*sqrt(y)+sqrt(y)/x=x
% z'+z/x=x
% We have the linear equation
a(x)=1/x
f(x)=x
u(x)=exp(int(a(x),x))
% x

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% (x^3/3 + C)/x
% sqrt(y)=(x^3/3 + C)/x
% x*sqrt(y)=x^3/3 + C, y=0