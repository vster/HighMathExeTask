% Calculate the arc length of a curve
% ro=teta^2, teta=0 to teta=pi
syms teta;
ro=teta^2
digits(3)

ezpolar(ro)

% L= int (alfa-beta) sqrt(ro^2+diff(ro)^2) d_teta
c=simplify(sqrt(ro^2+diff(ro)^2))
L=int(c,teta,0,pi)
%(pi^2 + 4)^(3/2)/3 - 8/3
