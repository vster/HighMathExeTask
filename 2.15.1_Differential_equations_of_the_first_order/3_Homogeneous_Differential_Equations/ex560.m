% x*y'-y=x/atan(x/y)

clear
% 1)
% y'=1/atan(x/y)+y/x
syms x y(x)
eqn=diff(y(x))==1/atan(x/y)+y/x
ySol=dsolve(eqn)
% ??

% 2)
syms x y dx dy
eq1=x*dy-y*dx-x/atan(x/y)*dx
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% dt*x^2 - (dx*x)/atan(1/t)=0
% atan(1/t)*dt-dx/x=0
eq3=int(atan(1/t),t)-int(1/x,x)
% log(t^2 + 1)/2 - log(x) + t*atan(1/t)
syms C
% log(t^2 + 1)/2 + t*atan(1/t)=log(x)+log(C)
% log((y/x)^2+1)+2*y/x*atan(x/y)=2*log(x)+2*log(C)
% ??
