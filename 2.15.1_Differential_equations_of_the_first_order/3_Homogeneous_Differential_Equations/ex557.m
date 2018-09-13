% (x^2+y^2)*dx-x*y*dy=0

% 1)
clear
% y'=(x^2+y^2)/(x*y)
syms x y(x)
eqn=diff(y(x),x)==(x^2+y^2)/(x*y)
ySol=dsolve(eqn)
%  2^(1/2)*x*(C8 + log(x))^(1/2)
% -2^(1/2)*x*(C8 + log(x))^(1/2)
ySol2=ySol(1)

% Checking
eq10=(x^2+y^2)-x*y*diff(y)
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0

% 2)
syms x y dx dy
eq1=(x^2+y^2)*dx-x*y*dy
syms t dt
y1=x*t
dy1=dx*t+x*dt
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=simplify(eq2)
% dx/x - dt*t=0
eq3=int(1/x,x)-int(t,t)
% - t^2/2 + log(x)+log(C)
% -(y/x)^2+2*(log(x)+log(C))=0
% -y^2+x^2*2*(log(x)+log(C))
% y=x*sqrt(2*(log(x)+log(C)))
