syms x;
y=(x-1)^(6/7)
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)