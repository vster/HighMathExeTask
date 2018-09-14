% (2*x+y+1)*dx+(x+2*y-1)*dy=0

clear
% 1)
% y'=-(2*x+y+1)/(x+2*y-1)
syms x y(x)
eqn=diff(y(x))==-(2*x+y+1)/(x+2*y-1)
ySol=dsolve(eqn)
% (- 3*x^2 - 6*x + C21 + 1)^(1/2)/2 - x/2 + 1/2
% 1/2 - (- 3*x^2 - 6*x + C21 + 1)^(1/2)/2 - x/2