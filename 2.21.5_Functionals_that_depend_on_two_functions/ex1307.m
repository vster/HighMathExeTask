clear
% J=int(-1:1)(1/2*zd^2-yd^2+2*x*y)dx
% y(-1)=2
% y(1)=0
% z(-1)=-1
% z(1)=1

syms x y z yd zd
F=1/2*zd^2-yd^2+2*x*y
Fy=diff(F,y)
% 2*x
Fyd=diff(F,yd)
% -2*yd
Fz=diff(F,z)
% 0
Fzd=diff(F,zd)
% zd

syms x y(x) z(x)
eq1=2*x+2*diff(y,x,2)
eq2=diff(z,x,2)

cond1=[y(-1)==2,y(1)==0]
y1=dsolve(eq1,cond1)
% - x^3/6 - (5*x)/6 + 1
cond2=[z(-1)==-1,z(1)==1]
z1=dsolve(eq2,cond2)
% x
