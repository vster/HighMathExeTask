% Solve equation
% y*log(y)^3+y'*sqrt(x+1)=0
% y(-15/16)=e

% 1)
% y*log(y)^3=-dy/dx*sqrt(x+1)
% dx/sqrt(x+1) + dy/(y*log(y)^3) = 0
clear
syms x y;
eq1=int(1/sqrt(x+1),x)+int(1/(y*log(y)^3),y)
% 2*(x + 1)^(1/2) - 1/(2*log(y)^2)
syms C e;
eq2=eq1+C
eq3=subs(eq2,[x y],[-15/16 e])
% C - 1/(2*log(e)^2) + 1/2 => C=0
ySol=solve(eq1==0,y)
% exp(-1/(2*(x + 1)^(1/4)))
%  exp(1/(2*(x + 1)^(1/4)))

% 1/2*(x + 1)^(1/2) = 2*log(y)^2
% log(y) = 1/(2*(x + 1)^(1/4))
% y = exp(1/(2*(x + 1)^(1/4)))

% 2)
% y' = - y*log(y)^3/sqrt(x+1)
clear
syms x y(x) e;
eqn=diff(y(x),x)==- y*log(y)^3/sqrt(x+1)
cond = y(-15/16)==e
ySol=dsolve(eqn,cond)
ySol=subs(ySol,log(e),1)
ySol=simplify(ySol)
%  exp(1/(2*(x + 1)^(1/4)))
% exp(-1/(2*(x + 1)^(1/4)))

% Checking
ySol2=exp(1/(2*(x + 1)^(1/4)))
eq5=diff(y(x),x)+y*log(y)^3/sqrt(x+1)
eq6=simplify(subs(eq5,y,ySol2))
% ?