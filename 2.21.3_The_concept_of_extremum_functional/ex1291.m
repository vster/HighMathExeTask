clear
% J(y)=int(x0:x1)(exp(y)*(1+x*y')dx
% y(x0)=y0
% y(x1)=y1

syms x y yd
syms x0 y0 x1 y1
F=exp(y)+exp(y)*x*yd
P=exp(y)
Q=exp(y)*x

dPy=diff(P,y)
% exp(y)
dQx=diff(Q,x)
% exp(y)
% dP/dy=dQ/dx

P=subs(P,y,0)
% 1
I=int(P,x,0,x)+int(Q,y,0,y)
I=simplify(I)
% x*exp(y)
J=simplify(subs(I,[x y],[x1 y1])-subs(I,[x y],[x0 y0]))
% x1*exp(y1) - x0*exp(y0)
% The task does not make sense