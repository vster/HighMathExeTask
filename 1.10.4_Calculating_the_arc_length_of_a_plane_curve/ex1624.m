syms teta a;
ro=a*cos(teta/3)^3
digits(3)

ezpolar(subs(ro,a,2))

c1=ro^2+diff(ro)^2
c1=factor(c1)
c1=simplify(c1)

c=a*(sin(teta/3)^2 - 1)

L=int(c,0,pi/2)
vpa(L)