clear
% J(y(x))=int(1:e)(x*y'^2-2*y')dx
% y(1)=1
% y(e)=2

syms x y dy
F=x*dy^2-2*dy
% dF/dy'=
dFdy=diff(F,dy)
% 2*dy*x - 2 = C1
syms C1
dy=(C1+2)/(2*x)
y=int(dy,x)
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