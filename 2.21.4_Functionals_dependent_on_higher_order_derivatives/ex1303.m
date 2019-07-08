clear
% J(y)=int(0:pi/2)(y2d^2-y^2+x^2)dx
% y(0)=1,yd(0)=0
% y(pi/2)=0,yd(pi/2)=-1

syms x y yd y2d
F=y2d^2-y^2+x^2
Fy=diff(F,y)
% -2*y
Fyd=diff(F,yd)
% 0
Fy2d=diff(F,y2d)
% 2*y2d
% Fy-d/dx*Fyd+(d2/dx2)Fy2d=0

syms x y(x)
eq1=-2*y+2*diff(y,x,4)
cond=[y(0)==1,subs(diff(y),x,0)==0,y(pi/2)==0,subs(diff(y),x,pi/2)==-1]
y1=dsolve(eq1,cond)
% cos(x)