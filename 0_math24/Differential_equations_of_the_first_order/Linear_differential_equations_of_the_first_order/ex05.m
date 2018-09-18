% Solve the Cauchy problem:
% y'-y*tan(x)=sin(x)
% y(0)=1

clear
% 1)
% y'=y*tan(x)+sin(x)
syms x y(x)
eqn=diff(y(x))==y*tan(x)+sin(x)
cond=y(0)==1
ySol=dsolve(eqn,cond)
% 5/(4*cos(x)) - cos(2*x)/(4*cos(x))
% (5-cos(2*x))/(4*cos(x))

% Checking
eq10=diff(y(x))-y*tan(x)-sin(x)
eq11=subs(eq10,y,ySol)
eq11=simplify(eq11)
% 0

% 2)
% y'-y*tan(x)=sin(x)
syms x y
a(x)=-tan(x)
f(x)=sin(x)
u(x)=exp(int(a(x),x))
% cos(x)
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
y(x)=simplify(y(x))
% (2*C - cos(x)^2 + 1)/(2*cos(x)) 
y(x) = (4*C + 1 - cos(2*x))/(4*cos(x)) 
y1(x)=subs(y(x),x,0)
% C=1
% y2(x)=(5-cos(2*x))/(4*cos(x))