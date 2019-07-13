clear
% J(y)=int(1:2)(x^2*yd^2+12*y^2)dx
% y(1)=1
% y(2)=8

syms x y yd
F=x^2*yd^2+12*y^2
Fy=diff(F,y)
% 24*y
Fyd=diff(F,yd)
% 2*x^2*yd
Fydyd=diff(Fyd,yd)
% 2*x^2 >=0 
% extremal realizes a strong minimum

syms x y1(x)
eq1=24*y1-diff(2*x^2*diff(y1,x))
cond=[y1(1)==1,y1(2)==8]
y2=dsolve(eq1,cond)
% x^3
