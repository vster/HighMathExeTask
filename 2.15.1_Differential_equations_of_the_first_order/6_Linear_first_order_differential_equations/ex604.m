% Solve equation
% y'+2*x*y=x*exp(-x^2)

% 1)
clear
syms x y(x)
eqn=diff(y)+2*x*y==x*exp(-x^2)
ySol=simplify(dsolve(eqn))
% (exp(-x^2)*(x^2 + 2*C15))/2

% Checking
for i=1:1
eqn10=diff(y)+2*x*y-x*exp(-x^2)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
syms x y
a(x)=2*x
f(x)=x*exp(-x^2)
u(x)=exp(int(a(x),x))
% exp(x^2)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
% exp(-x^2)*(x^2/2 + C)