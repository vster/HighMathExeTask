% Calculate the arc length of a curve
% ro=1-cos(teta)

syms teta real;
ro=1-cos(teta)

ezpolar(ro)

% L = int (alfa-beta) sqrt(ro^2+diff(ro)^2) d_teta
c1=ro^2+diff(ro)^2
c1=factor(c1)
c1=simplify(c1)
% 2 - 2*cos(teta)
c=sqrt(c1)
% 2^(1/2)*(1 - cos(teta))^(1/2)

L=int(c,teta,0,2*pi)
% 8
