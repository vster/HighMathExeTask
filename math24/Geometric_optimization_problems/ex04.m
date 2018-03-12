syms c x real;
y=c-x^2

S=2*x*y
S=expand(S)
%  2*c*x-2*x^3

dS=diff(S)
% - 6*x^2 + 2*c

slv=solve(dS)
% -(3^(1/2)*c^(1/2))/3
%  (3^(1/2)*c^(1/2))/3

d2S=diff(S,x,2)
% -12*x

d2S1=simplify(subs(d2S,x,slv(1))) % >0
d2S2=simplify(subs(d2S,x,slv(2))) % <0

S_max=subs(S,x,slv(2))
% (4*3^(1/2)*c^(3/2))/9