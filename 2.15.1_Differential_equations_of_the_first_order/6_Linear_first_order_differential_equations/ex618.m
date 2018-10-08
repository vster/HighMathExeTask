% Solve equation
% y'+2*y/x=2*sqrt(y)/cos(x)^2

% 1)
clear
syms x y(x)
eqn=diff(y)+2*y/x-2*sqrt(y)/cos(x)^2==0
ySol=simplify(dsolve(eqn))
%                                    0
% (C20 + log(cos(x)) + x*tan(x))^2/x^2

% Checking
eqn10=diff(y)+2*y/x-2*sqrt(y)/cos(x)^2
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
pretty(chk)

% 2)
clear
% y'+2*y/x=2*sqrt(y)/cos(x)^2
syms x y dy
% We have the Bernoulli equation with m=1/2
% z=y^(1-m)=sqrt(y)
z=y^(1/2)
dz=diff(z,y)
% 1/(2*y^(1/2)) =dz => 1/y^(1/2)=2*dz

% y'/sqrt(y)+2*sqrt(y)/x=2/cos(x)^2
% 2*dz+2*z/x=2/cos(x)^2
% dz+z/x=1/cos(x)^2
% We have the linear equation
a(x)=1/x
f(x)=1/cos(x)^2
u(x)=exp(int(a(x),x))
% (C + log(cos(x)) + x*tan(x))^2/x^2
% x

syms C
z(x)=(int(u(x)*f(x),x)+C)/u(x)
% (C + log(cos(x)) + x*tan(x))/x
y(x)=z(x)^2
% (C + log(cos(x)) + x*tan(x))^2/x^2