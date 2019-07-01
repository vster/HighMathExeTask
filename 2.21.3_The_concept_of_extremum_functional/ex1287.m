clear
% m*v^2/2=m*g*y => v=sqrt(2*g*y)
% v=ds/dt=sqrt(1+y'^2)*dx/dt
% dt=(sqrt(1+y'^2)/sqrt(2*g*y))*dx
% J(y)=1/sqrt(2*g)*int(0:x1)(sqrt(1+y'^2)/sqrt(y))dx
syms x y dy
F=sqrt(1+dy^2)/sqrt(y)
dFdy=diff(F,dy)
% dy/(y^(1/2)*(dy^2 + 1)^(1/2))

% F-y'*dFdy=C1
syms C1 C2
eq1=F-dy*dFdy-C1
% (dy^2 + 1)^(1/2)/y^(1/2) - C1 - dy^2/(y^(1/2)*(dy^2 + 1)^(1/2))
y1=solve(eq1,y)
% 1/(C1^2*(dy^2 + 1))

syms t dt
dy1=1/tan(t/2)
y1=simplify(subs(y1,dy,dy1))
% -(cos(t) - 1)/(2*C1^2)

dx=simplify(diff(y1,t)*dt/dy1)
% -(dt*(cos(t) - 1))/(2*C1^2)
x=int(dx,t)/dt
% (t - sin(t))/(2*C1^2)

% And so
% x=(t - sin(t))/(2*C1^2)
% y=-(cos(t) - 1)/(2*C1^2)



