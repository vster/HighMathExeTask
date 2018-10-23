% Find the solution of the differential equation 
% 4*x*y*y'=y^2+x^2 satisfying the initial condition y(1)=2

% 1)
clear
% y'=(y^2+x^2)/(4*x*y)
syms x y(x)
eqn=diff(y(x))==(y^2+x^2)/(4*x*y)
cond=y(1)==2
ySol=dsolve(eqn,cond)
ySol=simplify(ySol)
% (3^(1/2)*x*((x^(3/2) + 11)/x^(3/2))^(1/2))/3

% Checking
eqn10=4*x*y*diff(y)-y^2-x^2
eqn11=simplify(subs(eqn10,y(x),ySol))
% 0

% 2)
clear
syms x y dy
% 4*x*y*y'=y^2+x^2  /(4*x*y)
% y'-y/(4*x)=x/(4*y)
% We have the Bernoulli equation with m=-1
% z=y^(1-m)=y^2
z=y^2
dz=diff(z,y)
% 2*y
% 2y*y'-y^2/(2*x)=x/2
% z'-z/(2*x)=x/2
% We have the linear equation
a(x)=-1/(2*x)
f(x)=x/2
u(x)=exp(int(a(x),x))
% 1/x^(1/2)

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% z(x)=x^(1/2)*(C + x^(3/2)/3)
y(x)=sqrt(z(x))
% (x^(1/2)*(C + x^(3/2)/3))^(1/2)
syms y2
eq1=y2-(x^(1/2)*(C + x^(3/2)/3))^(1/2)
eq2=subs(eq1,[x y2],[1 2])
% 2 - (C + 1/3)^(1/2) = 0 => 
C=sym(11/3)
y(x)=(x^(1/2)*(11/3 + x^(3/2)/3))^(1/2)
y(x)=simplify(y(x))
% (3^(1/2)*(x^2 + 11*x^(1/2))^(1/2))/3

% Checking
ySol2=y(x)
eqn10=4*x*y*diff(y)-y^2-x^2
eqn11=simplify(subs(eqn10,y(x),ySol2))
% 0