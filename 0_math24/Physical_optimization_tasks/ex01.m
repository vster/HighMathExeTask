syms eps R r I;
I=eps/(R+r)
P=I^2*R
% P=(R*eps^2)/(R + r)^2
dP=diff(P,R)
dP=simplify(dP)
slv=solve(R-r,R)

R=r
P_max=(R*eps^2)/(R + r)^2
% P_max=eps^2/(4*r)
