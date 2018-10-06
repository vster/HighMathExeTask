% Integrate the equation
% y'-y*tanh(x)=coth(x)^2

% 1)
clear
syms x y(x)
eqn=diff(y)-y*tanh(x)==coth(x)^2
ySol=dsolve(eqn)
% C5*cosh(x) - cosh(x)/sinh(x)

% Checking
for i=1:1
eqn10=diff(y)-y*tanh(x)-coth(x)^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
% y'-y*tanh(x)=coth(x)^2
syms x y
a(x)=-tanh(x)
f(x)=coth(x)^2
u(x)=exp(int(a(x),x))
% 1/cosh(x)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
% cosh(x)*(C - 1/sinh(x))

