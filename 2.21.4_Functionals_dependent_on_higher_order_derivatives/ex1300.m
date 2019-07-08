clear
% J(y(x))=int(0:pi)(16*y^2-y2d^2+x^2)dx
% y(0)=y(pi)=0
% yd(0)=yd(pi)=1

syms x y yd y2d
F=16*y^2-y2d^2+x^2
Fy=diff(F,y)
% 32*y
Fyd=diff(F,yd)
% 0
Fy2d=diff(F,y2d)
% -2*y2d

syms x y(x)
eq1=32*y-2*diff(y,x,4)
cond=[y(0)==0,y(pi)==0,subs(diff(y),x,0)==1,subs(diff(y),x,pi)==1]
y1=dsolve(eq1,cond)
% sin(2*x)/2

