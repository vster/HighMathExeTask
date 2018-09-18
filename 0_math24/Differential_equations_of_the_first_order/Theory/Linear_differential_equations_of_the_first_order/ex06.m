% Solve the differential equation (the Cauchy problem) 
% y'+3/x*y=2/x^2
% with the initial condition y(1)=2

clear
% 1)
% y'=-3/x*y+2/x^2
syms x y(x)
eqn=diff(y(x))==-3/x*y+2/x^2
cond=y(1)==2
ySol=dsolve(eqn,cond)
% 1/x + 1/x^3

% 2)
% y'+3/x*y=2/x^2
syms x y
a(x)=3/x
f(x)=2/x^2
u(x)=exp(int(a(x),x))
% x^3
syms C
y(x)=(int(u(x)*f(x),x)+C)/u(x)
% (x^2 + C)/x^3
y1(x)=subs(y(x),x,1)
% C + 1 = 2 => C=1
% y(x)=(x^2 + 1)/x^3
% y(x)=1/x + 1/x^3