% x*y'*sin(y/x)+x=y*sin(y/x)
% y'=(y*sin(y/x)-x)/(x*sin(y/x))

syms x y(x);
eqn=diff(y,x)==(y*sin(y/x)-x)/(x*sin(y/x))
ySol=dsolve(eqn)
% x*(pi - acos(C11 - log(x)))

% Checking
eq5=x*diff(y,x)*sin(y/x)+x-y*sin(y/x)
eq6=subs(eq5,y,ySol)
eq6=simplify(eq6)
% 0