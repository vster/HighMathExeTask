syms teta;
ro=1-cos(teta)
digits(3)

ezpolar(ro)

c1=ro^2+diff(ro)^2
c1=factor(c1)
c1=simplify(c1)
c=sqrt(c1)

L=int(c,0,2*pi)
