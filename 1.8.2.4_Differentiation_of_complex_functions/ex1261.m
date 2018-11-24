syms x y ksi eta;
z=x^2+y^2
% x
phi=ksi+eta
% y
psi=ksi-eta

dzx=diff(z,x)
% 2*x
dzy=diff(z,y)
% 2*y
dx_ksi=diff(phi,ksi)
% 1
dy_ksi=diff(psi,ksi)
% 1
dz_ksi=dzx*dx_ksi+dzy*dy_ksi
% 2*x + 2*y
dz_ksi=2*(ksi+eta) + 2*(ksi-eta)
% 4*ksi
dx_eta=diff(phi,eta)
% 1
dy_eta=diff(psi,eta)
% -1
dz_eta=dzx*dx_eta+dzy*dy_eta
% 2*x - 2*y
dz_eta=2*(ksi+eta) - 2*(ksi-eta)
% 4*eta