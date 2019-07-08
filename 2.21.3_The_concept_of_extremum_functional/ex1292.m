clear
% J(y)=int(0:1)y'^2*dx
% y(0)=0
% y(1)=1

% F=F(y')
syms x y yd
F=yd^2
dFdyd=diff(F,yd)
% 2*yd
dF2dyd=diff(F,yd,2)
% 2

% Euler equation
% F2yd*y''=0 => 2*y''=0
% 1)
syms x C1 C2
y1=C1*x+C2
syms y x
eq1=y-y1
% y - C2 - C1*x
eq2=subs(eq1,[x y],[0 0])
% -C2
eq3=subs(eq1,[x y],[1 1])
% 1 - C2 - C1
[C11 C21]=solve([eq2 eq3],[C1 C2])
% C11 =
% 1
% C21 =
% 0
y=subs(y1,[C1 C2],[C11 C21])
% y=x

% 2)
syms x y(x)
eq10=diff(y,x,2)
cond=[y(0)==0,y(1)==1]
y2=dsolve(eq10,cond)
% y=x