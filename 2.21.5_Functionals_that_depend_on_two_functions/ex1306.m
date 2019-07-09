clear
% J=int(1:2)(zd^2-x*yd*z)dx
% y(1)=1
% z(1)=1
% y(2)=-1/6
% z(2)=1/2

syms x y z yd zd
F=zd^2-x*yd*z
Fy=diff(F,y)
% 0
Fyd=diff(F,yd)
% -x*z
Fz=diff(F,z)
% -x*yd
Fzd=diff(F,zd)
% 2*zd

syms x y(x) z(x)
eq1=Fy+diff(x*z,x)
% x*diff(z(x), x) + z(x)
eq2=-x*diff(y,x)-2*diff(z,x,x)
% - x*diff(y(x), x) - 2*diff(z(x), x, x)

cond1=[z(1)==1,z(2)==1/2]
z1=dsolve(eq1,cond1)
% 1/x
eq2=subs(eq2,z,z1)
% - x*diff(y(x), x) - 4/x^3
cond2=[y(1)==1,y(2)==-1/6]
y1=dsolve(eq2,cond2)
% 4/(3*x^3) - 1/3

