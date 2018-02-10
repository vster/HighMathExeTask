syms x;
y=(2-x)*(x+1)^2
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)