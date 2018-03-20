syms x y H R r;
% V=x^2*y
% y/H=(R-x/2)/(R-r)
y=H*(R-x/2)/(R-r)
V=x^2*y
% V = (H*x^2*(R - x/2))/(R - r)
dV=diff(V,x)
dV=factor(dV)
% (H*x*(4*R - 3*x))/(2*(R - r)) = 0
slv=solve(4*R - 3*x,x)
x1=slv
% x=(4*R)/3
y1=subs(y,x,x1)
% y=(H*R)/(3*(R - r))