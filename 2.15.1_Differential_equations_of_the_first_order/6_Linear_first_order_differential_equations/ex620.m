% Solve equation
% y'+y=exp(x/2)*sqrt(y)
% y(0)=9/4

% 1)
clear
syms x y(x)
eqn=diff(y)+y==exp(x/2)*sqrt(y)
cond=y(0)==9/4
ySol=simplify(dsolve(eqn,cond))
%  (exp(-x)*(exp(x) + 2)^2)/4
%  (exp(-x)*(exp(x) - 4)^2)/4

% Checking
eqn10=diff(y)+y-exp(x/2)*sqrt(y)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end