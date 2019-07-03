clear
% J(y)=int(0:3*pi/2)(y^2-2*y'^2)*exp(-x)*dx
% y(0)=0
% y(3*pi/2)=exp(3*pi/4)

% F(x,y,y')=p(x)*y'^2+q(x)*y^2+2*f(x)*y
% d/dx(p*y')-q*y-f=0
syms x y(x) yd(x) C1 C2
F=y^2*exp(-x)-2*yd^2*exp(-x)
p(x)=-2*exp(-x)
q(x)=exp(-x)
f(x)=sym(0)
eq1=diff(p*yd,x)-q*y-f
% 2*exp(-x)*yd(x) - exp(-x)*y(x) - 2*exp(-x)*diff(yd(x), x)
eq1=simplify(eq1/exp(-x))
% 2*yd(x) - y(x) - 2*diff(yd(x), x)
eq2=2*diff(y)-y-2*diff(y,x,2)
y1=dsolve(eq2)
% C4*cos(x/2)*exp(x/2) + C5*sin(x/2)*exp(x/2)
y1=C1*cos(x/2)*exp(x/2) + C2*sin(x/2)*exp(x/2)

syms x y pi
eq3=y-y1
% y - C1*cos(x/2)*exp(x/2) - C2*sin(x/2)*exp(x/2)
eq4=subs(eq3,[x y],[0 0])
% -C1
eq5=subs(eq3,[x y],[3*pi/2 exp(3*pi/4)])
% exp((3*pi)/4) + (2^(1/2)*C1*exp((3*pi)/4))/2 - (2^(1/2)*C2*exp((3*pi)/4))/2
[C11 C21]=solve([eq4 eq5],[C1 C2])
% C11 =
% 0
% C21 =
% 2^(1/2)
y=subs(y1,[C1 C2],[C11 C21])
% 2^(1/2)*sin(x/2)*exp(x/2)