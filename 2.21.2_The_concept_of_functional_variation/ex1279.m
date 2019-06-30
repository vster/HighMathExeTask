clear
syms x e alfa
y(x)=log(x)
dy(x)=alfa*(x-1)/(e-1)

% J(y)
J=jfunc(y)
% -1/2

% DJ=DJ(dy)=J(y+dy)-J(y)
DJ=simplify(jfunc(y+dy)-jfunc(y))
% - alfa^2/(e - 1) - alfa

% J(dy)
dj=jfunc(dy)
% -alfa^2/(e - 1)

% dJ(y)
dJ=DJ-dj
% -alfa ??? (3*alfa -?)

function J=jfunc(y)
syms e x
J=int(y*diff(y)-x*diff(y)^2,x,1,e);
J=subs(J,log(e),1);
end