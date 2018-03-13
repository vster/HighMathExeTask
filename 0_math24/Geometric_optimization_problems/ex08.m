syms a b alfa x y real;

% (a-y)/a=x/b
y=a-a/b*x

S=x*y*sin(alfa)
S=expand(S)

dS=diff(S,x)
dS=simplify(dS)
slv=solve(b - 2*x, x)

x1=slv
% b/2
y1=subs(y,x,x1)
% a/2

