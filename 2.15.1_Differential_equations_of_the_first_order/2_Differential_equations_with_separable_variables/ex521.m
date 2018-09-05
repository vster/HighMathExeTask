% Solve equation
% y'=2^(x-y)
% y(-3)=-5

% 1)
% dy/dx=2^x/2^y
% 2^y*dy-2^x*dx=0
clear
syms x y;
eq1=int(2^y,y)-int(2^x,x)
% 2^y/log(2) - 2^x/log(2)
syms C;
eq2 = 2^y/log(sym(2)) - 2^x/log(sym(2)) + C
eq3=subs(eq2,[x y],[-3 -5])
% C - 3/(32*log(2))
% 2^y/log(2) - 2^x/log(2) + 3/(32*log(2)) = 0
% 2^y=2^x+3/32

% 2)
% y'=2^(x-y)
syms x y(x);
eqn=diff(y(x),x)==2^(x-y)
cond=y(-3)==-5
ySol=dsolve(eqn,cond)
% (log(log(2)) + log(2^x/log(2) - 3/(32*log(2))))/log(2)
ySol=simplify(ySol)
% y=log(2^x - 3/32)/log(2)