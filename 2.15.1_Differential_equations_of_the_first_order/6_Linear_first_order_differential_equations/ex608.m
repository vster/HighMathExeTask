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