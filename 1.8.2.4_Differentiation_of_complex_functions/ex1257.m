syms u v x;
z=1/2*log(u/v)
uf(x)=tan(x)^2
vf(x)=1/tan(x)^2

dzu=diff(z,u)
% 1/(2*u)
dzv=diff(z,v)
% -1/(2*v)
dux=diff(uf,x)
% 2*tan(x)*(tan(x)^2 + 1)
dvx=diff(vf,x)
% -(2*(tan(x)^2 + 1))/tan(x)^3
Dzx=simplify(dzu*dux+dzv*dvx)
% ((tan(x)^2 + 1)*(v*tan(x)^4 + u))/(u*v*tan(x)^3)
pretty(Dzx)
Dzx=simplify(((tan(x)^2 + 1)*(vf*tan(x)^4 + uf))/(uf*vf*tan(x)^3))
% 4/sin(2*x)
pretty(Dzx)