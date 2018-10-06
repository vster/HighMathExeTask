% Solve equation
% y'+3*y*tan(3*x)=sin(6*x)
% y(0)=1/3

% 1)
clear
syms x y(x)
eqn=diff(y)+3*y*tan(3*x)==sin(6*x)
cond=y(0)==1/3
ySol=simplify(dsolve(eqn,cond))
% cos(3*x) - (2*cos(3*x)^2)/3

% Checking
for i=1:1
eqn10=diff(y)+3*y*tan(3*x)-sin(6*x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
% y'+3*y*tan(3*x)=sin(6*x)
syms x y
a(x)=3*tan(3*x)
f(x)=sin(6*x)
u(x)=simplify(exp(int(a(x),x)))
% 1/cos(3*x)
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% cos(3*x)*(C - (2*cos(3*x))/3)
y2=subs(y,x,0)
% C - 2/3=1/3 => C=1
% y=cos(3*x)*(1 - (2*cos(3*x))/3)