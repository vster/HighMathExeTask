syms teta;
ro=sin(teta/3)^3

dro=diff(ro)

c=simplify(sqrt(ro^2+dro^2))
pretty(c)
c=sin(teta/3)^2

L=int(c,0,pi/2)
