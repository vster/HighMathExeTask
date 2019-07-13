clear
% J=int((0,0):(1,2))((yd^2-3*xd^2*exp(yd/xd))/xd)*dt

syms t x y xd yd a t1 t2
F=(yd^2-3*xd^2*exp(yd/xd))/xd
Fx=diff(F,x)
% 0
Fxd=simplify(diff(F,xd))
% -(3*xd^2*exp(yd/xd) + yd^2 - 3*xd*yd*exp(yd/xd))/xd^2
Fy=diff(F,y)
% 0
Fyd=diff(F,yd)
% (2*yd - 3*xd*exp(yd/xd))/xd

Fxyd=diff(Fx,yd)
% 0
Fyxd=diff(Fy,xd)
% 0

F1=simplify(diff(Fxd,xd)/yd^2)
% -(3*exp(yd/xd) - 2)/xd^3
F1=simplify(diff(Fxd,yd)/(-xd*yd))
% -(3*exp(yd/xd) - 2)/xd^3
F1=simplify(diff(Fyd,yd)/xd^2)
% -(3*exp(yd/xd) - 2)/xd^3

syms t x1(t) y1(t)
F1=subs(F1,[xd yd],[diff(x1) diff(y1)])
eq1=F1*(diff(x1)*diff(y1,t,2)-diff(y1)*diff(x1,t,2))
eq1=simplify(eq1)
dsolve(eq1)