% (2*x+y+1)*dx+(x+2*y-1)*dy=0

clear
% 1)
% y'=-(2*x+y+1)/(x+2*y-1)
syms x y(x)
eqn=diff(y(x))==-(2*x+y+1)/(x+2*y-1)
ySol=dsolve(eqn)
% (- 3*x^2 - 6*x + C21 + 1)^(1/2)/2 - x/2 + 1/2
% 1/2 - (- 3*x^2 - 6*x + C21 + 1)^(1/2)/2 - x/2

% 2)
syms x y dx dy
eq1=(2*x+y+1)*dx+(x+2*y-1)*dy
syms u v du dv
x1=u-1
y1=v+1
dx1=du
dy1=dv
eq2=subs(eq1,[x y dx dy],[x1 y1 dx1 dy1])
% du*(2*u + v) + dv*(u + 2*v)
syms t dt
v1=u*t
dv1=du*t+u*dt
eq3=subs(eq2,[v dv],[v1 dv1])
% du*(2*u + t*u) + (u + 2*t*u)*(du*t + dt*u)
eq3=expand(eq3)
% 2*du*t^2*u + 2*dt*t*u^2 + 2*du*t*u + dt*u^2 + 2*du*u
% du*(2*t^2*u + 2*t*u + 2*u) + dt*(2*t*u^2 + u^2)=0
% du*(2*t^2 + 2*t + 2) + dt*(2*t*u + u)=0
% du/u+dt*(2*t+1)/(2*t^2 + 2*t + 2)
eq4=int(1/u,u)+int((2*t+1)/(2*t^2 + 2*t + 2),t)
% log(t^2 + t + 1)/2 + log(u)
% u*sqrt(t^2 + t + 1)=C
syms C
eq5=u*sqrt(t^2 + t + 1)-C
eq6=subs(eq5,t,v/u)
% u*(v^2/u^2 + v/u + 1)^(1/2) - C
% u*(v^2/u^2 + v/u + 1)^(1/2) = C
% v^2 + v*u + u^2=C^2
syms C1
eq7=v^2 + v*u + u^2-C1
eq8=subs(eq7,[u v],[x+1 y-1])
% (x + 1)*(y - 1) - C1 + (x + 1)^2 + (y - 1)^2
eq8=expand(eq8)
% x^2 + x*y + x + y^2 - y - C1 + 1
% x^2 + x*y + x + y^2 - y = C2