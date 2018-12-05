clear
syms tau real
f=piecewise(-pi<tau<0,0,0<tau<pi,1)
syms R r teta real
% u=1/(sym(2)*pi)*int((R^2-r^2)/(R^2-sym(2)*R*r*cos(tau-teta)+r^2),tau,0,pi)
syms t real
u=1/sym(pi)*int((R^2-r^2)/((R-r)^2+(R+r)^2*t^2),t,-tan(teta/2),cot(teta/2))
u=simplify(u)
pretty(u)