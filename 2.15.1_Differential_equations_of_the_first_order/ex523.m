% Solve equation
% y/y'=log(y)
% y(2)=1

% 1)
% y/log(y)=y'=dy/dx
% dx=dy*log(y)/y
syms x y;
eq1=int(1,x)-int(log(y)/y,y)
% x - log(y)^2/2
syms C
eq2=eq1+C
% C + x - log(y)^2/2
eq3=subs(eq2,[x y],[2 1])
% C + 2 => C=-2
% log(y)^2 = 2*(x-2)
% log(y)=sqrt(2*(x-2))
% y=exp(sqrt(2*(x-2)))

% 2)
% y/y'=log(y)
syms x y(x);
eqn=diff(y(x),x)==y/log(y)
cond = y(2)==1
ySol=dsolve(eqn,cond)
%  exp(2^(1/2)*(x - 2)^(1/2))
% exp(-2^(1/2)*(x - 2)^(1/2))