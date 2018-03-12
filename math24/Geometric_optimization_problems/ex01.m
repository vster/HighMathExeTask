syms x a b;
% y/b = x/(x-a)

y=b*x/(x-a)
S=x*y/2
dS=diff(S)
dS=simplify(dS)

slv=solve(dS)
x1=slv(2)
y1=subs(y,x,x1)
% 2a 2b