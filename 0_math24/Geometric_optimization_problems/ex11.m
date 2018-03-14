syms R alfa;
r=R*cos(alfa)
H=R*sin(alfa)+R
V=1/3*pi*r^2*H
V=factor(V)
% (pi*R^3*cos(alfa)^2*(sin(alfa) + 1))/3
dV=diff(V,alfa)
dV=factor(dV)
% (pi*R^3*cos(alfa)*(cos(alfa)^2 - 2*sin(alfa) - 2*sin(alfa)^2))/3
slv=solve(dV==0,alfa)

alfa1=slv(1)
% asin(1/3)
cos_alfa=cos(alfa1)
% (2*2^(1/2))/3
r1=R*cos(alfa1)
% (2*2^(1/2)*R)/3
H1=R*sin(alfa1)+R
% (4*R)/3
V1=1/3*pi*r1^2*H1
% (32*pi*R^3)/81