% x*y*y'=y^2+2*x^2
% y'=(y^2+2*x^2)/(x*y)

syms x y(x);
eqn=diff(y,x)==(y^2+2*x^2)/(x*y)
ySol=dsolve(eqn)
%  2^(1/2)*x*(C29 + 2*log(x))^(1/2)
% -2^(1/2)*x*(C29 + 2*log(x))^(1/2)
syms C29
ySol2=2^(1/2)*x*(C29 + 2*log(x))^(1/2)

% Checking
eq5=x*y*diff(y,x)-y^2-2*x^2
eq6=subs(eq5,y,ySol2)
eq6=simplify(eq6)
% 0