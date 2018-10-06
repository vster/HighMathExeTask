% Solve equation
% y'+n/x*y=a/x^n
% y(1)=0

% 1)
clear
syms x a n y(x)
eqn=diff(y)+n/x*y==a/x^n
cond=y(1)==0
ySol=simplify(dsolve(eqn,cond))
% (a*(x - 1))/x^n

% Checking
for i=1:1
eqn10=diff(y)+n/x*y-a/x^n
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
clear
syms x y A N
a(x)=N/x
f(x)=A/x^N
u(x)=simplify(exp(int(a(x),x)))
% x^N
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% (C + A*x)/x^N
y2=subs(y,x,1)
% C=-A
% y=A*(x-1)/x^N
