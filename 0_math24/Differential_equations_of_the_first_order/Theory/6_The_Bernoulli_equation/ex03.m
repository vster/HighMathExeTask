% Find all solutions of the differential equation
% y'+y*cot(x)=y^4*sin(x)

% 1)
clear
% y'=-y*cot(x)+y^4*sin(x)
syms x y(x)
eqn=diff(y(x))==-y*cot(x)+y^4*sin(x)
ySol=dsolve(eqn)
%                                                         0
%                       1/(sin(x)^3*(C10 + 3*cot(x)))^(1/3)
%  ((3^(1/2)*1i)/2 - 1/2)/(sin(x)^3*(C10 + 3*cot(x)))^(1/3)
% -((3^(1/2)*1i)/2 + 1/2)/(sin(x)^3*(C10 + 3*cot(x)))^(1/3)

% y^(-3)=sin(x)^3*(C10 + 3*cot(x))

% Checking
ySol2=ySol(2)
eqn10=diff(y,x)+y*cot(x)-y^4*sin(x)
eqn11=simplify(subs(eqn10,y(x),ySol2))
% 0

% 2)
clear
syms x y dy
% y'+y*cot(x)=y^4*sin(x)
% We have the Bernoulli equation with m=4
% z=y^(1-m)=y^(-3)
z=y^(-3)
dz=diff(z,y)
% -3/y^4*y'
% y'/y^4-3*cot(x)/y^3=-3*sin(x)
% z'-3*cot(x)*z=-3*sin(x)
% We have the linear equation
a(x)=-3*cot(x)
f(x)=-3*sin(x)
u(x)=exp(int(a(x),x))
% 1/sin(x)^3

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% sin(x)^3*(C + 3*cot(x))
% y^(-3)=sin(x)^3*(C + 3*cot(x)), y=0