clear
% J(y)=int(0:1)(x*y'-y'^2)dx
% y(0)=1
% y(1)=1/4

% dF(x,y')/dy'=C1
syms x y yd C1 C2
F=x*yd-yd^2
dFdyd=diff(F,yd)
% x - 2*yd = C1
yd=(x-C1)/2
y1=int(yd,x)
% -(x*(2*C1 - x))/4 + C2
y1=y1+C2
% C2 - (x*(2*C1 - x))/4

eq1=y-y1
% y - C2 + (x*(2*C1 - x))/4
eq2=subs(eq1,[x y],[0 1])
% 1 - C2
eq3=subs(eq1,[x y],[1 1/4])
% C1/2 - C2
[C11 C21]=solve([eq2,eq3],[C1 C2])
% C11 =
% 2
% C21 =
% 1
y1=expand(subs(y1,[C1 C2],[C11 C21]))
% x^2/4 - x + 1