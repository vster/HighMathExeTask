% Solve equation
% y'=(2*x+1)/(3*y+x+2)

% 1)
clear
% syms x y(x)
% eqn=diff(y(x))==(2*x+1)/(3*y+x+2)
% ySol=dsolve(eqn)
% ???

% 2)
syms y x(y)
% x'=(3*y+x+2)/(2*x+1)
eqn=diff(x(y))==(3*y+x+2)/(2*x+1)
xSol=dsolve(eqn)
% ???

% 3)
% y'=(2*x+1)/(3*y+x+2)
syms x y dx dy
eq1=(3*y+x+2)*dy-(2*x+1)*dx
syms x1 y1 dx1 dy1
x2=x1-1/2
y2=y1-1/2
eq2=subs(eq1,[x y dx dy],[x2 y2 dx1 dy1])
% dy1*(x1 + 3*y1) - 2*dx1*x1
syms x1 y1 dx1 dy1
eq3=dy1*(x1 + 3*y1) - 2*dx1*x1
syms u du
y3=u*x1
dy3=u*dx1+du*x1
eq4=subs(eq3,[y1 dy1],[y3 dy3])
eq4=expand(eq4)
% 3*dx1*u^2*x1 + 3*du*u*x1^2 + dx1*u*x1 + du*x1^2 - 2*dx1*x1
% dx1*(3*u^2*x1+u*x1-2*x1)+du*(3*u*x1^2+x1^2)
% dx1/x1+du*(3*u+1)/(3*u^2+u-2)
eq5=int(1/x1,x1)+int((3*u+1)/(3*u^2+u-2),u)
% (2*log(u + 1))/5 + (3*log(u - 2/3))/5 + log(x1) = C1
% 2*log(u + 1) + 3*log(u - 2/3) + 5*log(x1) = 5*C1
% 2*log(y1/x1+1)+3*log(y1/x1 - 2/3)+5*log(x1) = 5*C1
syms C1
eq6=2*log(y1/x1+1)+3*log(y1/x1 - 2/3)+5*log(x1) - 5*C1
eq7=subs(eq6,[x1 y1],[x+1/2 y+1/2])
eq8=simplify(exp(eq7))
% (exp(-5*C1)*(6*y - 4*x + 1)^3*(x + y + 1)^2)/216
% (6*y - 4*x + 1)^3*(x + y + 1)^2=C2