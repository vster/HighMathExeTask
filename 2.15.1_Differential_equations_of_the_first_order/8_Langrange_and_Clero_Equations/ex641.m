% Solve equation
% y=x*(1/x+y')+y'

% 1)
% Put y'=p
% y=x*(1/x+p)+p
% y=1+x/p+p
% dp=p*dx/p^2-x*dp/p^2+dp = p*dx
% dx/p-x*dp/p^2+dp-p*dx=0
% p*dx-x*dp+p^2*dp-p^3*dx=0
% ???

% 2)
clear
syms x y(x) a b
assume(y(x),'real')
eqn=y==x*(1/x+diff(y))+diff(y)
ySol=simplify(dsolve(eqn))
% C29*(x + 1) + 1

% Checking
eqn10=y-(x*(1/x+diff(y))+diff(y))
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0