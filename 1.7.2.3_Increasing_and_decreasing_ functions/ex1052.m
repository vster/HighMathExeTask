syms x;
y=(x-2)^(2/3)*(2*x+1)
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)