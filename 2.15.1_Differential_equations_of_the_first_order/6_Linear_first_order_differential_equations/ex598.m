% Integrate the equation
% y'+(x*y)/(1-x^2)=asin(x)+x

% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=diff(y)+(x*y)/(1-x^2)==asin(x)+x
ySol=simplify(dsolve(eqn))
% C7*(x^2 - 1)^(1/2) + (x^2 - 1)^(1/2)*((asin(x)^2*1i)/2 + (x^2 - 1)^(1/2))

% Checking
for i=1:1
eqn10=diff(y)+(x*y)/(1-x^2)-(asin(x)+x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end

% 2)
syms x y
a(x)=x/(1-x^2)
f(x)=asin(x)+x
u(x)=exp(int(a(x),x))
% 1/(x^2 - 1)^(1/2)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
% (C + int((x + asin(x))/(x^2 - 1)^(1/2), x))*(x^2 - 1)^(1/2)
% ???