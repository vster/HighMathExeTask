syms x;
y=x^4-4*x^3+6*x^2-4*x
ezplot(y)
grid
dy=diff(y)
s_x=solve(dy)
s_y=subs(y,x,s_x)