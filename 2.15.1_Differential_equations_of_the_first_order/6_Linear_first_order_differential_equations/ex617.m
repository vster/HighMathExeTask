% Solve equation
% y'-y/(x-1)=y^2/(x-1)

% 1)
clear
syms x y(x)
eqn=diff(y)-y/(x-1)-y^2/(x-1)==0
ySol=simplify(dsolve(eqn))
%                                              0
%                                             -1
% (exp(C15)*(x - 1))/(exp(C15) - x*exp(C15) + 1)

% Checking
for i=1:3
chk(i)=simplify(subs(eqn,y(x),ySol(i)))
pretty(chk(i))
end
% [ TRUE, TRUE, TRUE]

% 2)
clear
% y'-y/(x-1)=y^2/(x-1)
syms x y dy
% We have the Bernoulli equation with m=2
% z=y^(1-m)=1/y
z=1/y
dz=diff(z,y)
% dz=-dy/y^2 => dy/y^2=-dz

% y'/y^2-1/(y*(x-1))=
% -dz-z/(x-1)=1/(x-1)
% dz+z/(x-1)=-1/(x-1)
% We have the linear equation
a(x)=1/(x-1)
f(x)=-1/(x-1)
u(x)=exp(int(a(x),x))
% x - 1

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% (C - x)/(x - 1)
y=1/z
% (x - 1)/(C - x)
