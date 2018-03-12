syms R P real;

% P=pi*R+2*R+2*y
y=1/2*(P-(pi+sym(2))*R)
S=pi*R^2/2+2*R*y
S=expand(S)
% P*R - (pi*R^2)/2 - 2*R^2

dS=diff(S,R)
slv=solve(dS,R)
% P/(pi + 4)
R1=slv

d2S=diff(S,R,2)
% - pi - 4 < 0

S_max=subs(S,R,R1)
S_max=simplify(S_max)
% P^2/(2*(pi + 4))