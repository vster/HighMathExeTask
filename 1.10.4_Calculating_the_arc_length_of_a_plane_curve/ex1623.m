% Calculate the arc length of a curve
% ro=a*sin(teta)

syms teta a;
ro=a*sin(teta)

ezpolar(subs(ro,a,2))

c=simplify(sqrt(ro^2+diff(ro)^2))
c=a

L=int(c,teta,0,pi)
% pi*a