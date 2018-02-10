syms u phi;
rho=u^4*cos(phi)^2
Dru=simplify(diff(rho,u))
Drp=simplify(diff(rho,phi))
