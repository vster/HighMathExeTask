% x*y'-y=x*tan(y/x)
% y(1)=pi/2

% y'=tan(y/x)+y/x
syms x y(x)
eqn=diff(y,x)==tan(y/x)+y/x
cond=y(1)==pi/2
ySol=dsolve(eqn,cond)
% x*asin(x)
