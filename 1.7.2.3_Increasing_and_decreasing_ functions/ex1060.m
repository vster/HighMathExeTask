syms x;
y=x+sqrt(3-x)
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)