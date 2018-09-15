% (x-2*y+3)*dy+(2*x+y-1)*dx=0

% y'=-(2*x+y-1)/(x-2*y+3)
syms x y(x)
eqn=diff(y(x))==-(2*x+y-1)/(x-2*y+3)
ySol=dsolve(eqn)
% x/2 + (5*x^2 + 2*x + C8 + 9)^(1/2)/2 + 3/2
% x/2 - (5*x^2 + 2*x + C8 + 9)^(1/2)/2 + 3/2
ySol2=ySol(1)

% Checking
eq10=(x-2*y+3)*diff(y(x))+(2*x+y-1)
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0