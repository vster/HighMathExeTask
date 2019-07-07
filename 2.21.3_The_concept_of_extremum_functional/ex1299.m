clear
% y=y(x)
% M(0;1)
% N(1,2)

% v=x
% v=ds/dt=sqrt(1+yd^2)*dx/dt=x
% dt=sqrt(1+yd^2)*dx/x

syms x y yd
F=sqrt(1+yd^2)/x
% F=F(x,y')
dFdyd=diff(F,yd)
% yd/(x*(yd^2 + 1)^(1/2))=C1
syms C1 C2
yd1=solve(dFdyd==C1,yd)
%  (C1*x*(-(C1*x - 1)*(C1*x + 1))^(1/2))/(C1^2*x^2 - 1)
% -(C1*x*(-(C1*x - 1)*(C1*x + 1))^(1/2))/(C1^2*x^2 - 1)

y1=int(yd1(1),x)
% (1 - C1^2*x^2)^(1/2)/C1+C2
y1=y1+C2
% C2 + (1 - C1^2*x^2)^(1/2)/C1

eq1=y-y1
eq2=subs(eq1,[x y],[0 1])
% 1 - 1/C1 - C2
eq3=subs(eq1,[x y],[1 2])
% 2 - (1 - C1^2)^(1/2)/C1 - C2

[C11 C21]=solve([eq2 eq3],[C1 C2])
% C11 =
% -1
% C21 =
% 2
y2=subs(y1,[C1 C2],[C11 C21])
% 2 - (1 - x^2)^(1/2)
% y=2 - (1 - x^2)^(1/2)
% (y-2)^2+x^2=1