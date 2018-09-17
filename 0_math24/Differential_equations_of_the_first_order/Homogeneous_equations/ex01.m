% Solve the differential equation 
% (2*x + y)*dx-x*dy = 0

clear
% 1)
syms x y(x)
% y'=(2*x + y)/x
eqn=diff(y(x))==(2*x + y)/x
ySol=dsolve(eqn)
% C9*x + 2*x*log(x)

% 2)
syms x y dx dy
eq1=(2*x + y)*dx-x*dy
syms u du
y1=u*x
dy1=u*dx+du*x
eq2=subs(eq1,[y dy],[y1 dy1])
eq2=expand(eq2)
% - du*x^2 + 2*dx*x
% -du+2*dx/x
eq3=-int(1,u)+int(2/x,x)
% 2*log(x) - u
% 2*log(x) - y/x = C
% y=x*(2*log(x)+C)