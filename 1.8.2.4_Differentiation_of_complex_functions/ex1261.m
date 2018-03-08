syms x y ksi eta;
z=x^2+y^2
% x
phi=ksi+eta
% y
psi=ksi-eta

dzx=diff(z,x)
dzy=diff(z,y)

dx_ksi=diff(phi,ksi)
dy_ksi=diff(psi,ksi)

dz_ksi=dzx*dx_ksi+dzy*dy_ksi
dz_ksi=2*(ksi+eta) + 2*(ksi-eta)

dx_eta=diff(phi,eta)
dy_eta=diff(psi,eta)

dz_eta=dzx*dx_eta+dzy*dy_eta
dz_eta=2*(ksi+eta) - 2*(ksi-eta)