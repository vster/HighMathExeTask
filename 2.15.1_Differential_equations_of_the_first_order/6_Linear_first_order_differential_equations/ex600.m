% Integrate the equation
% y'-2*x*y/(1+x^2)=4*sqrt(y)/sqrt(1+x^2)*atan(x)

% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=diff(y)-2*x*y/(1+x^2)==4*sqrt(y)/sqrt(1+x^2)*atan(x)
% ySol=simplify(dsolve(eqn))
% ???

% Checking
for i=1:1
% eqn10=diff(y)-2*x*y/(1+x^2)-4*sqrt(y)/sqrt(1+x^2)*atan(x)
% chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end

% 2)
clear
% y'-2*x*y/(1+x^2)=4*sqrt(y)/sqrt(1+x^2)*atan(x)
syms x y dy
% We have the Bernoulli equation with m=1/2
% z=y^(1-m)=y^(1/2)
z=y^(1/2)
dz=diff(z,y)
% dz=dy/(2*y^(1/2)) => dy/y^(1/2)=2*dz

% y'/sqrt(y)-2*x*sqrt(y)/(1+x^2)=4/sqrt(1+x^2)*atan(x)
% 2*dz-2*x*z/(1+x^2)=4/sqrt(1+x^2)*atan(x)
% dz-x*z/(1+x^2)=2/sqrt(1+x^2)*atan(x)
% We have the linear equation
a(x)=-x/(1+x^2)
f(x)=2/sqrt(1+x^2)*atan(x)
u(x)=exp(int(a(x),x))
% 1/(x^2 + 1)^(1/2)

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% (x^2 + 1)^(1/2)*(atan(x)^2 + C)
y(x)=z(x)^2
% (x^2 + 1)*(atan(x)^2 + C)^2