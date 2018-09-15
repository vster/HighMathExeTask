% (x-y+4)*dy+(x+y-2)*dx=0

% y'=-(x+y-2)/(x-y+4)
syms x y(x)
eqn=diff(y(x))==-(x+y-2)/(x-y+4)
ySol=dsolve(eqn)
% x + 2^(1/2)*(x^2 + 2*x + C9 + 8)^(1/2) + 4
% x - 2^(1/2)*(x^2 + 2*x + C9 + 8)^(1/2) + 4
ySol2=ySol(1)

% Checking
eq10= (x-y+4)*diff(y(x))+(x+y-2)
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0