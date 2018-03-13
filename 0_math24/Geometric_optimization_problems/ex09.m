syms R V real;

% V=pi*R^2*H
% S=2*pi*R^2+2*pi*R*H

H=V/(pi*R^2)
S=2*pi*R^2+2*pi*R*H
% 2*pi*R^2 + (2*V)/R

dS=diff(S,R)
pretty(dS)
slv=solve(dS*R^2==0,R)
R1=slv(3)
% (V/(2*pi))^(1/3)

H1=simplify(subs(H,R,R1))
% (2^(2/3)*V^(1/3))/pi^(1/3)

k=simplify(H1/R1)
% 2