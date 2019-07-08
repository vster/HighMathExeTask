clear
% J(y)=1/2*int(x0:x)y2d^2*dx
% y(x0)=y(x1)=0
% yd(x0)=yd(x1)=0

syms x y yd y2d
F=y2d^2
Fy2d=diff(F,y2d)
% 2*y2d

syms x y(x) x0 x1
eq1=diff(y,x,4)
cond=[y(x0)==0,y(x1)==0,subs(diff(y),x,x0)==0,subs(diff(y),x,x1)==0]
y1=dsolve(eq1,cond)
% 0