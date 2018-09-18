% Solve equation
% y'-2*y=x

clear
% 1)
% y'=2*y+x
syms x y(x)
eqn=diff(y(x))==2*y+x
ySol=dsolve(eqn)
% (C10*exp(2*x))/4 - x/2 - 1/4
% C2*exp(2*x) - x/2 - 1/4

% 2)
% We solve this problem with the help of an integrating factor
% y'-2*y=x
syms x y
a(x)=sym(-2)
f(x)=x
u(x)=exp(int(a(x),x))
% exp(-2*x)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
y(x)=simplify(y(x))
% C*exp(2*x) - x/2 - 1/4

% 3)
% Now we construct a solution by the variation method of the constant
% y'-2*y=x
% y'-2*y=0 => dy-2*y*dx=0 => dy/y-2*dx
syms x y
eq1=int(1/y,y)-int(2,x)
% log(y) - 2*x
% y=C(x)*exp(2*x)
syms C(x)
y1=C(x)*exp(2*x)
dy1=diff(y1)
% y'=exp(2*x)*diff(C(x), x) + 2*exp(2*x)*C(x)=2*C(x)*exp(2*x)+x
% dCx=x*exp(-2*x)
syms C2
C1(x)=int(x*exp(-2*x),x)+C2
% C2 - (exp(-2*x)*(2*x + 1))/4
y1=simplify(C1(x)*exp(2*x))
% C2*exp(2*x) - x/2 - 1/4