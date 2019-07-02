clear
% J(y(x))=int(1:e)(x*y'^2-2*y')dx
% y(1)=1
% y(e)=2

% y'=yd=dy/dx
syms x y yd
F=x*yd^2-2*yd
% dF/dyd=
dFdyd=diff(F,yd)
% 2*yd*x - 2 = C1
syms C1
yd=(C1+2)/(2*x)
y=int(yd,x)
% log(x)*(C1/2 + 1)+C2

syms x y C1 C2 e
eq1=y-(log(x)*(C1/2 + 1)+C2)
eq2=subs(eq1,[x y],[1 1])
% 1 - C2
eq3=subs(eq1,[x y],[e 2])
% 2 - log(e)*(C1/2 + 1) - C2
eq3=subs(eq3,log(e),1)
% 1 - C2 - C1/2
[C1 C2]=solve([eq2 eq3],[C1 C2])
% C1 =
% 0
% C2 =
% 1
y=log(x)+1