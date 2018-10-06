% Solve equation
% y=x*y'+y'-y'^2

% 1)
syms p
% Put y'=p
% y=x*p+p-p^2
% dy=x*dp+p*dx+dp-2*p*dp = p*dx
% dp(x+1-2*p)=0

% dp=0 => p=C
% y=x*C+C-C^2 - common decision

% x=2*p-1
y1=(2*p-1)*p+p-p^2
y1=simplify(y1)
% p^2

% Special decision
% / x=2*p-1
% \ y=p^2
% p=(x+1)/2 => y=(x+1)^2/4

% 2)
clear
syms x y(x) a b
assume(y(x),'real')
eqn=y==x*diff(y)+diff(y)-diff(y)^2
ySol=simplify(dsolve(eqn))
%  C28*(x - C28 + 1)
%       (x + 1)^2/4

% Checking
eqn10=y-(x*diff(y)+diff(y)-diff(y)^2)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]