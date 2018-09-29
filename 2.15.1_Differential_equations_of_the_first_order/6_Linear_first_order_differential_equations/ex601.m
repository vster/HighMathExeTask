% Integrate the equation
% y=x*y'+y'*log(y)

% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=y==x*diff(y)+diff(y)*log(y)
ySol=simplify(dsolve(eqn))
% lambertw(0, C11*exp(- x - 1))/C11

% Checking
for i=1:1
eqn10=y-(x*diff(y)+diff(y)*log(y))
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end