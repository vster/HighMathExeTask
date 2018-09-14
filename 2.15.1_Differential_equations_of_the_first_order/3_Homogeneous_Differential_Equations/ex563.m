% 3*y*sin(3*x/y)*dx+(y-3*x*sin(3*x/y))*dy=0

clear
% 1)
syms x y(x)
% 3*y*sin(3*x/y)+(y-3*x*sin(3*x/y))*dy/dx=0
% y'=-3*y*sin(3*x/y)/(y-3*x*sin(3*x/y))
eqn=diff(y(x))==-3*y*sin(3*x/y)/(y-3*x*sin(3*x/y))
ySol=dsolve(eqn)
% cos(3/u18) - log(u18) = C19 + log(x)
% u18=y/x
% cos(3*x/y)-log(y/x)-log(x)=C19
% cos(3*x/y)-log(y)=C19
% log(y)-cos(3*x/y)=C1

% 2)
syms x y dx dy
eq1=3*y*sin(3*x/y)*dx+(y-3*x*sin(3*x/y))*dy
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
eq2=simplify(eq2)
% dt*t*x^2 + dx*t^2*x - 3*dt*x^2*sin(3/t)
% dt*(t*x^2-3*x^2*sin(3/t))+dx*t^2*x
% dt*(t-3*sin(3/t))/t^2+dx/x
eq3=int((t-3*sin(3/t))/t^2,t)+int(1/x,x)
% log(t) - cos(3/t) + log(x)
% log(y/x)-cos(3*x/y)+log(x)+C=0
% log(y)-cos(3*x/y))=C1