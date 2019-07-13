clear
% JC=int((0,0):(pi/2,2))((yd^2-y^2*xd^2)/xd)dt

syms t x y xd yd a t1 t2
F=(yd^2-y^2*xd^2)/xd
Fx=diff(F,x)
% 0
Fxd=simplify(diff(F,xd))
% -(xd^2*y^2 + yd^2)/xd^2
Fy=diff(F,y)
% -2*xd*y
Fyd=simplify(diff(F,yd))
% (2*yd)/xd

Fxyd=diff(Fx,yd)
% 0
Fyxd=diff(Fy,xd)
% -2*y
F1=simplify(diff(Fxd,xd)/yd^2)
% 2/xd^3

syms R
eq1=(Fxyd-Fyxd)/(F1*(xd^2+yd^2)^(3/2))-1/R
% (xd^3*y)/(xd^2 + yd^2)^(3/2) - 1/R
syms t x1(t) y1(t)
eq2=subs(eq1,[x y xd yd],[x1 y1 diff(x1) diff(y1)])
dsolve(eq2)