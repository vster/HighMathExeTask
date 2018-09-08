% Solve equation
% y'+sin(x+y)=sin(x-y)

% 1)
syms x y;
eq1=simplify(sin(x+y)-sin(x-y))
% dy/dx+2*cos(x)*sin(y) = 0
% dy/sin(y)+2*cos(x)*dx = 0
eq2 = int(1/sin(y),y)+int(2*cos(x),x)
% log(tan(y/2)) + 2*sin(x) = C
% y = 2*atan(exp(C-2*sin(x)))

% 2)
syms x y(x);
eqn=diff(y(x),x)==-2*cos(x)*sin(y)
ySol=dsolve(eqn)
%                            0
% 2*atan(exp(C23 - 2*sin(x)))

% Checking
syms C;
ySol2=2*atan(exp(C-2*sin(x)))
eq5=diff(y(x),x)+2*cos(x)*sin(y)
eq6=simplify(subs(eq5,y,ySol2))
% 0