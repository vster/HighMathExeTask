% Solve equation
% y'+2*y/x=3*x^2*y^(4/3)

% 1)
clear
syms x y(x)
eqn=diff(y)+2*y/x-3*x^2*y^(4/3)==0
ySol=simplify(dsolve(eqn))
%                              0
% 343/(x^2*(C13 - 3*x^(7/3))^3)

% Checking
eqn10=diff(y)+2*y/x-3*x^2*y^(4/3)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
pretty(chk)

% 2)
clear
% y'+2*y/x=3*x^2*y^(4/3)
syms x y dy
% We have the Bernoulli equation with m=4/3
% z=y^(1-m)=1/y^(1/3)
z=1/y^(1/3)
dz=diff(z,y)
% dz=-dy/(3*y^(4/3)) => dy/y^(4/3)=-3*dz

% y'/y^(4/3)+2/(x*y^(1/3))=3*x^2
% -3*dz+2*z/x=3*x^2
% dz-2/3*z/x=x^2
% We have the linear equation
a(x)=-2/(3*x)
f(x)=x^2
u(x)=exp(int(a(x),x))
% 1/x^(2/3)

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% x^(2/3)*(C + (3*x^(7/3))/7)
z(x)=expand(z(x))
% C*x^(2/3) + (3*x^3)/7
y=simplify(1/z^3)
% 1/(C*x^(2/3) + (3*x^3)/7)^3