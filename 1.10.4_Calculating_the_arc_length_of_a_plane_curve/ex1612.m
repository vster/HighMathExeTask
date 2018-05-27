% Find the arc length of the curve
% ro=sin(teta/3)^3, from teta1=0 to teta2=pi/2

% L = int (alfa-beta) sqrt(ro^2+diff(ro)^2) d_teta
syms teta;
ro=sin(teta/3)^3
dro=diff(ro)
% pi/4 - (3*3^(1/2))/8

c=simplify(sqrt(ro^2+dro^2))
% (sin(teta/3)^4)^(1/2)
pretty(c)
c=sin(teta/3)^2
% sin(teta/3)^2

L=int(c,teta,0,pi/2)
% pi/4 - (3*3^(1/2))/8