% Solve equation
% y'*sqrt(1-x^2)+y=asin(x)
% y(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y)*sqrt(1-x^2)+y==asin(x)
cond=y(0)==0
ySol=simplify(dsolve(eqn,cond))
% exp(-asin(x)) + asin(x) - 1

% Checking
for i=1:1
eqn10=diff(y)*sqrt(1-x^2)+y-asin(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
% y'+y/sqrt(1-x^2)=asin(x)/sqrt(1-x^2)
syms x y
a(x)=1/sqrt(1-x^2)
f(x)=asin(x)/sqrt(1-x^2)
u(x)=simplify(exp(int(a(x),x)))
% exp(asin(x))
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% asin(x) + C*exp(-asin(x)) - 1