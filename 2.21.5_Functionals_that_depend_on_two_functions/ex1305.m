clear
% J=int(0.5:1)(yd^2-2*x*y*zd)dx
% y(0.5)=2
% z(0.5)=15
% y(1)=z(1)=1

syms x y z yd zd
F=yd^2-2*x*y*zd
Fy=diff(F,y)
% -2*x*zd
Fyd=diff(F,yd)
% 2*yd
Fz=diff(F,z)
% 0
Fzd=diff(F,zd)
% -2*x*y

clear
% Fy-(d/dx)Fyd=0
syms x y(x) z(x)
eq1=-2*x*diff(z,x)-2*diff(y,x,2)
eq1=-eq1/2
% x*diff(z(x), x) + diff(y(x), x, x)

% Fz-(d/dx)Fzd=0
eq2=diff(2*x*y,x)
% 2*y(x) + 2*x*diff(y(x), x)

cond1=[y(0.5)==2,y(1)==1]
y1=dsolve(eq2,cond1)
% 1/x
eq1=subs(eq1,y,y1)
% x*diff(z(x), x) + 2/x^3
z1=dsolve(eq1,z(1)==1)
% 2/(3*x^3) + 1/3
z1=dsolve(eq1,z(0.5)==15)