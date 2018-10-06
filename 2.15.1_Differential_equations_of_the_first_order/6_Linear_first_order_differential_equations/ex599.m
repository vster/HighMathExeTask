% Solve equation
% y'+y/x=x^2*y^4

% Bernoulli equation
% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=diff(y)+y/x==x^2*y^4
ySol=simplify(dsolve(eqn))
%                                                   0
%                      1/(x^3*(C51 - 3*log(x)))^(1/3)
% (- 1 + 3^(1/2)*1i)/(2*(x^3*(C51 - 3*log(x)))^(1/3))
%  -(1 + 3^(1/2)*1i)/(2*(x^3*(C51 - 3*log(x)))^(1/3))

% Checking
eqn10=diff(y)+y/x-x^2*y^4
for i=1:4
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0]

% 2)
clear
% y'+y/x=x^2*y^4
syms x y dy
% We have the Bernoulli equation with m=4
% z=y^(1-m)=1/y^3
z=1/y^3
dz=diff(z,y)
% dz=-3*dy/y^4 => dy/y^4=-dz/3
% dy/y^4+1/(x*y^3)=x^2
% -dz/3+z/x=x^2
% dz-3*z/x=-3*x^2
% We have the linear equation
a(x)=-3/x
f(x)=-3*x^2
u(x)=exp(int(a(x),x))
% 1/x^3

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% x^3*(C - 3*log(x))
y(x)=1/z(x)^(1/3)
% 1/(x^3*(C - 3*log(x)))^(1/3)
% 1/(x*(C - 3*log(x))^(1/3))