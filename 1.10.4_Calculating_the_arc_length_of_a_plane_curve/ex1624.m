% Calculate the arc length of a curve
% ro=a*cos(teta/3)^3, from teta=0 to teta=pi/2

syms teta a real;
ro=a*cos(teta/3)^3
digits(3)

ezpolar(subs(ro,a,2))

c1=ro^2+diff(ro)^2
c1=factor(c1)
c1=simplify(c1)
c=simplify(sqrt(c1))
% -abs(a)*(sin(teta/3)^2 - 1)

L=int(c,teta,0,pi/2)
% (abs(a)*(2*pi + 3*3^(1/2)))/8
% (a*(2*pi + 3*3^(1/2)))/8