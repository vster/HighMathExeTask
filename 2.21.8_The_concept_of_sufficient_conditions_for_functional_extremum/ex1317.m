clear
% J(y)=int(0:pi/4)(4*y^2-yd^2+8*y)dx
% y(0)=-1
% y(pi/4)=0

syms x y yd
F=4*y^2-yd^2+8*y
Fyd=diff(F,yd)
% -2*yd
Fydyd=diff(F,yd,2)
% -2 <0 => extremal realizes a weak maximum
Fy=diff(F,y)
% 8*y + 8

syms x y1(x)
eq1=8*y1+8+2*diff(y1,x,2)
% 8*y1(x) + 2*diff(y1(x), x, x) + 8
cond=[y1(0)==-1,y1(pi/4)==0]

y2=dsolve(eq1,cond)
% sin(2*x) - 1
