clear
syms x y(x) dy(x)

DJ=jfunc(y+dy)-jfunc(y)

DJ=simplify(DJ)
% dy(x1)*y(x1) - dy(x0)*y(x0) - dy(x0)^2/2 + dy(x1)^2/2

dj=jfunc(dy)
% dy(x1)^2/2 - dy(x0)^2/2

dJ=DJ-dj
% dy(x1)*y(x1) - dy(x0)*y(x0)

function J=jfunc(y)
syms x x0 x1
J=int(y*diff(y,x),x,x0,x1);
end
