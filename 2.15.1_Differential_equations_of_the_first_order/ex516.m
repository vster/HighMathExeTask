% Solve equation
% y*y'/x+exp(y)=0
% y(1)=0

% 1)
% (y/x)*dy/dx+exp(y)=0
% (y/x)*dy+exp(y)*dx=0
% y*exp(-y)*dy+x*dx=0
syms x y;
eq1=int(y*exp(-y),y)+int(x,x)
%  exp(-y)*(y + 1) - x^2/2 + C = 0
syms C;
eq2 = exp(-y)*(y + 1) - x^2/2 + C
eq3 = subs(eq2,[x y],[1 0])
% C+1/2=0 => C=-1/2
% exp(-y)*(y + 1) = x^2/2 + 1/2
% 2*exp(-y)*(y + 1) = x^2 + 1

% 2)
% y*y'/x+exp(y)=0
% y'=-exp(y)*x/y
syms x y(x);
eqn = diff(y(x),x) == -exp(y)*x/y
cond = y(1) == 0
ySol=dsolve(eqn,cond)
% exp(-y)*(y + 1) == x^2/2 + 1/2