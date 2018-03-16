syms V R;
% V=4/3*pi*R^3+pi*R^2*H=pi*R^2*(4/3*R+H)
H=V/(pi*R^2)-4*R/3
S=4*pi*R^2+2*pi*R*H
S=expand(S)
% (4*pi*R^2)/3 + (2*V)/R

dS=diff(S,R)
factor(dS)
% (2*(4*pi*R^3 - 3*V))/(3*R^2)
slv=solve(4*pi*R^3 - 3*V,R)
R1=slv(1)
% 4*pi*R^3 = 3*V
% R1=(3*V/(4*pi))^(1/3)
R1=combine(R1)
% ((6*V)/pi)^(1/3)/2
H1=subs(H,R,R1)
H1=simplify(H1)
% 0