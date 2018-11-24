clear
syms u v x;
z=1/2*log(u/v)
uf=tan(x)^2
vf=1/tan(x)^2

Dzx1=cdiff(z,uf,vf)
% 4/sin(2*x)

function Dzx=cdiff(z,uf,vf)
syms x u v
dzu=diff(z,u);
dzv=diff(z,v);
dux=diff(uf,x);
dvx=diff(vf,x);
Dzx=simplify(dzu*dux+dzv*dvx);
Dzx=simplify(subs(Dzx,[u v],[uf vf]));
end