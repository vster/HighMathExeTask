% Find the general solution of the differential equation
% y'=(x-y+3)/(x-y)

% 1)
clear
syms x y(x)
eqn=diff(y(x))==(x-y+3)/(x-y)
ySol=dsolve(eqn)
% piecewise(3*x <= C35 + 9/2, x + (2*C35 - 6*x + 9)^(1/2))
% piecewise(3*x <= C35 + 9/2, x - (2*C35 - 6*x + 9)^(1/2))

% 2)
% (x-y)*dy-(x-y+3)*dx
syms x y dx dy
eq1=(x-y)*dy-(x-y+3)*dx
syms z dz
% z=x-y
y1=x-z
dy1=dx-dz
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% - 3*dx - dz*z
% 3*dx + dz*z
eq3=int(3,x)+int(z,z)
% z^2/2 + 3*x = C1
% (x-y)^2=2*(C1-3*x)
% x-y=+-sqrt(2*C1-6*x)
% y=x+-sqrt(C2-6*x)