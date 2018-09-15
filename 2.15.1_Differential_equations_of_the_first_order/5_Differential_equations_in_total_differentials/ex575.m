% (x+sin(y))*dx+(x*cos(y)+sin(y))*dy=0

% y'=-(x+sin(y))/(x*cos(y)+sin(y))
syms x y(x)
eqn=diff(y(x))==-(x+sin(y))/(x*cos(y)+sin(y))
ySol=dsolve(eqn)