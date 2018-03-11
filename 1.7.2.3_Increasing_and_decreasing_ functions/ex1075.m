syms r L;
% l^2=h^2+r^2
h=sqrt(L^2-r^2)
V=1/3*pi*r^2*h
pretty(V)

dV=diff(V,r)
dV=simplify(dV)
sr=solve(dV,r)
sr=simplify(sr)
pretty(sr)

V1=subs(V,r,sr)
V1=simplify(V1)
pretty(V1)
V1=subs(V1,(L^2)^(3/2),L^3)
% V_max=(2*pi*3^(1/2)*L^3)/27
