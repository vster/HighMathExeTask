syms x y ksi eta;
z=log(x^2+y^2)
% x
phi=ksi*eta
% y
psi=ksi/eta

dzx=diff(z,x)
% (2*x)/(x^2 + y^2)
dzy=diff(z,y)
% (2*y)/(x^2 + y^2)
dx_ksi=diff(phi,ksi)
% eta
dy_ksi=diff(psi,ksi)
% 1/eta
dz_ksi=simplify(dzx*dx_ksi+dzy*dy_ksi)
% (2*(x*eta^2 + y))/(eta*(x^2 + y^2))
dz_ksi=subs(dz_ksi,x,phi)
% (2*(ksi*eta^3 + y))/(eta*(eta^2*ksi^2 + y^2))
dz_ksi=subs(dz_ksi,y,psi)
% (2*(ksi/eta + eta^3*ksi))/(eta*(ksi^2/eta^2 + eta^2*ksi^2))
dz_ksi=simplify(dz_ksi)
% 2/ksi
dx_eta=diff(phi,eta)
% ksi

dy_eta=diff(psi,eta)
% -ksi/eta^2
dz_eta=simplify(dzx*dx_eta+dzy*dy_eta)
% -(2*ksi*(- x*eta^2 + y))/(eta^2*(x^2 + y^2))
dz_eta=subs(dz_eta,x,phi)
% -(2*ksi*(- ksi*eta^3 + y))/(eta^2*(eta^2*ksi^2 + y^2))
dz_eta=subs(dz_eta,y,psi)
% -(2*ksi*(ksi/eta - eta^3*ksi))/(eta^2*(ksi^2/eta^2 + eta^2*ksi^2))
dz_eta=simplify(dz_eta)
% (2*eta^4 - 2)/(eta^5 + eta)