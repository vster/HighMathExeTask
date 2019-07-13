clear
% J=int(t1:t2)(sqrt(xd^2+yd^2)+a^2*(x*yd-y*xd))*dt

syms t x y xd yd a t1 t2
F=sqrt(xd^2+yd^2)+a^2*(x*yd-y*xd)
Fx=diff(F,x)
% a^2*yd
Fxd=diff(F,xd)
% xd/(xd^2 + yd^2)^(1/2) - a^2*y
Fy=diff(F,y)
% -a^2*xd
Fyd=diff(F,yd)
% yd/(xd^2 + yd^2)^(1/2) + a^2*x

Fxyd=diff(Fx,yd)
% a^2
Fyxd=diff(Fy,xd)
% -a^2
F1=simplify(diff(Fxd,xd)/yd^2)
% 1/(xd^2 + yd^2)^(3/2)

syms R
eq1=(Fxyd-Fyxd)/(F1*(xd^2+yd^2)^(3/2))-1/R
% 2*a^2 - 1/R=0 => R=1/(2*a^2)