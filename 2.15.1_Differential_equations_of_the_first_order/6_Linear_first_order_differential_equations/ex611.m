% Solve equation
% y'*sin(x)-y*cos(x)=1
% y(pi/2)=0

% 1)
clear
syms x y(x)
eqn=diff(y)*sin(x)-y*cos(x)==1
cond=y(pi/2)==0
ySol=simplify(dsolve(eqn,cond))
% -cos(x)

% Checking
for i=1:1
eqn10=diff(y)*sin(x)-y*cos(x)-1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0

% 2)
% y'-y*cos(x)/sin(x)=1/sin(x)
syms x y
a(x)=-cot(x)
f(x)=1/sin(x)
u(x)=simplify(exp(int(a(x),x)))
% 1/sin(x)
syms C
y(x)=simplify((int(u(x)*f(x),x)+C)/u(x))
% C*sin(x) - cos(x)
y2=subs(y,x,pi/2)
% C=0
% y=-cos(x)