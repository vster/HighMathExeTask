syms x;
y=x^2*(1-x*sqrt(x))
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)