syms V R H m real;
% S=pi*R*m;
% V=1/3*pi*R^2*H
H=3*V/(pi*R^2)
m=sqrt(H^2+R^2)
S=pi*R*m
S=simplify(S)
% S = R*((pi^2*R^6 + 9*V^2)/R^4)^(1/2)
S=sqrt(sym(pi)^2*R^6 + 9*V^2)/R
dS=diff(S,R)
dS=simplify(dS)
% dS = -(- 2*pi^2*R^6 + 9*V^2)/(R^2*(9*V^2 + pi^2*R^6)^(1/2))
slv=solve(- 2*sym(pi)^2*R^6 + 9*V^2,R)
R1=slv(2)
R1=combine(R1)
% R=(32^(1/6)*((3*V)/pi)^(1/3))/2
H1=subs(H,R,R1)
H1=simplify(H1)
% H=(6^(1/3)*V^(1/3))/pi^(1/3)
% H=(6*V/pi)^(1/3)
k=simplify(H1/R1)
% 2^(1/2)