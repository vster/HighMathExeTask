syms x;
y=x^5+5*x-6
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