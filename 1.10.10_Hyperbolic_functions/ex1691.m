syms x;
y=cosh(x/2)-1

ezplot(y)

dy=diff(y)
slv=solve(dy)
x1=slv
y=subs(y,x,x1)
% [0 0]
