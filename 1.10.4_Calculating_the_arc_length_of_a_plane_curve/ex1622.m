syms teta;
ro=teta^2
digits(3)

ezpolar(ro)

c=simplify(sqrt(ro^2+diff(ro)^2))

L=int(c,0,pi/2)
vpa(L)