syms a H;
% V=pi*R^2*H
% a^2=R^2+H^2/4
R=sqrt(a^2-H^2/4)
V=pi*R^2*H
V=expand(V)
% H*pi*a^2 - (H^3*pi)/4
dV=diff(V,H)
dV=factor(dV)
slv=solve(dV==0,H)
H1=slv(1)
% (2*3^(1/2)*a)/3
R1=subs(R,H,H1)
% ((2*a^2)/3)^(1/2)
V_max=subs(V,[R H],[R1 H1])
% (4*pi*3^(1/2)*a^3)/9