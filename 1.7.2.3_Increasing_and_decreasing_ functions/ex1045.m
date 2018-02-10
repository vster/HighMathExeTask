syms x;
y=x^3-3*x^2
ezplot(y)
grid
dy=diff(y)
subs(dy,x,3)
subs(dy,x,1)
subs(dy,x,-1)
subs(dy,x,0.5)
subs(dy,x,[3 1 -1 0.5])
