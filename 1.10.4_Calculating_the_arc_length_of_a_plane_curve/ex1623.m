syms teta a;
ro=a*sin(teta)
digits(3)

ezpolar(subs(ro,a,2))

c=simplify(sqrt(ro^2+diff(ro)^2))
c=a

L=int(c,0,pi)
vpa(L)