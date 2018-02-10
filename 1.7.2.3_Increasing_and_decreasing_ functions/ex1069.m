syms x;
y=exp(1.5*sin(x))
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)