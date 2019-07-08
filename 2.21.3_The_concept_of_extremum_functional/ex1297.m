clear
% J(y)=int(1:2)(x^2*y'^2+12*y^2)dx
% y(1)=1
% y(2)=8

% F(x,y,y')=p(x)*y'^2+q(x)*y^2+2*f(x)*y
% d/dx(p*y')-q*y-f=0
syms x y(x) yd(x) C1 C2
p(x)=x^2
q(x)=sym(12)
f(x)=sym(0)
eq1=diff(p*yd,x)-q*y-f
% x^2*diff(yd(x), x) - 12*y(x) + 2*x*yd(x)

% 1)
eq1=x^2*diff(y,x,2)-12*y+2*x*diff(y,x)
y1=dsolve(eq1)
% C6/x^4 + C7*x^3
y1=C1/x^4+C2*x^3

syms x y pi
eq3=y-y1
% y - C1/x^4 - C2*x^3
eq4=subs(eq3,[x y],[1 1])
% 1 - C2 - C1
eq5=subs(eq3,[x y],[2 8])
% 8 - 8*C2 - C1/16

[C11 C21]=solve([eq4 eq5],[C1 C2])
% C11 =
% 0
% C21 =
% 1
y=subs(y1,[C1 C2],[C11 C21])
% x^3

% 2)
syms x y(x)
eq1=x^2*diff(y,x,2)-12*y+2*x*diff(y,x)
cond=[y(1)==1,y(2)==8]
y2=dsolve(eq1,cond)
% x^3