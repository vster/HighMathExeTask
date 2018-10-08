% Solve equation
% y'+3*x^2*y/(x^3+1)=y^2*(x^2+1)*sin(x)
% y(0)=1

% 1)
clear
syms x y(x)
eqn=diff(y)+3*x^2*y/(x^3+1)==y^2*(x^2+1)*sin(x)
cond=y(0)==1
ySol=simplify(dsolve(eqn,cond))
% -1/((x^3 + 1)*(int((sin(y)*(y^2 + 1))/(y^3 + 1), y, 0, x) - 1))

% Checking
eqn10=diff(y)+3*x^2*y/(x^3+1)-y^2*(x^2+1)*sin(x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
clear
% y'+3*x^2*y/(x^3+1)=y^2*(x^2+1)*sin(x)
syms x y dy
% We have the Bernoulli equation with m=2
% z=y^(1-m)=y^(-1)
z=1/y
dz=diff(z,y)
% -1/y^2 = dz => dy/y^2=-dz

% y'/y^2+3*x^2/(y*(x^3+1))=(x^2+1)*sin(x)
% dz-3*x^2*z/(x^3+1)=-(x^2+1)*sin(x)
% We have the linear equation
a(x)=-3*x^2/(x^3+1)
f(x)=-(x^2+1)*sin(x)
u(x)=exp(int(a(x),x))
% 1/(x^3 + 1)

syms C
z(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% (x^3 + 1)*(C - int((sin(x)*(x^2 + 1))/(x^3 + 1), x))
% ???