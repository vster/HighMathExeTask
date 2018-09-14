% x*y'=2*(y-sqrt(x*y))

clear
% 1)
% y'=2/x*(y-sqrt(x*y))
syms x y(x)
eqn=diff(y(x))==2/x*(y-sqrt(x*y))
ySol=dsolve(eqn)
%                             0
%                           4*x
% x*(exp(C12 + log(x)/2) + 2)^2
ySol2=ySol(3)

% Checking
eq10=x*diff(y(x))-2*(y-sqrt(x*y))
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
pretty(eq11)
% ??

% 2)
syms x y dx dy
eq1=x*dy-2*(y-sqrt(x*y))*dx
eq1=dy-2*(y/x-sqrt(y/x))*dx
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% dt*x - dx*t + 2*dx*t^(1/2)
% dt*x + dx*(2*t^(1/2)-t)
% dt/(2*t^(1/2)-t)+dx/x
eq3=int(1/(2*t^(1/2)-t),t)+int(1/x,x)
% log(x) - 2*log(t^(1/2) - 2)+log(C)
syms C
eq4=exp(eq3+log(C))
eq4=simplify(eq4)
% (C*x)/(t^(1/2) - 2)^2 = 1
% C*x=((y/x)^(1/2)-2)^2
eq5=C*x-((y/x)^(1/2)-2)^2
eq5=expand(eq5)
% 4*(y/x)^(1/2) + C*x - y/x - 4  *x
% 4*(y*x)^(1/2)+C*x^2 - y -4*x
% 4*(y*x)^(1/2) = y+4*x-C*x^2
% 16*y*x=(y+4*x-C*x^2)^2
