syms x;
y=x^4-8*x^3+24*x^2
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