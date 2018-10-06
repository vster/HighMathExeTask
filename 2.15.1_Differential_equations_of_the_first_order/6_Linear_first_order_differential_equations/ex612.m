% Solve equation
% y'*(x+y^2)=y

% 1)
clear
syms x y(x)
eqn=diff(y)*(x+y^2)==y
ySol=simplify(dsolve(eqn))
%                                                     0
%                                               x^(1/2)
%                                              -x^(1/2)
% exp(C24)/2 + (x^(1/2)*((4*x + exp(2*C24))/x)^(1/2))/2
% exp(C24)/2 - (x^(1/2)*((4*x + exp(2*C24))/x)^(1/2))/2

% Checking
for i=1:5
eqn10=diff(y)*(x+y^2)-y
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0, 0]

% 2)
clear
% dy/dx=y/(x+y^2)
% x'=(x+y^2)/y
syms y x(y)
eqn=diff(x)==(x+y^2)/y
xSol=simplify(dsolve(eqn))
% y*(C26 + y)

% Checking
for i=1
eqn10=diff(x)-(x+y^2)/y
chk(i)=simplify(subs(eqn10,x(y),xSol(i)))
end
% 0

% 3)
% x'-x/y=y
syms x y
a(y)=-1/y
f(y)=y
u(y)=simplify(exp(int(a(y),y)))
% 1/y
syms C
x(y)=simplify((int(u(y)*f(y),y)+C)/u(y))
% y*(C + y)
