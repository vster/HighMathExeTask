% Solve equation
% y=x*y'+sqrt(b^2+a^2*y'^2)

% 1)
clear
syms x y(x) a b
assume(y(x),'real')
eqn=y==x*diff(y)+sqrt(b^2+a^2*diff(y)^2)
ySol=simplify(dsolve(eqn))
%

% Checking
eqn10=y-(x*diff(y)+sqrt(b^2+a^2*diff(y)^2))
for i=1:3
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
%

% 2)
% Put y'=p
% y=x*p+sqrt(b^2+a^2*p^2)
syms a b p
eq1=diff(sqrt(b^2+a^2*p^2),p)
% (a^2*p)/(a^2*p^2 + b^2)^(1/2)
% dy=p*dx+x*dp+(a^2*p*dp)/(a^2*p^2 + b^2)^(1/2) = p*dx
% x*dp+(a^2*p*dp)/(a^2*p^2 + b^2)^(1/2) = 0

% dp=0 => p=C
% y=x*C+sqrt(b^2+a^2*C^2) - common decision

% x=-(a^2*p)/(a^2*p^2 + b^2)^(1/2)
y1=-(a^2*p^2)/(a^2*p^2 + b^2)^(1/2)+sqrt(b^2+a^2*p^2)
y1=simplify(y1)
% b^2/(a^2*p^2 + b^2)^(1/2)

% Special decision
% / x=-(a^2*p)/(a^2*p^2 + b^2)^(1/2)
% \ y=b^2/(a^2*p^2 + b^2)^(1/2)
