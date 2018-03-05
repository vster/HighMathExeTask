syms teta a;
ro=a*cos(teta/3)^3
digits(3)

ezpolar(subs(ro,a,2))

c=simplify(sqrt(ro^2+diff(ro)^2))

L=int(c,0,pi/2)
vpa(L)