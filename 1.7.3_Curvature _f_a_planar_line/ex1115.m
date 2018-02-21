syms a teta
ro=a*(1+cos(teta))

Dro=diff(ro,teta)
D2ro=diff(ro,teta,2)

k=abs(ro^2+2*Dro^2-ro*D2ro)/(ro^2+Dro^2)^(3/2)
k=simplify(k)
pretty(k)

ro=subs(ro,a,1)
ezpolar(ro)