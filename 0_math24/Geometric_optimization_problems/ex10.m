syms R H x real;

% x/R=(H-y)/H
y=H*(1-x/R )
V=pi*x^2*y
% -H*pi*x^2*(x/R - 1)

dV=diff(V,x)
dV=factor(dV)
slv=solve(dV,x)
x1=slv(2)
% (2*R)/3
y1=subs(y,x,x1)
% H/3
V_max=subs(V,[x y],[x1 y1])
% (4*pi*H*R^2)/27