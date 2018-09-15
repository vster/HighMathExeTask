% (x+y+2)*dx+(2*x+2*y-1)*dy=0

clear
% 1)
% y'=-(x+y+2)/(2*x+2*y-1)
syms x y(x)
eqn=diff(y(x))==-(x+y+2)/(2*x+2*y-1)
ySol=dsolve(eqn)
%                                              3 - x
% (5*lambertw(0, (2*exp(C3 + x/5 - 2))/5))/2 - x + 3
ySol2=ySol(2)

% Checking
syms x y(x)
eq10=(x+y+2)+(2*x+2*y-1)*diff(y,x)
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0
