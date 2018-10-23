% Solve the differential equation
% (x*y+1)*dx+x^2*dy=0

% 1)
clear
% y'=-(x*y+1)/x^2
syms x y(x)
eqn=diff(y(x))==-(x*y+1)/x^2
ySol=dsolve(eqn)
% y=C6/x - log(x)/x
% log(x)+y*x=C6
% x*exp(y*x)=C7