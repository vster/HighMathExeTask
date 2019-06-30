clear
% J(y(x))=int(alfa:beta)(x*y'+1)*exp(y)+x^2-y^2*y')dx
% y(alfa)=a
% y(beta)=b
% F=(x*y'+1)*exp(y)+x^2-y^2*y')=(x^2+exp(y))+(x*exp(y)-y^2)*y'
syms x y
syms alfa beta a b
P=x^2+exp(y)
Q=x*exp(y)-y^2

dPy=diff(P,y)
% exp(y)
dQx=diff(Q,x)
% exp(y)
% dP/dy=dQ/dx

P=subs(P,y,0)
% x^2 + 1
I=int(P,x,0,x)+int(Q,y,0,y)
I=simplify(I)
% x*exp(y) + x^3/3 - y^3/3
J=simplify(subs(I,[x y],[beta b])-subs(I,[x y],[alfa a]))
% beta*exp(b) - alfa*exp(a) + a^3/3 - alfa^3/3 - b^3/3 + beta^3/3
