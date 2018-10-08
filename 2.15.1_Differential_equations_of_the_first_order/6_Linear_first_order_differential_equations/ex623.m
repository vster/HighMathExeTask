% Solve equation
% y'-2*y*tan(x)+y^2*sin(x)^2=0

% 1)
clear
syms x y(x)
eqn=diff(y)-2*y*tan(x)+y^2*sin(x)^2==0
ySol=simplify(dsolve(eqn))
%                               0
% 1/(cos(x)^2*(C26 - x + tan(x)))

% Checking
eqn10=diff(y)-2*y*tan(x)+y^2*sin(x)^2
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]

% 2)
clear
% y'-2*y*tan(x)=-y^2*sin(x)^2
syms x y dy
% We have the Bernoulli equation with m=2
% z=y^(1-m)=y^(-1)
z=1/y
dz=diff(z,y)
% -1/y^2 = dz => dy/y^2=-dz

% y'/y^2-2*tan(x)/y=-sin(x)^2
% dz+2*z*tan(x)=sin(x)^2
% We have the linear equation
a(x)=2*tan(x)
f(x)=sin(x)^2
u(x)=exp(int(a(x),x))
% 1/cos(x)^2

syms C
z(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% cos(x)^2*(C - x + tan(x))
y(x)=1/z
% 1/(cos(x)^2*(C - x + tan(x)))