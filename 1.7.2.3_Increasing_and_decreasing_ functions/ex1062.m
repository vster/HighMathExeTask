syms x;
y=cosh(x)^2
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)