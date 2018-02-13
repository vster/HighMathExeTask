syms x;
y=(x-1)*(x-1)^(6/7)
subplot(3,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(3,1,2)
ezplot(dy)
grid

d2y=diff(y,2)
subplot(3,1,3)
ezplot(d2y)
grid
s_x=solve(d2y)
s_y=subs(y,x,s_x)