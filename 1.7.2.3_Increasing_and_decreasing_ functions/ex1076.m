syms S;
% S=2*pi*r^2+2*pi*r*h
h=(S-2*pi*r^2)/(2*pi*r) 
V=pi*r^2*h

dV=diff(V,r)
sr=solve(dV,r)
sr=simplify(sr)

V_max=subs(V,r,sr(1))
pretty(V_max)
% (6^(1/2)*S^(3/2))/(18*pi^(1/2))