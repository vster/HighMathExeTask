syms x;
y=log(x^2+1)
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)