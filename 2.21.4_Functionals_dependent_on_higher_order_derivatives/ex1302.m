clear
% J(y)=int(0:1)(y2d^2+2*yd^2+y^2)dx
% y(0)=y(1)=0
% yd(0)=1,yd(1)=-sinh(1)

syms x y yd y2d
F=y2d^2+2*yd^2+y^2
Fy=diff(F,y)
% 2*y
Fyd=diff(F,yd)
% 4*yd
Fy2d=diff(F,y2d)
% 2*y2d
% Fy-d/dx*Fyd+(d2/dx2)Fy2d=0

syms x y(x)
eq1=2*y-4*diff(y,x,2)+2*diff(y,x,4)
cond=[y(0)==0,y(1)==0,subs(diff(y),x,0)==1,subs(diff(y),x,1)==-sinh(sym(1))]
y1=simplify(dsolve(eq1,cond))
% -sinh(x)*(x - 1)