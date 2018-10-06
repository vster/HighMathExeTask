% Integrate equation
% y=x*y'-exp(y')

% 1)
% Clero Equation
% Put y'=p, then
% y=x*p-exp(p)
% dy=p*dx+x*dp-exp(p)*dp = p*dx
% x*dp-exp(p)*dp=0 
% (x-exp(p))*dp=0
% dp=0 or x=exp(p)

% p=C
% y=C*x-exp(C) - common decision

% / x=exp(p)
% \ y=p*exp(p)-exp(p) = exp(p)*(p-1)

% p=log(x) => y=x*(log(x)-1) - special decision

% 2)
clear
syms x y(x)
assume (y(x),'real')
eqn=y==x*diff(y)-exp(diff(y))
ySol=simplify(dsolve(eqn))
%  x*(log(x) - 1) - special decision
% C7*x - exp(C7) - common decision

% Checking
eqn10=y-x*diff(y)+exp(diff(y))
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]