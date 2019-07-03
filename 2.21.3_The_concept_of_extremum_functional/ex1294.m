clear
% J(y)=int(-1:2)(sqrt(1+y'^2)/y)dx
% y(-1)=1
% y(2)=4

% F=F(y,y')
% F-y'*dF/dy'=C1
syms x y yd C1 C2
F=sqrt(1+yd^2)/y
dFdyd=diff(F,yd)
% yd/(y*(yd^2 + 1)^(1/2))
eq1=F-yd*dFdyd-C1
% (yd^2 + 1)^(1/2)/y - C1 - yd^2/(y*(yd^2 + 1)^(1/2))
y1=solve(eq1,y)
% 1/(C1*(yd^2 + 1)^(1/2))

syms t dt
yd1=sinh(t)
y1=simplify(subs(y1,yd,yd1))
% 1/(C1*(sinh(t)^2 + 1)^(1/2))
y1=1/(C1*cosh(t))

dx=diff(y1,t)*dt/yd1
% -dt/(C1*cosh(t)^2)
x=int(dx,t)/dt
% -tanh(t)/C1+C2

syms x
t1=atanh(-C1*(x-C2))
y1=simplify(subs(y1,t,t1))
% ((1 - C1*(C2 - x))^(1/2)*(C1*(C2 - x) + 1)^(1/2))/C1
y1_2=expand(y1^2)
% 2*C2*x + 1/C1^2 - C2^2 - x^2

eq2=y^2-y1_2
% C2^2 - 1/C1^2 - 2*C2*x + x^2 + y^2
eq3=subs(eq2,[x y],[-1 1])
% 2*C2 - 1/C1^2 + C2^2 + 2
eq4=subs(eq2,[x y],[2 4])
% C2^2 - 1/C1^2 - 4*C2 + 20
[C11 C21]=solve([eq3 eq4],[C1 C2])
% C11 =
% -17^(1/2)/17
%  17^(1/2)/17
% C21 =
% 3
% 3
y1_2=subs(y1_2,[C1 C2],[C11(2) C21(2)])
% - x^2 + 6*x + 8
y=sqrt(- x^2 + 6*x + 8)
