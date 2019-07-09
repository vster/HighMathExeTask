clear
% J=int(0:pi)(yd^2-2*y^2+2*y*z-zd^2)dx
% y(0)=z(0)=0
% y(pi)=z(pi)=1

syms x y yd z zd
F=yd^2-2*y^2+2*y*z-zd^2
Fy=diff(F,y)
% 2*z - 4*y
Fyd=diff(F,yd)
% 2*yd
Fz=diff(F,z)
% 2*y
Fzd=diff(F,zd)
% -2*zd

clear
% Fy-(d/dx)Fyd=0
syms x y(x) z(x)
eq1=2*z-4*y-2*diff(y,x,2)
eq1=eq1/2
% z(x) - 2*y(x) - diff(y(x), x, x)

% Fz-(d/dx)Fzd=0
eq2=2*y+2*diff(z,x,2)
eq2=eq2/2
% diff(z(x), x, x) + y(x)

eq1=diff(eq1,x,2)
% diff(z(x), x, x) - 2*diff(y(x), x, x) - diff(y(x), x, x, x, x)
eq3=diff(y,x,4)+2*diff(y,x,2)+y
cond=[y(0)==0,y(pi)==1]
y1=dsolve(eq3,cond)
% C14*sin(x) + C13*x*sin(x) - (x*cos(x))/pi
syms C1 C2
y1=C1*sin(x) + C2*x*sin(x) - (x*cos(x))/pi
z1=2*y1+diff(y1,x,2)
% 2*C2*cos(x) + C1*sin(x) + (2*sin(x))/pi + C2*x*sin(x) - (x*cos(x))/pi

syms z
eq4=z-z1
eq5=subs(eq4,[x z],[0 0])
% -2*C2=0
eq6=subs(eq4,[x z],[pi 1])
% 2*C2=0
y1=subs(y1,C2,0)
% C1*sin(x) - (x*cos(x))/pi
z1=subs(z1,C2,0)
% C1*sin(x) + (2*sin(x))/pi - (x*cos(x))/pi