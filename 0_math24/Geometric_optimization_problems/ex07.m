syms alfa beta h x a real;
phi=alfa-beta

tan_alfa=(a+h)/x
tan_beta=h/x

tan_phi=(tan_alfa-tan_beta)/(1+tan_alfa*tan_beta)
tan_phi=simplify(tan_phi)

phi=atan(tan_phi)
% atan((a*x)/(h^2 + a*h + x^2))

dphi=diff(phi)
dphi=simplify(dphi)
pretty(dphi)

slv=solve(h^2 + a*h - x^2,x)
x1=slv(1)
% h^(1/2)*(a + h)^(1/2)