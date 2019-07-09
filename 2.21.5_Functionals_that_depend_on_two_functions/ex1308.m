clear
% J=int(0:pi/2)(yd^2+zd^2-2*y*z)dx
% y(0)=0
% y(pi/2)=1
% z(0)=0
% z(pi/2)=1

syms x y z yd zd
F=yd^2+zd^2-2*y*z
Fy=diff(F,y)
% -2*z
Fyd=diff(F,yd)
% 2*yd
Fz=diff(F,z)
% -2*y
Fzd=diff(F,zd)
% 2*zd

syms x y(x) z(x)
eq1=z+diff(y,x,2)
eq2=y+diff(z,x,2)

eq3=diff(y,x,4)-y
cond1=[y(0)==0,y(pi/2)==1]
y1=dsolve(eq3,cond1)
y1=simplify(y1)
syms C1 C2 pi
y2=C1*exp(x) - cos(x)*(C1 + C2) + C2*exp(-x) - exp(-pi/2)*sin(x)*(C2 - exp(pi/2) + C1*exp(pi))

syms z
eq4=z+diff(y2,x,2)
eq5=subs(eq4,[x z],[0 0])
% 2*C1 + 2*C2
eq6=subs(eq4,[x z],[pi/2 1])
%  C1*exp(pi/2) + C2*exp(-pi/2) + exp(-pi/2)*(C2 - exp(pi/2) + C1*exp(pi)) + 1

[C11 C21]=solve([eq5 eq6],[C1 C2])

y3=subs(y2,[C1 C2],[C11 C21])
% sin(x)
z3=-diff(y3,x,2)
% sin(x)