% Solve equation
% (1+x^2)*y'+y=atan(x)

% 1)
clear
syms x y(x)
eqn=(1+x^2)*diff(y)+y==atan(x)
ySol=simplify(dsolve(eqn))
% atan(x) + C18*exp(-atan(x)) - 1

% Checking
for i=1:1
eqn10=(1+x^2)*diff(y)+y-atan(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
% y'+y/(1+x^2)=atan(x)/(1+x^2)
syms x y
a(x)=1/(1+x^2)
f(x)=atan(x)/(1+x^2)
u(x)=simplify(exp(int(a(x),x)))
% exp(atan(x))
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% atan(x) + C*exp(-atan(x)) - 1