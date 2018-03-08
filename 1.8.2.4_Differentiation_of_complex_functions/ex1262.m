syms x y ksi eta;
z=log(x^2+y^2)
% x
phi=ksi*eta
% y
psi=ksi/eta

dzx=diff(z,x)
dzy=diff(z,y)

dx_ksi=diff(phi,ksi)
dy_ksi=diff(psi,ksi)

dz_ksi=simplify(dzx*dx_ksi+dzy*dy_ksi)
dz_ksi=subs(dz_ksi,x,phi)
dz_ksi=subs(dz_ksi,y,psi)
dz_ksi=simplify(dz_ksi)

dx_eta=diff(phi,eta)
dy_eta=diff(psi,eta)

dz_eta=simplify(dzx*dx_eta+dzy*dy_eta)
dz_eta=subs(dz_eta,x,phi)
dz_eta=subs(dz_eta,y,psi)
dz_eta=simplify(dz_eta)
