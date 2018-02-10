syms rho teta;
r=rho^2*sin(teta)^4
Drr=simplify(diff(r,rho))
Drt=simplify(diff(r,teta))

