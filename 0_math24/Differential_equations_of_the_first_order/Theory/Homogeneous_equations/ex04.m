% Solve the differential equation 
% y'=y/x-x/y

clear
% 1)
syms x y(x)
eqn=diff(y(x))==y/x-x/y
ySol=dsolve(eqn)
%  2^(1/2)*x*(C17 - log(x))^(1/2)
% -2^(1/2)*x*(C17 - log(x))^(1/2)

% 2)
% dy-y*dx/x+x*dx/y=0
syms x y dx dy
eq1=dy-y*dx/x+x*dx/y
syms u du
y1=u*x
dy1=u*dx+du*x
eq2=subs(eq1,[y dy],[y1 dy1])
% du*x + dx/u
% u*du+dx/x
eq3=int(u,u)+int(1/x,x)
% u^2/2 + log(x) = C1
% (y/x)^2/2+log(x) = C1
% y^2=x^2(C2-2*log(x))
% y=+/-x*sqrt(C2-2*log(x))