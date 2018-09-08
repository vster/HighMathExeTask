% Find the particular solution of the equation 
% y'=y/x+sin(y/x) under the initial condition
% y(1)=pi/2

% 1)
syms x y dx dy
% dy/dx=y/x+sin(y/x)
eq1=dy-y/x*dx-sin(y/x)*dx
% y/x=t => y=x*t
syms t dt
y1=t*x
dy1=x*dt+t*dx
eq2=subs(eq1,[y dy],[y1 dy1])
% dt*x - dx*sin(t)=0
% dt/sin(t)-dx/x=0
eq3=int(1/sin(t),t)-int(1/x,x)
% log(tan(t/2)) - log(x)
% log(tan(t/2)) = log(x) + log(C)
% t=2*atan(C*x)
% y=2*x*atan(C*x)
syms C
eq4=y-2*x*atan(C*x)
eq5=subs(eq4,[x y],[1 pi/2])
% pi/2 - 2*atan(C)=0=> C=1
ySol=2*x*atan(x)

% 2)
% y'=y/x+sin(y/x)
syms x y(x)
eqn=diff(y(x),x)==y/x+sin(y/x)
cond=y(1)==pi/2
ySol2=dsolve(eqn,cond)
% 2*x*atan(x)

% Checking
eq7=diff(y(x),x)-y/x-sin(y/x)
eq8=simplify(subs(eq7,y,ySol2))
% 0