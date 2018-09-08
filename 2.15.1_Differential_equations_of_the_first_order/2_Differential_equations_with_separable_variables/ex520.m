% Solve equation
% y'+cos(x+2*y)=cos(x-2*y)
% y(0)=pi/4

% 1)
syms x y;
eq1=cos(x+2*y)-cos(x-2*y)
eq1=simplify(eq1)
% y'-2*sin(2*y)*sin(x)=0
% dy/(2*sin(2*y))-sin(x)*dx=0
eq2=int(1/(2*sin(2*y)),y)-int(sin(x),x)
% log(tan(y))/4 + cos(x)
syms C;
eq3=log(tan(y))/4 + cos(x)+ C
eq4=subs(eq3,[x y],[0 pi/4])
% C + 1 => C=-1
% log(tan(y)) = 4*(1 - cos(x))
% y=atan(exp(4*(1 - cos(x))))

% 2)
% y'+cos(x+2*y)=cos(x-2*y)
% y'=2*sin(2*y)*sin(x)
clear
syms x y(x);
eqn= diff(y(x),x)==2*sin(2*y)*sin(x)
cond = y(0)==pi/4
ySol=dsolve(eqn,cond)
% atan(exp(4 - 4*cos(x)))

% Checking
ySol2=atan(exp(4*(1 - cos(x))))
eq5=diff(y,x)-2*sin(2*y)*sin(x)
eq6=simplify(subs(eq5,y,ySol2))
% 0