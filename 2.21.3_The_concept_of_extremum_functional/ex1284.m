clear
% J(y(x))=int(0:1)(y'^2+y'+1)dx
% y(0)=1
% y(1)=2

% y'=yd=dy/dx
syms x y yd
F=yd^2+yd+1
Fyd=diff(F,yd)
% 2*dy + 1
F2yd=diff(F,yd,2)
% 2

% Euler equation
% F2yd*y''=0 => 2*y''=0
syms C1 C2
y1=C1*x+C2

eq1=y-y1
% y - C2 - C1*x
eq2=subs(eq1,[x y],[0 1])
% 1 - C2
eq3=subs(eq1,[x y],[1 2])
% 2 - C2 - C1
[C11 C21]=solve([eq2 eq3],[C1 C2])
% C11 =
% 1
% C21 =
% 1
y=subs(y1,[C1 C2],[C11 C21])
% x + 1