clear
syms x y ksi eta;
z=x^2+y^2
phi=ksi+eta % x
psi=ksi-eta % y

[Dz1,Dz2]=cdiff2(z,phi,psi)

function [dz_ksi,dz_eta]=cdiff2(z,phi,psi)
syms x y ksi eta
dzx=diff(z,x);
dzy=diff(z,y);

dx_ksi=diff(phi,ksi);
dy_ksi=diff(psi,ksi);
dz_ksi=dzx*dx_ksi+dzy*dy_ksi;
dz_ksi=simplify(subs(dz_ksi,[x y],[phi psi]));

dx_eta=diff(phi,eta);
dy_eta=diff(psi,eta);
dz_eta=dzx*dx_eta+dzy*dy_eta;
dz_eta=simplify(subs(dz_eta,[x y],[phi psi]));
end