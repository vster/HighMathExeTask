% Find the general solution of equation
% 9*(y')^2-4*x=0

% 1)
clear
syms x y(x)
% y'=2/3*sqrt(x)
y1=int(2/3*sqrt(x),x)
% (4*x^(3/2))/9

% 2)
syms x y p
% p=y'
% x=9/4*p^2
% dx=9/4*2*p*dp=9/2*p*dp => (dy=p*dx) => dy/p=9/2*p*dp
% dy=9/2*p^2*dp
eq1=int(1,y)-int(9/2*p^2,p)
% y - (3*p^3)/2

% / x=9/4*p^2  
% \ y = (3*p^3)/2+C

% p=+-2/3*sqrt(x)
y1=(3*p^3)/2
y2=subs(y1,p,2/3*sqrt(x))
% (4*x^(3/2))/9+C