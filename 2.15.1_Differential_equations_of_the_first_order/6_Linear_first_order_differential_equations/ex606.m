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