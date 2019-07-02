clear
% m*v^2/2=m*g*y => v=sqrt(2*g*y)
% v=ds/dt=sqrt(1+yd^2)*dx/dt
% dt=(sqrt(1+yd^2)/sqrt(2*g*y))*dx
% J(y)=1/sqrt(2*g)*int(0:x1)(sqrt(1+yd^2)/sqrt(y))dx

% y'=yd=dy/dx
syms x y yd
F=sqrt(1+yd^2)/sqrt(y)
dFdyd=diff(F,yd)
% yd/(y^(1/2)*(yd^2 + 1)^(1/2))

% F-yd*dFdyd=C1
syms C1 C2
eq1=F-yd*dFdyd-C1
% (yd^2 + 1)^(1/2)/y^(1/2) - C1 - yd^2/(y^(1/2)*(yd^2 + 1)^(1/2))
y1=solve(eq1,y)
% 1/(C1^2*(yd^2 + 1))

syms t dt
yd1=1/tan(t/2)
y1=simplify(subs(y1,yd,yd1))
% -(cos(t) - 1)/(2*C1^2)

dx=simplify(diff(y1,t)*dt/yd1)
% -(dt*(cos(t) - 1))/(2*C1^2)
x=int(dx,t)/dt
% (t - sin(t))/(2*C1^2)

% And so
% x=(t - sin(t))/(2*C1^2)
% y=-(cos(t) - 1)/(2*C1^2)



