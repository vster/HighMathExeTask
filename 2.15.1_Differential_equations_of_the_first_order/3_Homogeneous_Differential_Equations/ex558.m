% y'=(x+y)/(x-y)

% 1)
clear
syms x y(x)
eqn=diff(y(x),x)==(x+y)/(x-y)
ySol=dsolve(eqn)
% ??

% 2)
syms x y dx dy
eq1=dy-(x+y)/(x-y)*dx
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% (dx*t^2 + dt*x*t + dx - dt*x)/(t - 1)=0
% dx*(t^2+1)+dt*x*(t-1)=0
% dx/x+dt*(t-1)/(t^2+1)=0
eq3=int(1/x,x)+int((t-1)/(t^2+1),t)
% log(t^2 + 1)/2 - atan(t) + log(x)+log(C)
% log(t^2 + 1) - 2*atan(t) + 2*log(x)+log(C)
% log((y/x)^2+1)+2*log(x)+log(C)=2*atan(y/x)
% log(C*(y^2+x^2))=2*atan(y/x)




