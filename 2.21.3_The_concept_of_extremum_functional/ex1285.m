clear
% J(y(x))=int(1:e)(x*y'^2-2*y')dx
% y(1)=1
% y(e)=2

% y'=yd=dy/dx
syms x y yd C1 C2 e
F=x*yd^2-2*yd
% dF/dyd=
% 1)
dFdyd=diff(F,yd)
% 2*yd*x - 2 = C1
yd=(C1+2)/(2*x)
y1=int(yd,x)
y1=y1+C2
% C2 + log(x)*(C1/2 + 1)

eq1=y-y1
% y - log(x)*(C1/2 + 1)
eq2=subs(eq1,[x y],[1 1])
% 1 - C2
eq3=subs(eq1,[x y],[e 2])
% 2 - log(e)*(C1/2 + 1) - C2
eq3=subs(eq3,log(e),1)
% 1 - C2 - C1/2
[C11 C21]=solve([eq2 eq3],[C1 C2])
% C11 =
% 0
% C21 =
% 1
y1=subs(y1,[C1 C2],[C11 C21])
% log(x) + 1

% 2)
syms x y(x)
eq10=diff(2*diff(y)*x-2)
cond=[y(1)==1,y(e)==2]
y2=dsolve(eq10,cond)
% log(x)/log(e) + 1
y2=subs(y2,log(e),1)
% log(x) + 1