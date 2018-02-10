syms x;
y=(x-1)^4
ezplot(y)
grid
dy=diff(y)
d2y=diff(y,2)
d3y=diff(y,3)
d4y=diff(y,4)
s_x=solve(dy)

s_y=subs(y,x,s_x)
s_dy=subs(dy,x,s_x)
s_d2y=subs(d2y,x,s_x)
s_d3y=subs(d3y,x,s_x)
s_d4y=subs(d4y,x,s_x)