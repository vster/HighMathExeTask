clear
syms x e alfa
y(x)=sin(x)
dy(x)=alfa*cos(x)

% J(y)
J=jfunc(y)
% 2/3

% DJ=DJ(dy)=J(y+dy)-J(y)
DJ=simplify(jfunc(y+dy)-jfunc(y))
% (4*alfa^2)/3

% J(dy)
dj=jfunc(dy)
% (4*alfa^2)/3

% dJ(y)
dJ=DJ-dj
% 0

function J=jfunc(y)
syms x
J=int(diff(y)^2*sin(x),x,0,pi);
end