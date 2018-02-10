syms x;
y=(2*x-1)*(x-3)^(2/3)
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)