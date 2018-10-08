% Solve equation
% y'+y=exp(x/2)*sqrt(y)
% y(0)=9/4

% 1)
clear
syms x y(x)
eqn=diff(y)+y==exp(x/2)*sqrt(y)
cond=y(0)==9/4
ySol=simplify(dsolve(eqn,cond))
%  (exp(-x)*(exp(x) + 2)^2)/4
%  (exp(-x)*(exp(x) - 4)^2)/4

% Checking
eqn10=diff(y)+y-exp(x/2)*sqrt(y)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end

% 2)
clear
% y'+y=exp(x/2)*sqrt(y)
syms x y dy
% We have the Bernoulli equation with m=1/2
% z=y^(1-m)=sqrt(y)
z=y^(1/2)
dz=diff(z,y)
% 1/(2*y^(1/2)) =dz => 1/y^(1/2)=2*dz

% y'/sqrt(y)+sqrt(y)=exp(x/2)
% 2*dz+z=exp(x/2)
% dz+z/2=exp(x/2)/2
% We have the linear equation
a(x)=sym(1/2)
f(x)=exp(x/2)/2
u(x)=exp(int(a(x),x))
% exp(x/2)

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% exp(-x/2)*(C + exp(x)/2)
y=z^2
% exp(-x)*(C + exp(x)/2)^2
y2=subs(y,x,0)
% (C + 1/2)^2=9/4 => C=1,-2

% exp(-x)*(2 + exp(x))^2/4
% exp(-x)*(-4 + exp(x))^2/4