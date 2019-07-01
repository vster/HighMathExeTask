clear
% J(y(x))=2*pi*int(x0:x1)(sqrt(1+y'^2))dx
syms x y dy
F=sqrt(1+dy^2)
% dF/dy'=
dFdy=diff(F,dy)
% dy/(dy^2 + 1)^(1/2)

% F-y'*dFdy=C1
syms C1 C2
eq1=F-dy*dFdy-C1
% (dy^2 + 1)^(1/2) - C1 - dy^2/(dy^2 + 1)^(1/2)

eq1=y*sqrt(1+dy^2)-y*dy^2/sqrt(1+dy^2)-C1
ysol1=solve(eq1,y)
% C1*(dy^2 + 1)^(1/2)

syms t y(t) dy(t)
y1=C1*sqrt(1+dy^2)
dy1=sinh(t)
y1=simplify(subs(y1,dy,dy1))
% C1*(sinh(t)^2 + 1)^(1/2)
% C1*cosh(t)
% dx=dy/y'=C1*sinh(t)*dt/sinh(t)=C1*dt
% x=C1*t+C2 => t=(x-C2)/C1

y=C1*cosh((x-C2)/C1)
% C1*cosh((C2 - x)/C1)

syms x y x0 y0 x1 y1
eq2=y-C1*cosh((x-C2)/C1)
eq3=subs(eq2,[x y],[x0 y0])
% y0 - C1*cosh((C2 - x0)/C1)
eq4=subs(eq2,[x y],[x1 y1])
% y1 - C1*cosh((C2 - x1)/C1)