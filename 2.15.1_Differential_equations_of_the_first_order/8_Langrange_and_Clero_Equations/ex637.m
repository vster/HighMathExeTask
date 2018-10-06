% Integrate equation
% y=x*y'^2+y'^2

% Lagrange equation
% Put y'=p
% y=x*p^2+p^2 = p^2*(x+1)
% dy=p^2*dx+2*p*x*dp+2*p*dp = p*dx
% p*dx+2*x*dp+2*dp-dx=0
% (p-1)*dx+2*(x+1)*dp=0
% dx/(x+1)+2*dp/(p-1)=0

syms x p
eq1=int(1/(x+1),x)+int(2/(p-1),p)
% 2*log(p - 1) + log(x + 1)=log(C)
% (p-1)^2*(x+1)=C => x+1=C/(p-1)^2
% y=C*p^2/(p-1)^2

% / x+1=C/(p-1)^2    - common decision
% \ y=C*p^2/(p-1)^2

% p=0 => y=0 - special decision

% 2)
clear
syms x y(x)
assume(y(x),'real')
eqn=y==x*diff(y)^2+diff(y)^2
ySol=simplify(dsolve(eqn))
%

% Checking
eqn10=y-(x*diff(y)^2+diff(y)^2)
for i=1:6
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
%
