syms u v x;
z=1/2*log(u/v)
uf(x)=tan(x)^2
vf(x)=1/tan(x)^2

dzu=diff(z,u)
dzv=diff(z,v)

dux=diff(uf,x)
dvx=diff(vf,x)

Dzx=simplify(dzu*dux+dzv*dvx)
pretty(Dzx)
Dzx=simplify(((tan(x)^2 + 1)*(vf*tan(x)^4 + uf))/(uf*vf*tan(x)^3))
pretty(Dzx)