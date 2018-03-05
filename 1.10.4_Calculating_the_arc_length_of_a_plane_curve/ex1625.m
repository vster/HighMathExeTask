syms teta;
ro=1-cos(teta)
digits(3)

ezpolar(ro)

c=simplify(sqrt(ro^2+diff(ro)^2))

L=int(c,0,2*pi)
